// /Users/tamc/Documents/2050/global_2050_model/spreadsheet/2050Model.xlsx approximately translated into C
// First we have c versions of all the excel functions that we know
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>

// To run the tests at the end of this file
// cc excel_to_c_runtime; ./a.out

// FIXME: Extract a header file

// I predefine an array of ExcelValues to store calculations
// Probably bad practice. At the very least, I should make it
// link to the cell reference in some way.
#define MAX_EXCEL_VALUE_HEAP_SIZE 1000000
#define MAX_MEMORY_TO_BE_FREED_HEAP_SIZE 1000000

#define true 1
#define false 0

// These are the various types of excel cell, plus ExcelRange which allows the passing of arrays of cells
typedef enum {ExcelEmpty, ExcelNumber, ExcelString, ExcelBoolean, ExcelError, ExcelRange} ExcelType;

struct excel_value {
	ExcelType type;
	
	double number; // Used for numbers and for error types
	char *string; // Used for strings
	
	// The following three are used for ranges
	void *array;
	int rows;
	int columns;
};

typedef struct excel_value ExcelValue;


// These are used in the SUMIF and SUMIFS criteria (e.g., when passed a string like "<20")
typedef enum {LessThan, LessThanOrEqual, Equal, NotEqual, MoreThanOrEqual, MoreThan} ExcelComparisonType;

struct excel_comparison {
	ExcelComparisonType type;
	ExcelValue comparator;
};

typedef struct excel_comparison ExcelComparison;

// Headers
static ExcelValue more_than(ExcelValue a_v, ExcelValue b_v);
static ExcelValue more_than_or_equal(ExcelValue a_v, ExcelValue b_v);
static ExcelValue not_equal(ExcelValue a_v, ExcelValue b_v);
static ExcelValue less_than(ExcelValue a_v, ExcelValue b_v);
static ExcelValue less_than_or_equal(ExcelValue a_v, ExcelValue b_v);
static ExcelValue find_2(ExcelValue string_to_look_for_v, ExcelValue string_to_look_in_v);
static ExcelValue find(ExcelValue string_to_look_for_v, ExcelValue string_to_look_in_v, ExcelValue position_to_start_at_v);
static ExcelValue hlookup_3(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue row_number_v);
static ExcelValue hlookup(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue row_number_v, ExcelValue match_type_v);
static ExcelValue iferror(ExcelValue value, ExcelValue value_if_error);
static ExcelValue excel_index(ExcelValue array_v, ExcelValue row_number_v, ExcelValue column_number_v);
static ExcelValue excel_index_2(ExcelValue array_v, ExcelValue row_number_v);
static ExcelValue excel_isnumber(ExcelValue number);
static ExcelValue large(ExcelValue array_v, ExcelValue k_v);
static ExcelValue left(ExcelValue string_v, ExcelValue number_of_characters_v);
static ExcelValue left_1(ExcelValue string_v);
static ExcelValue excel_log(ExcelValue number);
static ExcelValue excel_log_2(ExcelValue number, ExcelValue base);
static ExcelValue max(int number_of_arguments, ExcelValue *arguments);
static ExcelValue min(int number_of_arguments, ExcelValue *arguments);
static ExcelValue mmult(ExcelValue a_v, ExcelValue b_v);
static ExcelValue mod(ExcelValue a_v, ExcelValue b_v);
static ExcelValue negative(ExcelValue a_v);
static ExcelValue pmt(ExcelValue rate_v, ExcelValue number_of_periods_v, ExcelValue present_value_v);
static ExcelValue power(ExcelValue a_v, ExcelValue b_v);
static ExcelValue pv_3(ExcelValue a_v, ExcelValue b_v, ExcelValue c_v);
static ExcelValue pv_4(ExcelValue a_v, ExcelValue b_v, ExcelValue c_v, ExcelValue d_v);
static ExcelValue pv_5(ExcelValue a_v, ExcelValue b_v, ExcelValue c_v, ExcelValue d_v, ExcelValue e_v);
static ExcelValue excel_round(ExcelValue number_v, ExcelValue decimal_places_v);
static ExcelValue rank(ExcelValue number_v, ExcelValue range_v, ExcelValue order_v);
static ExcelValue rank_2(ExcelValue number_v, ExcelValue range_v);
static ExcelValue rounddown(ExcelValue number_v, ExcelValue decimal_places_v);
static ExcelValue roundup(ExcelValue number_v, ExcelValue decimal_places_v);
static ExcelValue excel_int(ExcelValue number_v);
static ExcelValue string_join(int number_of_arguments, ExcelValue *arguments);
static ExcelValue subtotal(ExcelValue type, int number_of_arguments, ExcelValue *arguments);
static ExcelValue sumifs(ExcelValue sum_range_v, int number_of_arguments, ExcelValue *arguments);
static ExcelValue sumif(ExcelValue check_range_v, ExcelValue criteria_v, ExcelValue sum_range_v );
static ExcelValue sumif_2(ExcelValue check_range_v, ExcelValue criteria_v);
static ExcelValue sumproduct(int number_of_arguments, ExcelValue *arguments);
static ExcelValue text(ExcelValue number_v, ExcelValue format_v);
static ExcelValue vlookup_3(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue column_number_v);
static ExcelValue vlookup(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue column_number_v, ExcelValue match_type_v);


// My little heap for excel values
ExcelValue cells[MAX_EXCEL_VALUE_HEAP_SIZE];
int cell_counter = 0;

#define HEAPCHECK if(cell_counter >= MAX_EXCEL_VALUE_HEAP_SIZE) { printf("ExcelValue heap full. Edit MAX_EXCEL_VALUE_HEAP_SIZE in the c source code."); exit(-1); }

// My little heap for keeping pointers to memory that I need to reclaim
void *memory_that_needs_to_be_freed[MAX_MEMORY_TO_BE_FREED_HEAP_SIZE];
int memory_that_needs_to_be_freed_counter = 0;

#define MEMORY_THAT_NEEDS_TO_BE_FREED_HEAP_CHECK 

static void free_later(void *pointer) {
	memory_that_needs_to_be_freed[memory_that_needs_to_be_freed_counter] = pointer;
	memory_that_needs_to_be_freed_counter++;
	if(memory_that_needs_to_be_freed_counter >= MAX_MEMORY_TO_BE_FREED_HEAP_SIZE) { 
		printf("Memory that needs to be freed heap full. Edit MAX_MEMORY_TO_BE_FREED_HEAP_SIZE in the c source code"); 
		exit(-1);
	}
}

static void free_all_allocated_memory() {
	int i;
	for(i = 0; i < memory_that_needs_to_be_freed_counter; i++) {
		free(memory_that_needs_to_be_freed[i]);
	}
	memory_that_needs_to_be_freed_counter = 0;
}

// The object initializers
static ExcelValue new_excel_number(double number) {
	cell_counter++;
	HEAPCHECK
	ExcelValue new_cell = 	cells[cell_counter];
	new_cell.type = ExcelNumber;
	new_cell.number = number;
	return new_cell;
};

static ExcelValue new_excel_string(char *string) {
	cell_counter++;
	HEAPCHECK
	ExcelValue new_cell = cells[cell_counter];
	new_cell.type = ExcelString;
	new_cell.string = string;
	return new_cell;
};

static ExcelValue new_excel_range(void *array, int rows, int columns) {
	cell_counter++;
	HEAPCHECK
	ExcelValue new_cell = cells[cell_counter];
	new_cell.type = ExcelRange;
	new_cell.array = array;
	new_cell.rows = rows;
	new_cell.columns = columns;
	return new_cell;
};

static void * new_excel_value_array(int size) {
	ExcelValue *pointer = malloc(sizeof(ExcelValue)*size); // Freed later
	if(pointer == 0) {
		printf("Out of memory\n");
		exit(-1);
	}
	free_later(pointer);
	return pointer;
};

// Constants
const ExcelValue BLANK = {.type = ExcelEmpty, .number = 0};

const ExcelValue ZERO = {.type = ExcelNumber, .number = 0};
const ExcelValue ONE = {.type = ExcelNumber, .number = 1};
const ExcelValue TWO = {.type = ExcelNumber, .number = 2};
const ExcelValue THREE = {.type = ExcelNumber, .number = 3};
const ExcelValue FOUR = {.type = ExcelNumber, .number = 4};
const ExcelValue FIVE = {.type = ExcelNumber, .number = 5};
const ExcelValue SIX = {.type = ExcelNumber, .number = 6};
const ExcelValue SEVEN = {.type = ExcelNumber, .number = 7};
const ExcelValue EIGHT = {.type = ExcelNumber, .number = 8};
const ExcelValue NINE = {.type = ExcelNumber, .number = 9};
const ExcelValue TEN = {.type = ExcelNumber, .number = 10};

// Booleans
const ExcelValue TRUE = {.type = ExcelBoolean, .number = true };
const ExcelValue FALSE = {.type = ExcelBoolean, .number = false };

// Errors
const ExcelValue VALUE = {.type = ExcelError, .number = 0};
const ExcelValue NAME = {.type = ExcelError, .number = 1};
const ExcelValue DIV0 = {.type = ExcelError, .number = 2};
const ExcelValue REF = {.type = ExcelError, .number = 3};
const ExcelValue NA = {.type = ExcelError, .number = 4};
const ExcelValue NUM = {.type = ExcelError, .number = 5};

// This is the error flag
static int conversion_error = 0;

// Helpful for debugging
static void inspect_excel_value(ExcelValue v) {
	ExcelValue *array;
	int i, j, k;
	switch (v.type) {
  	  case ExcelNumber:
		  printf("Number: %f\n",v.number);
		  break;
	  case ExcelBoolean:
		  if(v.number == true) {
			  printf("True\n");
		  } else if(v.number == false) {
			  printf("False\n");
		  } else {
			  printf("Boolean with undefined state %f\n",v.number);
		  }
		  break;
	  case ExcelEmpty:
	  	if(v.number == 0) {
	  		printf("Empty\n");
		} else {
			printf("Empty with unexpected state %f\n",v.number);	
		}
		break;
	  case ExcelRange:
		 printf("Range rows: %d, columns: %d\n",v.rows,v.columns);
		 array = v.array;
		 for(i = 0; i < v.rows; i++) {
			 printf("Row %d:\n",i+1);
			 for(j = 0; j < v.columns; j++ ) {
				 printf("%d ",j+1);
				 k = (i * v.columns) + j;
				 inspect_excel_value(array[k]);
			 }
		 }
		 break;
	  case ExcelString:
		 printf("String: '%s'\n",v.string);
		 break;
	  case ExcelError:
		 printf("Error number %f ",v.number);
		 switch( (int)v.number) {
			 case 0: printf("VALUE\n"); break;
			 case 1: printf("NAME\n"); break;
			 case 2: printf("DIV0\n"); break;
			 case 3: printf("REF\n"); break;
			 case 4: printf("NA\n"); break;
			 case 5: printf("NUM\n"); break;
		 }
		 break;
    default:
      printf("Type %d not recognised",v.type);
	 };
}

// Extracts numbers from ExcelValues
// Excel treats empty cells as zero
static double number_from(ExcelValue v) {
	char *s;
	char *p;
	double n;
	ExcelValue *array;
	switch (v.type) {
  	  case ExcelNumber:
	  case ExcelBoolean: 
	  	return v.number;
	  case ExcelEmpty: 
	  	return 0;
	  case ExcelRange: 
		 array = v.array;
	     return number_from(array[0]);
	  case ExcelString:
 	 	s = v.string;
		if (s == NULL || *s == '\0' || isspace(*s)) {
			return 0;
		}	        
		n = strtod (s, &p);
		if(*p == '\0') {
			return n;
		}
		conversion_error = 1;
		return 0;
	  case ExcelError:
	  	return 0;
  }
  return 0;
}

#define NUMBER(value_name, name) double name; if(value_name.type == ExcelError) { return value_name; }; name = number_from(value_name);
#define CHECK_FOR_CONVERSION_ERROR 	if(conversion_error) { conversion_error = 0; return VALUE; };
#define CHECK_FOR_PASSED_ERROR(name) 	if(name.type == ExcelError) return name;
	
static ExcelValue excel_abs(ExcelValue a_v) {
	CHECK_FOR_PASSED_ERROR(a_v)	
	NUMBER(a_v, a)
	CHECK_FOR_CONVERSION_ERROR
	
	if(a >= 0.0 ) {
		return a_v;
	} else {
		return new_excel_number(-a);
	}
}

static ExcelValue add(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)
	NUMBER(a_v, a)
	NUMBER(b_v, b)
	CHECK_FOR_CONVERSION_ERROR
	return new_excel_number(a + b);
}

static ExcelValue excel_log(ExcelValue number) {
  return excel_log_2(number, TEN);
}

static ExcelValue excel_log_2(ExcelValue number_v, ExcelValue base_v) {
	CHECK_FOR_PASSED_ERROR(number_v)
	CHECK_FOR_PASSED_ERROR(base_v)
	NUMBER(number_v, n)
	NUMBER(base_v, b)
	CHECK_FOR_CONVERSION_ERROR

  if(n<=0) { return NUM; }
  if(b<=0) { return NUM; }

  return	new_excel_number(log(n)/log(b));
}

static ExcelValue excel_and(int array_size, ExcelValue *array) {
	int i;
	ExcelValue current_excel_value, array_result;
	
	for(i=0;i<array_size;i++) {
		current_excel_value = array[i];
		switch (current_excel_value.type) {
	  	  case ExcelNumber: 
		  case ExcelBoolean: 
			  if(current_excel_value.number == false) return FALSE;
			  break;
		  case ExcelRange: 
		  	array_result = excel_and( current_excel_value.rows * current_excel_value.columns, current_excel_value.array );
			if(array_result.type == ExcelError) return array_result;
			if(array_result.type == ExcelBoolean && array_result.number == false) return FALSE;
			break;
		  case ExcelString:
		  case ExcelEmpty:
			 break;
		  case ExcelError:
			 return current_excel_value;
			 break;
		 }
	 }
	 return TRUE;
}

struct average_result {
	double sum;
	double count;
	int has_error;
	ExcelValue error;
};
	
static struct average_result calculate_average(int array_size, ExcelValue *array) {
	double sum = 0;
	double count = 0;
	int i;
	ExcelValue current_excel_value;
	struct average_result array_result, r;
		 
	for(i=0;i<array_size;i++) {
		current_excel_value = array[i];
		switch (current_excel_value.type) {
	  	  case ExcelNumber:
			  sum += current_excel_value.number;
			  count++;
			  break;
		  case ExcelRange: 
		  	array_result = calculate_average( current_excel_value.rows * current_excel_value.columns, current_excel_value.array );
			if(array_result.has_error == true) return array_result;
			sum += array_result.sum;
			count += array_result.count;
			break;
		  case ExcelBoolean: 
		  case ExcelString:
		  case ExcelEmpty:
			 break;
		  case ExcelError:
			 r.has_error = true;
			 r.error = current_excel_value;
			 return r;
			 break;
		 }
	}
	r.count = count;
	r.sum = sum;
	r.has_error = false;
	return r;
}

static ExcelValue average(int array_size, ExcelValue *array) {
	struct average_result r = calculate_average(array_size, array);
	if(r.has_error == true) return r.error;
	if(r.count == 0) return DIV0;
	return new_excel_number(r.sum/r.count);
}

static ExcelValue choose(ExcelValue index_v, int array_size, ExcelValue *array) {
	CHECK_FOR_PASSED_ERROR(index_v)

	int index = (int) number_from(index_v);
	CHECK_FOR_CONVERSION_ERROR	
	int i;
	for(i=0;i<array_size;i++) {
		if(array[i].type == ExcelError) return array[i];
	}
	if(index < 1) return VALUE;
	if(index > array_size) return VALUE;
	return array[index-1];
}	

static ExcelValue count(int array_size, ExcelValue *array) {
	int i;
	int n = 0;
	ExcelValue current_excel_value;
	
	for(i=0;i<array_size;i++) {
		current_excel_value = array[i];
		switch (current_excel_value.type) {
	  	  case ExcelNumber:
		  	n++;
			break;
		  case ExcelRange: 
		  	n += count( current_excel_value.rows * current_excel_value.columns, current_excel_value.array ).number;
			break;
  		  case ExcelBoolean: 			
		  case ExcelString:
		  case ExcelEmpty:
		  case ExcelError:
			 break;
		 }
	 }
	 return new_excel_number(n);
}

static ExcelValue counta(int array_size, ExcelValue *array) {
	int i;
	int n = 0;
	ExcelValue current_excel_value;
	
	for(i=0;i<array_size;i++) {
		current_excel_value = array[i];
    switch(current_excel_value.type) {
  	  case ExcelNumber:
      case ExcelBoolean:
      case ExcelString:
  	  case ExcelError:
        n++;
        break;
      case ExcelRange: 
	  	  n += counta( current_excel_value.rows * current_excel_value.columns, current_excel_value.array ).number;
        break;
  	  case ExcelEmpty:
  		  break;
    }
	 }
	 return new_excel_number(n);
}

static ExcelValue divide(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)
	NUMBER(a_v, a)
	NUMBER(b_v, b)
	CHECK_FOR_CONVERSION_ERROR
	if(b == 0) return DIV0;
	return new_excel_number(a / b);
}

static ExcelValue excel_equal(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)

	if(a_v.type != b_v.type) return FALSE;
	
	switch (a_v.type) {
  	  case ExcelNumber:
	  case ExcelBoolean: 
	  case ExcelEmpty: 
			if(a_v.number != b_v.number) return FALSE;
			return TRUE;
	  case ExcelString:
	  	if(strcasecmp(a_v.string,b_v.string) != 0 ) return FALSE;
		return TRUE;
  	  case ExcelError:
		return a_v;
  	  case ExcelRange:
  		return NA;
  }
  return FALSE;
}

static ExcelValue not_equal(ExcelValue a_v, ExcelValue b_v) {
	ExcelValue result = excel_equal(a_v, b_v);
	if(result.type == ExcelBoolean) {
		if(result.number == 0) return TRUE;
		return FALSE;
	}
	return result;
}

static ExcelValue excel_isnumber(ExcelValue potential_number) {
  if(potential_number.type == ExcelNumber) {
    return TRUE;
  } else {
    return FALSE;
  }
}

static ExcelValue excel_if(ExcelValue condition, ExcelValue true_case, ExcelValue false_case ) {
	CHECK_FOR_PASSED_ERROR(condition)
	
	switch (condition.type) {
  	  case ExcelBoolean:
  	  	if(condition.number == true) return true_case;
  	  	return false_case;
  	  case ExcelNumber:
		if(condition.number == false) return false_case;
		return true_case;
	  case ExcelEmpty: 
		return false_case;
	  case ExcelString:
	  	return VALUE;
  	  case ExcelError:
		return condition;
  	  case ExcelRange:
  		return VALUE;
  }
  return condition;
}

static ExcelValue excel_if_2(ExcelValue condition, ExcelValue true_case ) {
	return excel_if( condition, true_case, FALSE );
}

static ExcelValue excel_index(ExcelValue array_v, ExcelValue row_number_v, ExcelValue column_number_v) {
	CHECK_FOR_PASSED_ERROR(array_v)
	CHECK_FOR_PASSED_ERROR(row_number_v)
	CHECK_FOR_PASSED_ERROR(column_number_v)
		
	ExcelValue *array;
	int rows;
	int columns;
	
	NUMBER(row_number_v, row_number)
	NUMBER(column_number_v, column_number)
	CHECK_FOR_CONVERSION_ERROR
	
	if(array_v.type == ExcelRange) {
		array = array_v.array;
		rows = array_v.rows;
		columns = array_v.columns;
	} else {
		ExcelValue tmp_array[] = {array_v};
		array = tmp_array;
		rows = 1;
		columns = 1;
	}
	
	if(row_number > rows) return REF;
	if(column_number > columns) return REF;
		
	if(row_number == 0) { // We need the whole column
		if(column_number < 1) return REF;
		ExcelValue *result = (ExcelValue *) new_excel_value_array(rows);
		int result_index = 0;
		ExcelValue r;
		int array_index;
		int i;
		for(i = 0; i < rows; i++) {
			array_index = (i*columns) + column_number - 1;
			r = array[array_index];
			if(r.type == ExcelEmpty) {
				result[result_index] = ZERO;
			} else {
				result[result_index] = r;
			}			
			result_index++;
		}
		return new_excel_range(result,rows,1);
	} else if(column_number == 0 ) { // We need the whole row
		if(row_number < 1) return REF;
		ExcelValue *result = (ExcelValue*) new_excel_value_array(columns);
		ExcelValue r;
		int row_start = ((row_number-1)*columns);
		int row_finish = row_start + columns;
		int result_index = 0;
		int i;
		for(i = row_start; i < row_finish; i++) {
			r = array[i];
			if(r.type == ExcelEmpty) {
				result[result_index] = ZERO;
			} else {
				result[result_index] = r;
			}
			result_index++;
		}
		return new_excel_range(result,1,columns);
	} else { // We need a precise point
		if(row_number < 1) return REF;
		if(column_number < 1) return REF;
		int position = ((row_number - 1) * columns) + column_number - 1;
		ExcelValue result = array[position];
		if(result.type == ExcelEmpty) return ZERO;
		return result;
	}
	
	return FALSE;
};

static ExcelValue excel_index_2(ExcelValue array_v, ExcelValue offset) {
	if(array_v.type == ExcelRange) {
		if(array_v.rows == 1) {
			return excel_index(array_v,ONE,offset);
		} else if (array_v.columns == 1) {
			return excel_index(array_v,offset,ONE);
		} else {
			return REF;
		}
	} else if (offset.type == ExcelNumber && offset.number == 1) {
		return array_v;
	} else {
		return REF;
	}
	return REF;
};

int compare_doubles (const void *a, const void *b) {
  const double *da = (const double *) a;
  const double *db = (const double *) b;

  return (*da > *db) - (*da < *db);
}

static ExcelValue large(ExcelValue range_v, ExcelValue k_v) {
  CHECK_FOR_PASSED_ERROR(range_v)
  CHECK_FOR_PASSED_ERROR(k_v)

  int k = (int) number_from(k_v);
  CHECK_FOR_CONVERSION_ERROR;

  // Check for edge case where just a single number passed
  if(range_v.type == ExcelNumber) {
    if( k == 1 ) {
      return range_v;
    } else {
      return NUM;
    }
  }

  // Otherwise grumble if not a range
  if(!range_v.type == ExcelRange) { return VALUE; }

  // Check that our k is within bounds
  if(k < 1) { return NUM; }
  int range_size = range_v.rows * range_v.columns;

  // OK this is a really naive implementation.
  // FIXME: implement the BFPRT algorithm
  double *sorted = malloc(sizeof(double)*range_size);
  int sorted_size = 0;
  ExcelValue *array_v = range_v.array;
  ExcelValue x_v;
  int i; 
  for(i = 0; i < range_size; i++ ) {
    x_v = array_v[i];
    if(x_v.type == ExcelError) { return x_v; };
    if(x_v.type == ExcelNumber) {
      sorted[sorted_size] = x_v.number;
      sorted_size++;
    }
  }
  // Check other bound
  if(k > sorted_size) { return NUM; }

  qsort(sorted, sorted_size, sizeof (double), compare_doubles);

  ExcelValue result = new_excel_number(sorted[sorted_size - k]);
  free(sorted);
  return result;
}


static ExcelValue excel_match(ExcelValue lookup_value, ExcelValue lookup_array, ExcelValue match_type ) {
	CHECK_FOR_PASSED_ERROR(lookup_value)
	CHECK_FOR_PASSED_ERROR(lookup_array)
	CHECK_FOR_PASSED_ERROR(match_type)
		
	// Blanks are treaked as zeros
	if(lookup_value.type == ExcelEmpty) lookup_value = ZERO;

	// Setup the array
	ExcelValue *array;
	int size;
	if(lookup_array.type == ExcelRange) {
		// Check that the range is a row or column rather than an area
		if((lookup_array.rows == 1) || (lookup_array.columns == 1)) {
			array = lookup_array.array;
			size = lookup_array.rows * lookup_array.columns;
		} else {
			// return NA error if covers an area.
			return NA;
		};
	} else {
		// Need to wrap the argument up as an array
		size = 1;
		ExcelValue tmp_array[1] = {lookup_array};
		array = tmp_array;
	}
    
	int type = (int) number_from(match_type);
	CHECK_FOR_CONVERSION_ERROR;
	
	int i;
	ExcelValue x;
	
	switch(type) {
		case 0:
			for(i = 0; i < size; i++ ) {
				x = array[i];
				if(x.type == ExcelEmpty) x = ZERO;
				if(excel_equal(lookup_value,x).number == true) return new_excel_number(i+1);
			}
			return NA;
			break;
		case 1:
			for(i = 0; i < size; i++ ) {
				x = array[i];
				if(x.type == ExcelEmpty) x = ZERO;
				if(more_than(x,lookup_value).number == true) {
					if(i==0) return NA;
					return new_excel_number(i);
				}
			}
			return new_excel_number(size);
			break;
		case -1:
			for(i = 0; i < size; i++ ) {
				x = array[i];
				if(x.type == ExcelEmpty) x = ZERO;
				if(less_than(x,lookup_value).number == true) {
					if(i==0) return NA;
					return new_excel_number(i);
				}
			}
			return new_excel_number(size-1);
			break;
	}
	return NA;
}

static ExcelValue excel_match_2(ExcelValue lookup_value, ExcelValue lookup_array ) {
	return excel_match(lookup_value,lookup_array,new_excel_number(0));
}

static ExcelValue find(ExcelValue find_text_v, ExcelValue within_text_v, ExcelValue start_number_v) {
	CHECK_FOR_PASSED_ERROR(find_text_v)
	CHECK_FOR_PASSED_ERROR(within_text_v)
	CHECK_FOR_PASSED_ERROR(start_number_v)

	char *find_text;	
	char *within_text;
	char *within_text_offset;
	char *result;
	int start_number = number_from(start_number_v);
	CHECK_FOR_CONVERSION_ERROR

	// Deal with blanks 
	if(within_text_v.type == ExcelString) {
		within_text = within_text_v.string;
	} else if( within_text_v.type == ExcelEmpty) {
		within_text = "";
	}

	if(find_text_v.type == ExcelString) {
		find_text = find_text_v.string;
	} else if( find_text_v.type == ExcelEmpty) {
		return start_number_v;
	}
	
	// Check length
	if(start_number < 1) return VALUE;
	if(start_number > strlen(within_text)) return VALUE;
	
	// Offset our within_text pointer
	// FIXME: No way this is utf-8 compatible
	within_text_offset = within_text + (start_number - 1);
	result = strstr(within_text_offset,find_text);
	if(result) {
		return new_excel_number(result - within_text + 1);
	}
	return VALUE;
}

static ExcelValue find_2(ExcelValue string_to_look_for_v, ExcelValue string_to_look_in_v) {
	return find(string_to_look_for_v, string_to_look_in_v, ONE);
};

static ExcelValue left(ExcelValue string_v, ExcelValue number_of_characters_v) {
	CHECK_FOR_PASSED_ERROR(string_v)
	CHECK_FOR_PASSED_ERROR(number_of_characters_v)
	if(string_v.type == ExcelEmpty) return BLANK;
	if(number_of_characters_v.type == ExcelEmpty) return BLANK;
	
	int number_of_characters = (int) number_from(number_of_characters_v);
	CHECK_FOR_CONVERSION_ERROR

	char *string;
	int string_must_be_freed = 0;
	switch (string_v.type) {
  	  case ExcelString:
  		string = string_v.string;
  		break;
  	  case ExcelNumber:
		  string = malloc(20); // Freed
		  if(string == 0) {
			  printf("Out of memory");
			  exit(-1);
		  }
		  string_must_be_freed = 1;
		  snprintf(string,20,"%f",string_v.number);
		  break;
	  case ExcelBoolean:
	  	if(string_v.number == true) {
	  		string = "TRUE";
		} else {
			string = "FALSE";
		}
		break;
	  case ExcelEmpty:	  	 
  	  case ExcelError:
  	  case ExcelRange:
		return string_v;
	}
	
	char *left_string = malloc(number_of_characters+1); // Freed
	if(left_string == 0) {
	  printf("Out of memory");
	  exit(-1);
	}
	free_later(left_string);
	memcpy(left_string,string,number_of_characters);
	left_string[number_of_characters] = '\0';
	if(string_must_be_freed == 1) {
		free(string);
	}
	return new_excel_string(left_string);
}

static ExcelValue left_1(ExcelValue string_v) {
	return left(string_v, ONE);
}

static ExcelValue iferror(ExcelValue value, ExcelValue value_if_error) {
	if(value.type == ExcelError) return value_if_error;
	return value;
}

static ExcelValue more_than(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)

	switch (a_v.type) {
  	  case ExcelNumber:
	  case ExcelBoolean: 
	  case ExcelEmpty:
		if((b_v.type == ExcelNumber) || (b_v.type == ExcelBoolean) || (b_v.type == ExcelEmpty)) {
			if(a_v.number <= b_v.number) return FALSE;
			return TRUE;
		} 
		return FALSE;
	  case ExcelString:
	  	if(b_v.type == ExcelString) {
		  	if(strcasecmp(a_v.string,b_v.string) <= 0 ) return FALSE;
			return TRUE;	  		
		}
		return FALSE;
  	  case ExcelError:
		return a_v;
  	  case ExcelRange:
  		return NA;
  }
  return FALSE;
}

static ExcelValue more_than_or_equal(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)

	switch (a_v.type) {
  	  case ExcelNumber:
	  case ExcelBoolean: 
	  case ExcelEmpty:
		if((b_v.type == ExcelNumber) || (b_v.type == ExcelBoolean) || (b_v.type == ExcelEmpty)) {
			if(a_v.number < b_v.number) return FALSE;
			return TRUE;
		} 
		return FALSE;
	  case ExcelString:
	  	if(b_v.type == ExcelString) {
		  	if(strcasecmp(a_v.string,b_v.string) < 0 ) return FALSE;
			return TRUE;	  		
		}
		return FALSE;
  	  case ExcelError:
		return a_v;
  	  case ExcelRange:
  		return NA;
  }
  return FALSE;
}


static ExcelValue less_than(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)

	switch (a_v.type) {
  	  case ExcelNumber:
	  case ExcelBoolean: 
	  case ExcelEmpty:
		if((b_v.type == ExcelNumber) || (b_v.type == ExcelBoolean) || (b_v.type == ExcelEmpty)) {
			if(a_v.number >= b_v.number) return FALSE;
			return TRUE;
		} 
		return FALSE;
	  case ExcelString:
	  	if(b_v.type == ExcelString) {
		  	if(strcasecmp(a_v.string,b_v.string) >= 0 ) return FALSE;
			return TRUE;	  		
		}
		return FALSE;
  	  case ExcelError:
		return a_v;
  	  case ExcelRange:
  		return NA;
  }
  return FALSE;
}

static ExcelValue less_than_or_equal(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)

	switch (a_v.type) {
  	  case ExcelNumber:
	  case ExcelBoolean: 
	  case ExcelEmpty:
		if((b_v.type == ExcelNumber) || (b_v.type == ExcelBoolean) || (b_v.type == ExcelEmpty)) {
			if(a_v.number > b_v.number) return FALSE;
			return TRUE;
		} 
		return FALSE;
	  case ExcelString:
	  	if(b_v.type == ExcelString) {
		  	if(strcasecmp(a_v.string,b_v.string) > 0 ) return FALSE;
			return TRUE;	  		
		}
		return FALSE;
  	  case ExcelError:
		return a_v;
  	  case ExcelRange:
  		return NA;
  }
  return FALSE;
}

static ExcelValue subtract(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)
	NUMBER(a_v, a)
	NUMBER(b_v, b)
	CHECK_FOR_CONVERSION_ERROR
	return new_excel_number(a - b);
}

static ExcelValue multiply(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)
	NUMBER(a_v, a)
	NUMBER(b_v, b)
	CHECK_FOR_CONVERSION_ERROR
	return new_excel_number(a * b);
}

static ExcelValue sum(int array_size, ExcelValue *array) {
	double total = 0;
	int i;
  ExcelValue r;
	for(i=0;i<array_size;i++) {
    switch(array[i].type) {
      case ExcelNumber:
        total += array[i].number;
        break;
      case ExcelRange:
        r = sum( array[i].rows * array[i].columns, array[i].array );
        if(r.type == ExcelError) {
          return r;
        } else {
          total += number_from(r);
        }
        break;
      case ExcelError:
        return array[i];
        break;
      default:
        break;
    }
	}
	return new_excel_number(total);
}

static ExcelValue max(int number_of_arguments, ExcelValue *arguments) {
	double biggest_number_found;
	int any_number_found = 0;
	int i;
	ExcelValue current_excel_value;
	
	for(i=0;i<number_of_arguments;i++) {
		current_excel_value = arguments[i];
		if(current_excel_value.type == ExcelNumber) {
			if(!any_number_found) {
				any_number_found = 1;
				biggest_number_found = current_excel_value.number;
			}
			if(current_excel_value.number > biggest_number_found) biggest_number_found = current_excel_value.number; 				
		} else if(current_excel_value.type == ExcelRange) {
			current_excel_value = max( current_excel_value.rows * current_excel_value.columns, current_excel_value.array );
			if(current_excel_value.type == ExcelError) return current_excel_value;
			if(current_excel_value.type == ExcelNumber)
				if(!any_number_found) {
					any_number_found = 1;
					biggest_number_found = current_excel_value.number;
				}
				if(current_excel_value.number > biggest_number_found) biggest_number_found = current_excel_value.number; 				
		} else if(current_excel_value.type == ExcelError) {
			return current_excel_value;
		}
	}
	if(!any_number_found) {
		any_number_found = 1;
		biggest_number_found = 0;
	}
	return new_excel_number(biggest_number_found);	
}

static ExcelValue min(int number_of_arguments, ExcelValue *arguments) {
	double smallest_number_found = 0;
	int any_number_found = 0;
	int i;
	ExcelValue current_excel_value;
	
	for(i=0;i<number_of_arguments;i++) {
		current_excel_value = arguments[i];
		if(current_excel_value.type == ExcelNumber) {
			if(!any_number_found) {
				any_number_found = 1;
				smallest_number_found = current_excel_value.number;
			}
			if(current_excel_value.number < smallest_number_found) smallest_number_found = current_excel_value.number; 				
		} else if(current_excel_value.type == ExcelRange) {
			current_excel_value = min( current_excel_value.rows * current_excel_value.columns, current_excel_value.array );
			if(current_excel_value.type == ExcelError) return current_excel_value;
			if(current_excel_value.type == ExcelNumber)
				if(!any_number_found) {
					any_number_found = 1;
					smallest_number_found = current_excel_value.number;
				}
				if(current_excel_value.number < smallest_number_found) smallest_number_found = current_excel_value.number; 				
		} else if(current_excel_value.type == ExcelError) {
			return current_excel_value;
		}
	}
	if(!any_number_found) {
		any_number_found = 1;
		smallest_number_found = 0;
	}
	return new_excel_number(smallest_number_found);	
}

static ExcelValue mmult_error(ExcelValue a_v, ExcelValue b_v) {
  int rows = a_v.rows > b_v.rows ? a_v.rows : b_v.rows;
  int columns = a_v.columns > b_v.columns ? a_v.columns : b_v.columns;
  int i, j;

  ExcelValue *result = (ExcelValue*) new_excel_value_array(rows*columns);

  for(i=0; i<rows; i++) {
    for(j=0; j<columns; j++) {
      result[(i*columns) + j] = VALUE;
    }
  }
  return new_excel_range(result, rows, columns);
}

static ExcelValue mmult(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)
  if(a_v.type != ExcelRange) { return VALUE;}
  if(b_v.type != ExcelRange) { return VALUE;}
  if(a_v.columns != b_v.rows) { return mmult_error(a_v, b_v); }
  int n = a_v.columns;
  int a_rows = a_v.rows;
  int a_columns = a_v.columns;
  int b_columns = b_v.columns;
  ExcelValue *result = (ExcelValue*) new_excel_value_array(a_rows*b_columns);
  int i, j, k;
  double sum; 
  ExcelValue *array_a = a_v.array;
  ExcelValue *array_b = b_v.array;

  ExcelValue a;
  ExcelValue b;
  
  for(i=0; i<a_rows; i++) {
    for(j=0; j<b_columns; j++) {
      sum = 0;
      for(k=0; k<n; k++) {
        a = array_a[(i*a_columns)+k];
        b = array_b[(k*b_columns)+j];
        if(a.type != ExcelNumber) { return mmult_error(a_v, b_v); }
        if(b.type != ExcelNumber) { return mmult_error(a_v, b_v); }
        sum = sum + (a.number * b.number);
      }
      result[(i*b_columns)+j] = new_excel_number(sum);
    }
  }
  return new_excel_range(result, a_rows, b_columns);
}

static ExcelValue mod(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)
		
	NUMBER(a_v, a)
	NUMBER(b_v, b)
	CHECK_FOR_CONVERSION_ERROR
	if(b == 0) return DIV0;
	return new_excel_number(fmod(a,b));
}

static ExcelValue negative(ExcelValue a_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	NUMBER(a_v, a)
	CHECK_FOR_CONVERSION_ERROR
	return new_excel_number(-a);
}

static ExcelValue pmt(ExcelValue rate_v, ExcelValue number_of_periods_v, ExcelValue present_value_v) {
	CHECK_FOR_PASSED_ERROR(rate_v)
	CHECK_FOR_PASSED_ERROR(number_of_periods_v)
	CHECK_FOR_PASSED_ERROR(present_value_v)
		
	NUMBER(rate_v,rate)
	NUMBER(number_of_periods_v,number_of_periods)
	NUMBER(present_value_v,present_value)
	CHECK_FOR_CONVERSION_ERROR
	
	if(rate == 0) return new_excel_number(-(present_value / number_of_periods));
	return new_excel_number(-present_value*(rate*(pow((1+rate),number_of_periods)))/((pow((1+rate),number_of_periods))-1));
}

static ExcelValue pv_3(ExcelValue rate_v, ExcelValue nper_v, ExcelValue pmt_v) {
  return pv_4(rate_v, nper_v, pmt_v, ZERO);
}

static ExcelValue pv_4(ExcelValue rate_v, ExcelValue nper_v, ExcelValue pmt_v, ExcelValue fv_v) {
  return pv_5(rate_v, nper_v, pmt_v, fv_v, ZERO);
}

static ExcelValue pv_5(ExcelValue rate_v, ExcelValue nper_v, ExcelValue pmt_v, ExcelValue fv_v, ExcelValue type_v ) {
  CHECK_FOR_PASSED_ERROR(rate_v)
  CHECK_FOR_PASSED_ERROR(nper_v)
  CHECK_FOR_PASSED_ERROR(pmt_v)
  CHECK_FOR_PASSED_ERROR(fv_v)
  CHECK_FOR_PASSED_ERROR(type_v)

  NUMBER(rate_v, rate)
  NUMBER(nper_v, nper)
  NUMBER(pmt_v, payment)
  NUMBER(fv_v, fv)
  NUMBER(type_v, start_of_period)
  CHECK_FOR_CONVERSION_ERROR

  if(rate< 0) {
    return VALUE;
  }

  double present_value = 0;

  // Sum up the payments
  if(rate == 0) {
    present_value = -payment * nper;
  } else {
    present_value = -payment * ((1-pow(1+rate,-nper))/rate);
  }

  // Adjust for beginning or end of period
  if(start_of_period == 0) {
   // Do Nothing
  } else if(start_of_period == 1) {
   present_value = present_value * (1+rate);
  } else {
   return VALUE;
  } 

  // Add on the final value
  present_value = present_value - (fv/pow(1+rate,nper));
  
  return new_excel_number(present_value);
}


static ExcelValue power(ExcelValue a_v, ExcelValue b_v) {
	CHECK_FOR_PASSED_ERROR(a_v)
	CHECK_FOR_PASSED_ERROR(b_v)
		
	NUMBER(a_v, a)
	NUMBER(b_v, b)
	CHECK_FOR_CONVERSION_ERROR
  double result = pow(a,b);
  if(isnan(result) == 1) {
    return NUM;
  } else {
    return new_excel_number(result);
  }
}
static ExcelValue rank(ExcelValue number_v, ExcelValue range_v, ExcelValue order_v) {
  CHECK_FOR_PASSED_ERROR(number_v)
  CHECK_FOR_PASSED_ERROR(range_v)
  CHECK_FOR_PASSED_ERROR(order_v)

  NUMBER(number_v, number)
  NUMBER(order_v, order)

  ExcelValue *array;
  int size;

	CHECK_FOR_CONVERSION_ERROR

  if(range_v.type != ExcelRange) {
    array = new_excel_value_array(1);
    array[0] = range_v;
    size = 1;
  } else {
    array = range_v.array;
    size = range_v.rows * range_v.columns;
  }

  int ranked = 1;
  int found = false;

  int i;
  ExcelValue cell;

  for(i=0; i<size; i++) {
    cell = array[i];
    if(cell.type == ExcelError) { return cell; }
    if(cell.type == ExcelNumber) {
      if(cell.number == number) { found = true; }
      if(order == 0) { if(cell.number > number) { ranked++; } }
      if(order != 0) { if(cell.number < number) { ranked++; } }
    }
  }
  if(found == false) { return NA; }
  return new_excel_number(ranked);
}

static ExcelValue rank_2(ExcelValue number_v, ExcelValue range_v) {
  return rank(number_v, range_v, ZERO);
}

static ExcelValue excel_round(ExcelValue number_v, ExcelValue decimal_places_v) {
	CHECK_FOR_PASSED_ERROR(number_v)
	CHECK_FOR_PASSED_ERROR(decimal_places_v)
		
	NUMBER(number_v, number)
	NUMBER(decimal_places_v, decimal_places)
	CHECK_FOR_CONVERSION_ERROR
		
	double multiple = pow(10,decimal_places);
	
	return new_excel_number( round(number * multiple) / multiple );
}

static ExcelValue rounddown(ExcelValue number_v, ExcelValue decimal_places_v) {
	CHECK_FOR_PASSED_ERROR(number_v)
	CHECK_FOR_PASSED_ERROR(decimal_places_v)
		
	NUMBER(number_v, number)
	NUMBER(decimal_places_v, decimal_places)
	CHECK_FOR_CONVERSION_ERROR
		
	double multiple = pow(10,decimal_places);
	
	return new_excel_number( trunc(number * multiple) / multiple );	
}

static ExcelValue roundup(ExcelValue number_v, ExcelValue decimal_places_v) {
	CHECK_FOR_PASSED_ERROR(number_v)
	CHECK_FOR_PASSED_ERROR(decimal_places_v)
		
	NUMBER(number_v, number)
	NUMBER(decimal_places_v, decimal_places)
	CHECK_FOR_CONVERSION_ERROR
		
	double multiple = pow(10,decimal_places);
	if(number < 0) return new_excel_number( floor(number * multiple) / multiple );
	return new_excel_number( ceil(number * multiple) / multiple );	
}

static ExcelValue excel_int(ExcelValue number_v) {
	CHECK_FOR_PASSED_ERROR(number_v)
		
	NUMBER(number_v, number)
	CHECK_FOR_CONVERSION_ERROR
		
	return new_excel_number(floor(number));
}

static ExcelValue string_join(int number_of_arguments, ExcelValue *arguments) {
	int allocated_length = 100;
	int used_length = 0;
	char *string = malloc(allocated_length); // Freed later
	if(string == 0) {
	  printf("Out of memory");
	  exit(-1);
	}
	free_later(string);
	char *current_string;
	int current_string_length;
	int must_free_current_string;
	ExcelValue current_v;
	int i;
	for(i=0;i<number_of_arguments;i++) {
		must_free_current_string = 0;
		current_v = (ExcelValue) arguments[i];
		switch (current_v.type) {
  	  case ExcelString:
	  		current_string = current_v.string;
	  		break;
  	  case ExcelNumber:
			  current_string = malloc(20); // Freed
		  	if(current_string == 0) {
		  	  printf("Out of memory");
		  	  exit(-1);
		  	}
			must_free_current_string = 1;				  
			  snprintf(current_string,20,"%g",current_v.number);
			  break;
		  case ExcelBoolean:
		  	if(current_v.number == true) {
		  		current_string = "TRUE";
  			} else {
  				current_string = "FALSE";
  			}
        break;
		  case ExcelEmpty:
        current_string = "";
        break;
      case ExcelError:
        return current_v;
	  	case ExcelRange:
        return VALUE;
		}
		current_string_length = strlen(current_string);
		if( (used_length + current_string_length + 1) > allocated_length) {
			allocated_length += 100;
			string = realloc(string,allocated_length);
		}
		memcpy(string + used_length, current_string, current_string_length);
		if(must_free_current_string == 1) {
			free(current_string);
		}
		used_length = used_length + current_string_length;
	}
	string = realloc(string,used_length+1);
  string[used_length] = '\0';
	return new_excel_string(string);
}

static ExcelValue subtotal(ExcelValue subtotal_type_v, int number_of_arguments, ExcelValue *arguments) {
  CHECK_FOR_PASSED_ERROR(subtotal_type_v)
  NUMBER(subtotal_type_v,subtotal_type)
  CHECK_FOR_CONVERSION_ERROR
      
  switch((int) subtotal_type) {
    case 1:
    case 101:
      return average(number_of_arguments,arguments);
      break;
    case 2:
    case 102:
      return count(number_of_arguments,arguments);
      break;
    case 3:
    case 103:
      return counta(number_of_arguments,arguments);
      break;
    case 9:
    case 109:
      return sum(number_of_arguments,arguments);
      break;
    default:
      return VALUE;
      break;
  }
}

static ExcelValue sumifs(ExcelValue sum_range_v, int number_of_arguments, ExcelValue *arguments) {
  // First, set up the sum_range
  CHECK_FOR_PASSED_ERROR(sum_range_v);

  // Set up the sum range
  ExcelValue *sum_range;
  int sum_range_rows, sum_range_columns;
  
  if(sum_range_v.type == ExcelRange) {
    sum_range = sum_range_v.array;
    sum_range_rows = sum_range_v.rows;
    sum_range_columns = sum_range_v.columns;
  } else {
    sum_range = (ExcelValue*) new_excel_value_array(1);
	sum_range[0] = sum_range_v;
    sum_range_rows = 1;
    sum_range_columns = 1;
  }
  
  // Then go through and set up the check ranges
  if(number_of_arguments % 2 != 0) return VALUE;
  int number_of_criteria = number_of_arguments / 2;
  ExcelValue *criteria_range =  (ExcelValue*) new_excel_value_array(number_of_criteria);
  ExcelValue current_value;
  int i;
  for(i = 0; i < number_of_criteria; i++) {
    current_value = arguments[i*2];
    if(current_value.type == ExcelRange) {
      criteria_range[i] = current_value;
      if(current_value.rows != sum_range_rows) return VALUE;
      if(current_value.columns != sum_range_columns) return VALUE;
    } else {
      if(sum_range_rows != 1) return VALUE;
      if(sum_range_columns != 1) return VALUE;
      ExcelValue *tmp_array2 =  (ExcelValue*) new_excel_value_array(1);
      tmp_array2[0] = current_value;
      criteria_range[i] =  new_excel_range(tmp_array2,1,1);
    }
  }
  
  // Now go through and set up the criteria
  ExcelComparison *criteria =  malloc(sizeof(ExcelComparison)*number_of_criteria); // freed at end of function
  if(criteria == 0) {
	  printf("Out of memory\n");
	  exit(-1);
  }
  char *s;
  for(i = 0; i < number_of_criteria; i++) {
    current_value = arguments[(i*2)+1];
    
    if(current_value.type == ExcelString) {
      s = current_value.string;
      if(s[0] == '<') {
        if( s[1] == '>') {
          criteria[i].type = NotEqual;
          criteria[i].comparator = new_excel_string(strndup(s+2,strlen(s)-2));
        } else if(s[1] == '=') {
          criteria[i].type = LessThanOrEqual;
          criteria[i].comparator = new_excel_string(strndup(s+2,strlen(s)-2));
        } else {
          criteria[i].type = LessThan;
          criteria[i].comparator = new_excel_string(strndup(s+1,strlen(s)-1));
        }
      } else if(s[0] == '>') {
        if(s[1] == '=') {
          criteria[i].type = MoreThanOrEqual;
          criteria[i].comparator = new_excel_string(strndup(s+2,strlen(s)-2));
        } else {
          criteria[i].type = MoreThan;
          criteria[i].comparator = new_excel_string(strndup(s+1,strlen(s)-1));
        }
      } else if(s[0] == '=') {
        criteria[i].type = Equal;
        criteria[i].comparator = new_excel_string(strndup(s+1,strlen(s)-1));          
      } else {
        criteria[i].type = Equal;
        criteria[i].comparator = current_value;          
      }
    } else {
      criteria[i].type = Equal;
      criteria[i].comparator = current_value;
    }
  }
  
  double total = 0;
  int size = sum_range_columns * sum_range_rows;
  int j;
  int passed = 0;
  ExcelValue value_to_be_checked;
  ExcelComparison comparison;
  ExcelValue comparator;
  double number;
  // For each cell in the sum range
  for(j=0; j < size; j++ ) {
    passed = 1;
    for(i=0; i < number_of_criteria; i++) {
      value_to_be_checked = ((ExcelValue *) ((ExcelValue) criteria_range[i]).array)[j];
      comparison = criteria[i];
      comparator = comparison.comparator;
      
      switch(value_to_be_checked.type) {
        case ExcelError: // Errors match only errors
          if(comparison.type != Equal) passed = 0;
          if(comparator.type != ExcelError) passed = 0;
          if(value_to_be_checked.number != comparator.number) passed = 0;
          break;
        case ExcelBoolean: // Booleans match only booleans (FIXME: I think?)
          if(comparison.type != Equal) passed = 0;
          if(comparator.type != ExcelBoolean ) passed = 0;
          if(value_to_be_checked.number != comparator.number) passed = 0;
          break;
        case ExcelEmpty:
          // if(comparator.type == ExcelEmpty) break; // FIXME: Huh? In excel blank doesn't match blank?!
          if(comparator.type != ExcelString) {
            passed = 0;
            break;
          } else {
            if(strlen(comparator.string) != 0) passed = 0; // Empty strings match blanks.
            break;
          }
          break;
        case ExcelNumber:
          if(comparator.type == ExcelNumber) {
            number = comparator.number;
          } else if(comparator.type == ExcelString) {
            number = number_from(comparator);
            if(conversion_error == 1) {
              conversion_error = 0;
              passed = 0;
              break;
            }
          } else {
            passed = 0;
            break;
          }
          switch(comparison.type) {
            case Equal:
              if(value_to_be_checked.number != number) passed = 0;
              break;
            case LessThan:
              if(value_to_be_checked.number >= number) passed = 0;
              break;            
            case LessThanOrEqual:
              if(value_to_be_checked.number > number) passed = 0;
              break;                        
            case NotEqual:
              if(value_to_be_checked.number == number) passed = 0;
              break;            
            case MoreThanOrEqual:
              if(value_to_be_checked.number < number) passed = 0;
              break;            
            case MoreThan:
              if(value_to_be_checked.number <= number) passed = 0;
              break;
          }
          break;
        case ExcelString:
          // First case, the comparator is a number, simplification is that it can only be equal
          if(comparator.type == ExcelNumber) {
            if(comparison.type != Equal) {
              printf("This shouldn't be possible?");
              passed = 0;
              break;
            }
            number = number_from(value_to_be_checked);
            if(conversion_error == 1) {
              conversion_error = 0;
              passed = 0;
              break;
            }
            if(number != comparator.number) {
              passed = 0;
              break;
            } else {
              break;
            }
          // Second case, the comparator is also a string, so need to be able to do full range of tests
          } else if(comparator.type == ExcelString) {
            switch(comparison.type) {
              case Equal:
                if(excel_equal(value_to_be_checked,comparator).number == 0) passed = 0;
                break;
              case LessThan:
                if(less_than(value_to_be_checked,comparator).number == 0) passed = 0;
                break;            
              case LessThanOrEqual:
                if(less_than_or_equal(value_to_be_checked,comparator).number == 0) passed = 0;
                break;                        
              case NotEqual:
                if(not_equal(value_to_be_checked,comparator).number == 0) passed = 0;
                break;            
              case MoreThanOrEqual:
                if(more_than_or_equal(value_to_be_checked,comparator).number == 0) passed = 0;
                break;            
              case MoreThan:
                if(more_than(value_to_be_checked,comparator).number == 0) passed = 0;
                break;
              }
          } else {
            passed = 0;
            break;
          }
          break;
        case ExcelRange:
          return VALUE;            
      }
      if(passed == 0) break;
    }
    if(passed == 1) {
      current_value = sum_range[j];
      if(current_value.type == ExcelError) {
        return current_value;
      } else if(current_value.type == ExcelNumber) {
        total += current_value.number;
      }
    }
  }
  // Tidy up
  free(criteria);
  return new_excel_number(total);
}

static ExcelValue sumif(ExcelValue check_range_v, ExcelValue criteria_v, ExcelValue sum_range_v ) {
	ExcelValue tmp_array_sumif[] = {check_range_v, criteria_v};
	return sumifs(sum_range_v,2,tmp_array_sumif);
}

static ExcelValue sumif_2(ExcelValue check_range_v, ExcelValue criteria_v) {
	ExcelValue tmp_array_sumif2[] = {check_range_v, criteria_v};
	return sumifs(check_range_v,2,tmp_array_sumif2);
}

static ExcelValue sumproduct(int number_of_arguments, ExcelValue *arguments) {
  if(number_of_arguments <1) return VALUE;
  
  int a;
  int i;
  int j;
  int rows;
  int columns;
  ExcelValue current_value;
  ExcelValue **ranges = malloc(sizeof(ExcelValue *)*number_of_arguments); // Added free statements
  if(ranges == 0) {
	  printf("Out of memory\n");
	  exit(-1);
  }
  double product = 1;
  double sum = 0;
  
  // Find out dimensions of first argument
  if(arguments[0].type == ExcelRange) {
    rows = arguments[0].rows;
    columns = arguments[0].columns;
  } else {
    rows = 1;
    columns = 1;
  }
  // Extract arrays from each of the given ranges, checking for errors and bounds as we go
  for(a=0;a<number_of_arguments;a++) {
    current_value = arguments[a];
    switch(current_value.type) {
      case ExcelRange:
        if(current_value.rows != rows || current_value.columns != columns) return VALUE;
        ranges[a] = current_value.array;
        break;
      case ExcelError:
		free(ranges);
        return current_value;
        break;
      case ExcelEmpty:
		free(ranges);
        return VALUE;
        break;
      default:
        if(rows != 1 && columns !=1) return VALUE;
        ranges[a] = (ExcelValue*) new_excel_value_array(1);
        ranges[a][0] = arguments[a];
        break;
    }
  }
  	
	for(i=0;i<rows;i++) {
		for(j=0;j<columns;j++) {
			product = 1;
			for(a=0;a<number_of_arguments;a++) {
				current_value = ranges[a][(i*columns)+j];
				if(current_value.type == ExcelNumber) {
					product *= current_value.number;
				} else {
					product *= 0;
				}
			}
			sum += product;
		}
	}
	free(ranges);
  	return new_excel_number(sum);
}

static ExcelValue text(ExcelValue number_v, ExcelValue format_v) {
  CHECK_FOR_PASSED_ERROR(number_v)
  CHECK_FOR_PASSED_ERROR(format_v)

	char *s;
	char *p;
	double n;
  ExcelValue result;

  if(number_v.type == ExcelEmpty) {
    number_v = ZERO;
  }

  if(format_v.type == ExcelEmpty) {
    return new_excel_string("");
  }

  if(number_v.type == ExcelString) {
 	 	s = number_v.string;
		if (s == NULL || *s == '\0' || isspace(*s)) {
			number_v = ZERO;
		}	        
		n = strtod (s, &p);
		if(*p == '\0') {
		  number_v = new_excel_number(n);
		}
  }

  if(number_v.type != ExcelNumber) {
    return number_v;
  }

  if(format_v.type != ExcelString) {
    return format_v;
  }

  if(strcmp(format_v.string,"0%") == 0) {
    // FIXME: Too little? 
    s = malloc(100);
    free_later(s);
    sprintf(s, "%d%%",(int) round(number_v.number*100));
    result = new_excel_string(s);
  } else {
    return format_v;
  }

  // inspect_excel_value(result);
  return result;
}

static ExcelValue vlookup_3(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue column_number_v) {
  return vlookup(lookup_value_v,lookup_table_v,column_number_v,TRUE);
}

static ExcelValue vlookup(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue column_number_v, ExcelValue match_type_v) {
  CHECK_FOR_PASSED_ERROR(lookup_value_v)
  CHECK_FOR_PASSED_ERROR(lookup_table_v)
  CHECK_FOR_PASSED_ERROR(column_number_v)
  CHECK_FOR_PASSED_ERROR(match_type_v)

  if(lookup_value_v.type == ExcelEmpty) return NA;
  if(lookup_table_v.type != ExcelRange) return NA;
  if(column_number_v.type != ExcelNumber) return NA;
  if(match_type_v.type == ExcelNumber && match_type_v.number >= 0 && match_type_v.number <= 1) {
    match_type_v.type = ExcelBoolean;
  }
  if(match_type_v.type != ExcelBoolean) return NA;
    
  int i;
  int last_good_match = 0;
  int rows = lookup_table_v.rows;
  int columns = lookup_table_v.columns;
  ExcelValue *array = lookup_table_v.array;
  ExcelValue possible_match_v;
  
  if(column_number_v.number > columns) return REF;
  if(column_number_v.number < 1) return VALUE;
  
  if(match_type_v.number == false) { // Exact match required
    for(i=0; i< rows; i++) {
      possible_match_v = array[i*columns];
      if(excel_equal(lookup_value_v,possible_match_v).number == true) {
        return array[(i*columns)+(((int) column_number_v.number) - 1)];
      }
    }
    return NA;
  } else { // Highest value that is less than or equal
    for(i=0; i< rows; i++) {
      possible_match_v = array[i*columns];
      if(lookup_value_v.type != possible_match_v.type) continue;
      if(more_than(possible_match_v,lookup_value_v).number == true) {
        if(i == 0) return NA;
        return array[((i-1)*columns)+(((int) column_number_v.number) - 1)];
      } else {
        last_good_match = i;
      }
    }
    return array[(last_good_match*columns)+(((int) column_number_v.number) - 1)];   
  }
  return NA;
}

static ExcelValue hlookup_3(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue row_number_v) {
  return hlookup(lookup_value_v,lookup_table_v,row_number_v,TRUE);
}

static ExcelValue hlookup(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue row_number_v, ExcelValue match_type_v) {
  CHECK_FOR_PASSED_ERROR(lookup_value_v)
  CHECK_FOR_PASSED_ERROR(lookup_table_v)
  CHECK_FOR_PASSED_ERROR(row_number_v)
  CHECK_FOR_PASSED_ERROR(match_type_v)

  if(lookup_value_v.type == ExcelEmpty) return NA;
  if(lookup_table_v.type != ExcelRange) return NA;
  if(row_number_v.type != ExcelNumber) return NA;
  if(match_type_v.type == ExcelNumber && match_type_v.number >= 0 && match_type_v.number <= 1) {
    match_type_v.type = ExcelBoolean;
  }
  if(match_type_v.type != ExcelBoolean) return NA;
    
  int i;
  int last_good_match = 0;
  int rows = lookup_table_v.rows;
  int columns = lookup_table_v.columns;
  ExcelValue *array = lookup_table_v.array;
  ExcelValue possible_match_v;
  
  if(row_number_v.number > rows) return REF;
  if(row_number_v.number < 1) return VALUE;
  
  if(match_type_v.number == false) { // Exact match required
    for(i=0; i< columns; i++) {
      possible_match_v = array[i];
      if(excel_equal(lookup_value_v,possible_match_v).number == true) {
        return array[((((int) row_number_v.number)-1)*columns)+(i)];
      }
    }
    return NA;
  } else { // Highest value that is less than or equal
    for(i=0; i< columns; i++) {
      possible_match_v = array[i];
      if(lookup_value_v.type != possible_match_v.type) continue;
      if(more_than(possible_match_v,lookup_value_v).number == true) {
        if(i == 0) return NA;
        return array[((((int) row_number_v.number)-1)*columns)+(i-1)];
      } else {
        last_good_match = i;
      }
    }
    return array[((((int) row_number_v.number)-1)*columns)+(last_good_match)];
  }
  return NA;
}


int test_functions() {
	// Test ABS
	assert(excel_abs(ONE).number == 1);
	assert(excel_abs(new_excel_number(-1)).number == 1);
	assert(excel_abs(VALUE).type == ExcelError);
	
	// Test ADD
	assert(add(ONE,new_excel_number(-2.5)).number == -1.5);
	assert(add(ONE,VALUE).type == ExcelError);
	
	// Test AND
	ExcelValue true_array1[] = { TRUE, new_excel_number(10)};
	ExcelValue true_array2[] = { ONE };
	ExcelValue false_array1[] = { FALSE, new_excel_number(10)};
	ExcelValue false_array2[] = { TRUE, new_excel_number(0)};
	// ExcelValue error_array1[] = { new_excel_number(10)}; // Not implemented
	ExcelValue error_array2[] = { TRUE, NA};
	assert(excel_and(2,true_array1).number == 1);
	assert(excel_and(1,true_array2).number == 1);
	assert(excel_and(2,false_array1).number == 0);
	assert(excel_and(2,false_array2).number == 0);
	// assert(excel_and(1,error_array1).type == ExcelError); // Not implemented
	assert(excel_and(2,error_array2).type == ExcelError);
	
	// Test AVERAGE
	ExcelValue array1[] = { new_excel_number(10), new_excel_number(5), TRUE, FALSE};
	ExcelValue array1_v = new_excel_range(array1,2,2);
	ExcelValue array2[] = { array1_v, new_excel_number(9), new_excel_string("Hello")};
	ExcelValue array3[] = { array1_v, new_excel_number(9), new_excel_string("Hello"), VALUE};
	assert(average(4, array1).number == 7.5);
	assert(average(3, array2).number == 8);
	assert(average(4, array3).type == ExcelError);
	
	// Test CHOOSE
	assert(choose(ONE,4,array1).number == 10);
	assert(choose(new_excel_number(4),4,array1).type == ExcelBoolean);
	assert(choose(new_excel_number(0),4,array1).type == ExcelError);
	assert(choose(new_excel_number(5),4,array1).type == ExcelError);
	assert(choose(ONE,4,array3).type == ExcelError);	
	
	// Test COUNT
	assert(count(4,array1).number == 2);
	assert(count(3,array2).number == 3);
	assert(count(4,array3).number == 3);

  // Test Large
  ExcelValue large_test_array_1[] = { new_excel_number(10), new_excel_number(100), new_excel_number(500), BLANK };
  ExcelValue large_test_array_1_v = new_excel_range(large_test_array_1, 1, 4);
  assert(large(large_test_array_1_v, new_excel_number(1)).number == 500);
  assert(large(large_test_array_1_v, new_excel_number(2)).number == 100);
  assert(large(large_test_array_1_v, new_excel_number(3)).number == 10);
  assert(large(large_test_array_1_v, new_excel_number(4)).type == ExcelError);
  assert(large(new_excel_number(500), new_excel_number(1)).number == 500);
  ExcelValue large_test_array_2[] = { new_excel_number(10), new_excel_number(100), new_excel_number(500), VALUE };
  ExcelValue large_test_array_2_v = new_excel_range(large_test_array_2, 1, 4);
  assert(large(large_test_array_2_v,new_excel_number(2)).type == ExcelError);
  assert(large(new_excel_number(500),VALUE).type == ExcelError);

	
	// Test COUNTA
	ExcelValue count_a_test_array_1[] = { new_excel_number(10), new_excel_number(5), TRUE, FALSE, new_excel_string("Hello"), VALUE, BLANK};
  ExcelValue count_a_test_array_1_v = new_excel_range(count_a_test_array_1,7,1);
  ExcelValue count_a_test_array_2[] = {new_excel_string("Bye"),count_a_test_array_1_v};
	assert(counta(7, count_a_test_array_1).number == 6);
  assert(counta(2, count_a_test_array_2).number == 7);
	
	// Test divide
	assert(divide(new_excel_number(12.4),new_excel_number(3.2)).number == 3.875);
	assert(divide(new_excel_number(12.4),new_excel_number(0)).type == ExcelError);
	
	// Test excel_equal
	assert(excel_equal(new_excel_number(1.2),new_excel_number(3.4)).type == ExcelBoolean);
	assert(excel_equal(new_excel_number(1.2),new_excel_number(3.4)).number == false);
	assert(excel_equal(new_excel_number(1.2),new_excel_number(1.2)).number == true);
	assert(excel_equal(new_excel_string("hello"), new_excel_string("HELLO")).number == true);
	assert(excel_equal(new_excel_string("hello world"), new_excel_string("HELLO")).number == false);
	assert(excel_equal(new_excel_string("1"), ONE).number == false);
	assert(excel_equal(DIV0, ONE).type == ExcelError);

	// Test not_equal
	assert(not_equal(new_excel_number(1.2),new_excel_number(3.4)).type == ExcelBoolean);
	assert(not_equal(new_excel_number(1.2),new_excel_number(3.4)).number == true);
	assert(not_equal(new_excel_number(1.2),new_excel_number(1.2)).number == false);
	assert(not_equal(new_excel_string("hello"), new_excel_string("HELLO")).number == false);
	assert(not_equal(new_excel_string("hello world"), new_excel_string("HELLO")).number == true);
	assert(not_equal(new_excel_string("1"), ONE).number == true);
	assert(not_equal(DIV0, ONE).type == ExcelError);
	
	// Test excel_if
	// Two argument version
	assert(excel_if_2(TRUE,new_excel_number(10)).type == ExcelNumber);
	assert(excel_if_2(TRUE,new_excel_number(10)).number == 10);
	assert(excel_if_2(FALSE,new_excel_number(10)).type == ExcelBoolean);
	assert(excel_if_2(FALSE,new_excel_number(10)).number == false);
	assert(excel_if_2(NA,new_excel_number(10)).type == ExcelError);
	// Three argument version
	assert(excel_if(TRUE,new_excel_number(10),new_excel_number(20)).type == ExcelNumber);
	assert(excel_if(TRUE,new_excel_number(10),new_excel_number(20)).number == 10);
	assert(excel_if(FALSE,new_excel_number(10),new_excel_number(20)).type == ExcelNumber);
	assert(excel_if(FALSE,new_excel_number(10),new_excel_number(20)).number == 20);
	assert(excel_if(NA,new_excel_number(10),new_excel_number(20)).type == ExcelError);
	assert(excel_if(TRUE,new_excel_number(10),NA).type == ExcelNumber);
	assert(excel_if(TRUE,new_excel_number(10),NA).number == 10);
	
	// Test excel_match
	ExcelValue excel_match_array_1[] = { new_excel_number(10), new_excel_number(100) };
	ExcelValue excel_match_array_1_v = new_excel_range(excel_match_array_1,1,2);
	ExcelValue excel_match_array_2[] = { new_excel_string("Pear"), new_excel_string("Bear"), new_excel_string("Apple") };
	ExcelValue excel_match_array_2_v = new_excel_range(excel_match_array_2,3,1);
	ExcelValue excel_match_array_4[] = { ONE, BLANK, new_excel_number(0) };
	ExcelValue excel_match_array_4_v = new_excel_range(excel_match_array_4,1,3);
	ExcelValue excel_match_array_5[] = { ONE, new_excel_number(0), BLANK };
	ExcelValue excel_match_array_5_v = new_excel_range(excel_match_array_5,1,3);
	
	// Two argument version
	assert(excel_match_2(new_excel_number(10),excel_match_array_1_v).number == 1);
	assert(excel_match_2(new_excel_number(100),excel_match_array_1_v).number == 2);
	assert(excel_match_2(new_excel_number(1000),excel_match_array_1_v).type == ExcelError);
    assert(excel_match_2(new_excel_number(0), excel_match_array_4_v).number == 2);
    assert(excel_match_2(BLANK, excel_match_array_5_v).number == 2);

	// Three argument version	
    assert(excel_match(new_excel_number(10.0), excel_match_array_1_v, new_excel_number(0) ).number == 1);
    assert(excel_match(new_excel_number(100.0), excel_match_array_1_v, new_excel_number(0) ).number == 2);
    assert(excel_match(new_excel_number(1000.0), excel_match_array_1_v, new_excel_number(0) ).type == ExcelError);
    assert(excel_match(new_excel_string("bEAr"), excel_match_array_2_v, new_excel_number(0) ).number == 2);
    assert(excel_match(new_excel_number(1000.0), excel_match_array_1_v, ONE ).number == 2);
    assert(excel_match(new_excel_number(1.0), excel_match_array_1_v, ONE ).type == ExcelError);
    assert(excel_match(new_excel_string("Care"), excel_match_array_2_v, new_excel_number(-1) ).number == 1  );
    assert(excel_match(new_excel_string("Zebra"), excel_match_array_2_v, new_excel_number(-1) ).type == ExcelError);
    assert(excel_match(new_excel_string("a"), excel_match_array_2_v, new_excel_number(-1) ).number == 2);
	
	// When not given a range
    assert(excel_match(new_excel_number(10.0), new_excel_number(10), new_excel_number(0.0)).number == 1);
    assert(excel_match(new_excel_number(20.0), new_excel_number(10), new_excel_number(0.0)).type == ExcelError);
    assert(excel_match(new_excel_number(10.0), excel_match_array_1_v, BLANK).number == 1);

	// Test more than on
	// .. numbers
    assert(more_than(ONE,new_excel_number(2)).number == false);
    assert(more_than(ONE,ONE).number == false);
    assert(more_than(ONE,new_excel_number(0)).number == true);
	// .. booleans
    assert(more_than(FALSE,FALSE).number == false);
    assert(more_than(FALSE,TRUE).number == false);
    assert(more_than(TRUE,FALSE).number == true);
    assert(more_than(TRUE,TRUE).number == false);
	// ..strings
    assert(more_than(new_excel_string("HELLO"),new_excel_string("Ardvark")).number == true);		
    assert(more_than(new_excel_string("HELLO"),new_excel_string("world")).number == false);
    assert(more_than(new_excel_string("HELLO"),new_excel_string("hello")).number == false);
	// ..blanks
    assert(more_than(BLANK,ONE).number == false);
    assert(more_than(BLANK,new_excel_number(-1)).number == true);
    assert(more_than(ONE,BLANK).number == true);
    assert(more_than(new_excel_number(-1),BLANK).number == false);

	// Test less than on
	// .. numbers
    assert(less_than(ONE,new_excel_number(2)).number == true);
    assert(less_than(ONE,ONE).number == false);
    assert(less_than(ONE,new_excel_number(0)).number == false);
	// .. booleans
    assert(less_than(FALSE,FALSE).number == false);
    assert(less_than(FALSE,TRUE).number == true);
    assert(less_than(TRUE,FALSE).number == false);
    assert(less_than(TRUE,TRUE).number == false);
	// ..strings
    assert(less_than(new_excel_string("HELLO"),new_excel_string("Ardvark")).number == false);		
    assert(less_than(new_excel_string("HELLO"),new_excel_string("world")).number == true);
    assert(less_than(new_excel_string("HELLO"),new_excel_string("hello")).number == false);
	// ..blanks
    assert(less_than(BLANK,ONE).number == true);
    assert(less_than(BLANK,new_excel_number(-1)).number == false);
    assert(less_than(ONE,BLANK).number == false);
    assert(less_than(new_excel_number(-1),BLANK).number == true);

	// Test FIND function
	// ... should find the first occurrence of one string in another, returning :value if the string doesn't match
	assert(find_2(new_excel_string("one"),new_excel_string("onetwothree")).number == 1);
	assert(find_2(new_excel_string("one"),new_excel_string("twoonethree")).number == 4);
	assert(find_2(new_excel_string("one"),new_excel_string("twoonthree")).type == ExcelError);
    // ... should find the first occurrence of one string in another after a given index, returning :value if the string doesn't match
	assert(find(new_excel_string("one"),new_excel_string("onetwothree"),ONE).number == 1);
	assert(find(new_excel_string("one"),new_excel_string("twoonethree"),new_excel_number(5)).type == ExcelError);
	assert(find(new_excel_string("one"),new_excel_string("oneone"),new_excel_number(2)).number == 4);
    // ... should be possible for the start_num to be a string, if that string converts to a number
	assert(find(new_excel_string("one"),new_excel_string("oneone"),new_excel_string("2")).number == 4);
    // ... should return a :value error when given anything but a number as the third argument
	assert(find(new_excel_string("one"),new_excel_string("oneone"),new_excel_string("a")).type == ExcelError);
    // ... should return a :value error when given a third argument that is less than 1 or greater than the length of the string
	assert(find(new_excel_string("one"),new_excel_string("oneone"),new_excel_number(0)).type == ExcelError);
	assert(find(new_excel_string("one"),new_excel_string("oneone"),new_excel_number(-1)).type == ExcelError);
	assert(find(new_excel_string("one"),new_excel_string("oneone"),new_excel_number(7)).type == ExcelError);
	// ... BLANK in the first argument matches any character
	assert(find_2(BLANK,new_excel_string("abcdefg")).number == 1);
	assert(find(BLANK,new_excel_string("abcdefg"),new_excel_number(4)).number == 4);
    // ... should treat BLANK in the second argument as an empty string
	assert(find_2(BLANK,BLANK).number == 1);
	assert(find_2(new_excel_string("a"),BLANK).type == ExcelError);
	// ... should return an error if any argument is an error
	assert(find(new_excel_string("one"),new_excel_string("onetwothree"),NA).type == ExcelError);
	assert(find(new_excel_string("one"),NA,ONE).type == ExcelError);
	assert(find(NA,new_excel_string("onetwothree"),ONE).type == ExcelError);
	
	// Test the IFERROR function
    assert(iferror(new_excel_string("ok"),ONE).type == ExcelString);
	assert(iferror(VALUE,ONE).type == ExcelNumber);		
	
	// Test the INDEX function
	ExcelValue index_array_1[] = { new_excel_number(10), new_excel_number(20), BLANK };
	ExcelValue index_array_1_v_column = new_excel_range(index_array_1,3,1);
	ExcelValue index_array_1_v_row = new_excel_range(index_array_1,1,3);
	ExcelValue index_array_2[] = { BLANK, ONE, new_excel_number(10), new_excel_number(11), new_excel_number(100), new_excel_number(101) };
	ExcelValue index_array_2_v = new_excel_range(index_array_2,3,2);
	// ... if given one argument should return the value at that offset in the range
	assert(excel_index_2(index_array_1_v_column,new_excel_number(2.0)).number == 20);
	assert(excel_index_2(index_array_1_v_row,new_excel_number(2.0)).number == 20);
	// ... but not if the range is not a single row or single column
	assert(excel_index_2(index_array_2_v,new_excel_number(2.0)).type == ExcelError);
    // ... it should return the value in the array at position row_number, column_number
	assert(excel_index(new_excel_number(10),ONE,ONE).number == 10);
	assert(excel_index(index_array_2_v,new_excel_number(1.0),new_excel_number(2.0)).number == 1);
	assert(excel_index(index_array_2_v,new_excel_number(2.0),new_excel_number(1.0)).number == 10);
	assert(excel_index(index_array_2_v,new_excel_number(3.0),new_excel_number(1.0)).number == 100);
	assert(excel_index(index_array_2_v,new_excel_number(3.0),new_excel_number(3.0)).type == ExcelError);
	// ... it should return ZERO not blank, if a blank cell is picked
	assert(excel_index(index_array_2_v,new_excel_number(1.0),new_excel_number(1.0)).type == ExcelNumber);
	assert(excel_index(index_array_2_v,new_excel_number(1.0),new_excel_number(1.0)).number == 0);
	assert(excel_index_2(index_array_1_v_row,new_excel_number(3.0)).type == ExcelNumber);
	assert(excel_index_2(index_array_1_v_row,new_excel_number(3.0)).number == 0);
	// ... it should return the whole row if given a zero column number
	ExcelValue index_result_1_v = excel_index(index_array_2_v,new_excel_number(1.0),new_excel_number(0.0));
	assert(index_result_1_v.type == ExcelRange);
	assert(index_result_1_v.rows == 1);
	assert(index_result_1_v.columns == 2);
	ExcelValue *index_result_1_a = index_result_1_v.array;
	assert(index_result_1_a[0].number == 0);
	assert(index_result_1_a[1].number == 1);
	// ... it should return the whole column if given a zero row number
	ExcelValue index_result_2_v = excel_index(index_array_2_v,new_excel_number(0),new_excel_number(1.0));
	assert(index_result_2_v.type == ExcelRange);
	assert(index_result_2_v.rows == 3);
	assert(index_result_2_v.columns == 1);
	ExcelValue *index_result_2_a = index_result_2_v.array;
	assert(index_result_2_a[0].number == 0);
	assert(index_result_2_a[1].number == 10);
	assert(index_result_2_a[2].number == 100);
    // ... it should return a :ref error when given arguments outside array range
	assert(excel_index_2(index_array_1_v_row,new_excel_number(-1)).type == ExcelError);
	assert(excel_index_2(index_array_1_v_row,new_excel_number(4)).type == ExcelError);
    // ... it should treat BLANK as zero if given as a required row or column number
	assert(excel_index(index_array_2_v,new_excel_number(1.0),BLANK).type == ExcelRange);
	assert(excel_index(index_array_2_v,BLANK,new_excel_number(2.0)).type == ExcelRange);
    // ... it should return an error if an argument is an error
	assert(excel_index(NA,NA,NA).type == ExcelError);
	
	// LEFT(string,[characters])
	// ... should return the left n characters from a string
    assert(strcmp(left_1(new_excel_string("ONE")).string,"O") == 0);
    assert(strcmp(left(new_excel_string("ONE"),ONE).string,"O") == 0);
    assert(strcmp(left(new_excel_string("ONE"),new_excel_number(3)).string,"ONE") == 0);
	// ... should turn numbers into strings before processing
	assert(strcmp(left(new_excel_number(1.31e12),new_excel_number(3)).string, "131") == 0);
	// ... should turn booleans into the words TRUE and FALSE before processing
    assert(strcmp(left(TRUE,new_excel_number(3)).string,"TRU") == 0);
	assert(strcmp(left(FALSE,new_excel_number(3)).string,"FAL") == 0);
	// ... should return BLANK if given BLANK for either argument
	assert(left(BLANK,new_excel_number(3)).type == ExcelEmpty);
	assert(left(new_excel_string("ONE"),BLANK).type == ExcelEmpty);
	// ... should return an error if an argument is an error
    assert(left_1(NA).type == ExcelError);
    assert(left(new_excel_string("ONE"),NA).type == ExcelError);
	
	// Test less than or equal to
	// .. numbers
    assert(less_than_or_equal(ONE,new_excel_number(2)).number == true);
    assert(less_than_or_equal(ONE,ONE).number == true);
    assert(less_than_or_equal(ONE,new_excel_number(0)).number == false);
	// .. booleans
    assert(less_than_or_equal(FALSE,FALSE).number == true);
    assert(less_than_or_equal(FALSE,TRUE).number == true);
    assert(less_than_or_equal(TRUE,FALSE).number == false);
    assert(less_than_or_equal(TRUE,TRUE).number == true);
	// ..strings
    assert(less_than_or_equal(new_excel_string("HELLO"),new_excel_string("Ardvark")).number == false);		
    assert(less_than_or_equal(new_excel_string("HELLO"),new_excel_string("world")).number == true);
    assert(less_than_or_equal(new_excel_string("HELLO"),new_excel_string("hello")).number == true);
	// ..blanks
    assert(less_than_or_equal(BLANK,ONE).number == true);
    assert(less_than_or_equal(BLANK,new_excel_number(-1)).number == false);
    assert(less_than_or_equal(ONE,BLANK).number == false);
    assert(less_than_or_equal(new_excel_number(-1),BLANK).number == true);

	// Test MAX
	assert(max(4, array1).number == 10);
	assert(max(3, array2).number == 10);
	assert(max(4, array3).type == ExcelError);

	// Test MIN
	assert(min(4, array1).number == 5);
	assert(min(3, array2).number == 5);
	assert(min(4, array3).type == ExcelError);

	// Test MOD
    // ... should return the remainder of a number
	assert(mod(new_excel_number(10), new_excel_number(3)).number == 1.0);
	assert(mod(new_excel_number(10), new_excel_number(5)).number == 0.0);
    // ... should be possible for the the arguments to be strings, if they convert to a number
	assert(mod(new_excel_string("3.5"),new_excel_string("2")).number == 1.5);
    // ... should treat BLANK as zero
	assert(mod(BLANK,new_excel_number(10)).number == 0);
	assert(mod(new_excel_number(10),BLANK).type == ExcelError);
	assert(mod(BLANK,BLANK).type == ExcelError);
    // ... should treat true as 1 and FALSE as 0
	assert((mod(new_excel_number(1.1),TRUE).number - 0.1) < 0.001);	
	assert(mod(new_excel_number(1.1),FALSE).type == ExcelError);
	assert(mod(FALSE,new_excel_number(10)).number == 0);
    // ... should return an error when given inappropriate arguments
	assert(mod(new_excel_string("Asdasddf"),new_excel_string("adsfads")).type == ExcelError);
    // ... should return an error if an argument is an error
	assert(mod(new_excel_number(1),VALUE).type == ExcelError);
	assert(mod(VALUE,new_excel_number(1)).type == ExcelError);
	assert(mod(VALUE,VALUE).type == ExcelError);
	
	// Test more than or equal to on
	// .. numbers
    assert(more_than_or_equal(ONE,new_excel_number(2)).number == false);
    assert(more_than_or_equal(ONE,ONE).number == true);
    assert(more_than_or_equal(ONE,new_excel_number(0)).number == true);
	// .. booleans
    assert(more_than_or_equal(FALSE,FALSE).number == true);
    assert(more_than_or_equal(FALSE,TRUE).number == false);
    assert(more_than_or_equal(TRUE,FALSE).number == true);
    assert(more_than_or_equal(TRUE,TRUE).number == true);
	// ..strings
    assert(more_than_or_equal(new_excel_string("HELLO"),new_excel_string("Ardvark")).number == true);		
    assert(more_than_or_equal(new_excel_string("HELLO"),new_excel_string("world")).number == false);
    assert(more_than_or_equal(new_excel_string("HELLO"),new_excel_string("hello")).number == true);
	// ..blanks
    assert(more_than_or_equal(BLANK,BLANK).number == true);
    assert(more_than_or_equal(BLANK,ONE).number == false);
    assert(more_than_or_equal(BLANK,new_excel_number(-1)).number == true);
    assert(more_than_or_equal(ONE,BLANK).number == true);
    assert(more_than_or_equal(new_excel_number(-1),BLANK).number == false);	
	
	// Test negative
    // ... should return the negative of its arguments
	assert(negative(new_excel_number(1)).number == -1);
	assert(negative(new_excel_number(-1)).number == 1);
    // ... should treat strings that only contain numbers as numbers
	assert(negative(new_excel_string("10")).number == -10);
	assert(negative(new_excel_string("-1.3")).number == 1.3);
    // ... should return an error when given inappropriate arguments
	assert(negative(new_excel_string("Asdasddf")).type == ExcelError);
    // ... should treat BLANK as zero
	assert(negative(BLANK).number == 0);
	
	// Test PMT(rate,number_of_periods,present_value) - optional arguments not yet implemented
    // ... should calculate the monthly payment required for a given principal, interest rate and loan period
    assert((pmt(new_excel_number(0.1),new_excel_number(10),new_excel_number(100)).number - -16.27) < 0.01);
    assert((pmt(new_excel_number(0.0123),new_excel_number(99.1),new_excel_number(123.32)).number - -2.159) < 0.01);
    assert((pmt(new_excel_number(0),new_excel_number(2),new_excel_number(10)).number - -5) < 0.01);

	// Test power
    // ... should return power of its arguments
	assert(power(new_excel_number(2),new_excel_number(3)).number == 8);
	assert(power(new_excel_number(4.0),new_excel_number(0.5)).number == 2.0);
	assert(power(new_excel_number(-4.0),new_excel_number(0.5)).type == ExcelError);
	
	// Test round
    assert(excel_round(new_excel_number(1.1), new_excel_number(0)).number == 1.0);
    assert(excel_round(new_excel_number(1.5), new_excel_number(0)).number == 2.0);
    assert(excel_round(new_excel_number(1.56),new_excel_number(1)).number == 1.6);
    assert(excel_round(new_excel_number(-1.56),new_excel_number(1)).number == -1.6);

	// Test rounddown
    assert(rounddown(new_excel_number(1.1), new_excel_number(0)).number == 1.0);
    assert(rounddown(new_excel_number(1.5), new_excel_number(0)).number == 1.0);
    assert(rounddown(new_excel_number(1.56),new_excel_number(1)).number == 1.5);
    assert(rounddown(new_excel_number(-1.56),new_excel_number(1)).number == -1.5);	

	// Test int
    assert(excel_int(new_excel_number(8.9)).number == 8.0);
    assert(excel_int(new_excel_number(-8.9)).number == -9.0);

	// Test roundup
    assert(roundup(new_excel_number(1.1), new_excel_number(0)).number == 2.0);
    assert(roundup(new_excel_number(1.5), new_excel_number(0)).number == 2.0);
    assert(roundup(new_excel_number(1.56),new_excel_number(1)).number == 1.6);
    assert(roundup(new_excel_number(-1.56),new_excel_number(1)).number == -1.6);	
	
	// Test string joining
	ExcelValue string_join_array_1[] = {new_excel_string("Hello "), new_excel_string("world")};
	ExcelValue string_join_array_2[] = {new_excel_string("Hello "), new_excel_string("world"), new_excel_string("!")};
	ExcelValue string_join_array_3[] = {new_excel_string("Top "), new_excel_number(10.0)};
	ExcelValue string_join_array_4[] = {new_excel_string("Top "), new_excel_number(10.5)};	
	ExcelValue string_join_array_5[] = {new_excel_string("Top "), TRUE, FALSE};	
	// ... should return a string by combining its arguments
	// inspect_excel_value(string_join(2, string_join_array_1));
  assert(string_join(2, string_join_array_1).string[6] == 'w');
  assert(string_join(2, string_join_array_1).string[11] == '\0');
	// ... should cope with an arbitrary number of arguments
  assert(string_join(3, string_join_array_2).string[11] == '!');
  assert(string_join(3, string_join_array_3).string[12] == '\0');
	// ... should convert values to strings as it goes
  assert(string_join(2, string_join_array_3).string[4] == '1');
  assert(string_join(2, string_join_array_3).string[5] == '0');
  assert(string_join(2, string_join_array_3).string[6] == '\0');
	// ... should convert integer values into strings without decimal points, and float values with decimal points
  assert(string_join(2, string_join_array_4).string[4] == '1');
  assert(string_join(2, string_join_array_4).string[5] == '0');
  assert(string_join(2, string_join_array_4).string[6] == '.');
  assert(string_join(2, string_join_array_4).string[7] == '5');
  assert(string_join(2, string_join_array_4).string[8] == '\0');
	// ... should convert TRUE and FALSE into strings
  assert(string_join(3,string_join_array_5).string[4] == 'T');
	
  // Test SUBTOTAL function
  ExcelValue subtotal_array_1[] = {new_excel_number(10),new_excel_number(100),BLANK};
  ExcelValue subtotal_array_1_v = new_excel_range(subtotal_array_1,3,1);
  ExcelValue subtotal_array_2[] = {new_excel_number(1),new_excel_string("two"),subtotal_array_1_v};
  
  // new_excel_number(1.0); 
  // inspect_excel_value(new_excel_number(1.0)); 
  // inspect_excel_value(new_excel_range(subtotal_array_2,3,1)); 
  // inspect_excel_value(subtotal(new_excel_number(1.0),3,subtotal_array_2)); 
  
  assert(subtotal(new_excel_number(1.0),3,subtotal_array_2).number == 111.0/3.0);
  assert(subtotal(new_excel_number(2.0),3,subtotal_array_2).number == 3);
  assert(subtotal(new_excel_number(3.0),7, count_a_test_array_1).number == 6);
  assert(subtotal(new_excel_number(3.0),3,subtotal_array_2).number == 4);
  assert(subtotal(new_excel_number(9.0),3,subtotal_array_2).number == 111);
  assert(subtotal(new_excel_number(101.0),3,subtotal_array_2).number == 111.0/3.0);
  assert(subtotal(new_excel_number(102.0),3,subtotal_array_2).number == 3);
  assert(subtotal(new_excel_number(103.0),3,subtotal_array_2).number == 4);
  assert(subtotal(new_excel_number(109.0),3,subtotal_array_2).number == 111);
  
  // Test SUMIFS function
  ExcelValue sumifs_array_1[] = {new_excel_number(10),new_excel_number(100),BLANK};
  ExcelValue sumifs_array_1_v = new_excel_range(sumifs_array_1,3,1);
  ExcelValue sumifs_array_2[] = {new_excel_string("pear"),new_excel_string("bear"),new_excel_string("apple")};
  ExcelValue sumifs_array_2_v = new_excel_range(sumifs_array_2,3,1);
  ExcelValue sumifs_array_3[] = {new_excel_number(1),new_excel_number(2),new_excel_number(3),new_excel_number(4),new_excel_number(5),new_excel_number(5)};
  ExcelValue sumifs_array_3_v = new_excel_range(sumifs_array_3,6,1);
  ExcelValue sumifs_array_4[] = {new_excel_string("CO2"),new_excel_string("CH4"),new_excel_string("N2O"),new_excel_string("CH4"),new_excel_string("N2O"),new_excel_string("CO2")};
  ExcelValue sumifs_array_4_v = new_excel_range(sumifs_array_4,6,1);
  ExcelValue sumifs_array_5[] = {new_excel_string("1A"),new_excel_string("1A"),new_excel_string("1A"),new_excel_number(4),new_excel_number(4),new_excel_number(5)};
  ExcelValue sumifs_array_5_v = new_excel_range(sumifs_array_5,6,1);
  
  // ... should only sum values that meet all of the criteria
  ExcelValue sumifs_array_6[] = { sumifs_array_1_v, new_excel_number(10), sumifs_array_2_v, new_excel_string("Bear") };
  assert(sumifs(sumifs_array_1_v,4,sumifs_array_6).number == 0.0);
  
  ExcelValue sumifs_array_7[] = { sumifs_array_1_v, new_excel_number(10), sumifs_array_2_v, new_excel_string("Pear") };
  assert(sumifs(sumifs_array_1_v,4,sumifs_array_7).number == 10.0);
  
  // ... should work when single cells are given where ranges expected
  ExcelValue sumifs_array_8[] = { new_excel_string("CAR"), new_excel_string("CAR"), new_excel_string("FCV"), new_excel_string("FCV")};
  assert(sumifs(new_excel_number(0.143897265452564), 4, sumifs_array_8).number == 0.143897265452564);

  // ... should match numbers with strings that contain numbers
  ExcelValue sumifs_array_9[] = { new_excel_number(10), new_excel_string("10.0")};
  assert(sumifs(new_excel_number(100),2,sumifs_array_9).number == 100);
  
  ExcelValue sumifs_array_10[] = { sumifs_array_4_v, new_excel_string("CO2"), sumifs_array_5_v, new_excel_number(2)};
  assert(sumifs(sumifs_array_3_v,4, sumifs_array_10).number == 0);
  
  // ... should match with strings that contain criteria
  ExcelValue sumifs_array_10a[] = { sumifs_array_3_v, new_excel_string("=5")};
  assert(sumifs(sumifs_array_3_v,2, sumifs_array_10a).number == 10);

  ExcelValue sumifs_array_10b[] = { sumifs_array_3_v, new_excel_string("<>3")};
  assert(sumifs(sumifs_array_3_v,2, sumifs_array_10b).number == 17);

  ExcelValue sumifs_array_10c[] = { sumifs_array_3_v, new_excel_string("<3")};
  assert(sumifs(sumifs_array_3_v,2, sumifs_array_10c).number == 3);
  
  ExcelValue sumifs_array_10d[] = { sumifs_array_3_v, new_excel_string("<=3")};
  assert(sumifs(sumifs_array_3_v,2, sumifs_array_10d).number == 6);

  ExcelValue sumifs_array_10e[] = { sumifs_array_3_v, new_excel_string(">3")};
  assert(sumifs(sumifs_array_3_v,2, sumifs_array_10e).number == 14);

  ExcelValue sumifs_array_10f[] = { sumifs_array_3_v, new_excel_string(">=3")};
  assert(sumifs(sumifs_array_3_v,2, sumifs_array_10f).number == 17);
  
  // ... should treat BLANK as an empty string when in the check_range, but not in the criteria
  ExcelValue sumifs_array_11[] = { BLANK, new_excel_number(20)};
  assert(sumifs(new_excel_number(100),2,sumifs_array_11).number == 0);
  
  ExcelValue sumifs_array_12[] = {BLANK, new_excel_string("")};
  assert(sumifs(new_excel_number(100),2,sumifs_array_12).number == 100);
  
  ExcelValue sumifs_array_13[] = {BLANK, BLANK};
  assert(sumifs(new_excel_number(100),2,sumifs_array_13).number == 0);
    
  // ... should return an error if range argument is an error
  assert(sumifs(REF,2,sumifs_array_13).type == ExcelError);
  
  
  // Test SUMIF
  // ... where there is only a check range
  assert(sumif_2(sumifs_array_1_v,new_excel_string(">0")).number == 110.0);
  assert(sumif_2(sumifs_array_1_v,new_excel_string(">10")).number == 100.0);
  assert(sumif_2(sumifs_array_1_v,new_excel_string("<100")).number == 10.0);
  
  // ... where there is a seprate sum range
  ExcelValue sumif_array_1[] = {new_excel_number(15),new_excel_number(20), new_excel_number(30)};
  ExcelValue sumif_array_1_v = new_excel_range(sumif_array_1,3,1);
  assert(sumif(sumifs_array_1_v,new_excel_string("10"),sumif_array_1_v).number == 15);
  
  
  // Test SUMPRODUCT
  ExcelValue sumproduct_1[] = { new_excel_number(10), new_excel_number(100), BLANK};
  ExcelValue sumproduct_2[] = { BLANK, new_excel_number(100), new_excel_number(10), BLANK};
  ExcelValue sumproduct_3[] = { BLANK };
  ExcelValue sumproduct_4[] = { new_excel_number(10), new_excel_number(100), new_excel_number(1000)};
  ExcelValue sumproduct_5[] = { new_excel_number(1), new_excel_number(2), new_excel_number(3)};
  ExcelValue sumproduct_6[] = { new_excel_number(1), new_excel_number(2), new_excel_number(4), new_excel_number(5)};
  ExcelValue sumproduct_7[] = { new_excel_number(10), new_excel_number(20), new_excel_number(40), new_excel_number(50)};
  ExcelValue sumproduct_8[] = { new_excel_number(11), new_excel_number(21), new_excel_number(41), new_excel_number(51)};
  ExcelValue sumproduct_9[] = { BLANK, BLANK };
  
  ExcelValue sumproduct_1_v = new_excel_range( sumproduct_1, 3, 1);
  ExcelValue sumproduct_2_v = new_excel_range( sumproduct_2, 3, 1);
  ExcelValue sumproduct_3_v = new_excel_range( sumproduct_3, 1, 1);
  // ExcelValue sumproduct_4_v = new_excel_range( sumproduct_4, 1, 3); // Unused
  ExcelValue sumproduct_5_v = new_excel_range( sumproduct_5, 3, 1);
  ExcelValue sumproduct_6_v = new_excel_range( sumproduct_6, 2, 2);
  ExcelValue sumproduct_7_v = new_excel_range( sumproduct_7, 2, 2);
  ExcelValue sumproduct_8_v = new_excel_range( sumproduct_8, 2, 2);
  ExcelValue sumproduct_9_v = new_excel_range( sumproduct_9, 2, 1);
  
  // ... should multiply together and then sum the elements in row or column areas given as arguments
  ExcelValue sumproducta_1[] = {sumproduct_1_v, sumproduct_2_v};
  assert(sumproduct(2,sumproducta_1).number == 100*100);

  // ... should return :value when miss-matched array sizes
  ExcelValue sumproducta_2[] = {sumproduct_1_v, sumproduct_3_v};
  assert(sumproduct(2,sumproducta_2).type == ExcelError);

  // ... if all its arguments are single values, should multiply them together
  // ExcelValue *sumproducta_3 = sumproduct_4;
  assert(sumproduct(3,sumproduct_4).number == 10*100*1000);

  // ... if it only has one range as an argument, should add its elements together
  ExcelValue sumproducta_4[] = {sumproduct_5_v};
  assert(sumproduct(1,sumproducta_4).number == 1 + 2 + 3);

  // ... if given multi row and column areas as arguments, should multipy the corresponding cell in each area and then add them all
  ExcelValue sumproducta_5[] = {sumproduct_6_v, sumproduct_7_v, sumproduct_8_v};
  assert(sumproduct(3,sumproducta_5).number == 1*10*11 + 2*20*21 + 4*40*41 + 5*50*51);

  // ... should raise an error if BLANK values outside of an array
  ExcelValue sumproducta_6[] = {BLANK,new_excel_number(1)};
  assert(sumproduct(2,sumproducta_6).type == ExcelError);

  // ... should ignore non-numeric values within an array
  ExcelValue sumproducta_7[] = {sumproduct_9_v, sumproduct_9_v};
  assert(sumproduct(2,sumproducta_7).number == 0);

  // ... should return an error if an argument is an error
  ExcelValue sumproducta_8[] = {VALUE};
  assert(sumproduct(1,sumproducta_8).type == ExcelError);
  
  // Test VLOOKUP
  ExcelValue vlookup_a1[] = {new_excel_number(1),new_excel_number(10),new_excel_number(2),new_excel_number(20),new_excel_number(3),new_excel_number(30)};
  ExcelValue vlookup_a2[] = {new_excel_string("hello"),new_excel_number(10),new_excel_number(2),new_excel_number(20),new_excel_number(3),new_excel_number(30)};
  ExcelValue vlookup_a3[] = {BLANK,new_excel_number(10),new_excel_number(2),new_excel_number(20),new_excel_number(3),new_excel_number(30)};
  ExcelValue vlookup_a1_v = new_excel_range(vlookup_a1,3,2);
  ExcelValue vlookup_a2_v = new_excel_range(vlookup_a2,3,2);
  ExcelValue vlookup_a3_v = new_excel_range(vlookup_a3,3,2);
  // ... should match the first argument against the first column of the table in the second argument, returning the value in the column specified by the third argument
  assert(vlookup_3(new_excel_number(2.0),vlookup_a1_v,new_excel_number(2)).number == 20);
  assert(vlookup_3(new_excel_number(1.5),vlookup_a1_v,new_excel_number(2)).number == 10);
  assert(vlookup_3(new_excel_number(0.5),vlookup_a1_v,new_excel_number(2)).type == ExcelError);
  assert(vlookup_3(new_excel_number(10),vlookup_a1_v,new_excel_number(2)).number == 30);
  assert(vlookup_3(new_excel_number(2.6),vlookup_a1_v,new_excel_number(2)).number == 20);
  // ... has a four argument variant that matches the lookup type
  assert(vlookup(new_excel_number(2.6),vlookup_a1_v,new_excel_number(2),TRUE).number == 20);
  assert(vlookup(new_excel_number(2.6),vlookup_a1_v,new_excel_number(2),FALSE).type == ExcelError);
  assert(vlookup(new_excel_string("HELLO"),vlookup_a2_v,new_excel_number(2),FALSE).number == 10);
  assert(vlookup(new_excel_string("HELMP"),vlookup_a2_v,new_excel_number(2),TRUE).number == 10);
  // .. the four argument variant should accept 0 and 1 instead of TRUE and FALSE
  assert(vlookup(new_excel_string("HELLO"),vlookup_a2_v,new_excel_number(2),ZERO).number == 10);
  assert(vlookup(new_excel_string("HELMP"),vlookup_a2_v,new_excel_number(2),ONE).number == 10);
  // ... BLANK should not match with anything" do
  assert(vlookup_3(BLANK,vlookup_a3_v,new_excel_number(2)).type == ExcelError);
  // ... should return an error if an argument is an error" do
  assert(vlookup(VALUE,vlookup_a1_v,new_excel_number(2),FALSE).type == ExcelError);
  assert(vlookup(new_excel_number(2.0),VALUE,new_excel_number(2),FALSE).type == ExcelError);
  assert(vlookup(new_excel_number(2.0),vlookup_a1_v,VALUE,FALSE).type == ExcelError);
  assert(vlookup(new_excel_number(2.0),vlookup_a1_v,new_excel_number(2),VALUE).type == ExcelError);
  assert(vlookup(VALUE,VALUE,VALUE,VALUE).type == ExcelError);
	
  // Test HLOOKUP
  ExcelValue hlookup_a1[] = {new_excel_number(1),new_excel_number(2),new_excel_number(3),new_excel_number(10),new_excel_number(20),new_excel_number(30)};
  ExcelValue hlookup_a2[] = {new_excel_string("hello"),new_excel_number(2),new_excel_number(3),new_excel_number(10),new_excel_number(20),new_excel_number(30)};
  ExcelValue hlookup_a3[] = {BLANK,new_excel_number(2),new_excel_number(3),new_excel_number(10),new_excel_number(20),new_excel_number(30)};
  ExcelValue hlookup_a1_v = new_excel_range(hlookup_a1,2,3);
  ExcelValue hlookup_a2_v = new_excel_range(hlookup_a2,2,3);
  ExcelValue hlookup_a3_v = new_excel_range(hlookup_a3,2,3);
  // ... should match the first argument against the first column of the table in the second argument, returning the value in the column specified by the third argument
  assert(hlookup_3(new_excel_number(2.0),hlookup_a1_v,new_excel_number(2)).number == 20);
  assert(hlookup_3(new_excel_number(1.5),hlookup_a1_v,new_excel_number(2)).number == 10);
  assert(hlookup_3(new_excel_number(0.5),hlookup_a1_v,new_excel_number(2)).type == ExcelError);
  assert(hlookup_3(new_excel_number(10),hlookup_a1_v,new_excel_number(2)).number == 30);
  assert(hlookup_3(new_excel_number(2.6),hlookup_a1_v,new_excel_number(2)).number == 20);
  // ... has a four argument variant that matches the lookup type
  assert(hlookup(new_excel_number(2.6),hlookup_a1_v,new_excel_number(2),TRUE).number == 20);
  assert(hlookup(new_excel_number(2.6),hlookup_a1_v,new_excel_number(2),FALSE).type == ExcelError);
  assert(hlookup(new_excel_string("HELLO"),hlookup_a2_v,new_excel_number(2),FALSE).number == 10);
  assert(hlookup(new_excel_string("HELMP"),hlookup_a2_v,new_excel_number(2),TRUE).number == 10);
  // ... that four argument variant should accept 0 or 1 for the lookup type
  assert(hlookup(new_excel_number(2.6),hlookup_a1_v,new_excel_number(2),ONE).number == 20);
  assert(hlookup(new_excel_number(2.6),hlookup_a1_v,new_excel_number(2),ZERO).type == ExcelError);
  assert(hlookup(new_excel_string("HELLO"),hlookup_a2_v,new_excel_number(2),ZERO).number == 10);
  assert(hlookup(new_excel_string("HELMP"),hlookup_a2_v,new_excel_number(2),ONE).number == 10);
  // ... BLANK should not match with anything" do
  assert(hlookup_3(BLANK,hlookup_a3_v,new_excel_number(2)).type == ExcelError);
  // ... should return an error if an argument is an error" do
  assert(hlookup(VALUE,hlookup_a1_v,new_excel_number(2),FALSE).type == ExcelError);
  assert(hlookup(new_excel_number(2.0),VALUE,new_excel_number(2),FALSE).type == ExcelError);
  assert(hlookup(new_excel_number(2.0),hlookup_a1_v,VALUE,FALSE).type == ExcelError);
  assert(hlookup(new_excel_number(2.0),hlookup_a1_v,new_excel_number(2),VALUE).type == ExcelError);
  assert(hlookup(VALUE,VALUE,VALUE,VALUE).type == ExcelError);

  // Test SUM
  ExcelValue sum_array_0[] = {new_excel_number(1084.4557258064517),new_excel_number(32.0516914516129),new_excel_number(137.36439193548387)};
  ExcelValue sum_array_0_v = new_excel_range(sum_array_0,3,1);
  ExcelValue sum_array_1[] = {sum_array_0_v};
  assert(sum(1,sum_array_1).number == 1253.8718091935484);

  // Test PV
  assert((int) pv_3(new_excel_number(0.03), new_excel_number(12), new_excel_number(100)).number == -995);
  assert((int) pv_4(new_excel_number(0.03), new_excel_number(12), new_excel_number(-100), new_excel_number(100)).number == 925);
  assert((int) pv_5(new_excel_number(0.03), new_excel_number(12), new_excel_number(-100), new_excel_number(-100), new_excel_number(1)).number == 1095);
  
  // Test TEXT
  assert(strcmp(text(new_excel_number(1.0), new_excel_string("0%")).string, "100%") == 0);
  assert(strcmp(text(new_excel_string("1"), new_excel_string("0%")).string, "100%") == 0);
  assert(strcmp(text(BLANK, new_excel_string("0%")).string, "0%") == 0);
  assert(strcmp(text(new_excel_number(1.0), BLANK).string, "") == 0);
  assert(strcmp(text(new_excel_string("ASGASD"), new_excel_string("0%")).string, "ASGASD") == 0);

  // Test LOG
  // One argument variant assumes LOG base 10
	assert(excel_log(new_excel_number(10)).number == 1);
	assert(excel_log(new_excel_number(100)).number == 2);
	assert(excel_log(new_excel_number(0)).type == ExcelError);
  // Two argument variant allows LOG base to be specified
	assert(excel_log_2(new_excel_number(8),new_excel_number(2)).number == 3.0);
	assert(excel_log_2(new_excel_number(8),new_excel_number(0)).type == ExcelError);
  
  // Test MMULT (Matrix multiplication)
  ExcelValue mmult_1[] = { ONE, TWO, THREE, FOUR};
  ExcelValue mmult_2[] = { FOUR, THREE, TWO, ONE};
  ExcelValue mmult_3[] = { ONE, TWO};
  ExcelValue mmult_4[] = { THREE, FOUR};
  ExcelValue mmult_5[] = { ONE, BLANK, THREE, FOUR};

  ExcelValue mmult_1_v = new_excel_range( mmult_1, 2, 2);
  ExcelValue mmult_2_v = new_excel_range( mmult_2, 2, 2);
  ExcelValue mmult_3_v = new_excel_range( mmult_3, 1, 2);
  ExcelValue mmult_4_v = new_excel_range( mmult_4, 2, 1);
  ExcelValue mmult_5_v = new_excel_range( mmult_5, 2, 2);

  // Treat the ranges as matrices and multiply them
  ExcelValue mmult_result_1_v = mmult(mmult_1_v, mmult_2_v);
  assert(mmult_result_1_v.type == ExcelRange);
  assert(mmult_result_1_v.rows == 2);
  assert(mmult_result_1_v.columns == 2);
  ExcelValue *mmult_result_1_a = mmult_result_1_v.array;
  assert(mmult_result_1_a[0].number == 8);
  assert(mmult_result_1_a[1].number == 5);
  assert(mmult_result_1_a[2].number == 20);
  assert(mmult_result_1_a[3].number == 13);
  
  ExcelValue mmult_result_2_v = mmult(mmult_3_v, mmult_4_v);
  assert(mmult_result_2_v.type == ExcelRange);
  assert(mmult_result_2_v.rows == 1);
  assert(mmult_result_2_v.columns == 1);
  ExcelValue *mmult_result_2_a = mmult_result_2_v.array;
  assert(mmult_result_2_a[0].number == 11);

  // Return an error if any cells are not numbers
  ExcelValue mmult_result_3_v = mmult(mmult_5_v, mmult_2_v);
  assert(mmult_result_3_v.type == ExcelRange);
  assert(mmult_result_3_v.rows == 2);
  assert(mmult_result_3_v.columns == 2);
  ExcelValue *mmult_result_3_a = mmult_result_3_v.array;
  assert(mmult_result_3_a[0].type == ExcelError);
  assert(mmult_result_3_a[1].type == ExcelError);
  assert(mmult_result_3_a[2].type == ExcelError);
  assert(mmult_result_3_a[3].type == ExcelError);
  
  // Returns errors if arguments are not ranges
  // FIXME: Should work in edge case where passed two numbers which excel treats as ranges with one row and column
  ExcelValue mmult_result_4_v = mmult(ONE, mmult_2_v);
  assert(mmult_result_4_v.type == ExcelError);
  
  // Returns errors if the ranges aren't the right size to multiply
  ExcelValue mmult_result_5_v = mmult(mmult_1_v, mmult_3_v);
  assert(mmult_result_5_v.type == ExcelRange);
  assert(mmult_result_5_v.rows == 2);
  assert(mmult_result_5_v.columns == 2);
  ExcelValue *mmult_result_5_a = mmult_result_5_v.array;
  assert(mmult_result_5_a[0].type == ExcelError);
  assert(mmult_result_5_a[1].type == ExcelError);
  assert(mmult_result_5_a[2].type == ExcelError);
  assert(mmult_result_5_a[3].type == ExcelError);

  // Test the RANK() function
  ExcelValue rank_1_a[] = { FIVE, BLANK, THREE, ONE, ONE, FOUR, FIVE, TRUE, SIX, new_excel_string("Hi")};
  ExcelValue rank_2_a[] = { FIVE, BLANK, THREE, NA, ONE, FOUR, FIVE, TRUE, SIX, new_excel_string("Hi")};
  ExcelValue rank_1_v = new_excel_range( rank_1_a, 2, 5);
  ExcelValue rank_2_v = new_excel_range( rank_2_a, 2, 5);

  // Basics
  assert(rank(THREE, rank_1_v, ZERO).number == 5);
  assert(rank_2(THREE, rank_1_v).number == 5);
  assert(rank(THREE, rank_1_v, ONE).number == 3);
  assert(rank(ONE, rank_1_v, ZERO).number == 6);
  assert(rank(new_excel_string("3"), rank_1_v, ONE).number == 3);

  // Errors
  assert(rank(TEN, rank_1_v, ZERO).type == ExcelError);
  assert(rank(THREE, rank_2_v, ZERO).type == ExcelError);


  // Test the ISNUMBER function
  assert(excel_isnumber(ONE).type == ExcelBoolean);
  assert(excel_isnumber(ONE).number == 1);
  assert(excel_isnumber(BLANK).type == ExcelBoolean);
  assert(excel_isnumber(BLANK).number == 0);
  assert(excel_isnumber(new_excel_string("Hello")).type == ExcelBoolean);
  assert(excel_isnumber(new_excel_string("Hello")).number == 0);
  assert(excel_isnumber(TRUE).type == ExcelBoolean);
  assert(excel_isnumber(TRUE).number == 0);

  // Release memory
  free_all_allocated_memory();
  
  return 0;
}

int main() {
	return test_functions();
}
// End of the generic c functions

// Start of the file specific functions

// definitions
static ExcelValue ORIGINAL_EXCEL_FILENAME = {.type = ExcelString, .string = "/Users/tamc/Documents/2050/global_2050_model/spreadsheet/2050Model.xlsx" };
static ExcelValue _common0();
static ExcelValue _common1();
static ExcelValue _common2();
static ExcelValue _common3();
ExcelValue user_inputs_b2();
ExcelValue user_inputs_c2();
ExcelValue user_inputs_g2();
ExcelValue user_inputs_l2();
ExcelValue user_inputs_g3();
ExcelValue user_inputs_l3();
ExcelValue user_inputs_b5();
ExcelValue user_inputs_f5();
ExcelValue user_inputs_g5();
ExcelValue user_inputs_b6();
ExcelValue user_inputs_c6();
ExcelValue user_inputs_d6();
ExcelValue user_inputs_e6();
ExcelValue user_inputs_f6();
ExcelValue user_inputs_b7();
ExcelValue user_inputs_c7();
ExcelValue user_inputs_d7();
ExcelValue user_inputs_e7();
ExcelValue user_inputs_f7();
ExcelValue user_inputs_c8();
ExcelValue user_inputs_d8();
ExcelValue user_inputs_e8();
ExcelValue user_inputs_f8();
ExcelValue user_inputs_b9();
ExcelValue user_inputs_c9();
ExcelValue user_inputs_d9();
ExcelValue user_inputs_e9();
ExcelValue user_inputs_f9();
ExcelValue user_inputs_c10();
ExcelValue user_inputs_d10();
ExcelValue user_inputs_e10();
ExcelValue user_inputs_f10();
ExcelValue user_inputs_c11();
ExcelValue user_inputs_d11();
ExcelValue user_inputs_e11();
ExcelValue user_inputs_f11();
ExcelValue user_inputs_c12();
ExcelValue user_inputs_d12();
ExcelValue user_inputs_e12();
ExcelValue user_inputs_f12();
ExcelValue user_inputs_c13();
ExcelValue user_inputs_d13();
ExcelValue user_inputs_e13();
ExcelValue user_inputs_f13();
ExcelValue user_inputs_b14();
ExcelValue user_inputs_c14();
ExcelValue user_inputs_d14();
ExcelValue user_inputs_e14();
ExcelValue user_inputs_f14();
ExcelValue user_inputs_c15();
ExcelValue user_inputs_d15();
ExcelValue user_inputs_e15();
ExcelValue user_inputs_f15();
ExcelValue user_inputs_c16();
ExcelValue user_inputs_d16();
ExcelValue user_inputs_e16();
ExcelValue user_inputs_f16();
ExcelValue user_inputs_c17();
ExcelValue user_inputs_d17();
ExcelValue user_inputs_e17();
ExcelValue user_inputs_f17();
ExcelValue user_inputs_c18();
ExcelValue user_inputs_d18();
ExcelValue user_inputs_e18();
ExcelValue user_inputs_f18();
ExcelValue user_inputs_c19();
ExcelValue user_inputs_d19();
ExcelValue user_inputs_e19();
ExcelValue user_inputs_f19();
ExcelValue user_inputs_b20();
ExcelValue user_inputs_c20();
ExcelValue user_inputs_d20();
ExcelValue user_inputs_e20();
ExcelValue user_inputs_f20();
ExcelValue user_inputs_c21();
ExcelValue user_inputs_d21();
ExcelValue user_inputs_e21();
ExcelValue user_inputs_f21();
ExcelValue user_inputs_c22();
ExcelValue user_inputs_d22();
ExcelValue user_inputs_e22();
ExcelValue user_inputs_f22();
ExcelValue user_inputs_c23();
ExcelValue user_inputs_d23();
ExcelValue user_inputs_e23();
ExcelValue user_inputs_f23();
ExcelValue user_inputs_b24();
ExcelValue user_inputs_c24();
ExcelValue user_inputs_d24();
ExcelValue user_inputs_e24();
ExcelValue user_inputs_f24();
ExcelValue user_inputs_c25();
ExcelValue user_inputs_d25();
ExcelValue user_inputs_e25();
ExcelValue user_inputs_f25();
ExcelValue user_inputs_c26();
ExcelValue user_inputs_d26();
ExcelValue user_inputs_e26();
ExcelValue user_inputs_f26();
ExcelValue user_inputs_c27();
ExcelValue user_inputs_d27();
ExcelValue user_inputs_e27();
ExcelValue user_inputs_f27();
ExcelValue user_inputs_c28();
ExcelValue user_inputs_d28();
ExcelValue user_inputs_e28();
ExcelValue user_inputs_f28();
ExcelValue user_inputs_c29();
ExcelValue user_inputs_d29();
ExcelValue user_inputs_e29();
ExcelValue user_inputs_f29();
ExcelValue user_inputs_c30();
ExcelValue user_inputs_d30();
ExcelValue user_inputs_e30();
ExcelValue user_inputs_f30();
ExcelValue user_inputs_c31();
ExcelValue user_inputs_d31();
ExcelValue user_inputs_e31();
ExcelValue user_inputs_f31();
ExcelValue user_inputs_c32();
ExcelValue user_inputs_d32();
ExcelValue user_inputs_e32();
ExcelValue user_inputs_f32();
ExcelValue user_inputs_c33();
ExcelValue user_inputs_d33();
ExcelValue user_inputs_e33();
ExcelValue user_inputs_f33();
ExcelValue user_inputs_b34();
ExcelValue user_inputs_c34();
ExcelValue user_inputs_d34();
ExcelValue user_inputs_e34();
ExcelValue user_inputs_f34();
ExcelValue user_inputs_c35();
ExcelValue user_inputs_d35();
ExcelValue user_inputs_e35();
ExcelValue user_inputs_f35();
ExcelValue user_inputs_c36();
ExcelValue user_inputs_d36();
ExcelValue user_inputs_e36();
ExcelValue user_inputs_f36();
ExcelValue user_inputs_c37();
ExcelValue user_inputs_d37();
ExcelValue user_inputs_e37();
ExcelValue user_inputs_f37();
ExcelValue user_inputs_c38();
ExcelValue user_inputs_d38();
ExcelValue user_inputs_e38();
ExcelValue user_inputs_f38();
ExcelValue user_inputs_c39();
ExcelValue user_inputs_d39();
ExcelValue user_inputs_e39();
ExcelValue user_inputs_f39();
ExcelValue user_inputs_c40();
ExcelValue user_inputs_d40();
ExcelValue user_inputs_e40();
ExcelValue user_inputs_f40();
ExcelValue user_inputs_c41();
ExcelValue user_inputs_d41();
ExcelValue user_inputs_e41();
ExcelValue user_inputs_f41();
ExcelValue user_inputs_c42();
ExcelValue user_inputs_d42();
ExcelValue user_inputs_e42();
ExcelValue user_inputs_f42();
ExcelValue user_inputs_c43();
ExcelValue user_inputs_d43();
ExcelValue user_inputs_e43();
ExcelValue user_inputs_f43();
ExcelValue user_inputs_b44();
ExcelValue user_inputs_c44();
ExcelValue user_inputs_d44();
ExcelValue user_inputs_e44();
ExcelValue user_inputs_f44();
ExcelValue user_inputs_b45();
ExcelValue user_inputs_c45();
ExcelValue user_inputs_d45();
ExcelValue user_inputs_e45();
ExcelValue user_inputs_f45();
ExcelValue user_inputs_c46();
ExcelValue user_inputs_d46();
ExcelValue user_inputs_e46();
ExcelValue user_inputs_f46();
ExcelValue outputs_climate_impacts_b2();
ExcelValue outputs_climate_impacts_c2();
ExcelValue outputs_climate_impacts_e2();
ExcelValue outputs_climate_impacts_b3();
ExcelValue outputs_climate_impacts_b4();
ExcelValue outputs_emissions_b2();
ExcelValue outputs_emissions_c2();
ExcelValue outputs_emissions_e2();
ExcelValue outputs_emissions_k2();
ExcelValue outputs_emissions_b3();
ExcelValue outputs_emissions_k3();
ExcelValue outputs_emissions_c5();
ExcelValue outputs_emissions_k5();
ExcelValue outputs_emissions_c7();
ExcelValue outputs_emissions_d7();
ExcelValue outputs_emissions_f7();
ExcelValue outputs_emissions_k7();
ExcelValue outputs_emissions_c8();
ExcelValue outputs_emissions_d8();
ExcelValue outputs_emissions_f8();
ExcelValue outputs_emissions_c11();
ExcelValue outputs_emissions_c13();
ExcelValue outputs_emissions_c14();
ExcelValue outputs_emissions_d14();
ExcelValue outputs_emissions_c15();
ExcelValue outputs_emissions_d15();
ExcelValue outputs_emissions_c16();
ExcelValue outputs_emissions_d16();
ExcelValue outputs_emissions_c19();
ExcelValue outputs_emissions_c21();
ExcelValue outputs_emissions_d21();
ExcelValue outputs_emissions_g21();
ExcelValue outputs_emissions_b26();
ExcelValue outputs_emissions_c26();
ExcelValue outputs_emissions_c28();
ExcelValue outputs_emissions_aj28();
ExcelValue outputs_emissions_h29();
ExcelValue outputs_emissions_r29();
ExcelValue outputs_emissions_aa29();
ExcelValue outputs_emissions_d30();
ExcelValue outputs_emissions_h30();
ExcelValue outputs_emissions_i30();
ExcelValue outputs_emissions_j30();
ExcelValue outputs_emissions_k30();
ExcelValue outputs_emissions_l30();
ExcelValue outputs_emissions_m30();
ExcelValue outputs_emissions_n30();
ExcelValue outputs_emissions_o30();
ExcelValue outputs_emissions_p30();
ExcelValue outputs_emissions_r30();
ExcelValue outputs_emissions_s30();
ExcelValue outputs_emissions_t30();
ExcelValue outputs_emissions_u30();
ExcelValue outputs_emissions_v30();
ExcelValue outputs_emissions_w30();
ExcelValue outputs_emissions_x30();
ExcelValue outputs_emissions_y30();
ExcelValue outputs_emissions_z30();
ExcelValue outputs_emissions_aa30();
ExcelValue outputs_emissions_ab30();
ExcelValue outputs_emissions_ac30();
ExcelValue outputs_emissions_ad30();
ExcelValue outputs_emissions_ae30();
ExcelValue outputs_emissions_af30();
ExcelValue outputs_emissions_ag30();
ExcelValue outputs_emissions_ah30();
ExcelValue outputs_emissions_ai30();
ExcelValue outputs_emissions_aj30();
ExcelValue outputs_emissions_c31();
ExcelValue outputs_emissions_d31();
ExcelValue outputs_emissions_h31();
ExcelValue outputs_emissions_i31();
ExcelValue outputs_emissions_j31();
ExcelValue outputs_emissions_k31();
ExcelValue outputs_emissions_l31();
ExcelValue outputs_emissions_m31();
ExcelValue outputs_emissions_n31();
ExcelValue outputs_emissions_o31();
ExcelValue outputs_emissions_p31();
ExcelValue outputs_emissions_r31();
ExcelValue outputs_emissions_s31();
ExcelValue outputs_emissions_t31();
ExcelValue outputs_emissions_u31();
ExcelValue outputs_emissions_v31();
ExcelValue outputs_emissions_w31();
ExcelValue outputs_emissions_x31();
ExcelValue outputs_emissions_y31();
ExcelValue outputs_emissions_z31();
ExcelValue outputs_emissions_aa31();
ExcelValue outputs_emissions_ab31();
ExcelValue outputs_emissions_ac31();
ExcelValue outputs_emissions_ad31();
ExcelValue outputs_emissions_ae31();
ExcelValue outputs_emissions_af31();
ExcelValue outputs_emissions_ag31();
ExcelValue outputs_emissions_ah31();
ExcelValue outputs_emissions_ai31();
ExcelValue outputs_emissions_aj31();
ExcelValue outputs_emissions_c32();
ExcelValue outputs_emissions_d32();
ExcelValue outputs_emissions_h32();
ExcelValue outputs_emissions_i32();
ExcelValue outputs_emissions_j32();
ExcelValue outputs_emissions_k32();
ExcelValue outputs_emissions_l32();
ExcelValue outputs_emissions_m32();
ExcelValue outputs_emissions_n32();
ExcelValue outputs_emissions_o32();
ExcelValue outputs_emissions_p32();
ExcelValue outputs_emissions_r32();
ExcelValue outputs_emissions_s32();
ExcelValue outputs_emissions_t32();
ExcelValue outputs_emissions_u32();
ExcelValue outputs_emissions_v32();
ExcelValue outputs_emissions_w32();
ExcelValue outputs_emissions_x32();
ExcelValue outputs_emissions_y32();
ExcelValue outputs_emissions_z32();
ExcelValue outputs_emissions_aa32();
ExcelValue outputs_emissions_ab32();
ExcelValue outputs_emissions_ac32();
ExcelValue outputs_emissions_ad32();
ExcelValue outputs_emissions_ae32();
ExcelValue outputs_emissions_af32();
ExcelValue outputs_emissions_ag32();
ExcelValue outputs_emissions_ah32();
ExcelValue outputs_emissions_ai32();
ExcelValue outputs_emissions_aj32();
ExcelValue outputs_emissions_c33();
ExcelValue outputs_emissions_d33();
ExcelValue outputs_emissions_h33();
ExcelValue outputs_emissions_i33();
ExcelValue outputs_emissions_j33();
ExcelValue outputs_emissions_k33();
ExcelValue outputs_emissions_l33();
ExcelValue outputs_emissions_m33();
ExcelValue outputs_emissions_n33();
ExcelValue outputs_emissions_o33();
ExcelValue outputs_emissions_p33();
ExcelValue outputs_emissions_r33();
ExcelValue outputs_emissions_s33();
ExcelValue outputs_emissions_t33();
ExcelValue outputs_emissions_u33();
ExcelValue outputs_emissions_v33();
ExcelValue outputs_emissions_w33();
ExcelValue outputs_emissions_x33();
ExcelValue outputs_emissions_y33();
ExcelValue outputs_emissions_z33();
ExcelValue outputs_emissions_aa33();
ExcelValue outputs_emissions_ab33();
ExcelValue outputs_emissions_ac33();
ExcelValue outputs_emissions_ad33();
ExcelValue outputs_emissions_ae33();
ExcelValue outputs_emissions_af33();
ExcelValue outputs_emissions_ag33();
ExcelValue outputs_emissions_ah33();
ExcelValue outputs_emissions_ai33();
ExcelValue outputs_emissions_aj33();
ExcelValue outputs_emissions_c34();
ExcelValue outputs_emissions_d34();
ExcelValue outputs_emissions_h34();
ExcelValue outputs_emissions_i34();
ExcelValue outputs_emissions_j34();
ExcelValue outputs_emissions_k34();
ExcelValue outputs_emissions_l34();
ExcelValue outputs_emissions_m34();
ExcelValue outputs_emissions_n34();
ExcelValue outputs_emissions_o34();
ExcelValue outputs_emissions_p34();
ExcelValue outputs_emissions_r34();
ExcelValue outputs_emissions_s34();
ExcelValue outputs_emissions_t34();
ExcelValue outputs_emissions_u34();
ExcelValue outputs_emissions_v34();
ExcelValue outputs_emissions_w34();
ExcelValue outputs_emissions_x34();
ExcelValue outputs_emissions_y34();
ExcelValue outputs_emissions_z34();
ExcelValue outputs_emissions_aa34();
ExcelValue outputs_emissions_ab34();
ExcelValue outputs_emissions_ac34();
ExcelValue outputs_emissions_ad34();
ExcelValue outputs_emissions_ae34();
ExcelValue outputs_emissions_af34();
ExcelValue outputs_emissions_ag34();
ExcelValue outputs_emissions_ah34();
ExcelValue outputs_emissions_ai34();
ExcelValue outputs_emissions_aj34();
ExcelValue outputs_emissions_c35();
ExcelValue outputs_emissions_d35();
ExcelValue outputs_emissions_h35();
ExcelValue outputs_emissions_i35();
ExcelValue outputs_emissions_j35();
ExcelValue outputs_emissions_k35();
ExcelValue outputs_emissions_l35();
ExcelValue outputs_emissions_m35();
ExcelValue outputs_emissions_n35();
ExcelValue outputs_emissions_o35();
ExcelValue outputs_emissions_p35();
ExcelValue outputs_emissions_r35();
ExcelValue outputs_emissions_s35();
ExcelValue outputs_emissions_t35();
ExcelValue outputs_emissions_u35();
ExcelValue outputs_emissions_v35();
ExcelValue outputs_emissions_w35();
ExcelValue outputs_emissions_x35();
ExcelValue outputs_emissions_y35();
ExcelValue outputs_emissions_z35();
ExcelValue outputs_emissions_aa35();
ExcelValue outputs_emissions_ab35();
ExcelValue outputs_emissions_ac35();
ExcelValue outputs_emissions_ad35();
ExcelValue outputs_emissions_ae35();
ExcelValue outputs_emissions_af35();
ExcelValue outputs_emissions_ag35();
ExcelValue outputs_emissions_ah35();
ExcelValue outputs_emissions_ai35();
ExcelValue outputs_emissions_aj35();
ExcelValue outputs_emissions_c36();
ExcelValue outputs_emissions_d36();
ExcelValue outputs_emissions_h36();
ExcelValue outputs_emissions_i36();
ExcelValue outputs_emissions_j36();
ExcelValue outputs_emissions_k36();
ExcelValue outputs_emissions_l36();
ExcelValue outputs_emissions_m36();
ExcelValue outputs_emissions_n36();
ExcelValue outputs_emissions_o36();
ExcelValue outputs_emissions_p36();
ExcelValue outputs_emissions_r36();
ExcelValue outputs_emissions_s36();
ExcelValue outputs_emissions_t36();
ExcelValue outputs_emissions_u36();
ExcelValue outputs_emissions_v36();
ExcelValue outputs_emissions_w36();
ExcelValue outputs_emissions_x36();
ExcelValue outputs_emissions_y36();
ExcelValue outputs_emissions_z36();
ExcelValue outputs_emissions_aa36();
ExcelValue outputs_emissions_ab36();
ExcelValue outputs_emissions_ac36();
ExcelValue outputs_emissions_ad36();
ExcelValue outputs_emissions_ae36();
ExcelValue outputs_emissions_af36();
ExcelValue outputs_emissions_ag36();
ExcelValue outputs_emissions_ah36();
ExcelValue outputs_emissions_ai36();
ExcelValue outputs_emissions_aj36();
ExcelValue outputs_emissions_c37();
ExcelValue outputs_emissions_d37();
ExcelValue outputs_emissions_h37();
ExcelValue outputs_emissions_i37();
ExcelValue outputs_emissions_j37();
ExcelValue outputs_emissions_k37();
ExcelValue outputs_emissions_l37();
ExcelValue outputs_emissions_m37();
ExcelValue outputs_emissions_n37();
ExcelValue outputs_emissions_o37();
ExcelValue outputs_emissions_p37();
ExcelValue outputs_emissions_r37();
ExcelValue outputs_emissions_s37();
ExcelValue outputs_emissions_t37();
ExcelValue outputs_emissions_u37();
ExcelValue outputs_emissions_v37();
ExcelValue outputs_emissions_w37();
ExcelValue outputs_emissions_x37();
ExcelValue outputs_emissions_y37();
ExcelValue outputs_emissions_z37();
ExcelValue outputs_emissions_aa37();
ExcelValue outputs_emissions_ab37();
ExcelValue outputs_emissions_ac37();
ExcelValue outputs_emissions_ad37();
ExcelValue outputs_emissions_ae37();
ExcelValue outputs_emissions_af37();
ExcelValue outputs_emissions_ag37();
ExcelValue outputs_emissions_ah37();
ExcelValue outputs_emissions_ai37();
ExcelValue outputs_emissions_aj37();
ExcelValue outputs_emissions_c38();
ExcelValue outputs_emissions_d38();
ExcelValue outputs_emissions_h38();
ExcelValue outputs_emissions_i38();
ExcelValue outputs_emissions_j38();
ExcelValue outputs_emissions_k38();
ExcelValue outputs_emissions_l38();
ExcelValue outputs_emissions_m38();
ExcelValue outputs_emissions_n38();
ExcelValue outputs_emissions_o38();
ExcelValue outputs_emissions_p38();
ExcelValue outputs_emissions_r38();
ExcelValue outputs_emissions_s38();
ExcelValue outputs_emissions_t38();
ExcelValue outputs_emissions_u38();
ExcelValue outputs_emissions_v38();
ExcelValue outputs_emissions_w38();
ExcelValue outputs_emissions_x38();
ExcelValue outputs_emissions_y38();
ExcelValue outputs_emissions_z38();
ExcelValue outputs_emissions_aa38();
ExcelValue outputs_emissions_ab38();
ExcelValue outputs_emissions_ac38();
ExcelValue outputs_emissions_ad38();
ExcelValue outputs_emissions_ae38();
ExcelValue outputs_emissions_af38();
ExcelValue outputs_emissions_ag38();
ExcelValue outputs_emissions_ah38();
ExcelValue outputs_emissions_ai38();
ExcelValue outputs_emissions_aj38();
ExcelValue outputs_emissions_c39();
ExcelValue outputs_emissions_d39();
ExcelValue outputs_emissions_h39();
ExcelValue outputs_emissions_i39();
ExcelValue outputs_emissions_j39();
ExcelValue outputs_emissions_k39();
ExcelValue outputs_emissions_l39();
ExcelValue outputs_emissions_m39();
ExcelValue outputs_emissions_n39();
ExcelValue outputs_emissions_o39();
ExcelValue outputs_emissions_p39();
ExcelValue outputs_emissions_r39();
ExcelValue outputs_emissions_s39();
ExcelValue outputs_emissions_t39();
ExcelValue outputs_emissions_u39();
ExcelValue outputs_emissions_v39();
ExcelValue outputs_emissions_w39();
ExcelValue outputs_emissions_x39();
ExcelValue outputs_emissions_y39();
ExcelValue outputs_emissions_z39();
ExcelValue outputs_emissions_aa39();
ExcelValue outputs_emissions_ab39();
ExcelValue outputs_emissions_ac39();
ExcelValue outputs_emissions_ad39();
ExcelValue outputs_emissions_ae39();
ExcelValue outputs_emissions_af39();
ExcelValue outputs_emissions_ag39();
ExcelValue outputs_emissions_ah39();
ExcelValue outputs_emissions_ai39();
ExcelValue outputs_emissions_aj39();
ExcelValue outputs_emissions_c40();
ExcelValue outputs_emissions_d40();
ExcelValue outputs_emissions_h40();
ExcelValue outputs_emissions_i40();
ExcelValue outputs_emissions_j40();
ExcelValue outputs_emissions_k40();
ExcelValue outputs_emissions_l40();
ExcelValue outputs_emissions_m40();
ExcelValue outputs_emissions_n40();
ExcelValue outputs_emissions_o40();
ExcelValue outputs_emissions_p40();
ExcelValue outputs_emissions_r40();
ExcelValue outputs_emissions_s40();
ExcelValue outputs_emissions_t40();
ExcelValue outputs_emissions_u40();
ExcelValue outputs_emissions_v40();
ExcelValue outputs_emissions_w40();
ExcelValue outputs_emissions_x40();
ExcelValue outputs_emissions_y40();
ExcelValue outputs_emissions_z40();
ExcelValue outputs_emissions_aa40();
ExcelValue outputs_emissions_ab40();
ExcelValue outputs_emissions_ac40();
ExcelValue outputs_emissions_ad40();
ExcelValue outputs_emissions_ae40();
ExcelValue outputs_emissions_af40();
ExcelValue outputs_emissions_ag40();
ExcelValue outputs_emissions_ah40();
ExcelValue outputs_emissions_ai40();
ExcelValue outputs_emissions_aj40();
ExcelValue outputs_emissions_d41();
ExcelValue outputs_emissions_c45();
ExcelValue outputs_emissions_h46();
ExcelValue outputs_emissions_r46();
ExcelValue outputs_emissions_aa46();
ExcelValue outputs_emissions_d47();
ExcelValue outputs_emissions_h47();
ExcelValue outputs_emissions_i47();
ExcelValue outputs_emissions_j47();
ExcelValue outputs_emissions_k47();
ExcelValue outputs_emissions_l47();
ExcelValue outputs_emissions_m47();
ExcelValue outputs_emissions_n47();
ExcelValue outputs_emissions_o47();
ExcelValue outputs_emissions_p47();
ExcelValue outputs_emissions_r47();
ExcelValue outputs_emissions_s47();
ExcelValue outputs_emissions_t47();
ExcelValue outputs_emissions_u47();
ExcelValue outputs_emissions_v47();
ExcelValue outputs_emissions_w47();
ExcelValue outputs_emissions_x47();
ExcelValue outputs_emissions_y47();
ExcelValue outputs_emissions_z47();
ExcelValue outputs_emissions_aa47();
ExcelValue outputs_emissions_ab47();
ExcelValue outputs_emissions_ac47();
ExcelValue outputs_emissions_ad47();
ExcelValue outputs_emissions_ae47();
ExcelValue outputs_emissions_af47();
ExcelValue outputs_emissions_ag47();
ExcelValue outputs_emissions_ah47();
ExcelValue outputs_emissions_ai47();
ExcelValue outputs_emissions_aj47();
ExcelValue outputs_emissions_c48();
ExcelValue outputs_emissions_d48();
ExcelValue outputs_emissions_s48();
ExcelValue outputs_emissions_c49();
ExcelValue outputs_emissions_d49();
ExcelValue outputs_emissions_s49();
ExcelValue outputs_emissions_c50();
ExcelValue outputs_emissions_d50();
ExcelValue outputs_emissions_s50();
ExcelValue outputs_emissions_c51();
ExcelValue outputs_emissions_d51();
ExcelValue outputs_emissions_s51();
ExcelValue outputs_emissions_c52();
ExcelValue outputs_emissions_d52();
ExcelValue outputs_emissions_s52();
ExcelValue outputs_emissions_c53();
ExcelValue outputs_emissions_d53();
ExcelValue outputs_emissions_s53();
ExcelValue outputs_emissions_c54();
ExcelValue outputs_emissions_d54();
ExcelValue outputs_emissions_s54();
ExcelValue outputs_emissions_c55();
ExcelValue outputs_emissions_d55();
ExcelValue outputs_emissions_s55();
ExcelValue outputs_emissions_c56();
ExcelValue outputs_emissions_d56();
ExcelValue outputs_emissions_s56();
ExcelValue outputs_emissions_c57();
ExcelValue outputs_emissions_d57();
ExcelValue outputs_emissions_s57();
ExcelValue outputs_emissions_d58();
ExcelValue outputs_emissions_h58();
ExcelValue outputs_emissions_i58();
ExcelValue outputs_emissions_j58();
ExcelValue outputs_emissions_k58();
ExcelValue outputs_emissions_l58();
ExcelValue outputs_emissions_m58();
ExcelValue outputs_emissions_n58();
ExcelValue outputs_emissions_o58();
ExcelValue outputs_emissions_p58();
ExcelValue outputs_emissions_r58();
ExcelValue outputs_emissions_s58();
ExcelValue outputs_emissions_t58();
ExcelValue outputs_emissions_u58();
ExcelValue outputs_emissions_v58();
ExcelValue outputs_emissions_w58();
ExcelValue outputs_emissions_x58();
ExcelValue outputs_emissions_y58();
ExcelValue outputs_emissions_z58();
ExcelValue outputs_emissions_aa58();
ExcelValue outputs_emissions_ab58();
ExcelValue outputs_emissions_ac58();
ExcelValue outputs_emissions_ad58();
ExcelValue outputs_emissions_ae58();
ExcelValue outputs_emissions_af58();
ExcelValue outputs_emissions_ag58();
ExcelValue outputs_emissions_ah58();
ExcelValue outputs_emissions_ai58();
ExcelValue outputs_emissions_aj58();
ExcelValue outputs_emissions_d59();
ExcelValue outputs_emissions_d60();
ExcelValue outputs_emissions_c63();
ExcelValue outputs_emissions_h64();
ExcelValue outputs_emissions_r64();
ExcelValue outputs_emissions_aa64();
ExcelValue outputs_emissions_c65();
ExcelValue outputs_emissions_d65();
ExcelValue outputs_emissions_h65();
ExcelValue outputs_emissions_i65();
ExcelValue outputs_emissions_j65();
ExcelValue outputs_emissions_k65();
ExcelValue outputs_emissions_l65();
ExcelValue outputs_emissions_m65();
ExcelValue outputs_emissions_n65();
ExcelValue outputs_emissions_o65();
ExcelValue outputs_emissions_p65();
ExcelValue outputs_emissions_r65();
ExcelValue outputs_emissions_s65();
ExcelValue outputs_emissions_t65();
ExcelValue outputs_emissions_u65();
ExcelValue outputs_emissions_v65();
ExcelValue outputs_emissions_w65();
ExcelValue outputs_emissions_x65();
ExcelValue outputs_emissions_y65();
ExcelValue outputs_emissions_z65();
ExcelValue outputs_emissions_aa65();
ExcelValue outputs_emissions_ab65();
ExcelValue outputs_emissions_ac65();
ExcelValue outputs_emissions_ad65();
ExcelValue outputs_emissions_ae65();
ExcelValue outputs_emissions_af65();
ExcelValue outputs_emissions_ag65();
ExcelValue outputs_emissions_ah65();
ExcelValue outputs_emissions_ai65();
ExcelValue outputs_emissions_aj65();
ExcelValue outputs_emissions_c66();
ExcelValue outputs_emissions_d66();
ExcelValue outputs_emissions_s66();
ExcelValue outputs_emissions_c67();
ExcelValue outputs_emissions_d67();
ExcelValue outputs_emissions_s67();
ExcelValue outputs_emissions_c68();
ExcelValue outputs_emissions_d68();
ExcelValue outputs_emissions_s68();
ExcelValue outputs_emissions_c69();
ExcelValue outputs_emissions_d69();
ExcelValue outputs_emissions_s69();
ExcelValue outputs_emissions_c70();
ExcelValue outputs_emissions_d70();
ExcelValue outputs_emissions_s70();
ExcelValue outputs_emissions_c71();
ExcelValue outputs_emissions_d71();
ExcelValue outputs_emissions_s71();
ExcelValue outputs_emissions_d72();
ExcelValue outputs_emissions_h72();
ExcelValue outputs_emissions_i72();
ExcelValue outputs_emissions_j72();
ExcelValue outputs_emissions_k72();
ExcelValue outputs_emissions_l72();
ExcelValue outputs_emissions_m72();
ExcelValue outputs_emissions_n72();
ExcelValue outputs_emissions_o72();
ExcelValue outputs_emissions_p72();
ExcelValue outputs_emissions_r72();
ExcelValue outputs_emissions_s72();
ExcelValue outputs_emissions_t72();
ExcelValue outputs_emissions_u72();
ExcelValue outputs_emissions_v72();
ExcelValue outputs_emissions_w72();
ExcelValue outputs_emissions_x72();
ExcelValue outputs_emissions_y72();
ExcelValue outputs_emissions_z72();
ExcelValue outputs_emissions_aa72();
ExcelValue outputs_emissions_ab72();
ExcelValue outputs_emissions_ac72();
ExcelValue outputs_emissions_ad72();
ExcelValue outputs_emissions_ae72();
ExcelValue outputs_emissions_af72();
ExcelValue outputs_emissions_ag72();
ExcelValue outputs_emissions_ah72();
ExcelValue outputs_emissions_ai72();
ExcelValue outputs_emissions_aj72();
ExcelValue outputs_emissions_d73();
ExcelValue outputs_emissions_d74();
ExcelValue outputs_emissions_c77();
ExcelValue outputs_emissions_h78();
ExcelValue outputs_emissions_r78();
ExcelValue outputs_emissions_aa78();
ExcelValue outputs_emissions_c79();
ExcelValue outputs_emissions_h79();
ExcelValue outputs_emissions_i79();
ExcelValue outputs_emissions_j79();
ExcelValue outputs_emissions_k79();
ExcelValue outputs_emissions_l79();
ExcelValue outputs_emissions_m79();
ExcelValue outputs_emissions_n79();
ExcelValue outputs_emissions_o79();
ExcelValue outputs_emissions_p79();
ExcelValue outputs_emissions_r79();
ExcelValue outputs_emissions_s79();
ExcelValue outputs_emissions_t79();
ExcelValue outputs_emissions_u79();
ExcelValue outputs_emissions_v79();
ExcelValue outputs_emissions_w79();
ExcelValue outputs_emissions_x79();
ExcelValue outputs_emissions_y79();
ExcelValue outputs_emissions_z79();
ExcelValue outputs_emissions_aa79();
ExcelValue outputs_emissions_ab79();
ExcelValue outputs_emissions_ac79();
ExcelValue outputs_emissions_ad79();
ExcelValue outputs_emissions_ae79();
ExcelValue outputs_emissions_af79();
ExcelValue outputs_emissions_ag79();
ExcelValue outputs_emissions_ah79();
ExcelValue outputs_emissions_ai79();
ExcelValue outputs_emissions_aj79();
ExcelValue outputs_emissions_c80();
ExcelValue outputs_emissions_d80();
ExcelValue outputs_emissions_s80();
ExcelValue outputs_emissions_c81();
ExcelValue outputs_emissions_d81();
ExcelValue outputs_emissions_s81();
ExcelValue outputs_emissions_c82();
ExcelValue outputs_emissions_d82();
ExcelValue outputs_emissions_s82();
ExcelValue outputs_emissions_c83();
ExcelValue outputs_emissions_d83();
ExcelValue outputs_emissions_s83();
ExcelValue outputs_emissions_c84();
ExcelValue outputs_emissions_d84();
ExcelValue outputs_emissions_s84();
ExcelValue outputs_emissions_c85();
ExcelValue outputs_emissions_d85();
ExcelValue outputs_emissions_s85();
ExcelValue outputs_emissions_c86();
ExcelValue outputs_emissions_d86();
ExcelValue outputs_emissions_s86();
ExcelValue outputs_emissions_c87();
ExcelValue outputs_emissions_d87();
ExcelValue outputs_emissions_s87();
ExcelValue outputs_emissions_c88();
ExcelValue outputs_emissions_d88();
ExcelValue outputs_emissions_s88();
ExcelValue outputs_emissions_d89();
ExcelValue outputs_emissions_h89();
ExcelValue outputs_emissions_i89();
ExcelValue outputs_emissions_j89();
ExcelValue outputs_emissions_k89();
ExcelValue outputs_emissions_l89();
ExcelValue outputs_emissions_m89();
ExcelValue outputs_emissions_n89();
ExcelValue outputs_emissions_o89();
ExcelValue outputs_emissions_p89();
ExcelValue outputs_emissions_r89();
ExcelValue outputs_emissions_s89();
ExcelValue outputs_emissions_t89();
ExcelValue outputs_emissions_u89();
ExcelValue outputs_emissions_v89();
ExcelValue outputs_emissions_w89();
ExcelValue outputs_emissions_x89();
ExcelValue outputs_emissions_y89();
ExcelValue outputs_emissions_z89();
ExcelValue outputs_emissions_aa89();
ExcelValue outputs_emissions_ab89();
ExcelValue outputs_emissions_ac89();
ExcelValue outputs_emissions_ad89();
ExcelValue outputs_emissions_ae89();
ExcelValue outputs_emissions_af89();
ExcelValue outputs_emissions_ag89();
ExcelValue outputs_emissions_ah89();
ExcelValue outputs_emissions_ai89();
ExcelValue outputs_emissions_aj89();
ExcelValue outputs_emissions_c90();
ExcelValue outputs_emissions_c93();
ExcelValue outputs_emissions_d93();
ExcelValue outputs_emissions_d94();
ExcelValue outputs_emissions_b99();
ExcelValue outputs_emissions_c99();
ExcelValue outputs_emissions_c101();
ExcelValue outputs_emissions_aj101();
ExcelValue outputs_emissions_h102();
ExcelValue outputs_emissions_r102();
ExcelValue outputs_emissions_aa102();
ExcelValue outputs_emissions_d103();
ExcelValue outputs_emissions_h103();
ExcelValue outputs_emissions_i103();
ExcelValue outputs_emissions_j103();
ExcelValue outputs_emissions_k103();
ExcelValue outputs_emissions_l103();
ExcelValue outputs_emissions_m103();
ExcelValue outputs_emissions_n103();
ExcelValue outputs_emissions_o103();
ExcelValue outputs_emissions_p103();
ExcelValue outputs_emissions_r103();
ExcelValue outputs_emissions_s103();
ExcelValue outputs_emissions_t103();
ExcelValue outputs_emissions_u103();
ExcelValue outputs_emissions_v103();
ExcelValue outputs_emissions_w103();
ExcelValue outputs_emissions_x103();
ExcelValue outputs_emissions_y103();
ExcelValue outputs_emissions_z103();
ExcelValue outputs_emissions_aa103();
ExcelValue outputs_emissions_ab103();
ExcelValue outputs_emissions_ac103();
ExcelValue outputs_emissions_ad103();
ExcelValue outputs_emissions_ae103();
ExcelValue outputs_emissions_af103();
ExcelValue outputs_emissions_ag103();
ExcelValue outputs_emissions_ah103();
ExcelValue outputs_emissions_ai103();
ExcelValue outputs_emissions_aj103();
ExcelValue outputs_emissions_c104();
ExcelValue outputs_emissions_d104();
ExcelValue outputs_emissions_h104();
ExcelValue outputs_emissions_i104();
ExcelValue outputs_emissions_j104();
ExcelValue outputs_emissions_k104();
ExcelValue outputs_emissions_l104();
ExcelValue outputs_emissions_m104();
ExcelValue outputs_emissions_n104();
ExcelValue outputs_emissions_o104();
ExcelValue outputs_emissions_p104();
ExcelValue outputs_emissions_r104();
ExcelValue outputs_emissions_s104();
ExcelValue outputs_emissions_t104();
ExcelValue outputs_emissions_u104();
ExcelValue outputs_emissions_v104();
ExcelValue outputs_emissions_w104();
ExcelValue outputs_emissions_x104();
ExcelValue outputs_emissions_y104();
ExcelValue outputs_emissions_z104();
ExcelValue outputs_emissions_aa104();
ExcelValue outputs_emissions_ab104();
ExcelValue outputs_emissions_ac104();
ExcelValue outputs_emissions_ad104();
ExcelValue outputs_emissions_ae104();
ExcelValue outputs_emissions_af104();
ExcelValue outputs_emissions_ag104();
ExcelValue outputs_emissions_ah104();
ExcelValue outputs_emissions_ai104();
ExcelValue outputs_emissions_aj104();
ExcelValue outputs_emissions_c105();
ExcelValue outputs_emissions_d105();
ExcelValue outputs_emissions_h105();
ExcelValue outputs_emissions_i105();
ExcelValue outputs_emissions_j105();
ExcelValue outputs_emissions_k105();
ExcelValue outputs_emissions_l105();
ExcelValue outputs_emissions_m105();
ExcelValue outputs_emissions_n105();
ExcelValue outputs_emissions_o105();
ExcelValue outputs_emissions_p105();
ExcelValue outputs_emissions_r105();
ExcelValue outputs_emissions_s105();
ExcelValue outputs_emissions_t105();
ExcelValue outputs_emissions_u105();
ExcelValue outputs_emissions_v105();
ExcelValue outputs_emissions_w105();
ExcelValue outputs_emissions_x105();
ExcelValue outputs_emissions_y105();
ExcelValue outputs_emissions_z105();
ExcelValue outputs_emissions_aa105();
ExcelValue outputs_emissions_ab105();
ExcelValue outputs_emissions_ac105();
ExcelValue outputs_emissions_ad105();
ExcelValue outputs_emissions_ae105();
ExcelValue outputs_emissions_af105();
ExcelValue outputs_emissions_ag105();
ExcelValue outputs_emissions_ah105();
ExcelValue outputs_emissions_ai105();
ExcelValue outputs_emissions_aj105();
ExcelValue outputs_emissions_c106();
ExcelValue outputs_emissions_d106();
ExcelValue outputs_emissions_h106();
ExcelValue outputs_emissions_i106();
ExcelValue outputs_emissions_j106();
ExcelValue outputs_emissions_k106();
ExcelValue outputs_emissions_l106();
ExcelValue outputs_emissions_m106();
ExcelValue outputs_emissions_n106();
ExcelValue outputs_emissions_o106();
ExcelValue outputs_emissions_p106();
ExcelValue outputs_emissions_r106();
ExcelValue outputs_emissions_s106();
ExcelValue outputs_emissions_t106();
ExcelValue outputs_emissions_u106();
ExcelValue outputs_emissions_v106();
ExcelValue outputs_emissions_w106();
ExcelValue outputs_emissions_x106();
ExcelValue outputs_emissions_y106();
ExcelValue outputs_emissions_z106();
ExcelValue outputs_emissions_aa106();
ExcelValue outputs_emissions_ab106();
ExcelValue outputs_emissions_ac106();
ExcelValue outputs_emissions_ad106();
ExcelValue outputs_emissions_ae106();
ExcelValue outputs_emissions_af106();
ExcelValue outputs_emissions_ag106();
ExcelValue outputs_emissions_ah106();
ExcelValue outputs_emissions_ai106();
ExcelValue outputs_emissions_aj106();
ExcelValue outputs_emissions_c107();
ExcelValue outputs_emissions_d107();
ExcelValue outputs_emissions_h107();
ExcelValue outputs_emissions_i107();
ExcelValue outputs_emissions_j107();
ExcelValue outputs_emissions_k107();
ExcelValue outputs_emissions_l107();
ExcelValue outputs_emissions_m107();
ExcelValue outputs_emissions_n107();
ExcelValue outputs_emissions_o107();
ExcelValue outputs_emissions_p107();
ExcelValue outputs_emissions_r107();
ExcelValue outputs_emissions_s107();
ExcelValue outputs_emissions_t107();
ExcelValue outputs_emissions_u107();
ExcelValue outputs_emissions_v107();
ExcelValue outputs_emissions_w107();
ExcelValue outputs_emissions_x107();
ExcelValue outputs_emissions_y107();
ExcelValue outputs_emissions_z107();
ExcelValue outputs_emissions_aa107();
ExcelValue outputs_emissions_ab107();
ExcelValue outputs_emissions_ac107();
ExcelValue outputs_emissions_ad107();
ExcelValue outputs_emissions_ae107();
ExcelValue outputs_emissions_af107();
ExcelValue outputs_emissions_ag107();
ExcelValue outputs_emissions_ah107();
ExcelValue outputs_emissions_ai107();
ExcelValue outputs_emissions_aj107();
ExcelValue outputs_emissions_c108();
ExcelValue outputs_emissions_d108();
ExcelValue outputs_emissions_h108();
ExcelValue outputs_emissions_i108();
ExcelValue outputs_emissions_j108();
ExcelValue outputs_emissions_k108();
ExcelValue outputs_emissions_l108();
ExcelValue outputs_emissions_m108();
ExcelValue outputs_emissions_n108();
ExcelValue outputs_emissions_o108();
ExcelValue outputs_emissions_p108();
ExcelValue outputs_emissions_r108();
ExcelValue outputs_emissions_s108();
ExcelValue outputs_emissions_t108();
ExcelValue outputs_emissions_u108();
ExcelValue outputs_emissions_v108();
ExcelValue outputs_emissions_w108();
ExcelValue outputs_emissions_x108();
ExcelValue outputs_emissions_y108();
ExcelValue outputs_emissions_z108();
ExcelValue outputs_emissions_aa108();
ExcelValue outputs_emissions_ab108();
ExcelValue outputs_emissions_ac108();
ExcelValue outputs_emissions_ad108();
ExcelValue outputs_emissions_ae108();
ExcelValue outputs_emissions_af108();
ExcelValue outputs_emissions_ag108();
ExcelValue outputs_emissions_ah108();
ExcelValue outputs_emissions_ai108();
ExcelValue outputs_emissions_aj108();
ExcelValue outputs_emissions_c109();
ExcelValue outputs_emissions_d109();
ExcelValue outputs_emissions_h109();
ExcelValue outputs_emissions_i109();
ExcelValue outputs_emissions_j109();
ExcelValue outputs_emissions_k109();
ExcelValue outputs_emissions_l109();
ExcelValue outputs_emissions_m109();
ExcelValue outputs_emissions_n109();
ExcelValue outputs_emissions_o109();
ExcelValue outputs_emissions_p109();
ExcelValue outputs_emissions_r109();
ExcelValue outputs_emissions_s109();
ExcelValue outputs_emissions_t109();
ExcelValue outputs_emissions_u109();
ExcelValue outputs_emissions_v109();
ExcelValue outputs_emissions_w109();
ExcelValue outputs_emissions_x109();
ExcelValue outputs_emissions_y109();
ExcelValue outputs_emissions_z109();
ExcelValue outputs_emissions_aa109();
ExcelValue outputs_emissions_ab109();
ExcelValue outputs_emissions_ac109();
ExcelValue outputs_emissions_ad109();
ExcelValue outputs_emissions_ae109();
ExcelValue outputs_emissions_af109();
ExcelValue outputs_emissions_ag109();
ExcelValue outputs_emissions_ah109();
ExcelValue outputs_emissions_ai109();
ExcelValue outputs_emissions_aj109();
ExcelValue outputs_emissions_c110();
ExcelValue outputs_emissions_d110();
ExcelValue outputs_emissions_h110();
ExcelValue outputs_emissions_i110();
ExcelValue outputs_emissions_j110();
ExcelValue outputs_emissions_k110();
ExcelValue outputs_emissions_l110();
ExcelValue outputs_emissions_m110();
ExcelValue outputs_emissions_n110();
ExcelValue outputs_emissions_o110();
ExcelValue outputs_emissions_p110();
ExcelValue outputs_emissions_r110();
ExcelValue outputs_emissions_s110();
ExcelValue outputs_emissions_t110();
ExcelValue outputs_emissions_u110();
ExcelValue outputs_emissions_v110();
ExcelValue outputs_emissions_w110();
ExcelValue outputs_emissions_x110();
ExcelValue outputs_emissions_y110();
ExcelValue outputs_emissions_z110();
ExcelValue outputs_emissions_aa110();
ExcelValue outputs_emissions_ab110();
ExcelValue outputs_emissions_ac110();
ExcelValue outputs_emissions_ad110();
ExcelValue outputs_emissions_ae110();
ExcelValue outputs_emissions_af110();
ExcelValue outputs_emissions_ag110();
ExcelValue outputs_emissions_ah110();
ExcelValue outputs_emissions_ai110();
ExcelValue outputs_emissions_aj110();
ExcelValue outputs_emissions_c111();
ExcelValue outputs_emissions_d111();
ExcelValue outputs_emissions_h111();
ExcelValue outputs_emissions_i111();
ExcelValue outputs_emissions_j111();
ExcelValue outputs_emissions_k111();
ExcelValue outputs_emissions_l111();
ExcelValue outputs_emissions_m111();
ExcelValue outputs_emissions_n111();
ExcelValue outputs_emissions_o111();
ExcelValue outputs_emissions_p111();
ExcelValue outputs_emissions_r111();
ExcelValue outputs_emissions_s111();
ExcelValue outputs_emissions_t111();
ExcelValue outputs_emissions_u111();
ExcelValue outputs_emissions_v111();
ExcelValue outputs_emissions_w111();
ExcelValue outputs_emissions_x111();
ExcelValue outputs_emissions_y111();
ExcelValue outputs_emissions_z111();
ExcelValue outputs_emissions_aa111();
ExcelValue outputs_emissions_ab111();
ExcelValue outputs_emissions_ac111();
ExcelValue outputs_emissions_ad111();
ExcelValue outputs_emissions_ae111();
ExcelValue outputs_emissions_af111();
ExcelValue outputs_emissions_ag111();
ExcelValue outputs_emissions_ah111();
ExcelValue outputs_emissions_ai111();
ExcelValue outputs_emissions_aj111();
ExcelValue outputs_emissions_c112();
ExcelValue outputs_emissions_d112();
ExcelValue outputs_emissions_h112();
ExcelValue outputs_emissions_i112();
ExcelValue outputs_emissions_j112();
ExcelValue outputs_emissions_k112();
ExcelValue outputs_emissions_l112();
ExcelValue outputs_emissions_m112();
ExcelValue outputs_emissions_n112();
ExcelValue outputs_emissions_o112();
ExcelValue outputs_emissions_p112();
ExcelValue outputs_emissions_r112();
ExcelValue outputs_emissions_s112();
ExcelValue outputs_emissions_t112();
ExcelValue outputs_emissions_u112();
ExcelValue outputs_emissions_v112();
ExcelValue outputs_emissions_w112();
ExcelValue outputs_emissions_x112();
ExcelValue outputs_emissions_y112();
ExcelValue outputs_emissions_z112();
ExcelValue outputs_emissions_aa112();
ExcelValue outputs_emissions_ab112();
ExcelValue outputs_emissions_ac112();
ExcelValue outputs_emissions_ad112();
ExcelValue outputs_emissions_ae112();
ExcelValue outputs_emissions_af112();
ExcelValue outputs_emissions_ag112();
ExcelValue outputs_emissions_ah112();
ExcelValue outputs_emissions_ai112();
ExcelValue outputs_emissions_aj112();
ExcelValue outputs_emissions_c113();
ExcelValue outputs_emissions_d113();
ExcelValue outputs_emissions_h113();
ExcelValue outputs_emissions_i113();
ExcelValue outputs_emissions_j113();
ExcelValue outputs_emissions_k113();
ExcelValue outputs_emissions_l113();
ExcelValue outputs_emissions_m113();
ExcelValue outputs_emissions_n113();
ExcelValue outputs_emissions_o113();
ExcelValue outputs_emissions_p113();
ExcelValue outputs_emissions_r113();
ExcelValue outputs_emissions_s113();
ExcelValue outputs_emissions_t113();
ExcelValue outputs_emissions_u113();
ExcelValue outputs_emissions_v113();
ExcelValue outputs_emissions_w113();
ExcelValue outputs_emissions_x113();
ExcelValue outputs_emissions_y113();
ExcelValue outputs_emissions_z113();
ExcelValue outputs_emissions_aa113();
ExcelValue outputs_emissions_ab113();
ExcelValue outputs_emissions_ac113();
ExcelValue outputs_emissions_ad113();
ExcelValue outputs_emissions_ae113();
ExcelValue outputs_emissions_af113();
ExcelValue outputs_emissions_ag113();
ExcelValue outputs_emissions_ah113();
ExcelValue outputs_emissions_ai113();
ExcelValue outputs_emissions_aj113();
ExcelValue outputs_emissions_d114();
ExcelValue outputs_emissions_c118();
ExcelValue outputs_emissions_h119();
ExcelValue outputs_emissions_r119();
ExcelValue outputs_emissions_aa119();
ExcelValue outputs_emissions_d120();
ExcelValue outputs_emissions_h120();
ExcelValue outputs_emissions_i120();
ExcelValue outputs_emissions_j120();
ExcelValue outputs_emissions_k120();
ExcelValue outputs_emissions_l120();
ExcelValue outputs_emissions_m120();
ExcelValue outputs_emissions_n120();
ExcelValue outputs_emissions_o120();
ExcelValue outputs_emissions_p120();
ExcelValue outputs_emissions_r120();
ExcelValue outputs_emissions_s120();
ExcelValue outputs_emissions_t120();
ExcelValue outputs_emissions_u120();
ExcelValue outputs_emissions_v120();
ExcelValue outputs_emissions_w120();
ExcelValue outputs_emissions_x120();
ExcelValue outputs_emissions_y120();
ExcelValue outputs_emissions_z120();
ExcelValue outputs_emissions_aa120();
ExcelValue outputs_emissions_ab120();
ExcelValue outputs_emissions_ac120();
ExcelValue outputs_emissions_ad120();
ExcelValue outputs_emissions_ae120();
ExcelValue outputs_emissions_af120();
ExcelValue outputs_emissions_ag120();
ExcelValue outputs_emissions_ah120();
ExcelValue outputs_emissions_ai120();
ExcelValue outputs_emissions_aj120();
ExcelValue outputs_emissions_c121();
ExcelValue outputs_emissions_d121();
ExcelValue outputs_emissions_s121();
ExcelValue outputs_emissions_c122();
ExcelValue outputs_emissions_d122();
ExcelValue outputs_emissions_s122();
ExcelValue outputs_emissions_c123();
ExcelValue outputs_emissions_d123();
ExcelValue outputs_emissions_s123();
ExcelValue outputs_emissions_c124();
ExcelValue outputs_emissions_d124();
ExcelValue outputs_emissions_s124();
ExcelValue outputs_emissions_c125();
ExcelValue outputs_emissions_d125();
ExcelValue outputs_emissions_s125();
ExcelValue outputs_emissions_c126();
ExcelValue outputs_emissions_d126();
ExcelValue outputs_emissions_s126();
ExcelValue outputs_emissions_c127();
ExcelValue outputs_emissions_d127();
ExcelValue outputs_emissions_s127();
ExcelValue outputs_emissions_c128();
ExcelValue outputs_emissions_d128();
ExcelValue outputs_emissions_s128();
ExcelValue outputs_emissions_c129();
ExcelValue outputs_emissions_d129();
ExcelValue outputs_emissions_s129();
ExcelValue outputs_emissions_c130();
ExcelValue outputs_emissions_d130();
ExcelValue outputs_emissions_s130();
ExcelValue outputs_emissions_d131();
ExcelValue outputs_emissions_h131();
ExcelValue outputs_emissions_i131();
ExcelValue outputs_emissions_j131();
ExcelValue outputs_emissions_k131();
ExcelValue outputs_emissions_l131();
ExcelValue outputs_emissions_m131();
ExcelValue outputs_emissions_n131();
ExcelValue outputs_emissions_o131();
ExcelValue outputs_emissions_p131();
ExcelValue outputs_emissions_r131();
ExcelValue outputs_emissions_s131();
ExcelValue outputs_emissions_t131();
ExcelValue outputs_emissions_u131();
ExcelValue outputs_emissions_v131();
ExcelValue outputs_emissions_w131();
ExcelValue outputs_emissions_x131();
ExcelValue outputs_emissions_y131();
ExcelValue outputs_emissions_z131();
ExcelValue outputs_emissions_aa131();
ExcelValue outputs_emissions_ab131();
ExcelValue outputs_emissions_ac131();
ExcelValue outputs_emissions_ad131();
ExcelValue outputs_emissions_ae131();
ExcelValue outputs_emissions_af131();
ExcelValue outputs_emissions_ag131();
ExcelValue outputs_emissions_ah131();
ExcelValue outputs_emissions_ai131();
ExcelValue outputs_emissions_aj131();
ExcelValue outputs_emissions_d132();
ExcelValue outputs_emissions_d133();
ExcelValue outputs_emissions_c136();
ExcelValue outputs_emissions_h137();
ExcelValue outputs_emissions_r137();
ExcelValue outputs_emissions_aa137();
ExcelValue outputs_emissions_c138();
ExcelValue outputs_emissions_d138();
ExcelValue outputs_emissions_h138();
ExcelValue outputs_emissions_i138();
ExcelValue outputs_emissions_j138();
ExcelValue outputs_emissions_k138();
ExcelValue outputs_emissions_l138();
ExcelValue outputs_emissions_m138();
ExcelValue outputs_emissions_n138();
ExcelValue outputs_emissions_o138();
ExcelValue outputs_emissions_p138();
ExcelValue outputs_emissions_r138();
ExcelValue outputs_emissions_s138();
ExcelValue outputs_emissions_t138();
ExcelValue outputs_emissions_u138();
ExcelValue outputs_emissions_v138();
ExcelValue outputs_emissions_w138();
ExcelValue outputs_emissions_x138();
ExcelValue outputs_emissions_y138();
ExcelValue outputs_emissions_z138();
ExcelValue outputs_emissions_aa138();
ExcelValue outputs_emissions_ab138();
ExcelValue outputs_emissions_ac138();
ExcelValue outputs_emissions_ad138();
ExcelValue outputs_emissions_ae138();
ExcelValue outputs_emissions_af138();
ExcelValue outputs_emissions_ag138();
ExcelValue outputs_emissions_ah138();
ExcelValue outputs_emissions_ai138();
ExcelValue outputs_emissions_aj138();
ExcelValue outputs_emissions_c139();
ExcelValue outputs_emissions_d139();
ExcelValue outputs_emissions_s139();
ExcelValue outputs_emissions_c140();
ExcelValue outputs_emissions_d140();
ExcelValue outputs_emissions_s140();
ExcelValue outputs_emissions_c141();
ExcelValue outputs_emissions_d141();
ExcelValue outputs_emissions_s141();
ExcelValue outputs_emissions_c142();
ExcelValue outputs_emissions_d142();
ExcelValue outputs_emissions_s142();
ExcelValue outputs_emissions_c143();
ExcelValue outputs_emissions_d143();
ExcelValue outputs_emissions_s143();
ExcelValue outputs_emissions_c144();
ExcelValue outputs_emissions_d144();
ExcelValue outputs_emissions_s144();
ExcelValue outputs_emissions_d145();
ExcelValue outputs_emissions_h145();
ExcelValue outputs_emissions_i145();
ExcelValue outputs_emissions_j145();
ExcelValue outputs_emissions_k145();
ExcelValue outputs_emissions_l145();
ExcelValue outputs_emissions_m145();
ExcelValue outputs_emissions_n145();
ExcelValue outputs_emissions_o145();
ExcelValue outputs_emissions_p145();
ExcelValue outputs_emissions_r145();
ExcelValue outputs_emissions_s145();
ExcelValue outputs_emissions_t145();
ExcelValue outputs_emissions_u145();
ExcelValue outputs_emissions_v145();
ExcelValue outputs_emissions_w145();
ExcelValue outputs_emissions_x145();
ExcelValue outputs_emissions_y145();
ExcelValue outputs_emissions_z145();
ExcelValue outputs_emissions_aa145();
ExcelValue outputs_emissions_ab145();
ExcelValue outputs_emissions_ac145();
ExcelValue outputs_emissions_ad145();
ExcelValue outputs_emissions_ae145();
ExcelValue outputs_emissions_af145();
ExcelValue outputs_emissions_ag145();
ExcelValue outputs_emissions_ah145();
ExcelValue outputs_emissions_ai145();
ExcelValue outputs_emissions_aj145();
ExcelValue outputs_emissions_d146();
ExcelValue outputs_emissions_d147();
ExcelValue outputs_emissions_c150();
ExcelValue outputs_emissions_h151();
ExcelValue outputs_emissions_r151();
ExcelValue outputs_emissions_aa151();
ExcelValue outputs_emissions_c152();
ExcelValue outputs_emissions_h152();
ExcelValue outputs_emissions_i152();
ExcelValue outputs_emissions_j152();
ExcelValue outputs_emissions_k152();
ExcelValue outputs_emissions_l152();
ExcelValue outputs_emissions_m152();
ExcelValue outputs_emissions_n152();
ExcelValue outputs_emissions_o152();
ExcelValue outputs_emissions_p152();
ExcelValue outputs_emissions_r152();
ExcelValue outputs_emissions_s152();
ExcelValue outputs_emissions_t152();
ExcelValue outputs_emissions_u152();
ExcelValue outputs_emissions_v152();
ExcelValue outputs_emissions_w152();
ExcelValue outputs_emissions_x152();
ExcelValue outputs_emissions_y152();
ExcelValue outputs_emissions_z152();
ExcelValue outputs_emissions_aa152();
ExcelValue outputs_emissions_ab152();
ExcelValue outputs_emissions_ac152();
ExcelValue outputs_emissions_ad152();
ExcelValue outputs_emissions_ae152();
ExcelValue outputs_emissions_af152();
ExcelValue outputs_emissions_ag152();
ExcelValue outputs_emissions_ah152();
ExcelValue outputs_emissions_ai152();
ExcelValue outputs_emissions_aj152();
ExcelValue outputs_emissions_c153();
ExcelValue outputs_emissions_d153();
ExcelValue outputs_emissions_s153();
ExcelValue outputs_emissions_c154();
ExcelValue outputs_emissions_d154();
ExcelValue outputs_emissions_s154();
ExcelValue outputs_emissions_c155();
ExcelValue outputs_emissions_d155();
ExcelValue outputs_emissions_s155();
ExcelValue outputs_emissions_c156();
ExcelValue outputs_emissions_d156();
ExcelValue outputs_emissions_s156();
ExcelValue outputs_emissions_c157();
ExcelValue outputs_emissions_d157();
ExcelValue outputs_emissions_s157();
ExcelValue outputs_emissions_c158();
ExcelValue outputs_emissions_d158();
ExcelValue outputs_emissions_s158();
ExcelValue outputs_emissions_c159();
ExcelValue outputs_emissions_d159();
ExcelValue outputs_emissions_s159();
ExcelValue outputs_emissions_c160();
ExcelValue outputs_emissions_d160();
ExcelValue outputs_emissions_s160();
ExcelValue outputs_emissions_c161();
ExcelValue outputs_emissions_d161();
ExcelValue outputs_emissions_s161();
ExcelValue outputs_emissions_d162();
ExcelValue outputs_emissions_h162();
ExcelValue outputs_emissions_i162();
ExcelValue outputs_emissions_j162();
ExcelValue outputs_emissions_k162();
ExcelValue outputs_emissions_l162();
ExcelValue outputs_emissions_m162();
ExcelValue outputs_emissions_n162();
ExcelValue outputs_emissions_o162();
ExcelValue outputs_emissions_p162();
ExcelValue outputs_emissions_r162();
ExcelValue outputs_emissions_s162();
ExcelValue outputs_emissions_t162();
ExcelValue outputs_emissions_u162();
ExcelValue outputs_emissions_v162();
ExcelValue outputs_emissions_w162();
ExcelValue outputs_emissions_x162();
ExcelValue outputs_emissions_y162();
ExcelValue outputs_emissions_z162();
ExcelValue outputs_emissions_aa162();
ExcelValue outputs_emissions_ab162();
ExcelValue outputs_emissions_ac162();
ExcelValue outputs_emissions_ad162();
ExcelValue outputs_emissions_ae162();
ExcelValue outputs_emissions_af162();
ExcelValue outputs_emissions_ag162();
ExcelValue outputs_emissions_ah162();
ExcelValue outputs_emissions_ai162();
ExcelValue outputs_emissions_aj162();
ExcelValue outputs_emissions_c163();
ExcelValue outputs_emissions_c166();
ExcelValue outputs_emissions_d166();
ExcelValue outputs_emissions_d167();
ExcelValue outputs_emissions_b172();
ExcelValue outputs_emissions_c172();
ExcelValue outputs_emissions_c174();
ExcelValue outputs_emissions_aj174();
ExcelValue outputs_emissions_h175();
ExcelValue outputs_emissions_r175();
ExcelValue outputs_emissions_aa175();
ExcelValue outputs_emissions_d176();
ExcelValue outputs_emissions_h176();
ExcelValue outputs_emissions_i176();
ExcelValue outputs_emissions_j176();
ExcelValue outputs_emissions_k176();
ExcelValue outputs_emissions_l176();
ExcelValue outputs_emissions_m176();
ExcelValue outputs_emissions_n176();
ExcelValue outputs_emissions_o176();
ExcelValue outputs_emissions_p176();
ExcelValue outputs_emissions_r176();
ExcelValue outputs_emissions_s176();
ExcelValue outputs_emissions_t176();
ExcelValue outputs_emissions_u176();
ExcelValue outputs_emissions_v176();
ExcelValue outputs_emissions_w176();
ExcelValue outputs_emissions_x176();
ExcelValue outputs_emissions_y176();
ExcelValue outputs_emissions_z176();
ExcelValue outputs_emissions_aa176();
ExcelValue outputs_emissions_ab176();
ExcelValue outputs_emissions_ac176();
ExcelValue outputs_emissions_ad176();
ExcelValue outputs_emissions_ae176();
ExcelValue outputs_emissions_af176();
ExcelValue outputs_emissions_ag176();
ExcelValue outputs_emissions_ah176();
ExcelValue outputs_emissions_ai176();
ExcelValue outputs_emissions_aj176();
ExcelValue outputs_emissions_c177();
ExcelValue outputs_emissions_d177();
ExcelValue outputs_emissions_h177();
ExcelValue outputs_emissions_i177();
ExcelValue outputs_emissions_j177();
ExcelValue outputs_emissions_k177();
ExcelValue outputs_emissions_l177();
ExcelValue outputs_emissions_m177();
ExcelValue outputs_emissions_n177();
ExcelValue outputs_emissions_o177();
ExcelValue outputs_emissions_p177();
ExcelValue outputs_emissions_r177();
ExcelValue outputs_emissions_s177();
ExcelValue outputs_emissions_t177();
ExcelValue outputs_emissions_u177();
ExcelValue outputs_emissions_v177();
ExcelValue outputs_emissions_w177();
ExcelValue outputs_emissions_x177();
ExcelValue outputs_emissions_y177();
ExcelValue outputs_emissions_z177();
ExcelValue outputs_emissions_aa177();
ExcelValue outputs_emissions_ab177();
ExcelValue outputs_emissions_ac177();
ExcelValue outputs_emissions_ad177();
ExcelValue outputs_emissions_ae177();
ExcelValue outputs_emissions_af177();
ExcelValue outputs_emissions_ag177();
ExcelValue outputs_emissions_ah177();
ExcelValue outputs_emissions_ai177();
ExcelValue outputs_emissions_aj177();
ExcelValue outputs_emissions_c178();
ExcelValue outputs_emissions_d178();
ExcelValue outputs_emissions_h178();
ExcelValue outputs_emissions_i178();
ExcelValue outputs_emissions_j178();
ExcelValue outputs_emissions_k178();
ExcelValue outputs_emissions_l178();
ExcelValue outputs_emissions_m178();
ExcelValue outputs_emissions_n178();
ExcelValue outputs_emissions_o178();
ExcelValue outputs_emissions_p178();
ExcelValue outputs_emissions_r178();
ExcelValue outputs_emissions_s178();
ExcelValue outputs_emissions_t178();
ExcelValue outputs_emissions_u178();
ExcelValue outputs_emissions_v178();
ExcelValue outputs_emissions_w178();
ExcelValue outputs_emissions_x178();
ExcelValue outputs_emissions_y178();
ExcelValue outputs_emissions_z178();
ExcelValue outputs_emissions_aa178();
ExcelValue outputs_emissions_ab178();
ExcelValue outputs_emissions_ac178();
ExcelValue outputs_emissions_ad178();
ExcelValue outputs_emissions_ae178();
ExcelValue outputs_emissions_af178();
ExcelValue outputs_emissions_ag178();
ExcelValue outputs_emissions_ah178();
ExcelValue outputs_emissions_ai178();
ExcelValue outputs_emissions_aj178();
ExcelValue outputs_emissions_c179();
ExcelValue outputs_emissions_d179();
ExcelValue outputs_emissions_h179();
ExcelValue outputs_emissions_i179();
ExcelValue outputs_emissions_j179();
ExcelValue outputs_emissions_k179();
ExcelValue outputs_emissions_l179();
ExcelValue outputs_emissions_m179();
ExcelValue outputs_emissions_n179();
ExcelValue outputs_emissions_o179();
ExcelValue outputs_emissions_p179();
ExcelValue outputs_emissions_r179();
ExcelValue outputs_emissions_s179();
ExcelValue outputs_emissions_t179();
ExcelValue outputs_emissions_u179();
ExcelValue outputs_emissions_v179();
ExcelValue outputs_emissions_w179();
ExcelValue outputs_emissions_x179();
ExcelValue outputs_emissions_y179();
ExcelValue outputs_emissions_z179();
ExcelValue outputs_emissions_aa179();
ExcelValue outputs_emissions_ab179();
ExcelValue outputs_emissions_ac179();
ExcelValue outputs_emissions_ad179();
ExcelValue outputs_emissions_ae179();
ExcelValue outputs_emissions_af179();
ExcelValue outputs_emissions_ag179();
ExcelValue outputs_emissions_ah179();
ExcelValue outputs_emissions_ai179();
ExcelValue outputs_emissions_aj179();
ExcelValue outputs_emissions_c180();
ExcelValue outputs_emissions_d180();
ExcelValue outputs_emissions_h180();
ExcelValue outputs_emissions_i180();
ExcelValue outputs_emissions_j180();
ExcelValue outputs_emissions_k180();
ExcelValue outputs_emissions_l180();
ExcelValue outputs_emissions_m180();
ExcelValue outputs_emissions_n180();
ExcelValue outputs_emissions_o180();
ExcelValue outputs_emissions_p180();
ExcelValue outputs_emissions_r180();
ExcelValue outputs_emissions_s180();
ExcelValue outputs_emissions_t180();
ExcelValue outputs_emissions_u180();
ExcelValue outputs_emissions_v180();
ExcelValue outputs_emissions_w180();
ExcelValue outputs_emissions_x180();
ExcelValue outputs_emissions_y180();
ExcelValue outputs_emissions_z180();
ExcelValue outputs_emissions_aa180();
ExcelValue outputs_emissions_ab180();
ExcelValue outputs_emissions_ac180();
ExcelValue outputs_emissions_ad180();
ExcelValue outputs_emissions_ae180();
ExcelValue outputs_emissions_af180();
ExcelValue outputs_emissions_ag180();
ExcelValue outputs_emissions_ah180();
ExcelValue outputs_emissions_ai180();
ExcelValue outputs_emissions_aj180();
ExcelValue outputs_emissions_c181();
ExcelValue outputs_emissions_d181();
ExcelValue outputs_emissions_h181();
ExcelValue outputs_emissions_i181();
ExcelValue outputs_emissions_j181();
ExcelValue outputs_emissions_k181();
ExcelValue outputs_emissions_l181();
ExcelValue outputs_emissions_m181();
ExcelValue outputs_emissions_n181();
ExcelValue outputs_emissions_o181();
ExcelValue outputs_emissions_p181();
ExcelValue outputs_emissions_r181();
ExcelValue outputs_emissions_s181();
ExcelValue outputs_emissions_t181();
ExcelValue outputs_emissions_u181();
ExcelValue outputs_emissions_v181();
ExcelValue outputs_emissions_w181();
ExcelValue outputs_emissions_x181();
ExcelValue outputs_emissions_y181();
ExcelValue outputs_emissions_z181();
ExcelValue outputs_emissions_aa181();
ExcelValue outputs_emissions_ab181();
ExcelValue outputs_emissions_ac181();
ExcelValue outputs_emissions_ad181();
ExcelValue outputs_emissions_ae181();
ExcelValue outputs_emissions_af181();
ExcelValue outputs_emissions_ag181();
ExcelValue outputs_emissions_ah181();
ExcelValue outputs_emissions_ai181();
ExcelValue outputs_emissions_aj181();
ExcelValue outputs_emissions_c182();
ExcelValue outputs_emissions_d182();
ExcelValue outputs_emissions_h182();
ExcelValue outputs_emissions_i182();
ExcelValue outputs_emissions_j182();
ExcelValue outputs_emissions_k182();
ExcelValue outputs_emissions_l182();
ExcelValue outputs_emissions_m182();
ExcelValue outputs_emissions_n182();
ExcelValue outputs_emissions_o182();
ExcelValue outputs_emissions_p182();
ExcelValue outputs_emissions_r182();
ExcelValue outputs_emissions_s182();
ExcelValue outputs_emissions_t182();
ExcelValue outputs_emissions_u182();
ExcelValue outputs_emissions_v182();
ExcelValue outputs_emissions_w182();
ExcelValue outputs_emissions_x182();
ExcelValue outputs_emissions_y182();
ExcelValue outputs_emissions_z182();
ExcelValue outputs_emissions_aa182();
ExcelValue outputs_emissions_ab182();
ExcelValue outputs_emissions_ac182();
ExcelValue outputs_emissions_ad182();
ExcelValue outputs_emissions_ae182();
ExcelValue outputs_emissions_af182();
ExcelValue outputs_emissions_ag182();
ExcelValue outputs_emissions_ah182();
ExcelValue outputs_emissions_ai182();
ExcelValue outputs_emissions_aj182();
ExcelValue outputs_emissions_c183();
ExcelValue outputs_emissions_d183();
ExcelValue outputs_emissions_h183();
ExcelValue outputs_emissions_i183();
ExcelValue outputs_emissions_j183();
ExcelValue outputs_emissions_k183();
ExcelValue outputs_emissions_l183();
ExcelValue outputs_emissions_m183();
ExcelValue outputs_emissions_n183();
ExcelValue outputs_emissions_o183();
ExcelValue outputs_emissions_p183();
ExcelValue outputs_emissions_r183();
ExcelValue outputs_emissions_s183();
ExcelValue outputs_emissions_t183();
ExcelValue outputs_emissions_u183();
ExcelValue outputs_emissions_v183();
ExcelValue outputs_emissions_w183();
ExcelValue outputs_emissions_x183();
ExcelValue outputs_emissions_y183();
ExcelValue outputs_emissions_z183();
ExcelValue outputs_emissions_aa183();
ExcelValue outputs_emissions_ab183();
ExcelValue outputs_emissions_ac183();
ExcelValue outputs_emissions_ad183();
ExcelValue outputs_emissions_ae183();
ExcelValue outputs_emissions_af183();
ExcelValue outputs_emissions_ag183();
ExcelValue outputs_emissions_ah183();
ExcelValue outputs_emissions_ai183();
ExcelValue outputs_emissions_aj183();
ExcelValue outputs_emissions_c184();
ExcelValue outputs_emissions_d184();
ExcelValue outputs_emissions_h184();
ExcelValue outputs_emissions_i184();
ExcelValue outputs_emissions_j184();
ExcelValue outputs_emissions_k184();
ExcelValue outputs_emissions_l184();
ExcelValue outputs_emissions_m184();
ExcelValue outputs_emissions_n184();
ExcelValue outputs_emissions_o184();
ExcelValue outputs_emissions_p184();
ExcelValue outputs_emissions_r184();
ExcelValue outputs_emissions_s184();
ExcelValue outputs_emissions_t184();
ExcelValue outputs_emissions_u184();
ExcelValue outputs_emissions_v184();
ExcelValue outputs_emissions_w184();
ExcelValue outputs_emissions_x184();
ExcelValue outputs_emissions_y184();
ExcelValue outputs_emissions_z184();
ExcelValue outputs_emissions_aa184();
ExcelValue outputs_emissions_ab184();
ExcelValue outputs_emissions_ac184();
ExcelValue outputs_emissions_ad184();
ExcelValue outputs_emissions_ae184();
ExcelValue outputs_emissions_af184();
ExcelValue outputs_emissions_ag184();
ExcelValue outputs_emissions_ah184();
ExcelValue outputs_emissions_ai184();
ExcelValue outputs_emissions_aj184();
ExcelValue outputs_emissions_c185();
ExcelValue outputs_emissions_d185();
ExcelValue outputs_emissions_h185();
ExcelValue outputs_emissions_i185();
ExcelValue outputs_emissions_j185();
ExcelValue outputs_emissions_k185();
ExcelValue outputs_emissions_l185();
ExcelValue outputs_emissions_m185();
ExcelValue outputs_emissions_n185();
ExcelValue outputs_emissions_o185();
ExcelValue outputs_emissions_p185();
ExcelValue outputs_emissions_r185();
ExcelValue outputs_emissions_s185();
ExcelValue outputs_emissions_t185();
ExcelValue outputs_emissions_u185();
ExcelValue outputs_emissions_v185();
ExcelValue outputs_emissions_w185();
ExcelValue outputs_emissions_x185();
ExcelValue outputs_emissions_y185();
ExcelValue outputs_emissions_z185();
ExcelValue outputs_emissions_aa185();
ExcelValue outputs_emissions_ab185();
ExcelValue outputs_emissions_ac185();
ExcelValue outputs_emissions_ad185();
ExcelValue outputs_emissions_ae185();
ExcelValue outputs_emissions_af185();
ExcelValue outputs_emissions_ag185();
ExcelValue outputs_emissions_ah185();
ExcelValue outputs_emissions_ai185();
ExcelValue outputs_emissions_aj185();
ExcelValue outputs_emissions_c186();
ExcelValue outputs_emissions_d186();
ExcelValue outputs_emissions_h186();
ExcelValue outputs_emissions_i186();
ExcelValue outputs_emissions_j186();
ExcelValue outputs_emissions_k186();
ExcelValue outputs_emissions_l186();
ExcelValue outputs_emissions_m186();
ExcelValue outputs_emissions_n186();
ExcelValue outputs_emissions_o186();
ExcelValue outputs_emissions_p186();
ExcelValue outputs_emissions_r186();
ExcelValue outputs_emissions_s186();
ExcelValue outputs_emissions_t186();
ExcelValue outputs_emissions_u186();
ExcelValue outputs_emissions_v186();
ExcelValue outputs_emissions_w186();
ExcelValue outputs_emissions_x186();
ExcelValue outputs_emissions_y186();
ExcelValue outputs_emissions_z186();
ExcelValue outputs_emissions_aa186();
ExcelValue outputs_emissions_ab186();
ExcelValue outputs_emissions_ac186();
ExcelValue outputs_emissions_ad186();
ExcelValue outputs_emissions_ae186();
ExcelValue outputs_emissions_af186();
ExcelValue outputs_emissions_ag186();
ExcelValue outputs_emissions_ah186();
ExcelValue outputs_emissions_ai186();
ExcelValue outputs_emissions_aj186();
ExcelValue outputs_emissions_d187();
ExcelValue outputs_emissions_c191();
ExcelValue outputs_emissions_h192();
ExcelValue outputs_emissions_r192();
ExcelValue outputs_emissions_aa192();
ExcelValue outputs_emissions_d193();
ExcelValue outputs_emissions_h193();
ExcelValue outputs_emissions_i193();
ExcelValue outputs_emissions_j193();
ExcelValue outputs_emissions_k193();
ExcelValue outputs_emissions_l193();
ExcelValue outputs_emissions_m193();
ExcelValue outputs_emissions_n193();
ExcelValue outputs_emissions_o193();
ExcelValue outputs_emissions_p193();
ExcelValue outputs_emissions_r193();
ExcelValue outputs_emissions_s193();
ExcelValue outputs_emissions_t193();
ExcelValue outputs_emissions_u193();
ExcelValue outputs_emissions_v193();
ExcelValue outputs_emissions_w193();
ExcelValue outputs_emissions_x193();
ExcelValue outputs_emissions_y193();
ExcelValue outputs_emissions_z193();
ExcelValue outputs_emissions_aa193();
ExcelValue outputs_emissions_ab193();
ExcelValue outputs_emissions_ac193();
ExcelValue outputs_emissions_ad193();
ExcelValue outputs_emissions_ae193();
ExcelValue outputs_emissions_af193();
ExcelValue outputs_emissions_ag193();
ExcelValue outputs_emissions_ah193();
ExcelValue outputs_emissions_ai193();
ExcelValue outputs_emissions_aj193();
ExcelValue outputs_emissions_c194();
ExcelValue outputs_emissions_d194();
ExcelValue outputs_emissions_s194();
ExcelValue outputs_emissions_c195();
ExcelValue outputs_emissions_d195();
ExcelValue outputs_emissions_s195();
ExcelValue outputs_emissions_c196();
ExcelValue outputs_emissions_d196();
ExcelValue outputs_emissions_s196();
ExcelValue outputs_emissions_c197();
ExcelValue outputs_emissions_d197();
ExcelValue outputs_emissions_s197();
ExcelValue outputs_emissions_c198();
ExcelValue outputs_emissions_d198();
ExcelValue outputs_emissions_s198();
ExcelValue outputs_emissions_c199();
ExcelValue outputs_emissions_d199();
ExcelValue outputs_emissions_s199();
ExcelValue outputs_emissions_c200();
ExcelValue outputs_emissions_d200();
ExcelValue outputs_emissions_s200();
ExcelValue outputs_emissions_c201();
ExcelValue outputs_emissions_d201();
ExcelValue outputs_emissions_s201();
ExcelValue outputs_emissions_c202();
ExcelValue outputs_emissions_d202();
ExcelValue outputs_emissions_s202();
ExcelValue outputs_emissions_c203();
ExcelValue outputs_emissions_d203();
ExcelValue outputs_emissions_s203();
ExcelValue outputs_emissions_d204();
ExcelValue outputs_emissions_h204();
ExcelValue outputs_emissions_i204();
ExcelValue outputs_emissions_j204();
ExcelValue outputs_emissions_k204();
ExcelValue outputs_emissions_l204();
ExcelValue outputs_emissions_m204();
ExcelValue outputs_emissions_n204();
ExcelValue outputs_emissions_o204();
ExcelValue outputs_emissions_p204();
ExcelValue outputs_emissions_r204();
ExcelValue outputs_emissions_s204();
ExcelValue outputs_emissions_t204();
ExcelValue outputs_emissions_u204();
ExcelValue outputs_emissions_v204();
ExcelValue outputs_emissions_w204();
ExcelValue outputs_emissions_x204();
ExcelValue outputs_emissions_y204();
ExcelValue outputs_emissions_z204();
ExcelValue outputs_emissions_aa204();
ExcelValue outputs_emissions_ab204();
ExcelValue outputs_emissions_ac204();
ExcelValue outputs_emissions_ad204();
ExcelValue outputs_emissions_ae204();
ExcelValue outputs_emissions_af204();
ExcelValue outputs_emissions_ag204();
ExcelValue outputs_emissions_ah204();
ExcelValue outputs_emissions_ai204();
ExcelValue outputs_emissions_aj204();
ExcelValue outputs_emissions_d205();
ExcelValue outputs_emissions_d206();
ExcelValue outputs_emissions_c209();
ExcelValue outputs_emissions_h210();
ExcelValue outputs_emissions_r210();
ExcelValue outputs_emissions_aa210();
ExcelValue outputs_emissions_c211();
ExcelValue outputs_emissions_d211();
ExcelValue outputs_emissions_h211();
ExcelValue outputs_emissions_i211();
ExcelValue outputs_emissions_j211();
ExcelValue outputs_emissions_k211();
ExcelValue outputs_emissions_l211();
ExcelValue outputs_emissions_m211();
ExcelValue outputs_emissions_n211();
ExcelValue outputs_emissions_o211();
ExcelValue outputs_emissions_p211();
ExcelValue outputs_emissions_r211();
ExcelValue outputs_emissions_s211();
ExcelValue outputs_emissions_t211();
ExcelValue outputs_emissions_u211();
ExcelValue outputs_emissions_v211();
ExcelValue outputs_emissions_w211();
ExcelValue outputs_emissions_x211();
ExcelValue outputs_emissions_y211();
ExcelValue outputs_emissions_z211();
ExcelValue outputs_emissions_aa211();
ExcelValue outputs_emissions_ab211();
ExcelValue outputs_emissions_ac211();
ExcelValue outputs_emissions_ad211();
ExcelValue outputs_emissions_ae211();
ExcelValue outputs_emissions_af211();
ExcelValue outputs_emissions_ag211();
ExcelValue outputs_emissions_ah211();
ExcelValue outputs_emissions_ai211();
ExcelValue outputs_emissions_aj211();
ExcelValue outputs_emissions_c212();
ExcelValue outputs_emissions_d212();
ExcelValue outputs_emissions_s212();
ExcelValue outputs_emissions_c213();
ExcelValue outputs_emissions_d213();
ExcelValue outputs_emissions_s213();
ExcelValue outputs_emissions_c214();
ExcelValue outputs_emissions_d214();
ExcelValue outputs_emissions_s214();
ExcelValue outputs_emissions_c215();
ExcelValue outputs_emissions_d215();
ExcelValue outputs_emissions_s215();
ExcelValue outputs_emissions_c216();
ExcelValue outputs_emissions_d216();
ExcelValue outputs_emissions_s216();
ExcelValue outputs_emissions_c217();
ExcelValue outputs_emissions_d217();
ExcelValue outputs_emissions_s217();
ExcelValue outputs_emissions_d218();
ExcelValue outputs_emissions_h218();
ExcelValue outputs_emissions_i218();
ExcelValue outputs_emissions_j218();
ExcelValue outputs_emissions_k218();
ExcelValue outputs_emissions_l218();
ExcelValue outputs_emissions_m218();
ExcelValue outputs_emissions_n218();
ExcelValue outputs_emissions_o218();
ExcelValue outputs_emissions_p218();
ExcelValue outputs_emissions_r218();
ExcelValue outputs_emissions_s218();
ExcelValue outputs_emissions_t218();
ExcelValue outputs_emissions_u218();
ExcelValue outputs_emissions_v218();
ExcelValue outputs_emissions_w218();
ExcelValue outputs_emissions_x218();
ExcelValue outputs_emissions_y218();
ExcelValue outputs_emissions_z218();
ExcelValue outputs_emissions_aa218();
ExcelValue outputs_emissions_ab218();
ExcelValue outputs_emissions_ac218();
ExcelValue outputs_emissions_ad218();
ExcelValue outputs_emissions_ae218();
ExcelValue outputs_emissions_af218();
ExcelValue outputs_emissions_ag218();
ExcelValue outputs_emissions_ah218();
ExcelValue outputs_emissions_ai218();
ExcelValue outputs_emissions_aj218();
ExcelValue outputs_emissions_d219();
ExcelValue outputs_emissions_d220();
ExcelValue outputs_emissions_c223();
ExcelValue outputs_emissions_h224();
ExcelValue outputs_emissions_r224();
ExcelValue outputs_emissions_aa224();
ExcelValue outputs_emissions_c225();
ExcelValue outputs_emissions_h225();
ExcelValue outputs_emissions_i225();
ExcelValue outputs_emissions_j225();
ExcelValue outputs_emissions_k225();
ExcelValue outputs_emissions_l225();
ExcelValue outputs_emissions_m225();
ExcelValue outputs_emissions_n225();
ExcelValue outputs_emissions_o225();
ExcelValue outputs_emissions_p225();
ExcelValue outputs_emissions_r225();
ExcelValue outputs_emissions_s225();
ExcelValue outputs_emissions_t225();
ExcelValue outputs_emissions_u225();
ExcelValue outputs_emissions_v225();
ExcelValue outputs_emissions_w225();
ExcelValue outputs_emissions_x225();
ExcelValue outputs_emissions_y225();
ExcelValue outputs_emissions_z225();
ExcelValue outputs_emissions_aa225();
ExcelValue outputs_emissions_ab225();
ExcelValue outputs_emissions_ac225();
ExcelValue outputs_emissions_ad225();
ExcelValue outputs_emissions_ae225();
ExcelValue outputs_emissions_af225();
ExcelValue outputs_emissions_ag225();
ExcelValue outputs_emissions_ah225();
ExcelValue outputs_emissions_ai225();
ExcelValue outputs_emissions_aj225();
ExcelValue outputs_emissions_c226();
ExcelValue outputs_emissions_d226();
ExcelValue outputs_emissions_s226();
ExcelValue outputs_emissions_c227();
ExcelValue outputs_emissions_d227();
ExcelValue outputs_emissions_s227();
ExcelValue outputs_emissions_c228();
ExcelValue outputs_emissions_d228();
ExcelValue outputs_emissions_s228();
ExcelValue outputs_emissions_c229();
ExcelValue outputs_emissions_d229();
ExcelValue outputs_emissions_s229();
ExcelValue outputs_emissions_c230();
ExcelValue outputs_emissions_d230();
ExcelValue outputs_emissions_s230();
ExcelValue outputs_emissions_c231();
ExcelValue outputs_emissions_d231();
ExcelValue outputs_emissions_s231();
ExcelValue outputs_emissions_c232();
ExcelValue outputs_emissions_d232();
ExcelValue outputs_emissions_s232();
ExcelValue outputs_emissions_c233();
ExcelValue outputs_emissions_d233();
ExcelValue outputs_emissions_s233();
ExcelValue outputs_emissions_c234();
ExcelValue outputs_emissions_d234();
ExcelValue outputs_emissions_s234();
ExcelValue outputs_emissions_d235();
ExcelValue outputs_emissions_h235();
ExcelValue outputs_emissions_i235();
ExcelValue outputs_emissions_j235();
ExcelValue outputs_emissions_k235();
ExcelValue outputs_emissions_l235();
ExcelValue outputs_emissions_m235();
ExcelValue outputs_emissions_n235();
ExcelValue outputs_emissions_o235();
ExcelValue outputs_emissions_p235();
ExcelValue outputs_emissions_r235();
ExcelValue outputs_emissions_s235();
ExcelValue outputs_emissions_t235();
ExcelValue outputs_emissions_u235();
ExcelValue outputs_emissions_v235();
ExcelValue outputs_emissions_w235();
ExcelValue outputs_emissions_x235();
ExcelValue outputs_emissions_y235();
ExcelValue outputs_emissions_z235();
ExcelValue outputs_emissions_aa235();
ExcelValue outputs_emissions_ab235();
ExcelValue outputs_emissions_ac235();
ExcelValue outputs_emissions_ad235();
ExcelValue outputs_emissions_ae235();
ExcelValue outputs_emissions_af235();
ExcelValue outputs_emissions_ag235();
ExcelValue outputs_emissions_ah235();
ExcelValue outputs_emissions_ai235();
ExcelValue outputs_emissions_aj235();
ExcelValue outputs_emissions_c236();
ExcelValue outputs_emissions_c239();
ExcelValue outputs_emissions_d239();
ExcelValue outputs_emissions_d240();
ExcelValue outputs_energy_b2();
ExcelValue outputs_energy_c2();
ExcelValue outputs_energy_e2();
ExcelValue outputs_energy_i2();
ExcelValue outputs_energy_b3();
ExcelValue outputs_energy_b5();
ExcelValue outputs_energy_c7();
ExcelValue outputs_energy_z7();
ExcelValue outputs_energy_h8();
ExcelValue outputs_energy_r8();
ExcelValue outputs_energy_c9();
ExcelValue outputs_energy_d9();
ExcelValue outputs_energy_g9();
ExcelValue outputs_energy_h9();
ExcelValue outputs_energy_i9();
ExcelValue outputs_energy_j9();
ExcelValue outputs_energy_k9();
ExcelValue outputs_energy_l9();
ExcelValue outputs_energy_m9();
ExcelValue outputs_energy_n9();
ExcelValue outputs_energy_o9();
ExcelValue outputs_energy_p9();
ExcelValue outputs_energy_r9();
ExcelValue outputs_energy_s9();
ExcelValue outputs_energy_t9();
ExcelValue outputs_energy_u9();
ExcelValue outputs_energy_v9();
ExcelValue outputs_energy_w9();
ExcelValue outputs_energy_x9();
ExcelValue outputs_energy_y9();
ExcelValue outputs_energy_z9();
ExcelValue outputs_energy_d10();
ExcelValue outputs_energy_h10();
ExcelValue outputs_energy_i10();
ExcelValue outputs_energy_j10();
ExcelValue outputs_energy_k10();
ExcelValue outputs_energy_l10();
ExcelValue outputs_energy_m10();
ExcelValue outputs_energy_n10();
ExcelValue outputs_energy_o10();
ExcelValue outputs_energy_p10();
ExcelValue outputs_energy_r10();
ExcelValue outputs_energy_s10();
ExcelValue outputs_energy_t10();
ExcelValue outputs_energy_u10();
ExcelValue outputs_energy_v10();
ExcelValue outputs_energy_w10();
ExcelValue outputs_energy_x10();
ExcelValue outputs_energy_y10();
ExcelValue outputs_energy_z10();
ExcelValue outputs_energy_c11();
ExcelValue outputs_energy_d11();
ExcelValue outputs_energy_s11();
ExcelValue outputs_energy_c12();
ExcelValue outputs_energy_d12();
ExcelValue outputs_energy_s12();
ExcelValue outputs_energy_c13();
ExcelValue outputs_energy_d13();
ExcelValue outputs_energy_s13();
ExcelValue outputs_energy_c14();
ExcelValue outputs_energy_d14();
ExcelValue outputs_energy_s14();
ExcelValue outputs_energy_d16();
ExcelValue outputs_energy_h16();
ExcelValue outputs_energy_i16();
ExcelValue outputs_energy_j16();
ExcelValue outputs_energy_k16();
ExcelValue outputs_energy_l16();
ExcelValue outputs_energy_m16();
ExcelValue outputs_energy_n16();
ExcelValue outputs_energy_o16();
ExcelValue outputs_energy_p16();
ExcelValue outputs_energy_r16();
ExcelValue outputs_energy_s16();
ExcelValue outputs_energy_t16();
ExcelValue outputs_energy_u16();
ExcelValue outputs_energy_v16();
ExcelValue outputs_energy_w16();
ExcelValue outputs_energy_x16();
ExcelValue outputs_energy_y16();
ExcelValue outputs_energy_z16();
ExcelValue outputs_energy_c17();
ExcelValue outputs_energy_d17();
ExcelValue outputs_energy_s17();
ExcelValue outputs_energy_c18();
ExcelValue outputs_energy_d18();
ExcelValue outputs_energy_s18();
ExcelValue outputs_energy_c19();
ExcelValue outputs_energy_d19();
ExcelValue outputs_energy_s19();
ExcelValue outputs_energy_d21();
ExcelValue outputs_energy_h21();
ExcelValue outputs_energy_i21();
ExcelValue outputs_energy_j21();
ExcelValue outputs_energy_k21();
ExcelValue outputs_energy_l21();
ExcelValue outputs_energy_m21();
ExcelValue outputs_energy_n21();
ExcelValue outputs_energy_o21();
ExcelValue outputs_energy_p21();
ExcelValue outputs_energy_r21();
ExcelValue outputs_energy_s21();
ExcelValue outputs_energy_t21();
ExcelValue outputs_energy_u21();
ExcelValue outputs_energy_v21();
ExcelValue outputs_energy_w21();
ExcelValue outputs_energy_x21();
ExcelValue outputs_energy_y21();
ExcelValue outputs_energy_z21();
ExcelValue outputs_energy_c22();
ExcelValue outputs_energy_d22();
ExcelValue outputs_energy_s22();
ExcelValue outputs_energy_c23();
ExcelValue outputs_energy_d23();
ExcelValue outputs_energy_s23();
ExcelValue outputs_energy_c24();
ExcelValue outputs_energy_d24();
ExcelValue outputs_energy_s24();
ExcelValue outputs_energy_d26();
ExcelValue outputs_energy_s26();
ExcelValue outputs_energy_c27();
ExcelValue outputs_energy_d27();
ExcelValue outputs_energy_s27();
ExcelValue outputs_energy_d29();
ExcelValue outputs_energy_s29();
ExcelValue outputs_energy_c30();
ExcelValue outputs_energy_d30();
ExcelValue outputs_energy_s30();
ExcelValue outputs_energy_h31();
ExcelValue outputs_energy_i31();
ExcelValue outputs_energy_j31();
ExcelValue outputs_energy_k31();
ExcelValue outputs_energy_l31();
ExcelValue outputs_energy_m31();
ExcelValue outputs_energy_n31();
ExcelValue outputs_energy_o31();
ExcelValue outputs_energy_r31();
ExcelValue outputs_energy_s31();
ExcelValue outputs_energy_t31();
ExcelValue outputs_energy_u31();
ExcelValue outputs_energy_v31();
ExcelValue outputs_energy_w31();
ExcelValue outputs_energy_x31();
ExcelValue outputs_energy_y31();
ExcelValue outputs_energy_z31();
ExcelValue outputs_energy_c34();
ExcelValue outputs_energy_z34();
ExcelValue outputs_energy_h35();
ExcelValue outputs_energy_r35();
ExcelValue outputs_energy_c36();
ExcelValue outputs_energy_d36();
ExcelValue outputs_energy_g36();
ExcelValue outputs_energy_h36();
ExcelValue outputs_energy_i36();
ExcelValue outputs_energy_j36();
ExcelValue outputs_energy_k36();
ExcelValue outputs_energy_l36();
ExcelValue outputs_energy_m36();
ExcelValue outputs_energy_n36();
ExcelValue outputs_energy_o36();
ExcelValue outputs_energy_p36();
ExcelValue outputs_energy_r36();
ExcelValue outputs_energy_s36();
ExcelValue outputs_energy_t36();
ExcelValue outputs_energy_u36();
ExcelValue outputs_energy_v36();
ExcelValue outputs_energy_w36();
ExcelValue outputs_energy_x36();
ExcelValue outputs_energy_y36();
ExcelValue outputs_energy_z36();
ExcelValue outputs_energy_d37();
ExcelValue outputs_energy_h37();
ExcelValue outputs_energy_i37();
ExcelValue outputs_energy_j37();
ExcelValue outputs_energy_k37();
ExcelValue outputs_energy_l37();
ExcelValue outputs_energy_m37();
ExcelValue outputs_energy_n37();
ExcelValue outputs_energy_o37();
ExcelValue outputs_energy_r37();
ExcelValue outputs_energy_s37();
ExcelValue outputs_energy_t37();
ExcelValue outputs_energy_u37();
ExcelValue outputs_energy_v37();
ExcelValue outputs_energy_w37();
ExcelValue outputs_energy_x37();
ExcelValue outputs_energy_y37();
ExcelValue outputs_energy_z37();
ExcelValue outputs_energy_c38();
ExcelValue outputs_energy_d38();
ExcelValue outputs_energy_s38();
ExcelValue outputs_energy_c39();
ExcelValue outputs_energy_d39();
ExcelValue outputs_energy_s39();
ExcelValue outputs_energy_c40();
ExcelValue outputs_energy_d40();
ExcelValue outputs_energy_s40();
ExcelValue outputs_energy_c41();
ExcelValue outputs_energy_d41();
ExcelValue outputs_energy_s41();
ExcelValue outputs_energy_c42();
ExcelValue outputs_energy_d42();
ExcelValue outputs_energy_s42();
ExcelValue outputs_energy_c43();
ExcelValue outputs_energy_d43();
ExcelValue outputs_energy_s43();
ExcelValue outputs_energy_c44();
ExcelValue outputs_energy_d44();
ExcelValue outputs_energy_s44();
ExcelValue outputs_energy_d46();
ExcelValue outputs_energy_h46();
ExcelValue outputs_energy_i46();
ExcelValue outputs_energy_j46();
ExcelValue outputs_energy_k46();
ExcelValue outputs_energy_l46();
ExcelValue outputs_energy_m46();
ExcelValue outputs_energy_n46();
ExcelValue outputs_energy_o46();
ExcelValue outputs_energy_r46();
ExcelValue outputs_energy_s46();
ExcelValue outputs_energy_t46();
ExcelValue outputs_energy_u46();
ExcelValue outputs_energy_v46();
ExcelValue outputs_energy_w46();
ExcelValue outputs_energy_x46();
ExcelValue outputs_energy_y46();
ExcelValue outputs_energy_z46();
ExcelValue outputs_energy_c47();
ExcelValue outputs_energy_d47();
ExcelValue outputs_energy_s47();
ExcelValue outputs_energy_d49();
ExcelValue outputs_energy_h49();
ExcelValue outputs_energy_i49();
ExcelValue outputs_energy_j49();
ExcelValue outputs_energy_k49();
ExcelValue outputs_energy_l49();
ExcelValue outputs_energy_m49();
ExcelValue outputs_energy_n49();
ExcelValue outputs_energy_o49();
ExcelValue outputs_energy_r49();
ExcelValue outputs_energy_s49();
ExcelValue outputs_energy_t49();
ExcelValue outputs_energy_u49();
ExcelValue outputs_energy_v49();
ExcelValue outputs_energy_w49();
ExcelValue outputs_energy_x49();
ExcelValue outputs_energy_y49();
ExcelValue outputs_energy_z49();
ExcelValue outputs_energy_c50();
ExcelValue outputs_energy_d50();
ExcelValue outputs_energy_s50();
ExcelValue outputs_energy_c51();
ExcelValue outputs_energy_d51();
ExcelValue outputs_energy_s51();
ExcelValue outputs_energy_d54();
ExcelValue outputs_energy_h54();
ExcelValue outputs_energy_i54();
ExcelValue outputs_energy_j54();
ExcelValue outputs_energy_k54();
ExcelValue outputs_energy_l54();
ExcelValue outputs_energy_m54();
ExcelValue outputs_energy_n54();
ExcelValue outputs_energy_o54();
ExcelValue outputs_energy_r54();
ExcelValue outputs_energy_s54();
ExcelValue outputs_energy_t54();
ExcelValue outputs_energy_u54();
ExcelValue outputs_energy_v54();
ExcelValue outputs_energy_w54();
ExcelValue outputs_energy_x54();
ExcelValue outputs_energy_y54();
ExcelValue outputs_energy_z54();
ExcelValue outputs_energy_c55();
ExcelValue outputs_energy_d55();
ExcelValue outputs_energy_s55();
ExcelValue outputs_energy_c56();
ExcelValue outputs_energy_d56();
ExcelValue outputs_energy_s56();
ExcelValue outputs_energy_c57();
ExcelValue outputs_energy_d57();
ExcelValue outputs_energy_s57();
ExcelValue outputs_energy_h58();
ExcelValue outputs_energy_i58();
ExcelValue outputs_energy_j58();
ExcelValue outputs_energy_k58();
ExcelValue outputs_energy_l58();
ExcelValue outputs_energy_m58();
ExcelValue outputs_energy_n58();
ExcelValue outputs_energy_o58();
ExcelValue outputs_energy_r58();
ExcelValue outputs_energy_s58();
ExcelValue outputs_energy_t58();
ExcelValue outputs_energy_u58();
ExcelValue outputs_energy_v58();
ExcelValue outputs_energy_w58();
ExcelValue outputs_energy_x58();
ExcelValue outputs_energy_y58();
ExcelValue outputs_energy_z58();
ExcelValue outputs_energy_d60();
ExcelValue outputs_energy_h60();
ExcelValue outputs_energy_i60();
ExcelValue outputs_energy_j60();
ExcelValue outputs_energy_k60();
ExcelValue outputs_energy_l60();
ExcelValue outputs_energy_m60();
ExcelValue outputs_energy_n60();
ExcelValue outputs_energy_c62();
ExcelValue outputs_energy_h63();
ExcelValue outputs_energy_r63();
ExcelValue outputs_energy_c64();
ExcelValue outputs_energy_d64();
ExcelValue outputs_energy_g64();
ExcelValue outputs_energy_h64();
ExcelValue outputs_energy_i64();
ExcelValue outputs_energy_j64();
ExcelValue outputs_energy_k64();
ExcelValue outputs_energy_l64();
ExcelValue outputs_energy_m64();
ExcelValue outputs_energy_n64();
ExcelValue outputs_energy_o64();
ExcelValue outputs_energy_p64();
ExcelValue outputs_energy_r64();
ExcelValue outputs_energy_s64();
ExcelValue outputs_energy_t64();
ExcelValue outputs_energy_u64();
ExcelValue outputs_energy_v64();
ExcelValue outputs_energy_w64();
ExcelValue outputs_energy_x64();
ExcelValue outputs_energy_y64();
ExcelValue outputs_energy_z64();
ExcelValue outputs_energy_c65();
ExcelValue outputs_energy_d65();
ExcelValue outputs_energy_s65();
ExcelValue outputs_energy_c66();
ExcelValue outputs_energy_d66();
ExcelValue outputs_energy_s66();
ExcelValue outputs_energy_d67();
ExcelValue outputs_energy_s67();
ExcelValue outputs_energy_d69();
ExcelValue outputs_energy_h69();
ExcelValue outputs_energy_i69();
ExcelValue outputs_energy_j69();
ExcelValue outputs_energy_k69();
ExcelValue outputs_energy_l69();
ExcelValue outputs_energy_m69();
ExcelValue outputs_energy_n69();
ExcelValue outputs_energy_o69();
ExcelValue outputs_energy_r69();
ExcelValue outputs_energy_s69();
ExcelValue outputs_energy_t69();
ExcelValue outputs_energy_u69();
ExcelValue outputs_energy_v69();
ExcelValue outputs_energy_w69();
ExcelValue outputs_energy_x69();
ExcelValue outputs_energy_y69();
ExcelValue outputs_energy_z69();
ExcelValue outputs_energy_c72();
ExcelValue outputs_energy_c74();
ExcelValue outputs_energy_g76();
ExcelValue outputs_energy_r76();
ExcelValue outputs_energy_s76();
ExcelValue outputs_energy_t76();
ExcelValue outputs_energy_u76();
ExcelValue outputs_energy_v76();
ExcelValue outputs_energy_w76();
ExcelValue outputs_energy_x76();
ExcelValue outputs_energy_y76();
ExcelValue outputs_energy_z76();
ExcelValue outputs_energy_c77();
ExcelValue outputs_energy_d77();
ExcelValue outputs_energy_g77();
ExcelValue outputs_energy_r77();
ExcelValue outputs_energy_s77();
ExcelValue outputs_energy_t77();
ExcelValue outputs_energy_u77();
ExcelValue outputs_energy_v77();
ExcelValue outputs_energy_w77();
ExcelValue outputs_energy_x77();
ExcelValue outputs_energy_y77();
ExcelValue outputs_energy_z77();
ExcelValue outputs_energy_c78();
ExcelValue outputs_energy_d78();
ExcelValue outputs_energy_g78();
ExcelValue outputs_energy_r78();
ExcelValue outputs_energy_s78();
ExcelValue outputs_energy_t78();
ExcelValue outputs_energy_u78();
ExcelValue outputs_energy_v78();
ExcelValue outputs_energy_w78();
ExcelValue outputs_energy_x78();
ExcelValue outputs_energy_y78();
ExcelValue outputs_energy_z78();
ExcelValue outputs_energy_c79();
ExcelValue outputs_energy_d79();
ExcelValue outputs_energy_g79();
ExcelValue outputs_energy_r79();
ExcelValue outputs_energy_s79();
ExcelValue outputs_energy_t79();
ExcelValue outputs_energy_u79();
ExcelValue outputs_energy_v79();
ExcelValue outputs_energy_w79();
ExcelValue outputs_energy_x79();
ExcelValue outputs_energy_y79();
ExcelValue outputs_energy_z79();
ExcelValue outputs_energy_c82();
ExcelValue outputs_energy_c84();
ExcelValue outputs_energy_c86();
ExcelValue outputs_energy_d86();
ExcelValue outputs_energy_e86();
ExcelValue outputs_energy_f86();
ExcelValue outputs_energy_h86();
ExcelValue outputs_energy_c87();
ExcelValue outputs_energy_d87();
ExcelValue outputs_energy_e87();
ExcelValue outputs_energy_f87();
ExcelValue outputs_energy_h87();
ExcelValue outputs_energy_c88();
ExcelValue outputs_energy_d88();
ExcelValue outputs_energy_e88();
ExcelValue outputs_energy_f88();
ExcelValue outputs_energy_h88();
ExcelValue outputs_energy_c89();
ExcelValue outputs_energy_d89();
ExcelValue outputs_energy_e89();
ExcelValue outputs_energy_f89();
ExcelValue outputs_energy_h89();
ExcelValue outputs_energy_c91();
ExcelValue outputs_energy_c93();
ExcelValue outputs_energy_d93();
ExcelValue outputs_energy_e93();
ExcelValue outputs_energy_f93();
ExcelValue outputs_energy_h93();
ExcelValue outputs_energy_c94();
ExcelValue outputs_energy_e94();
ExcelValue outputs_energy_f94();
ExcelValue outputs_energy_c95();
ExcelValue outputs_energy_e95();
ExcelValue outputs_energy_f95();
ExcelValue outputs_energy_c96();
ExcelValue outputs_energy_e96();
ExcelValue outputs_energy_f96();
ExcelValue outputs_energy_c98();
ExcelValue outputs_energy_c100();
ExcelValue outputs_energy_d100();
ExcelValue outputs_energy_e100();
ExcelValue outputs_energy_f100();
ExcelValue outputs_energy_h100();
ExcelValue outputs_energy_c101();
ExcelValue outputs_energy_e101();
ExcelValue outputs_energy_f101();
ExcelValue outputs_energy_c102();
ExcelValue outputs_energy_e102();
ExcelValue outputs_energy_f102();
ExcelValue outputs_energy_c103();
ExcelValue outputs_energy_e103();
ExcelValue outputs_energy_f103();
ExcelValue outputs_energy_b107();
ExcelValue outputs_energy_h109();
ExcelValue outputs_energy_r109();
ExcelValue outputs_energy_c110();
ExcelValue outputs_energy_d110();
ExcelValue outputs_energy_g110();
ExcelValue outputs_energy_h110();
ExcelValue outputs_energy_i110();
ExcelValue outputs_energy_j110();
ExcelValue outputs_energy_k110();
ExcelValue outputs_energy_l110();
ExcelValue outputs_energy_m110();
ExcelValue outputs_energy_n110();
ExcelValue outputs_energy_o110();
ExcelValue outputs_energy_p110();
ExcelValue outputs_energy_r110();
ExcelValue outputs_energy_s110();
ExcelValue outputs_energy_t110();
ExcelValue outputs_energy_u110();
ExcelValue outputs_energy_v110();
ExcelValue outputs_energy_w110();
ExcelValue outputs_energy_x110();
ExcelValue outputs_energy_y110();
ExcelValue outputs_energy_z110();
ExcelValue outputs_energy_c111();
ExcelValue outputs_energy_d111();
ExcelValue outputs_energy_s111();
ExcelValue outputs_energy_c112();
ExcelValue outputs_energy_d112();
ExcelValue outputs_energy_s112();
ExcelValue outputs_energy_c114();
ExcelValue outputs_energy_c115();
ExcelValue outputs_energy_d115();
ExcelValue outputs_energy_s115();
ExcelValue outputs_energy_d116();
ExcelValue outputs_energy_s116();
ExcelValue outputs_energy_b120();
ExcelValue outputs_energy_f120();
ExcelValue outputs_energy_h122();
ExcelValue outputs_energy_r122();
ExcelValue outputs_energy_c123();
ExcelValue outputs_energy_d123();
ExcelValue outputs_energy_f123();
ExcelValue outputs_energy_g123();
ExcelValue outputs_energy_h123();
ExcelValue outputs_energy_i123();
ExcelValue outputs_energy_j123();
ExcelValue outputs_energy_k123();
ExcelValue outputs_energy_l123();
ExcelValue outputs_energy_m123();
ExcelValue outputs_energy_n123();
ExcelValue outputs_energy_o123();
ExcelValue outputs_energy_p123();
ExcelValue outputs_energy_r123();
ExcelValue outputs_energy_s123();
ExcelValue outputs_energy_t123();
ExcelValue outputs_energy_u123();
ExcelValue outputs_energy_v123();
ExcelValue outputs_energy_w123();
ExcelValue outputs_energy_x123();
ExcelValue outputs_energy_y123();
ExcelValue outputs_energy_z123();
ExcelValue outputs_energy_c124();
ExcelValue outputs_energy_d124();
ExcelValue outputs_energy_s124();
ExcelValue outputs_energy_c125();
ExcelValue outputs_energy_d125();
ExcelValue outputs_energy_s125();
ExcelValue outputs_energy_c126();
ExcelValue outputs_energy_d126();
ExcelValue outputs_energy_s126();
ExcelValue outputs_energy_c127();
ExcelValue outputs_energy_d127();
ExcelValue outputs_energy_s127();
ExcelValue outputs_energy_c128();
ExcelValue outputs_energy_d128();
ExcelValue outputs_energy_s128();
ExcelValue outputs_energy_c129();
ExcelValue outputs_energy_d129();
ExcelValue outputs_energy_s129();
ExcelValue outputs_energy_c130();
ExcelValue outputs_energy_d130();
ExcelValue outputs_energy_s130();
ExcelValue outputs_energy_c131();
ExcelValue outputs_energy_d131();
ExcelValue outputs_energy_s131();
ExcelValue outputs_energy_c132();
ExcelValue outputs_energy_d132();
ExcelValue outputs_energy_s132();
ExcelValue outputs_energy_d133();
ExcelValue outputs_energy_h133();
ExcelValue outputs_energy_i133();
ExcelValue outputs_energy_j133();
ExcelValue outputs_energy_k133();
ExcelValue outputs_energy_l133();
ExcelValue outputs_energy_m133();
ExcelValue outputs_energy_n133();
ExcelValue outputs_energy_o133();
ExcelValue outputs_energy_r133();
ExcelValue outputs_energy_s133();
ExcelValue outputs_energy_t133();
ExcelValue outputs_energy_u133();
ExcelValue outputs_energy_v133();
ExcelValue outputs_energy_w133();
ExcelValue outputs_energy_x133();
ExcelValue outputs_energy_y133();
ExcelValue outputs_energy_z133();
ExcelValue outputs_energy_d135();
ExcelValue outputs_energy_h135();
ExcelValue outputs_energy_i135();
ExcelValue outputs_energy_j135();
ExcelValue outputs_energy_k135();
ExcelValue outputs_energy_l135();
ExcelValue outputs_energy_m135();
ExcelValue outputs_energy_n135();
ExcelValue outputs_energy_o135();
ExcelValue outputs_energy_r135();
ExcelValue outputs_energy_s135();
ExcelValue outputs_energy_t135();
ExcelValue outputs_energy_u135();
ExcelValue outputs_energy_v135();
ExcelValue outputs_energy_w135();
ExcelValue outputs_energy_x135();
ExcelValue outputs_energy_y135();
ExcelValue outputs_energy_z135();
ExcelValue outputs_energy_ab135();
ExcelValue outputs_energy_b139();
ExcelValue outputs_energy_h141();
ExcelValue outputs_energy_r141();
ExcelValue outputs_energy_c142();
ExcelValue outputs_energy_h142();
ExcelValue outputs_energy_i142();
ExcelValue outputs_energy_j142();
ExcelValue outputs_energy_k142();
ExcelValue outputs_energy_l142();
ExcelValue outputs_energy_m142();
ExcelValue outputs_energy_n142();
ExcelValue outputs_energy_o142();
ExcelValue outputs_energy_p142();
ExcelValue outputs_energy_r142();
ExcelValue outputs_energy_s142();
ExcelValue outputs_energy_t142();
ExcelValue outputs_energy_u142();
ExcelValue outputs_energy_v142();
ExcelValue outputs_energy_w142();
ExcelValue outputs_energy_x142();
ExcelValue outputs_energy_y142();
ExcelValue outputs_energy_z142();
ExcelValue outputs_energy_c143();
ExcelValue outputs_energy_d143();
ExcelValue outputs_energy_c144();
ExcelValue outputs_energy_d144();
ExcelValue outputs_energy_c145();
ExcelValue outputs_energy_d145();
ExcelValue outputs_energy_c146();
ExcelValue outputs_land_use_technology_b2();
ExcelValue outputs_land_use_technology_c2();
ExcelValue outputs_land_use_technology_e2();
ExcelValue outputs_land_use_technology_b3();
ExcelValue outputs_land_use_technology_e3();
ExcelValue outputs_land_use_technology_b5();
ExcelValue outputs_land_use_technology_w5();
ExcelValue outputs_land_use_technology_f7();
ExcelValue outputs_land_use_technology_q7();
ExcelValue outputs_land_use_technology_c8();
ExcelValue outputs_land_use_technology_d8();
ExcelValue outputs_land_use_technology_f8();
ExcelValue outputs_land_use_technology_g8();
ExcelValue outputs_land_use_technology_h8();
ExcelValue outputs_land_use_technology_i8();
ExcelValue outputs_land_use_technology_j8();
ExcelValue outputs_land_use_technology_k8();
ExcelValue outputs_land_use_technology_l8();
ExcelValue outputs_land_use_technology_m8();
ExcelValue outputs_land_use_technology_n8();
ExcelValue outputs_land_use_technology_q8();
ExcelValue outputs_land_use_technology_r8();
ExcelValue outputs_land_use_technology_s8();
ExcelValue outputs_land_use_technology_t8();
ExcelValue outputs_land_use_technology_u8();
ExcelValue outputs_land_use_technology_v8();
ExcelValue outputs_land_use_technology_w8();
ExcelValue outputs_land_use_technology_x8();
ExcelValue outputs_land_use_technology_y8();
ExcelValue outputs_land_use_technology_c9();
ExcelValue outputs_land_use_technology_d9();
ExcelValue outputs_land_use_technology_c10();
ExcelValue outputs_land_use_technology_d10();
ExcelValue outputs_land_use_technology_c11();
ExcelValue outputs_land_use_technology_d11();
ExcelValue outputs_land_use_technology_c12();
ExcelValue outputs_land_use_technology_d12();
ExcelValue outputs_land_use_technology_c13();
ExcelValue outputs_land_use_technology_d13();
ExcelValue outputs_land_use_technology_c14();
ExcelValue outputs_land_use_technology_d14();
ExcelValue outputs_land_use_technology_c15();
ExcelValue outputs_land_use_technology_d15();
ExcelValue outputs_land_use_technology_c16();
ExcelValue outputs_land_use_technology_f19();
ExcelValue outputs_land_use_technology_q19();
ExcelValue outputs_land_use_technology_c20();
ExcelValue outputs_land_use_technology_f20();
ExcelValue outputs_land_use_technology_g20();
ExcelValue outputs_land_use_technology_h20();
ExcelValue outputs_land_use_technology_i20();
ExcelValue outputs_land_use_technology_j20();
ExcelValue outputs_land_use_technology_k20();
ExcelValue outputs_land_use_technology_l20();
ExcelValue outputs_land_use_technology_m20();
ExcelValue outputs_land_use_technology_n20();
ExcelValue outputs_land_use_technology_q20();
ExcelValue outputs_land_use_technology_r20();
ExcelValue outputs_land_use_technology_s20();
ExcelValue outputs_land_use_technology_t20();
ExcelValue outputs_land_use_technology_u20();
ExcelValue outputs_land_use_technology_v20();
ExcelValue outputs_land_use_technology_w20();
ExcelValue outputs_land_use_technology_x20();
ExcelValue outputs_land_use_technology_y20();
ExcelValue outputs_land_use_technology_c21();
ExcelValue outputs_land_use_technology_d21();
ExcelValue outputs_land_use_technology_f21();
ExcelValue outputs_land_use_technology_g21();
ExcelValue outputs_land_use_technology_h21();
ExcelValue outputs_land_use_technology_i21();
ExcelValue outputs_land_use_technology_j21();
ExcelValue outputs_land_use_technology_k21();
ExcelValue outputs_land_use_technology_l21();
ExcelValue outputs_land_use_technology_m21();
ExcelValue outputs_land_use_technology_n21();
ExcelValue outputs_land_use_technology_q21();
ExcelValue outputs_land_use_technology_r21();
ExcelValue outputs_land_use_technology_s21();
ExcelValue outputs_land_use_technology_t21();
ExcelValue outputs_land_use_technology_u21();
ExcelValue outputs_land_use_technology_v21();
ExcelValue outputs_land_use_technology_w21();
ExcelValue outputs_land_use_technology_x21();
ExcelValue outputs_land_use_technology_y21();
ExcelValue outputs_land_use_technology_c22();
ExcelValue outputs_land_use_technology_d22();
ExcelValue outputs_land_use_technology_f22();
ExcelValue outputs_land_use_technology_g22();
ExcelValue outputs_land_use_technology_h22();
ExcelValue outputs_land_use_technology_i22();
ExcelValue outputs_land_use_technology_j22();
ExcelValue outputs_land_use_technology_k22();
ExcelValue outputs_land_use_technology_l22();
ExcelValue outputs_land_use_technology_m22();
ExcelValue outputs_land_use_technology_n22();
ExcelValue outputs_land_use_technology_q22();
ExcelValue outputs_land_use_technology_r22();
ExcelValue outputs_land_use_technology_s22();
ExcelValue outputs_land_use_technology_t22();
ExcelValue outputs_land_use_technology_u22();
ExcelValue outputs_land_use_technology_v22();
ExcelValue outputs_land_use_technology_w22();
ExcelValue outputs_land_use_technology_x22();
ExcelValue outputs_land_use_technology_y22();
ExcelValue outputs_land_use_technology_c23();
ExcelValue outputs_land_use_technology_d23();
ExcelValue outputs_land_use_technology_f23();
ExcelValue outputs_land_use_technology_g23();
ExcelValue outputs_land_use_technology_h23();
ExcelValue outputs_land_use_technology_i23();
ExcelValue outputs_land_use_technology_j23();
ExcelValue outputs_land_use_technology_k23();
ExcelValue outputs_land_use_technology_l23();
ExcelValue outputs_land_use_technology_m23();
ExcelValue outputs_land_use_technology_n23();
ExcelValue outputs_land_use_technology_q23();
ExcelValue outputs_land_use_technology_r23();
ExcelValue outputs_land_use_technology_s23();
ExcelValue outputs_land_use_technology_t23();
ExcelValue outputs_land_use_technology_u23();
ExcelValue outputs_land_use_technology_v23();
ExcelValue outputs_land_use_technology_w23();
ExcelValue outputs_land_use_technology_x23();
ExcelValue outputs_land_use_technology_y23();
ExcelValue outputs_land_use_technology_c24();
ExcelValue outputs_land_use_technology_d24();
ExcelValue outputs_land_use_technology_f24();
ExcelValue outputs_land_use_technology_g24();
ExcelValue outputs_land_use_technology_h24();
ExcelValue outputs_land_use_technology_i24();
ExcelValue outputs_land_use_technology_j24();
ExcelValue outputs_land_use_technology_k24();
ExcelValue outputs_land_use_technology_l24();
ExcelValue outputs_land_use_technology_m24();
ExcelValue outputs_land_use_technology_n24();
ExcelValue outputs_land_use_technology_q24();
ExcelValue outputs_land_use_technology_r24();
ExcelValue outputs_land_use_technology_s24();
ExcelValue outputs_land_use_technology_t24();
ExcelValue outputs_land_use_technology_u24();
ExcelValue outputs_land_use_technology_v24();
ExcelValue outputs_land_use_technology_w24();
ExcelValue outputs_land_use_technology_x24();
ExcelValue outputs_land_use_technology_y24();
ExcelValue outputs_land_use_technology_c25();
ExcelValue outputs_land_use_technology_d25();
ExcelValue outputs_land_use_technology_f25();
ExcelValue outputs_land_use_technology_g25();
ExcelValue outputs_land_use_technology_h25();
ExcelValue outputs_land_use_technology_i25();
ExcelValue outputs_land_use_technology_j25();
ExcelValue outputs_land_use_technology_k25();
ExcelValue outputs_land_use_technology_l25();
ExcelValue outputs_land_use_technology_m25();
ExcelValue outputs_land_use_technology_n25();
ExcelValue outputs_land_use_technology_q25();
ExcelValue outputs_land_use_technology_r25();
ExcelValue outputs_land_use_technology_s25();
ExcelValue outputs_land_use_technology_t25();
ExcelValue outputs_land_use_technology_u25();
ExcelValue outputs_land_use_technology_v25();
ExcelValue outputs_land_use_technology_w25();
ExcelValue outputs_land_use_technology_x25();
ExcelValue outputs_land_use_technology_y25();
ExcelValue outputs_land_use_technology_c26();
ExcelValue outputs_land_use_technology_d26();
ExcelValue outputs_land_use_technology_f26();
ExcelValue outputs_land_use_technology_g26();
ExcelValue outputs_land_use_technology_h26();
ExcelValue outputs_land_use_technology_i26();
ExcelValue outputs_land_use_technology_j26();
ExcelValue outputs_land_use_technology_k26();
ExcelValue outputs_land_use_technology_l26();
ExcelValue outputs_land_use_technology_m26();
ExcelValue outputs_land_use_technology_n26();
ExcelValue outputs_land_use_technology_q26();
ExcelValue outputs_land_use_technology_r26();
ExcelValue outputs_land_use_technology_s26();
ExcelValue outputs_land_use_technology_t26();
ExcelValue outputs_land_use_technology_u26();
ExcelValue outputs_land_use_technology_v26();
ExcelValue outputs_land_use_technology_w26();
ExcelValue outputs_land_use_technology_x26();
ExcelValue outputs_land_use_technology_y26();
ExcelValue outputs_land_use_technology_c27();
ExcelValue outputs_land_use_technology_d27();
ExcelValue outputs_land_use_technology_f27();
ExcelValue outputs_land_use_technology_g27();
ExcelValue outputs_land_use_technology_h27();
ExcelValue outputs_land_use_technology_i27();
ExcelValue outputs_land_use_technology_j27();
ExcelValue outputs_land_use_technology_k27();
ExcelValue outputs_land_use_technology_l27();
ExcelValue outputs_land_use_technology_m27();
ExcelValue outputs_land_use_technology_n27();
ExcelValue outputs_land_use_technology_q27();
ExcelValue outputs_land_use_technology_r27();
ExcelValue outputs_land_use_technology_s27();
ExcelValue outputs_land_use_technology_t27();
ExcelValue outputs_land_use_technology_u27();
ExcelValue outputs_land_use_technology_v27();
ExcelValue outputs_land_use_technology_w27();
ExcelValue outputs_land_use_technology_x27();
ExcelValue outputs_land_use_technology_y27();
ExcelValue outputs_land_use_technology_c28();
ExcelValue outputs_land_use_technology_b33();
ExcelValue outputs_land_use_technology_f35();
ExcelValue outputs_land_use_technology_q35();
ExcelValue outputs_land_use_technology_c36();
ExcelValue outputs_land_use_technology_f36();
ExcelValue outputs_land_use_technology_g36();
ExcelValue outputs_land_use_technology_h36();
ExcelValue outputs_land_use_technology_i36();
ExcelValue outputs_land_use_technology_j36();
ExcelValue outputs_land_use_technology_k36();
ExcelValue outputs_land_use_technology_l36();
ExcelValue outputs_land_use_technology_m36();
ExcelValue outputs_land_use_technology_n36();
ExcelValue outputs_land_use_technology_q36();
ExcelValue outputs_land_use_technology_r36();
ExcelValue outputs_land_use_technology_s36();
ExcelValue outputs_land_use_technology_t36();
ExcelValue outputs_land_use_technology_u36();
ExcelValue outputs_land_use_technology_v36();
ExcelValue outputs_land_use_technology_w36();
ExcelValue outputs_land_use_technology_x36();
ExcelValue outputs_land_use_technology_y36();
ExcelValue outputs_land_use_technology_c37();
ExcelValue outputs_land_use_technology_c38();
ExcelValue outputs_land_use_technology_c39();
ExcelValue outputs_land_use_technology_c40();
ExcelValue outputs_land_use_technology_c41();
ExcelValue outputs_land_use_technology_c42();
ExcelValue outputs_land_use_technology_b47();
ExcelValue outputs_land_use_technology_ab47();
ExcelValue outputs_land_use_technology_ab48();
ExcelValue outputs_land_use_technology_ac48();
ExcelValue outputs_land_use_technology_ad48();
ExcelValue outputs_land_use_technology_ae48();
ExcelValue outputs_land_use_technology_af48();
ExcelValue outputs_land_use_technology_c49();
ExcelValue outputs_land_use_technology_y49();
ExcelValue outputs_land_use_technology_f50();
ExcelValue outputs_land_use_technology_q50();
ExcelValue outputs_land_use_technology_c51();
ExcelValue outputs_land_use_technology_d51();
ExcelValue outputs_land_use_technology_f51();
ExcelValue outputs_land_use_technology_g51();
ExcelValue outputs_land_use_technology_h51();
ExcelValue outputs_land_use_technology_i51();
ExcelValue outputs_land_use_technology_j51();
ExcelValue outputs_land_use_technology_k51();
ExcelValue outputs_land_use_technology_l51();
ExcelValue outputs_land_use_technology_m51();
ExcelValue outputs_land_use_technology_n51();
ExcelValue outputs_land_use_technology_q51();
ExcelValue outputs_land_use_technology_r51();
ExcelValue outputs_land_use_technology_s51();
ExcelValue outputs_land_use_technology_t51();
ExcelValue outputs_land_use_technology_u51();
ExcelValue outputs_land_use_technology_v51();
ExcelValue outputs_land_use_technology_w51();
ExcelValue outputs_land_use_technology_x51();
ExcelValue outputs_land_use_technology_y51();
ExcelValue outputs_land_use_technology_c52();
ExcelValue outputs_land_use_technology_d52();
ExcelValue outputs_land_use_technology_c53();
ExcelValue outputs_land_use_technology_d53();
ExcelValue outputs_land_use_technology_c54();
ExcelValue outputs_land_use_technology_d54();
ExcelValue outputs_land_use_technology_c55();
ExcelValue outputs_land_use_technology_d55();
ExcelValue outputs_land_use_technology_c56();
ExcelValue outputs_land_use_technology_d56();
ExcelValue outputs_land_use_technology_c57();
ExcelValue outputs_land_use_technology_d57();
ExcelValue outputs_land_use_technology_c58();
ExcelValue outputs_land_use_technology_d58();
ExcelValue outputs_land_use_technology_c59();
ExcelValue outputs_land_use_technology_d59();
ExcelValue outputs_land_use_technology_c60();
ExcelValue outputs_land_use_technology_d60();
ExcelValue outputs_land_use_technology_c61();
ExcelValue outputs_land_use_technology_d61();
ExcelValue outputs_land_use_technology_c62();
ExcelValue outputs_land_use_technology_d62();
ExcelValue outputs_land_use_technology_c63();
ExcelValue outputs_land_use_technology_d63();
ExcelValue outputs_land_use_technology_c64();
ExcelValue outputs_land_use_technology_d64();
ExcelValue outputs_land_use_technology_c65();
ExcelValue outputs_land_use_technology_d65();
ExcelValue outputs_land_use_technology_c66();
ExcelValue outputs_land_use_technology_d66();
ExcelValue outputs_land_use_technology_c67();
ExcelValue outputs_land_use_technology_d67();
ExcelValue outputs_land_use_technology_c68();
ExcelValue outputs_land_use_technology_d68();
ExcelValue outputs_land_use_technology_c69();
ExcelValue outputs_land_use_technology_d69();
ExcelValue outputs_land_use_technology_c70();
ExcelValue outputs_land_use_technology_d70();
ExcelValue outputs_land_use_technology_c71();
ExcelValue outputs_land_use_technology_d71();
ExcelValue outputs_land_use_technology_c72();
ExcelValue outputs_land_use_technology_d72();
ExcelValue outputs_land_use_technology_c73();
ExcelValue outputs_land_use_technology_d73();
ExcelValue outputs_land_use_technology_c74();
ExcelValue outputs_land_use_technology_d74();
ExcelValue outputs_land_use_technology_c75();
ExcelValue outputs_land_use_technology_d75();
ExcelValue outputs_land_use_technology_c76();
ExcelValue outputs_land_use_technology_d76();
ExcelValue outputs_land_use_technology_c77();
ExcelValue outputs_land_use_technology_d77();
ExcelValue outputs_land_use_technology_c78();
ExcelValue outputs_land_use_technology_d78();
ExcelValue outputs_land_use_technology_c79();
ExcelValue outputs_land_use_technology_d79();
ExcelValue outputs_land_use_technology_c80();
ExcelValue outputs_land_use_technology_d80();
ExcelValue outputs_land_use_technology_c81();
ExcelValue outputs_land_use_technology_d81();
ExcelValue outputs_land_use_technology_c82();
ExcelValue outputs_land_use_technology_d82();
ExcelValue outputs_land_use_technology_c83();
ExcelValue outputs_land_use_technology_d83();
ExcelValue outputs_land_use_technology_c84();
ExcelValue outputs_land_use_technology_d84();
ExcelValue outputs_land_use_technology_c85();
ExcelValue outputs_land_use_technology_d85();
ExcelValue outputs_land_use_technology_c86();
ExcelValue outputs_land_use_technology_d86();
ExcelValue outputs_land_use_technology_c87();
ExcelValue outputs_land_use_technology_d87();
ExcelValue outputs_land_use_technology_c88();
ExcelValue outputs_land_use_technology_d88();
ExcelValue outputs_land_use_technology_c89();
ExcelValue outputs_land_use_technology_d89();
ExcelValue outputs_land_use_technology_c90();
ExcelValue outputs_land_use_technology_d90();
ExcelValue outputs_land_use_technology_c91();
ExcelValue outputs_land_use_technology_d91();
ExcelValue outputs_land_use_technology_c92();
ExcelValue outputs_land_use_technology_d92();
ExcelValue outputs_land_use_technology_c93();
ExcelValue outputs_land_use_technology_d93();
ExcelValue outputs_land_use_technology_c94();
ExcelValue outputs_land_use_technology_d94();
ExcelValue outputs_land_use_technology_c95();
ExcelValue outputs_land_use_technology_d95();
ExcelValue outputs_land_use_technology_c96();
ExcelValue outputs_land_use_technology_d96();
ExcelValue outputs_land_use_technology_c97();
ExcelValue outputs_land_use_technology_f97();
ExcelValue outputs_land_use_technology_g97();
ExcelValue outputs_land_use_technology_h97();
ExcelValue outputs_land_use_technology_i97();
ExcelValue outputs_land_use_technology_j97();
ExcelValue outputs_land_use_technology_k97();
ExcelValue outputs_land_use_technology_l97();
ExcelValue outputs_land_use_technology_m97();
ExcelValue outputs_land_use_technology_n97();
ExcelValue outputs_land_use_technology_ab97();
ExcelValue outputs_land_use_technology_ac97();
ExcelValue outputs_land_use_technology_ad97();
ExcelValue outputs_land_use_technology_ae97();
ExcelValue outputs_land_use_technology_af97();
ExcelValue outputs_land_use_technology_b103();
ExcelValue outputs_land_use_technology_ab103();
ExcelValue outputs_land_use_technology_ab104();
ExcelValue outputs_land_use_technology_ac104();
ExcelValue outputs_land_use_technology_ad104();
ExcelValue outputs_land_use_technology_ae104();
ExcelValue outputs_land_use_technology_af104();
ExcelValue outputs_land_use_technology_c105();
ExcelValue outputs_land_use_technology_y105();
ExcelValue outputs_land_use_technology_f106();
ExcelValue outputs_land_use_technology_q106();
ExcelValue outputs_land_use_technology_c107();
ExcelValue outputs_land_use_technology_d107();
ExcelValue outputs_land_use_technology_f107();
ExcelValue outputs_land_use_technology_g107();
ExcelValue outputs_land_use_technology_h107();
ExcelValue outputs_land_use_technology_i107();
ExcelValue outputs_land_use_technology_j107();
ExcelValue outputs_land_use_technology_k107();
ExcelValue outputs_land_use_technology_l107();
ExcelValue outputs_land_use_technology_m107();
ExcelValue outputs_land_use_technology_n107();
ExcelValue outputs_land_use_technology_q107();
ExcelValue outputs_land_use_technology_r107();
ExcelValue outputs_land_use_technology_s107();
ExcelValue outputs_land_use_technology_t107();
ExcelValue outputs_land_use_technology_u107();
ExcelValue outputs_land_use_technology_v107();
ExcelValue outputs_land_use_technology_w107();
ExcelValue outputs_land_use_technology_x107();
ExcelValue outputs_land_use_technology_y107();
ExcelValue outputs_land_use_technology_c108();
ExcelValue outputs_land_use_technology_d108();
ExcelValue outputs_land_use_technology_c109();
ExcelValue outputs_land_use_technology_d109();
ExcelValue outputs_land_use_technology_c110();
ExcelValue outputs_land_use_technology_d110();
ExcelValue outputs_land_use_technology_c111();
ExcelValue outputs_land_use_technology_d111();
ExcelValue outputs_land_use_technology_c112();
ExcelValue outputs_land_use_technology_d112();
ExcelValue outputs_land_use_technology_c113();
ExcelValue outputs_land_use_technology_d113();
ExcelValue outputs_land_use_technology_c114();
ExcelValue outputs_land_use_technology_d114();
ExcelValue outputs_land_use_technology_c115();
ExcelValue outputs_land_use_technology_d115();
ExcelValue outputs_land_use_technology_c116();
ExcelValue outputs_land_use_technology_d116();
ExcelValue outputs_land_use_technology_c117();
ExcelValue outputs_land_use_technology_d117();
ExcelValue outputs_land_use_technology_c118();
ExcelValue outputs_land_use_technology_d118();
ExcelValue outputs_land_use_technology_c119();
ExcelValue outputs_land_use_technology_d119();
ExcelValue outputs_land_use_technology_c120();
ExcelValue outputs_land_use_technology_d120();
ExcelValue outputs_land_use_technology_c121();
ExcelValue outputs_land_use_technology_d121();
ExcelValue outputs_land_use_technology_c122();
ExcelValue outputs_land_use_technology_d122();
ExcelValue outputs_land_use_technology_c123();
ExcelValue outputs_land_use_technology_d123();
ExcelValue outputs_land_use_technology_c124();
ExcelValue outputs_land_use_technology_d124();
ExcelValue outputs_land_use_technology_c125();
ExcelValue outputs_land_use_technology_d125();
ExcelValue outputs_land_use_technology_c126();
ExcelValue outputs_land_use_technology_d126();
ExcelValue outputs_land_use_technology_c127();
ExcelValue outputs_land_use_technology_d127();
ExcelValue outputs_land_use_technology_c128();
ExcelValue outputs_land_use_technology_d128();
ExcelValue outputs_land_use_technology_c129();
ExcelValue outputs_land_use_technology_d129();
ExcelValue outputs_land_use_technology_c130();
ExcelValue outputs_land_use_technology_d130();
ExcelValue outputs_land_use_technology_c131();
ExcelValue outputs_land_use_technology_d131();
ExcelValue outputs_land_use_technology_c132();
ExcelValue outputs_land_use_technology_d132();
ExcelValue outputs_land_use_technology_c133();
ExcelValue outputs_land_use_technology_d133();
ExcelValue outputs_land_use_technology_c134();
ExcelValue outputs_land_use_technology_d134();
ExcelValue outputs_land_use_technology_c135();
ExcelValue outputs_land_use_technology_d135();
ExcelValue outputs_land_use_technology_c136();
ExcelValue outputs_land_use_technology_d136();
ExcelValue outputs_land_use_technology_c137();
ExcelValue outputs_land_use_technology_d137();
ExcelValue outputs_land_use_technology_c138();
ExcelValue outputs_land_use_technology_d138();
ExcelValue outputs_land_use_technology_c139();
ExcelValue outputs_land_use_technology_d139();
ExcelValue outputs_land_use_technology_c140();
ExcelValue outputs_land_use_technology_d140();
ExcelValue outputs_land_use_technology_c141();
ExcelValue outputs_land_use_technology_d141();
ExcelValue outputs_land_use_technology_c142();
ExcelValue outputs_land_use_technology_d142();
ExcelValue outputs_land_use_technology_c143();
ExcelValue outputs_land_use_technology_d143();
ExcelValue outputs_land_use_technology_c144();
ExcelValue outputs_land_use_technology_d144();
ExcelValue outputs_land_use_technology_c145();
ExcelValue outputs_land_use_technology_d145();
ExcelValue outputs_land_use_technology_c146();
ExcelValue outputs_land_use_technology_d146();
ExcelValue outputs_land_use_technology_c147();
ExcelValue outputs_land_use_technology_d147();
ExcelValue outputs_land_use_technology_c148();
ExcelValue outputs_land_use_technology_d148();
ExcelValue outputs_land_use_technology_c149();
ExcelValue outputs_land_use_technology_d149();
ExcelValue outputs_land_use_technology_c150();
ExcelValue outputs_land_use_technology_d150();
ExcelValue outputs_land_use_technology_c151();
ExcelValue outputs_land_use_technology_d151();
ExcelValue outputs_land_use_technology_c152();
ExcelValue outputs_land_use_technology_d152();
ExcelValue outputs_land_use_technology_c153();
ExcelValue outputs_land_use_technology_f153();
ExcelValue outputs_land_use_technology_g153();
ExcelValue outputs_land_use_technology_h153();
ExcelValue outputs_land_use_technology_i153();
ExcelValue outputs_land_use_technology_j153();
ExcelValue outputs_land_use_technology_k153();
ExcelValue outputs_land_use_technology_l153();
ExcelValue outputs_land_use_technology_m153();
ExcelValue outputs_land_use_technology_n153();
ExcelValue outputs_land_use_technology_ab153();
ExcelValue outputs_land_use_technology_ac153();
ExcelValue outputs_land_use_technology_ad153();
ExcelValue outputs_land_use_technology_ae153();
ExcelValue outputs_land_use_technology_af153();
ExcelValue outputs_land_use_technology_b158();
ExcelValue outputs_land_use_technology_ab158();
ExcelValue outputs_land_use_technology_ab159();
ExcelValue outputs_land_use_technology_ac159();
ExcelValue outputs_land_use_technology_ad159();
ExcelValue outputs_land_use_technology_ae159();
ExcelValue outputs_land_use_technology_af159();
ExcelValue outputs_land_use_technology_c160();
ExcelValue outputs_land_use_technology_y160();
ExcelValue outputs_land_use_technology_f161();
ExcelValue outputs_land_use_technology_q161();
ExcelValue outputs_land_use_technology_c162();
ExcelValue outputs_land_use_technology_d162();
ExcelValue outputs_land_use_technology_f162();
ExcelValue outputs_land_use_technology_g162();
ExcelValue outputs_land_use_technology_h162();
ExcelValue outputs_land_use_technology_i162();
ExcelValue outputs_land_use_technology_j162();
ExcelValue outputs_land_use_technology_k162();
ExcelValue outputs_land_use_technology_l162();
ExcelValue outputs_land_use_technology_m162();
ExcelValue outputs_land_use_technology_n162();
ExcelValue outputs_land_use_technology_q162();
ExcelValue outputs_land_use_technology_r162();
ExcelValue outputs_land_use_technology_s162();
ExcelValue outputs_land_use_technology_t162();
ExcelValue outputs_land_use_technology_u162();
ExcelValue outputs_land_use_technology_v162();
ExcelValue outputs_land_use_technology_w162();
ExcelValue outputs_land_use_technology_x162();
ExcelValue outputs_land_use_technology_y162();
ExcelValue outputs_land_use_technology_c163();
ExcelValue outputs_land_use_technology_d163();
ExcelValue outputs_land_use_technology_c164();
ExcelValue outputs_land_use_technology_d164();
ExcelValue outputs_land_use_technology_c165();
ExcelValue outputs_land_use_technology_d165();
ExcelValue outputs_land_use_technology_c166();
ExcelValue outputs_land_use_technology_d166();
ExcelValue outputs_land_use_technology_c167();
ExcelValue outputs_land_use_technology_d167();
ExcelValue outputs_land_use_technology_c168();
ExcelValue outputs_land_use_technology_d168();
ExcelValue outputs_land_use_technology_c169();
ExcelValue outputs_land_use_technology_d169();
ExcelValue outputs_land_use_technology_c170();
ExcelValue outputs_land_use_technology_d170();
ExcelValue outputs_land_use_technology_c171();
ExcelValue outputs_land_use_technology_d171();
ExcelValue outputs_land_use_technology_c172();
ExcelValue outputs_land_use_technology_d172();
ExcelValue outputs_land_use_technology_c173();
ExcelValue outputs_land_use_technology_d173();
ExcelValue outputs_land_use_technology_c174();
ExcelValue outputs_land_use_technology_d174();
ExcelValue outputs_land_use_technology_c175();
ExcelValue outputs_land_use_technology_d175();
ExcelValue outputs_land_use_technology_c176();
ExcelValue outputs_land_use_technology_d176();
ExcelValue outputs_land_use_technology_c177();
ExcelValue outputs_land_use_technology_d177();
ExcelValue outputs_land_use_technology_c178();
ExcelValue outputs_land_use_technology_d178();
ExcelValue outputs_land_use_technology_c179();
ExcelValue outputs_land_use_technology_d179();
ExcelValue outputs_land_use_technology_c180();
ExcelValue outputs_land_use_technology_d180();
ExcelValue outputs_land_use_technology_c181();
ExcelValue outputs_land_use_technology_d181();
ExcelValue outputs_land_use_technology_c182();
ExcelValue outputs_land_use_technology_d182();
ExcelValue outputs_land_use_technology_c183();
ExcelValue outputs_land_use_technology_d183();
ExcelValue outputs_land_use_technology_c184();
ExcelValue outputs_land_use_technology_d184();
ExcelValue outputs_land_use_technology_c185();
ExcelValue outputs_land_use_technology_d185();
ExcelValue outputs_land_use_technology_c186();
ExcelValue outputs_land_use_technology_d186();
ExcelValue outputs_land_use_technology_c187();
ExcelValue outputs_land_use_technology_d187();
ExcelValue outputs_land_use_technology_c188();
ExcelValue outputs_land_use_technology_d188();
ExcelValue outputs_land_use_technology_c189();
ExcelValue outputs_land_use_technology_d189();
ExcelValue outputs_land_use_technology_c190();
ExcelValue outputs_land_use_technology_d190();
ExcelValue outputs_land_use_technology_c191();
ExcelValue outputs_land_use_technology_d191();
ExcelValue outputs_land_use_technology_c192();
ExcelValue outputs_land_use_technology_d192();
ExcelValue outputs_land_use_technology_c193();
ExcelValue outputs_land_use_technology_d193();
ExcelValue outputs_land_use_technology_c194();
ExcelValue outputs_land_use_technology_d194();
ExcelValue outputs_land_use_technology_c195();
ExcelValue outputs_land_use_technology_d195();
ExcelValue outputs_land_use_technology_c196();
ExcelValue outputs_land_use_technology_d196();
ExcelValue outputs_land_use_technology_c197();
ExcelValue outputs_land_use_technology_d197();
ExcelValue outputs_land_use_technology_c198();
ExcelValue outputs_land_use_technology_d198();
ExcelValue outputs_land_use_technology_c199();
ExcelValue outputs_land_use_technology_d199();
ExcelValue outputs_land_use_technology_c200();
ExcelValue outputs_land_use_technology_d200();
ExcelValue outputs_land_use_technology_c201();
ExcelValue outputs_land_use_technology_d201();
ExcelValue outputs_land_use_technology_c202();
ExcelValue outputs_land_use_technology_d202();
ExcelValue outputs_land_use_technology_c203();
ExcelValue outputs_land_use_technology_d203();
ExcelValue outputs_land_use_technology_c204();
ExcelValue outputs_land_use_technology_d204();
ExcelValue outputs_land_use_technology_c205();
ExcelValue outputs_land_use_technology_d205();
ExcelValue outputs_land_use_technology_c206();
ExcelValue outputs_land_use_technology_d206();
ExcelValue outputs_land_use_technology_c207();
ExcelValue outputs_land_use_technology_d207();
ExcelValue outputs_land_use_technology_c208();
ExcelValue outputs_land_use_technology_f208();
ExcelValue outputs_land_use_technology_g208();
ExcelValue outputs_land_use_technology_h208();
ExcelValue outputs_land_use_technology_i208();
ExcelValue outputs_land_use_technology_j208();
ExcelValue outputs_land_use_technology_k208();
ExcelValue outputs_land_use_technology_l208();
ExcelValue outputs_land_use_technology_m208();
ExcelValue outputs_land_use_technology_n208();
ExcelValue outputs_land_use_technology_ab208();
ExcelValue outputs_land_use_technology_ac208();
ExcelValue outputs_land_use_technology_ad208();
ExcelValue outputs_land_use_technology_ae208();
ExcelValue outputs_land_use_technology_af208();
ExcelValue outputs_costs_b2();
ExcelValue outputs_costs_c2();
ExcelValue outputs_costs_e2();
ExcelValue outputs_costs_j2();
ExcelValue outputs_costs_b3();
ExcelValue outputs_energy_flows_b2();
ExcelValue outputs_energy_flows_c2();
ExcelValue outputs_energy_flows_e2();
ExcelValue outputs_energy_flows_j2();
ExcelValue outputs_energy_flows_b3();
static ExcelValue g_40_data__q225();
// end of definitions

// Used to decide whether to recalculate a cell
static int variable_set[3303];

// Used to reset all cached values and free up memory
void reset() {
  int i;
  cell_counter = 0;
  free_all_allocated_memory(); 
  for(i = 0; i < 3303; i++) {
    variable_set[i] = 0;
  }
};

// starting the value constants
static ExcelValue C1 = {.type = ExcelString, .string = "User inputs"};
static ExcelValue C2 = {.type = ExcelString, .string = "Click here to return to the \"contents\" page"};
static ExcelValue C3 = {.type = ExcelString, .string = "Annual emissions rise relative to 1990 levels"};
static ExcelValue C4 = {.type = ExcelString, .string = "Y"};
static ExcelValue C5 = {.type = ExcelString, .string = "Temperature rise relative to pre-industrial (1850)"};
static ExcelValue C6 = {.type = ExcelString, .string = "X"};
static ExcelValue C7 = {.type = ExcelString, .string = "Trajectory choices"};
static ExcelValue C8 = {.type = ExcelString, .string = "Trajectory description"};
static ExcelValue C9 = {.type = ExcelString, .string = "Example pathways"};
static ExcelValue C10 = {.type = ExcelString, .string = "Sector"};
static ExcelValue C11 = {.type = ExcelString, .string = "Lever"};
static ExcelValue C12 = {.type = ExcelString, .string = "Level"};
static ExcelValue C13 = {.type = ExcelString, .string = "Limit"};
static ExcelValue C14 = {.type = ExcelString, .string = "Description for the user's level choice"};
static ExcelValue C15 = {.type = ExcelString, .string = "Population"};
static ExcelValue C16 = {.type = ExcelString, .string = "Global population"};
static ExcelValue C17 = {.type = ExcelNumber, .number = 1};
static ExcelValue C18 = {.type = ExcelNumber, .number = 4};
static ExcelValue C19 = {.type = ExcelString, .string = "Urbanisation and access to electricity"};
static ExcelValue C20 = {.type = ExcelNumber, .number = 3};
static ExcelValue C21 = {.type = ExcelString, .string = "Transport"};
static ExcelValue C22 = {.type = ExcelString, .string = "Passenger distance"};
static ExcelValue C23 = {.type = ExcelString, .string = "Freight demand"};
static ExcelValue C24 = {.type = ExcelNumber, .number = 3.5};
static ExcelValue C25 = {.type = ExcelString, .string = "Passenger and freight mode and occupancy"};
static ExcelValue C26 = {.type = ExcelNumber, .number = 2};
static ExcelValue C27 = {.type = ExcelString, .string = "Passenger and freight efficiency"};
static ExcelValue C28 = {.type = ExcelString, .string = "Electrification of passenger and freight (electricity and hydrogen)"};
static ExcelValue C29 = {.type = ExcelString, .string = "Buildings"};
static ExcelValue C30 = {.type = ExcelString, .string = "Building size (m2)"};
static ExcelValue C31 = {.type = ExcelString, .string = "Heating / cooling per m2"};
static ExcelValue C32 = {.type = ExcelString, .string = "Heating / cooling technology "};
static ExcelValue C33 = {.type = ExcelString, .string = "Lighting, appliances and cooking demand"};
static ExcelValue C34 = {.type = ExcelString, .string = "Lighting, appliances and cooking efficiency"};
static ExcelValue C35 = {.type = ExcelString, .string = "Energy intensity of non-residential buildings"};
static ExcelValue C36 = {.type = ExcelString, .string = "Materials"};
static ExcelValue C37 = {.type = ExcelString, .string = "Demand for products"};
static ExcelValue C38 = {.type = ExcelString, .string = "Efficiency of materials production"};
static ExcelValue C39 = {.type = ExcelString, .string = "Carbon intensity of production (excl. CCS)"};
static ExcelValue C40 = {.type = ExcelString, .string = "Carbon Capture & Storage"};
static ExcelValue C41 = {.type = ExcelString, .string = "Electricity"};
static ExcelValue C42 = {.type = ExcelString, .string = "Power from solid vs  liquid vs gas hydrocarbons"};
static ExcelValue C43 = {.type = ExcelString, .string = "D"};
static ExcelValue C44 = {.type = ExcelString, .string = "Technology of powerplant deployed"};
static ExcelValue C45 = {.type = ExcelString, .string = "Power with Carbon Capture Storage (CCS) "};
static ExcelValue C46 = {.type = ExcelString, .string = "Nuclear power stations"};
static ExcelValue C47 = {.type = ExcelString, .string = "In 2050 there is "};
static ExcelValue C48 = {.type = ExcelString, .string = " "};
static ExcelValue C49 = {.type = ExcelString, .string = "GW"};
static ExcelValue C50 = {.type = ExcelString, .string = " of nuclear power, equivalent to "};
static ExcelValue C51 = {.type = ExcelNumber, .number = 1.0};
static ExcelValue C52 = {.type = ExcelString, .string = " power plants."};
static ExcelValue C53 = {.type = ExcelString, .string = "Wind power"};
static ExcelValue C54 = {.type = ExcelString, .string = "Hydroelectric power"};
static ExcelValue C55 = {.type = ExcelString, .string = "Marine power"};
static ExcelValue C56 = {.type = ExcelString, .string = "Solar power"};
static ExcelValue C57 = {.type = ExcelString, .string = "Geothermal power"};
static ExcelValue C58 = {.type = ExcelString, .string = "Storage, demand shifting & interconnection"};
static ExcelValue C59 = {.type = ExcelString, .string = "Land / food / bioenergy / sequestration"};
static ExcelValue C60 = {.type = ExcelString, .string = "Calories consumed"};
static ExcelValue C61 = {.type = ExcelString, .string = "Type of diet"};
static ExcelValue C62 = {.type = ExcelString, .string = "Crop yields"};
static ExcelValue C63 = {.type = ExcelString, .string = "Livestock yields"};
static ExcelValue C64 = {.type = ExcelString, .string = "Bioenergy yields"};
static ExcelValue C65 = {.type = ExcelString, .string = "Bioenergy production"};
static ExcelValue C66 = {.type = ExcelString, .string = "Conservation areas"};
static ExcelValue C67 = {.type = ExcelString, .string = "Land multiuse and synergies"};
static ExcelValue C68 = {.type = ExcelString, .string = "Greenhouse gas removal technologies"};
static ExcelValue C69 = {.type = ExcelString, .string = "Waste production and collection"};
static ExcelValue C70 = {.type = ExcelString, .string = "Action post 2050"};
static ExcelValue C71 = {.type = ExcelString, .string = "Emissions trajectory"};
static ExcelValue C72 = {.type = ExcelString, .string = "A"};
static ExcelValue C73 = {.type = ExcelString, .string = "C"};
static ExcelValue C74 = {.type = ExcelString, .string = "Climate uncertainty"};
static ExcelValue C75 = {.type = ExcelString, .string = "Atmospheric CO2 fraction"};
static ExcelValue C76 = {.type = ExcelString, .string = "Climate model choice"};
static ExcelValue C77 = {.type = ExcelString, .string = "G"};
static ExcelValue C78 = {.type = ExcelString, .string = "Global"};
static ExcelValue C79 = {.type = ExcelString, .string = "Climate impacts"};
static ExcelValue C80 = {.type = ExcelString, .string = "To do"};
static ExcelValue C81 = {.type = ExcelString, .string = "Note: we need \"emission year sheets\" for each year for this to work in its entirety"};
static ExcelValue C82 = {.type = ExcelString, .string = "Emissions "};
static ExcelValue C83 = {.type = ExcelString, .string = "Do we need flourinate gases? (SFC, PFC, SF6s)"};
static ExcelValue C84 = {.type = ExcelString, .string = "LEVERS AND LEVELS "};
static ExcelValue C85 = {.type = ExcelString, .string = "Emissions per person?"};
static ExcelValue C86 = {.type = ExcelString, .string = "Number"};
static ExcelValue C87 = {.type = ExcelString, .string = "Need assumption on post 2050 emissions profile and historic data"};
static ExcelValue C88 = {.type = ExcelString, .string = "c"};
static ExcelValue C89 = {.type = ExcelString, .string = "DATA FOR LEVELS"};
static ExcelValue C90 = {.type = ExcelString, .string = "Trend"};
static ExcelValue C91 = {.type = ExcelString, .string = "B"};
static ExcelValue C92 = {.type = ExcelString, .string = "Flat"};
static ExcelValue C93 = {.type = ExcelNumber, .number = 0.5};
static ExcelValue C94 = {.type = ExcelString, .string = "FIXED ASSUMPTIONS"};
static ExcelValue C95 = {.type = ExcelString, .string = "Minimum possible emissions "};
static ExcelValue C96 = {.type = ExcelNumber, .number = -100};
static ExcelValue C97 = {.type = ExcelString, .string = "To determine"};
static ExcelValue C98 = {.type = ExcelString, .string = "CO2"};
static ExcelValue C99 = {.type = ExcelString, .string = "CARBON DIOXIDE"};
static ExcelValue C100 = {.type = ExcelString, .string = "Emissions as % of 1990"};
static ExcelValue C101 = {.type = ExcelString, .string = "%"};
static ExcelValue C102 = {.type = ExcelString, .string = "Historic actuals"};
static ExcelValue C103 = {.type = ExcelString, .string = "Emissions from 2011-2050 result from the levers (user choices)"};
static ExcelValue C104 = {.type = ExcelString, .string = "Emissions from 2050 are projected from 2011-2050 emissions"};
static ExcelValue C105 = {.type = ExcelString, .string = "IPCC Sector"};
static ExcelValue C106 = {.type = ExcelString, .string = "1970"};
static ExcelValue C107 = {.type = ExcelString, .string = "1975"};
static ExcelValue C108 = {.type = ExcelString, .string = "1980"};
static ExcelValue C109 = {.type = ExcelString, .string = "1985"};
static ExcelValue C110 = {.type = ExcelString, .string = "1990"};
static ExcelValue C111 = {.type = ExcelString, .string = "1995"};
static ExcelValue C112 = {.type = ExcelString, .string = "2000"};
static ExcelValue C113 = {.type = ExcelString, .string = "2005"};
static ExcelValue C114 = {.type = ExcelNumber, .number = 2010};
static ExcelValue C115 = {.type = ExcelNumber, .number = 2011};
static ExcelValue C116 = {.type = ExcelNumber, .number = 2015};
static ExcelValue C117 = {.type = ExcelNumber, .number = 2020};
static ExcelValue C118 = {.type = ExcelNumber, .number = 2025};
static ExcelValue C119 = {.type = ExcelNumber, .number = 2030};
static ExcelValue C120 = {.type = ExcelNumber, .number = 2035};
static ExcelValue C121 = {.type = ExcelNumber, .number = 2040};
static ExcelValue C122 = {.type = ExcelNumber, .number = 2045};
static ExcelValue C123 = {.type = ExcelNumber, .number = 2050};
static ExcelValue C124 = {.type = ExcelNumber, .number = 2055};
static ExcelValue C125 = {.type = ExcelString, .string = "2060"};
static ExcelValue C126 = {.type = ExcelNumber, .number = 2065};
static ExcelValue C127 = {.type = ExcelNumber, .number = 2070};
static ExcelValue C128 = {.type = ExcelNumber, .number = 2075};
static ExcelValue C129 = {.type = ExcelNumber, .number = 2080};
static ExcelValue C130 = {.type = ExcelNumber, .number = 2085};
static ExcelValue C131 = {.type = ExcelNumber, .number = 2090};
static ExcelValue C132 = {.type = ExcelNumber, .number = 2095};
static ExcelValue C133 = {.type = ExcelNumber, .number = 2100};
static ExcelValue C134 = {.type = ExcelString, .string = "G.1A"};
static ExcelValue C135 = {.type = ExcelString, .string = "Global Fuel Combustion"};
static ExcelValue C136 = {.type = ExcelString, .string = "n/a"};
static ExcelValue C137 = {.type = ExcelString, .string = "G.1B"};
static ExcelValue C138 = {.type = ExcelString, .string = "Global Fugitive Emissions from Fuels"};
static ExcelValue C139 = {.type = ExcelString, .string = "G.2"};
static ExcelValue C140 = {.type = ExcelString, .string = "Global Industrial Processes"};
static ExcelValue C141 = {.type = ExcelString, .string = "G.3"};
static ExcelValue C142 = {.type = ExcelString, .string = "Global Solvent and Other Product Use"};
static ExcelValue C143 = {.type = ExcelString, .string = "G.4"};
static ExcelValue C144 = {.type = ExcelString, .string = "Global Agriculture"};
static ExcelValue C145 = {.type = ExcelString, .string = "G.5"};
static ExcelValue C146 = {.type = ExcelString, .string = "Global Land Use, Land-Use Change and Forestry"};
static ExcelValue C147 = {.type = ExcelString, .string = "G.6"};
static ExcelValue C148 = {.type = ExcelString, .string = "Global Waste"};
static ExcelValue C149 = {.type = ExcelString, .string = "G.7"};
static ExcelValue C150 = {.type = ExcelString, .string = "Global Other"};
static ExcelValue C151 = {.type = ExcelString, .string = "G.X1"};
static ExcelValue C152 = {.type = ExcelString, .string = "Global Bioenergy credit"};
static ExcelValue C153 = {.type = ExcelString, .string = "G.X2"};
static ExcelValue C154 = {.type = ExcelString, .string = "Global Carbon capture"};
static ExcelValue C155 = {.type = ExcelString, .string = "Total"};
static ExcelValue C156 = {.type = ExcelString, .string = "Emissions by sector (IPCC sectors)"};
static ExcelValue C157 = {.type = ExcelNumber, .number = 2060};
static ExcelValue C158 = {.type = ExcelNumber, .number = 0};
static ExcelValue C159 = {.type = ExcelString, .string = "Emissions in the time period (up to and including year above)"};
static ExcelValue C160 = {.type = ExcelString, .string = "Cumulative emissions"};
static ExcelValue C161 = {.type = ExcelString, .string = "Emissions by sector (model sectors)"};
static ExcelValue C162 = {.type = ExcelString, .string = "Emissions by sector"};
static ExcelValue C163 = {.type = ExcelString, .string = "Calculator Sector"};
static ExcelValue C164 = {.type = ExcelString, .string = "G.10"};
static ExcelValue C165 = {.type = ExcelString, .string = "G.20"};
static ExcelValue C166 = {.type = ExcelString, .string = "G.30"};
static ExcelValue C167 = {.type = ExcelString, .string = "G.40"};
static ExcelValue C168 = {.type = ExcelString, .string = "G.50"};
static ExcelValue C169 = {.type = ExcelString, .string = "G.60"};
static ExcelValue C170 = {.type = ExcelString, .string = "Electricity Generation Emissions"};
static ExcelValue C171 = {.type = ExcelString, .string = "Emissions from Electricity Generation, exlcuding CHP"};
static ExcelValue C172 = {.type = ExcelString, .string = "G.efficient.solid.elec"};
static ExcelValue C173 = {.type = ExcelString, .string = "G.inefficient.solid.elec"};
static ExcelValue C174 = {.type = ExcelString, .string = "G.efficient.liquid.elec"};
static ExcelValue C175 = {.type = ExcelString, .string = "G.inefficient.liquid.elec"};
static ExcelValue C176 = {.type = ExcelString, .string = "G.efficient.gas.elec"};
static ExcelValue C177 = {.type = ExcelString, .string = "G.inefficient.gas.elec"};
static ExcelValue C178 = {.type = ExcelString, .string = "G.CCS.soild.elec"};
static ExcelValue C179 = {.type = ExcelString, .string = "G.CCS.liquid.elec"};
static ExcelValue C180 = {.type = ExcelString, .string = "G.CCS.gas.elec"};
static ExcelValue C181 = {.type = ExcelString, .string = "Total emissions from power"};
static ExcelValue C182 = {.type = ExcelString, .string = "Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]"};
static ExcelValue C183 = {.type = ExcelString, .string = "Emissions intensity"};
static ExcelValue C184 = {.type = ExcelString, .string = "Mt/TWh"};
static ExcelValue C185 = {.type = ExcelString, .string = "g/KWh"};
static ExcelValue C186 = {.type = ExcelString, .string = "CH4"};
static ExcelValue C187 = {.type = ExcelString, .string = "METHANE"};
static ExcelValue C188 = {.type = ExcelString, .string = "N2O"};
static ExcelValue C189 = {.type = ExcelString, .string = "NITROUS OXIDE"};
static ExcelValue C190 = {.type = ExcelString, .string = "Note: need to update so that this uses the latest workbook naming conventions and sector structures, and so that it pulls in data from the year sheets"};
static ExcelValue C191 = {.type = ExcelString, .string = "Energy output"};
static ExcelValue C192 = {.type = ExcelString, .string = "ENERGY SUPPLY AND DEMAND"};
static ExcelValue C193 = {.type = ExcelString, .string = "DEMAND"};
static ExcelValue C194 = {.type = ExcelString, .string = "TWh / year"};
static ExcelValue C195 = {.type = ExcelString, .string = "Calculated by the model"};
static ExcelValue C196 = {.type = ExcelString, .string = "Code"};
static ExcelValue C197 = {.type = ExcelString, .string = "Description"};
static ExcelValue C198 = {.type = ExcelString, .string = "Notes"};
static ExcelValue C199 = {.type = ExcelString, .string = "2015"};
static ExcelValue C200 = {.type = ExcelString, .string = "2020"};
static ExcelValue C201 = {.type = ExcelString, .string = "2025"};
static ExcelValue C202 = {.type = ExcelString, .string = "2030"};
static ExcelValue C203 = {.type = ExcelString, .string = "2035"};
static ExcelValue C204 = {.type = ExcelString, .string = "2040"};
static ExcelValue C205 = {.type = ExcelString, .string = "2045"};
static ExcelValue C206 = {.type = ExcelString, .string = "2050"};
static ExcelValue C207 = {.type = ExcelString, .string = "G.T.01"};
static ExcelValue C208 = {.type = ExcelString, .string = "Global Road transport"};
static ExcelValue C209 = {.type = ExcelString, .string = "G.T.02"};
static ExcelValue C210 = {.type = ExcelString, .string = "Global Rail transport"};
static ExcelValue C211 = {.type = ExcelString, .string = "G.T.03"};
static ExcelValue C212 = {.type = ExcelString, .string = "Global Aviation transport"};
static ExcelValue C213 = {.type = ExcelString, .string = "G.T.04"};
static ExcelValue C214 = {.type = ExcelString, .string = "Global Water transport"};
static ExcelValue C215 = {.type = ExcelString, .string = "G.M.01"};
static ExcelValue C216 = {.type = ExcelString, .string = "Global Products"};
static ExcelValue C217 = {.type = ExcelString, .string = "G.M.02"};
static ExcelValue C218 = {.type = ExcelString, .string = "Global Materials"};
static ExcelValue C219 = {.type = ExcelString, .string = "G.M.03"};
static ExcelValue C220 = {.type = ExcelString, .string = "Global Raw resources"};
static ExcelValue C221 = {.type = ExcelString, .string = "G.B.01"};
static ExcelValue C222 = {.type = ExcelString, .string = "Global Heating and cooling"};
static ExcelValue C223 = {.type = ExcelString, .string = "G.B.02"};
static ExcelValue C224 = {.type = ExcelString, .string = "Global Lighting & appliances"};
static ExcelValue C225 = {.type = ExcelString, .string = "G.B.03"};
static ExcelValue C226 = {.type = ExcelString, .string = "Global Cooking"};
static ExcelValue C227 = {.type = ExcelString, .string = "Agriculture"};
static ExcelValue C228 = {.type = ExcelString, .string = "G.F.01"};
static ExcelValue C229 = {.type = ExcelString, .string = "Global Energy for agricultural production"};
static ExcelValue C230 = {.type = ExcelString, .string = "Geosequestration"};
static ExcelValue C231 = {.type = ExcelString, .string = "G.G.01"};
static ExcelValue C232 = {.type = ExcelString, .string = "Global Geosequestration and storage of CO2"};
static ExcelValue C233 = {.type = ExcelString, .string = "SUPPLY"};
static ExcelValue C234 = {.type = ExcelString, .string = "Primary electricity (nuclear, renewables)"};
static ExcelValue C235 = {.type = ExcelString, .string = "G.N.01"};
static ExcelValue C236 = {.type = ExcelString, .string = "Global Nuclear fission"};
static ExcelValue C237 = {.type = ExcelString, .string = "G.R.01"};
static ExcelValue C238 = {.type = ExcelString, .string = "Global Solar"};
static ExcelValue C239 = {.type = ExcelString, .string = "G.R.02"};
static ExcelValue C240 = {.type = ExcelString, .string = "Global Wind"};
static ExcelValue C241 = {.type = ExcelString, .string = "G.R.03"};
static ExcelValue C242 = {.type = ExcelString, .string = "Global Tidal"};
static ExcelValue C243 = {.type = ExcelString, .string = "G.R.04"};
static ExcelValue C244 = {.type = ExcelString, .string = "Global Wave"};
static ExcelValue C245 = {.type = ExcelString, .string = "G.R.05"};
static ExcelValue C246 = {.type = ExcelString, .string = "Global Geothermal"};
static ExcelValue C247 = {.type = ExcelString, .string = "G.R.06"};
static ExcelValue C248 = {.type = ExcelString, .string = "Global Hydro"};
static ExcelValue C249 = {.type = ExcelString, .string = "Environmental heat"};
static ExcelValue C250 = {.type = ExcelString, .string = "G.R.07"};
static ExcelValue C251 = {.type = ExcelString, .string = "Global Environmental heat"};
static ExcelValue C252 = {.type = ExcelString, .string = "Bioenergy"};
static ExcelValue C253 = {.type = ExcelString, .string = "G.W.01"};
static ExcelValue C254 = {.type = ExcelString, .string = "G.R.08"};
static ExcelValue C255 = {.type = ExcelString, .string = "Global Agricultural produce"};
static ExcelValue C256 = {.type = ExcelString, .string = "Fossil fuels"};
static ExcelValue C257 = {.type = ExcelString, .string = "G.Q.01"};
static ExcelValue C258 = {.type = ExcelString, .string = "Global Coal reserves "};
static ExcelValue C259 = {.type = ExcelString, .string = "G.Q.02"};
static ExcelValue C260 = {.type = ExcelString, .string = "Global Oil reserves "};
static ExcelValue C261 = {.type = ExcelString, .string = "G.Q.03"};
static ExcelValue C262 = {.type = ExcelString, .string = "Global Gas reserves "};
static ExcelValue C263 = {.type = ExcelString, .string = "Dummy for charting supply"};
static ExcelValue C264 = {.type = ExcelString, .string = "CONVERSION LOSSES, DISTRIBUTION AND OWN USES"};
static ExcelValue C265 = {.type = ExcelString, .string = "G.L.01"};
static ExcelValue C266 = {.type = ExcelString, .string = "Global Conversion losses"};
static ExcelValue C267 = {.type = ExcelString, .string = "G.L.02"};
static ExcelValue C268 = {.type = ExcelString, .string = "Global Distribution losses and own use"};
static ExcelValue C269 = {.type = ExcelString, .string = "Supply net of losses"};
static ExcelValue C270 = {.type = ExcelString, .string = "check"};
static ExcelValue C271 = {.type = ExcelString, .string = "RESERVES"};
static ExcelValue C272 = {.type = ExcelString, .string = "Cumulative consumption from 2010"};
static ExcelValue C273 = {.type = ExcelString, .string = "kg"};
static ExcelValue C274 = {.type = ExcelNumber, .number = 0.0};
static ExcelValue C275 = {.type = ExcelString, .string = "bbl"};
static ExcelValue C276 = {.type = ExcelString, .string = "m3"};
static ExcelValue C277 = {.type = ExcelString, .string = "Estimates of reserves against consumption"};
static ExcelValue C278 = {.type = ExcelString, .string = "Coal"};
static ExcelValue C279 = {.type = ExcelString, .string = "Source"};
static ExcelValue C280 = {.type = ExcelString, .string = "Estimate of reserves (kg)"};
static ExcelValue C281 = {.type = ExcelString, .string = "Consumption by 2050"};
static ExcelValue C282 = {.type = ExcelString, .string = "% of est. reserves consumed"};
static ExcelValue C283 = {.type = ExcelString, .string = "Information on the source"};
static ExcelValue C284 = {.type = ExcelNumber, .number = 8000.0};
static ExcelValue C285 = {.type = ExcelString, .string = "example"};
static ExcelValue C286 = {.type = ExcelNumber, .number = 10000.0};
static ExcelValue C287 = {.type = ExcelNumber, .number = 20000.0};
static ExcelValue C288 = {.type = ExcelString, .string = "Oil"};
static ExcelValue C289 = {.type = ExcelString, .string = "Estimate of reserves (bbl)"};
static ExcelValue C290 = {.type = ExcelString, .string = "Gas"};
static ExcelValue C291 = {.type = ExcelString, .string = "Estimate of reserves (m3)"};
static ExcelValue C292 = {.type = ExcelString, .string = "Electricity grid (net of distribution losses)"};
static ExcelValue C293 = {.type = ExcelString, .string = "TWh"};
static ExcelValue C294 = {.type = ExcelString, .string = "G.E.02"};
static ExcelValue C295 = {.type = ExcelString, .string = "Global Electricity (supplied to grid)"};
static ExcelValue C296 = {.type = ExcelString, .string = "G.E.01"};
static ExcelValue C297 = {.type = ExcelString, .string = "Global Electricity (delivered to end user)"};
static ExcelValue C298 = {.type = ExcelString, .string = "Oversupply"};
static ExcelValue C299 = {.type = ExcelString, .string = "Electricity Generation"};
static ExcelValue C300 = {.type = ExcelString, .string = "2010 actuals "};
static ExcelValue C301 = {.type = ExcelString, .string = "-"};
static ExcelValue C302 = {.type = ExcelString, .string = "Unabated power"};
static ExcelValue C303 = {.type = ExcelString, .string = "Carbon Capture and Storage"};
static ExcelValue C304 = {.type = ExcelString, .string = "Nuclear"};
static ExcelValue C305 = {.type = ExcelString, .string = "Wind"};
static ExcelValue C306 = {.type = ExcelString, .string = "Hydro"};
static ExcelValue C307 = {.type = ExcelString, .string = "Marine"};
static ExcelValue C308 = {.type = ExcelString, .string = "Solar"};
static ExcelValue C309 = {.type = ExcelString, .string = "Geothermal"};
static ExcelValue C310 = {.type = ExcelString, .string = "Storage"};
static ExcelValue C311 = {.type = ExcelString, .string = "Should equal 0"};
static ExcelValue C312 = {.type = ExcelString, .string = "Bio-energy production"};
static ExcelValue C313 = {.type = ExcelString, .string = "G.C.01"};
static ExcelValue C314 = {.type = ExcelString, .string = "Global Solid hydrocarbons"};
static ExcelValue C315 = {.type = ExcelString, .string = "G.C.02"};
static ExcelValue C316 = {.type = ExcelString, .string = "Global Liquid hydrocarbons"};
static ExcelValue C317 = {.type = ExcelString, .string = "G.C.03"};
static ExcelValue C318 = {.type = ExcelString, .string = "Global Gaseous hydrocarbons"};
static ExcelValue C319 = {.type = ExcelString, .string = "Land use and technology output"};
static ExcelValue C320 = {.type = ExcelString, .string = "Land use implications"};
static ExcelValue C321 = {.type = ExcelString, .string = "The unit for area is:  ha"};
static ExcelValue C322 = {.type = ExcelString, .string = "Type of land"};
static ExcelValue C323 = {.type = ExcelString, .string = "Forest"};
static ExcelValue C324 = {.type = ExcelString, .string = "Global Forest"};
static ExcelValue C325 = {.type = ExcelString, .string = "Arable.food"};
static ExcelValue C326 = {.type = ExcelString, .string = "Global Arable land for food crops"};
static ExcelValue C327 = {.type = ExcelString, .string = "Arable.bio"};
static ExcelValue C328 = {.type = ExcelString, .string = "Global Arable land for bioenergy"};
static ExcelValue C329 = {.type = ExcelString, .string = "Arable.other"};
static ExcelValue C330 = {.type = ExcelString, .string = "Global Arable land for other "};
static ExcelValue C331 = {.type = ExcelString, .string = "Pasture.food"};
static ExcelValue C332 = {.type = ExcelString, .string = "Global Pasture for livestock"};
static ExcelValue C333 = {.type = ExcelString, .string = "Other.Land.unproductive"};
static ExcelValue C334 = {.type = ExcelString, .string = "Global Other land (desert, settlements)"};
static ExcelValue C335 = {.type = ExcelString, .string = "Other.Land.productive"};
static ExcelValue C336 = {.type = ExcelString, .string = "Global Remainder of productive terestial land after bioenergy and food"};
static ExcelValue C337 = {.type = ExcelString, .string = "Total global land available"};
static ExcelValue C338 = {.type = ExcelString, .string = "Length / area / amount / population"};
static ExcelValue C339 = {.type = ExcelString, .string = "Number of products produced"};
static ExcelValue C340 = {.type = ExcelString, .string = "Amount of materials manufactured"};
static ExcelValue C341 = {.type = ExcelString, .string = "Amount of resources extracted"};
static ExcelValue C342 = {.type = ExcelString, .string = "Amount of food consumed"};
static ExcelValue C343 = {.type = ExcelString, .string = "Number of people"};
static ExcelValue C344 = {.type = ExcelString, .string = "Amount of CO2 sequestered"};
static ExcelValue C345 = {.type = ExcelString, .string = "Stock of technology units"};
static ExcelValue C346 = {.type = ExcelString, .string = "Data sources and comments for the historic data"};
static ExcelValue C347 = {.type = ExcelString, .string = "Link"};
static ExcelValue C348 = {.type = ExcelString, .string = "Risk (Green, Amber/Green, Amber, Red/Amber, Red)"};
static ExcelValue C349 = {.type = ExcelString, .string = "Comment / assumptions / caveats"};
static ExcelValue C350 = {.type = ExcelString, .string = "Comment author"};
static ExcelValue C351 = {.type = ExcelString, .string = "All technologies"};
static ExcelValue C352 = {.type = ExcelString, .string = "Technology"};
static ExcelValue C353 = {.type = ExcelString, .string = "G.mass.road.trans"};
static ExcelValue C354 = {.type = ExcelString, .string = "Global Public road transport"};
static ExcelValue C355 = {.type = ExcelString, .string = "G.pri.road.trans"};
static ExcelValue C356 = {.type = ExcelString, .string = "Global Private road transport"};
static ExcelValue C357 = {.type = ExcelString, .string = "G.priv.other.trans"};
static ExcelValue C358 = {.type = ExcelString, .string = "Global Non-energy"};
static ExcelValue C359 = {.type = ExcelString, .string = "G.rail.trans"};
static ExcelValue C360 = {.type = ExcelString, .string = "Global Rail"};
static ExcelValue C361 = {.type = ExcelString, .string = "G.air.trans"};
static ExcelValue C362 = {.type = ExcelString, .string = "Global Air"};
static ExcelValue C363 = {.type = ExcelString, .string = "G.water.trans"};
static ExcelValue C364 = {.type = ExcelString, .string = "Global Water"};
static ExcelValue C365 = {.type = ExcelString, .string = "G.solid.boiler.heat"};
static ExcelValue C366 = {.type = ExcelString, .string = "Global Solid fuel boiler"};
static ExcelValue C367 = {.type = ExcelString, .string = "G.liquid.boiler.heat"};
static ExcelValue C368 = {.type = ExcelString, .string = "Global Liquid fuel boiler"};
static ExcelValue C369 = {.type = ExcelString, .string = "G.gas.boiler.heat"};
static ExcelValue C370 = {.type = ExcelString, .string = "Global Gaseous fuel boiler"};
static ExcelValue C371 = {.type = ExcelString, .string = "G.micro.chp.heat"};
static ExcelValue C372 = {.type = ExcelString, .string = "Global Micro combined heat and power (for single domestic purpose)"};
static ExcelValue C373 = {.type = ExcelString, .string = "G.chp.heat"};
static ExcelValue C374 = {.type = ExcelString, .string = "Global Large scale combined heat and power"};
static ExcelValue C375 = {.type = ExcelString, .string = "G.solar.heat"};
static ExcelValue C376 = {.type = ExcelString, .string = "Global Solar thermal"};
static ExcelValue C377 = {.type = ExcelString, .string = "G.district.heat"};
static ExcelValue C378 = {.type = ExcelString, .string = "Global District heating"};
static ExcelValue C379 = {.type = ExcelString, .string = "G.air.pump.heat"};
static ExcelValue C380 = {.type = ExcelString, .string = "Global Air source heat pump"};
static ExcelValue C381 = {.type = ExcelString, .string = "G.ground.pump.heat"};
static ExcelValue C382 = {.type = ExcelString, .string = "Global Ground source heat pump"};
static ExcelValue C383 = {.type = ExcelString, .string = "G.elec.heat"};
static ExcelValue C384 = {.type = ExcelString, .string = "Global Electric heaters"};
static ExcelValue C385 = {.type = ExcelString, .string = "G.ac.cooling"};
static ExcelValue C386 = {.type = ExcelString, .string = "Global Air conditioning"};
static ExcelValue C387 = {.type = ExcelString, .string = "G.bulb.light"};
static ExcelValue C388 = {.type = ExcelString, .string = "Global Light bulb"};
static ExcelValue C389 = {.type = ExcelString, .string = "G.appliance"};
static ExcelValue C390 = {.type = ExcelString, .string = "Global Appliance"};
static ExcelValue C391 = {.type = ExcelString, .string = "G.oven.cook"};
static ExcelValue C392 = {.type = ExcelString, .string = "Global Oven"};
static ExcelValue C393 = {.type = ExcelString, .string = "G.unabated.solid.super.elec"};
static ExcelValue C394 = {.type = ExcelString, .string = "Global Unabated solid-fuel supercritical power plant"};
static ExcelValue C395 = {.type = ExcelString, .string = "G.unabated.solid.sub.elec"};
static ExcelValue C396 = {.type = ExcelString, .string = "Global Unabated solid-fuel subcritical power plant"};
static ExcelValue C397 = {.type = ExcelString, .string = "G.unabated.liquid.new.tech.elec"};
static ExcelValue C398 = {.type = ExcelString, .string = "Global Unabated liquid-fuel efficient power plant"};
static ExcelValue C399 = {.type = ExcelString, .string = "G.unabated.liquid.old.tech.elec"};
static ExcelValue C400 = {.type = ExcelString, .string = "Global Unabated liquid-fuel inefficient power plant"};
static ExcelValue C401 = {.type = ExcelString, .string = "G.unabated.gas.OC.elec"};
static ExcelValue C402 = {.type = ExcelString, .string = "Global Unabated open-cycle gas turbine power plant"};
static ExcelValue C403 = {.type = ExcelString, .string = "G.unabated.gas.CC.elec"};
static ExcelValue C404 = {.type = ExcelString, .string = "Global Unabated combined cycle gas turbine power plant"};
static ExcelValue C405 = {.type = ExcelString, .string = "G.nuclear.elec"};
static ExcelValue C406 = {.type = ExcelString, .string = "Global Nuclear power stations"};
static ExcelValue C407 = {.type = ExcelString, .string = "G.onshore.wind.elec"};
static ExcelValue C408 = {.type = ExcelString, .string = "Global On shore wind turbines"};
static ExcelValue C409 = {.type = ExcelString, .string = "G.offshore.wind.elec"};
static ExcelValue C410 = {.type = ExcelString, .string = "Global Off shore wind turbines"};
static ExcelValue C411 = {.type = ExcelString, .string = "G.hydro.elec"};
static ExcelValue C412 = {.type = ExcelString, .string = "Global Hydroelectric dam"};
static ExcelValue C413 = {.type = ExcelString, .string = "G.tidal.elec"};
static ExcelValue C414 = {.type = ExcelString, .string = "G.wave.elec"};
static ExcelValue C415 = {.type = ExcelString, .string = "G.solarpv.elec"};
static ExcelValue C416 = {.type = ExcelString, .string = "Global Solar PV"};
static ExcelValue C417 = {.type = ExcelString, .string = "G.concentrated.solar.elec"};
static ExcelValue C418 = {.type = ExcelString, .string = "Global Concentrated solar"};
static ExcelValue C419 = {.type = ExcelString, .string = "G.geothermal.elec"};
static ExcelValue C420 = {.type = ExcelString, .string = "G.storage.elec"};
static ExcelValue C421 = {.type = ExcelString, .string = "Global Storage unit"};
static ExcelValue C422 = {.type = ExcelString, .string = "G.reformer.hydrogen"};
static ExcelValue C423 = {.type = ExcelString, .string = "Global Steam reformers (for hydrogen)"};
static ExcelValue C424 = {.type = ExcelString, .string = "G.electrolysis.hydrogen"};
static ExcelValue C425 = {.type = ExcelString, .string = "Global Electrolysis units (for hydrogen)"};
static ExcelValue C426 = {.type = ExcelString, .string = "G.conversion.solidtoliquid"};
static ExcelValue C427 = {.type = ExcelString, .string = "Global Conversion plant (solid biomass to liquid)"};
static ExcelValue C428 = {.type = ExcelString, .string = "G.conversion.liquidtogas"};
static ExcelValue C429 = {.type = ExcelString, .string = "Global Conversion plant (liquid biomass to gas)"};
static ExcelValue C430 = {.type = ExcelString, .string = "G.conversion.gas"};
static ExcelValue C431 = {.type = ExcelString, .string = "Global Conversion plant (gas)"};
static ExcelValue C432 = {.type = ExcelString, .string = "G.GGR.tech"};
static ExcelValue C433 = {.type = ExcelString, .string = "Global Geosequestration units"};
static ExcelValue C434 = {.type = ExcelString, .string = "G.Humans"};
static ExcelValue C435 = {.type = ExcelNumber, .number = 3.6911730000000005};
static ExcelValue C436 = {.type = ExcelNumber, .number = 4.071020000000001};
static ExcelValue C437 = {.type = ExcelNumber, .number = 4.4490490000000005};
static ExcelValue C438 = {.type = ExcelNumber, .number = 4.863602000000001};
static ExcelValue C439 = {.type = ExcelNumber, .number = 5.320817000000001};
static ExcelValue C440 = {.type = ExcelNumber, .number = 5.741822000000001};
static ExcelValue C441 = {.type = ExcelNumber, .number = 6.127700000000001};
static ExcelValue C442 = {.type = ExcelNumber, .number = 6.514095000000001};
static ExcelValue C443 = {.type = ExcelNumber, .number = 6.916183000000001};
static ExcelValue C444 = {.type = ExcelString, .string = "UNDP"};
static ExcelValue C445 = {.type = ExcelString, .string = "http://esa.un.org/unpd/wpp/unpp/panel_population.htm"};
static ExcelValue C446 = {.type = ExcelString, .string = "Green"};
static ExcelValue C447 = {.type = ExcelString, .string = "2012 revision. Well known, widely used source. Reputable organisation."};
static ExcelValue C448 = {.type = ExcelString, .string = "TB"};
static ExcelValue C449 = {.type = ExcelString, .string = "In flow of technology units"};
static ExcelValue C450 = {.type = ExcelString, .string = "G.Aluminium.Electricity"};
static ExcelValue C451 = {.type = ExcelString, .string = "Global Aluminium"};
static ExcelValue C452 = {.type = ExcelString, .string = "G.Aluminium.SolidFuels"};
static ExcelValue C453 = {.type = ExcelString, .string = "G.Aluminium.LiquidFuels"};
static ExcelValue C454 = {.type = ExcelString, .string = "G.Aluminium.GaseousFuels"};
static ExcelValue C455 = {.type = ExcelString, .string = "G.Aluminium.Biomass"};
static ExcelValue C456 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.1.Electricity"};
static ExcelValue C457 = {.type = ExcelString, .string = "Global Chemicals & petrochemicals.1"};
static ExcelValue C458 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.1.SolidFuels"};
static ExcelValue C459 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.1.LiquidFuels"};
static ExcelValue C460 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.1.GaseousFuels"};
static ExcelValue C461 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.1.Biomass"};
static ExcelValue C462 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.2.Electricity"};
static ExcelValue C463 = {.type = ExcelString, .string = "Global Chemicals & petrochemicals.2"};
static ExcelValue C464 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.2.SolidFuels"};
static ExcelValue C465 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.2.LiquidFuels"};
static ExcelValue C466 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.2.GaseousFuels"};
static ExcelValue C467 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.2.Biomass"};
static ExcelValue C468 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.3.Electricity"};
static ExcelValue C469 = {.type = ExcelString, .string = "Global Chemicals & petrochemicals.3"};
static ExcelValue C470 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.3.SolidFuels"};
static ExcelValue C471 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.3.LiquidFuels"};
static ExcelValue C472 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.3.GaseousFuels"};
static ExcelValue C473 = {.type = ExcelString, .string = "G.Chemicals & petrochemicals.3.Biomass"};
static ExcelValue C474 = {.type = ExcelString, .string = "G.Pulp & paper.Virgin.Electricity"};
static ExcelValue C475 = {.type = ExcelString, .string = "Global Pulp & paper.Virgin"};
static ExcelValue C476 = {.type = ExcelString, .string = "G.Pulp & paper.Virgin.SolidFuels"};
static ExcelValue C477 = {.type = ExcelString, .string = "G.Pulp & paper.Virgin.LiquidFuels"};
static ExcelValue C478 = {.type = ExcelString, .string = "G.Pulp & paper.Virgin.GaseousFuels"};
static ExcelValue C479 = {.type = ExcelString, .string = "G.Pulp & paper.Virgin.Biomass"};
static ExcelValue C480 = {.type = ExcelString, .string = "G.Pulp & paper.Recycled.Electricity"};
static ExcelValue C481 = {.type = ExcelString, .string = "Global Pulp & paper.Recycled"};
static ExcelValue C482 = {.type = ExcelString, .string = "G.Pulp & paper.Recycled.SolidFuels"};
static ExcelValue C483 = {.type = ExcelString, .string = "G.Pulp & paper.Recycled.LiquidFuels"};
static ExcelValue C484 = {.type = ExcelString, .string = "G.Pulp & paper.Recycled.GaseousFuels"};
static ExcelValue C485 = {.type = ExcelString, .string = "G.Pulp & paper.Recycled.Biomass"};
static ExcelValue C486 = {.type = ExcelString, .string = "G.Cement.Electricity"};
static ExcelValue C487 = {.type = ExcelString, .string = "Global Cement"};
static ExcelValue C488 = {.type = ExcelString, .string = "G.Cement.SolidFuels"};
static ExcelValue C489 = {.type = ExcelString, .string = "G.Cement.LiquidFuels"};
static ExcelValue C490 = {.type = ExcelString, .string = "G.Cement.GaseousFuels"};
static ExcelValue C491 = {.type = ExcelString, .string = "G.Cement.Biomass"};
static ExcelValue C492 = {.type = ExcelString, .string = "G.Other industries.Electricity"};
static ExcelValue C493 = {.type = ExcelString, .string = "Global Other industries"};
static ExcelValue C494 = {.type = ExcelString, .string = "G.Other industries.SolidFuels"};
static ExcelValue C495 = {.type = ExcelString, .string = "G.Other industries.LiquidFuels"};
static ExcelValue C496 = {.type = ExcelString, .string = "G.Other industries.GaseousFuels"};
static ExcelValue C497 = {.type = ExcelString, .string = "G.Other industries.Biomass"};
static ExcelValue C498 = {.type = ExcelString, .string = "G.0"};
static ExcelValue C499 = {.type = ExcelString, .string = "Out flow of technology units"};
static ExcelValue C500 = {.type = ExcelString, .string = "Costs"};
static ExcelValue C501 = {.type = ExcelString, .string = "Note: needs to be done so that we have the data in one place for the Sankey diagram in the webtool"};
static ExcelValue C502 = {.type = ExcelString, .string = "Energy flows "};
static ExcelValue C503 = {.type = ExcelNumber, .number = 300.0};
static ExcelValue C504 = {.type = ExcelNumber, .number = 600.0};
static ExcelValue C505 = {.type = ExcelNumber, .number = 2000.0};
static ExcelValue C506 = {.type = ExcelNumber, .number = 4000.0};
static ExcelValue C507 = {.type = ExcelNumber, .number = 200.0};
static ExcelValue C508 = {.type = ExcelNumber, .number = 400.0};
static ExcelValue C509 = {.type = ExcelNumber, .number = 1000.0};
static ExcelValue C510 = {.type = ExcelString, .string = "Global CCS plant"};
// ending the value constants

// starting common elements
static ExcelValue _common0() {
  static ExcelValue result;
  if(variable_set[0] == 1) { return result;}
  static ExcelValue array0[44];
  array0[0] = C274;
  array0[1] = C503;
  array0[2] = C504;
  array0[3] = C505;
  array0[4] = C158;
  array0[5] = C505;
  array0[6] = C506;
  array0[7] = C286;
  array0[8] = C158;
  array0[9] = C505;
  array0[10] = C506;
  array0[11] = C286;
  array0[12] = C158;
  array0[13] = C505;
  array0[14] = C506;
  array0[15] = C286;
  array0[16] = C158;
  array0[17] = C505;
  array0[18] = C506;
  array0[19] = C286;
  array0[20] = C158;
  array0[21] = C507;
  array0[22] = C508;
  array0[23] = C509;
  array0[24] = C158;
  array0[25] = C507;
  array0[26] = C508;
  array0[27] = C509;
  array0[28] = C158;
  array0[29] = C507;
  array0[30] = C508;
  array0[31] = C509;
  array0[32] = C158;
  array0[33] = C507;
  array0[34] = C508;
  array0[35] = C509;
  array0[36] = C158;
  array0[37] = C507;
  array0[38] = C508;
  array0[39] = C509;
  array0[40] = C158;
  array0[41] = C507;
  array0[42] = C508;
  array0[43] = C509;
  ExcelValue array0_ev = new_excel_range(array0,44,1);
  result = array0_ev;
  variable_set[0] = 1;
  return result;
}

static ExcelValue _common1() {
  static ExcelValue result;
  if(variable_set[1] == 1) { return result;}
  static ExcelValue array0[44];
  array0[0] = C510;
  array0[1] = C510;
  array0[2] = C510;
  array0[3] = C510;
  array0[4] = C406;
  array0[5] = C406;
  array0[6] = C406;
  array0[7] = C406;
  array0[8] = C408;
  array0[9] = C408;
  array0[10] = C408;
  array0[11] = C408;
  array0[12] = C410;
  array0[13] = C410;
  array0[14] = C410;
  array0[15] = C410;
  array0[16] = C412;
  array0[17] = C412;
  array0[18] = C412;
  array0[19] = C412;
  array0[20] = C242;
  array0[21] = C242;
  array0[22] = C242;
  array0[23] = C242;
  array0[24] = C244;
  array0[25] = C244;
  array0[26] = C244;
  array0[27] = C244;
  array0[28] = C416;
  array0[29] = C416;
  array0[30] = C416;
  array0[31] = C416;
  array0[32] = C418;
  array0[33] = C418;
  array0[34] = C418;
  array0[35] = C418;
  array0[36] = C246;
  array0[37] = C246;
  array0[38] = C246;
  array0[39] = C246;
  array0[40] = C421;
  array0[41] = C421;
  array0[42] = C421;
  array0[43] = C421;
  ExcelValue array0_ev = new_excel_range(array0,44,1);
  result = array0_ev;
  variable_set[1] = 1;
  return result;
}

static ExcelValue _common2() {
  static ExcelValue result;
  if(variable_set[2] == 1) { return result;}
  static ExcelValue array0[44];
  array0[0] = C17;
  array0[1] = C26;
  array0[2] = C20;
  array0[3] = C18;
  array0[4] = C17;
  array0[5] = C26;
  array0[6] = C20;
  array0[7] = C18;
  array0[8] = C17;
  array0[9] = C26;
  array0[10] = C20;
  array0[11] = C18;
  array0[12] = C17;
  array0[13] = C26;
  array0[14] = C20;
  array0[15] = C18;
  array0[16] = C17;
  array0[17] = C26;
  array0[18] = C20;
  array0[19] = C18;
  array0[20] = C17;
  array0[21] = C26;
  array0[22] = C20;
  array0[23] = C18;
  array0[24] = C17;
  array0[25] = C26;
  array0[26] = C20;
  array0[27] = C18;
  array0[28] = C17;
  array0[29] = C26;
  array0[30] = C20;
  array0[31] = C18;
  array0[32] = C17;
  array0[33] = C26;
  array0[34] = C20;
  array0[35] = C18;
  array0[36] = C17;
  array0[37] = C26;
  array0[38] = C20;
  array0[39] = C18;
  array0[40] = C17;
  array0[41] = C26;
  array0[42] = C20;
  array0[43] = C18;
  ExcelValue array0_ev = new_excel_range(array0,44,1);
  result = array0_ev;
  variable_set[2] = 1;
  return result;
}

static ExcelValue _common3() {
  static ExcelValue result;
  if(variable_set[3] == 1) { return result;}
  result = mod(user_inputs_d27(),C17);
  variable_set[3] = 1;
  return result;
}

// ending common elements

// start Front page
// end Front page

// start Contents
// end Contents

// start User guide
// end User guide

// start User inputs
ExcelValue user_inputs_b2() {
  static ExcelValue result;
  if(variable_set[4] == 1) { return result;}
  result = C1;
  variable_set[4] = 1;
  return result;
}

ExcelValue user_inputs_c2() {
  static ExcelValue result;
  if(variable_set[5] == 1) { return result;}
  result = C2;
  variable_set[5] = 1;
  return result;
}

ExcelValue user_inputs_g2() {
  static ExcelValue result;
  if(variable_set[6] == 1) { return result;}
  result = C3;
  variable_set[6] = 1;
  return result;
}

ExcelValue user_inputs_l2() {
  static ExcelValue result;
  if(variable_set[7] == 1) { return result;}
  result = C4;
  variable_set[7] = 1;
  return result;
}

ExcelValue user_inputs_g3() {
  static ExcelValue result;
  if(variable_set[8] == 1) { return result;}
  result = C5;
  variable_set[8] = 1;
  return result;
}

ExcelValue user_inputs_l3() {
  static ExcelValue result;
  if(variable_set[9] == 1) { return result;}
  result = C6;
  variable_set[9] = 1;
  return result;
}

ExcelValue user_inputs_b5() {
  static ExcelValue result;
  if(variable_set[10] == 1) { return result;}
  result = C7;
  variable_set[10] = 1;
  return result;
}

ExcelValue user_inputs_f5() {
  static ExcelValue result;
  if(variable_set[11] == 1) { return result;}
  result = C8;
  variable_set[11] = 1;
  return result;
}

ExcelValue user_inputs_g5() {
  static ExcelValue result;
  if(variable_set[12] == 1) { return result;}
  result = C9;
  variable_set[12] = 1;
  return result;
}

ExcelValue user_inputs_b6() {
  static ExcelValue result;
  if(variable_set[13] == 1) { return result;}
  result = C10;
  variable_set[13] = 1;
  return result;
}

ExcelValue user_inputs_c6() {
  static ExcelValue result;
  if(variable_set[14] == 1) { return result;}
  result = C11;
  variable_set[14] = 1;
  return result;
}

ExcelValue user_inputs_d6() {
  static ExcelValue result;
  if(variable_set[15] == 1) { return result;}
  result = C12;
  variable_set[15] = 1;
  return result;
}

ExcelValue user_inputs_e6() {
  static ExcelValue result;
  if(variable_set[16] == 1) { return result;}
  result = C13;
  variable_set[16] = 1;
  return result;
}

ExcelValue user_inputs_f6() {
  static ExcelValue result;
  if(variable_set[17] == 1) { return result;}
  result = C14;
  variable_set[17] = 1;
  return result;
}

ExcelValue user_inputs_b7() {
  static ExcelValue result;
  if(variable_set[18] == 1) { return result;}
  result = C15;
  variable_set[18] = 1;
  return result;
}

ExcelValue user_inputs_c7() {
  static ExcelValue result;
  if(variable_set[19] == 1) { return result;}
  result = C16;
  variable_set[19] = 1;
  return result;
}

ExcelValue user_inputs_d7_default() {
  return C17;
}
static ExcelValue user_inputs_d7_variable;
ExcelValue user_inputs_d7() { if(variable_set[20] == 1) { return user_inputs_d7_variable; } else { return user_inputs_d7_default(); } }
void set_user_inputs_d7(ExcelValue newValue) { variable_set[20] = 1; user_inputs_d7_variable = newValue; }

ExcelValue user_inputs_e7() {
  static ExcelValue result;
  if(variable_set[21] == 1) { return result;}
  result = C18;
  variable_set[21] = 1;
  return result;
}

ExcelValue user_inputs_f7() {
  static ExcelValue result;
  if(variable_set[22] == 1) { return result;}
  result = BLANK;
  variable_set[22] = 1;
  return result;
}

ExcelValue user_inputs_c8() {
  static ExcelValue result;
  if(variable_set[23] == 1) { return result;}
  result = C19;
  variable_set[23] = 1;
  return result;
}

ExcelValue user_inputs_d8_default() {
  return C17;
}
static ExcelValue user_inputs_d8_variable;
ExcelValue user_inputs_d8() { if(variable_set[24] == 1) { return user_inputs_d8_variable; } else { return user_inputs_d8_default(); } }
void set_user_inputs_d8(ExcelValue newValue) { variable_set[24] = 1; user_inputs_d8_variable = newValue; }

ExcelValue user_inputs_e8() {
  static ExcelValue result;
  if(variable_set[25] == 1) { return result;}
  result = C20;
  variable_set[25] = 1;
  return result;
}

ExcelValue user_inputs_f8() {
  static ExcelValue result;
  if(variable_set[26] == 1) { return result;}
  result = BLANK;
  variable_set[26] = 1;
  return result;
}

ExcelValue user_inputs_b9() {
  static ExcelValue result;
  if(variable_set[27] == 1) { return result;}
  result = C21;
  variable_set[27] = 1;
  return result;
}

ExcelValue user_inputs_c9() {
  static ExcelValue result;
  if(variable_set[28] == 1) { return result;}
  result = C22;
  variable_set[28] = 1;
  return result;
}

ExcelValue user_inputs_d9_default() {
  return C20;
}
static ExcelValue user_inputs_d9_variable;
ExcelValue user_inputs_d9() { if(variable_set[29] == 1) { return user_inputs_d9_variable; } else { return user_inputs_d9_default(); } }
void set_user_inputs_d9(ExcelValue newValue) { variable_set[29] = 1; user_inputs_d9_variable = newValue; }

ExcelValue user_inputs_e9() {
  static ExcelValue result;
  if(variable_set[30] == 1) { return result;}
  result = C18;
  variable_set[30] = 1;
  return result;
}

ExcelValue user_inputs_f9() {
  static ExcelValue result;
  if(variable_set[31] == 1) { return result;}
  result = BLANK;
  variable_set[31] = 1;
  return result;
}

ExcelValue user_inputs_c10() {
  static ExcelValue result;
  if(variable_set[32] == 1) { return result;}
  result = C23;
  variable_set[32] = 1;
  return result;
}

ExcelValue user_inputs_d10_default() {
  return C24;
}
static ExcelValue user_inputs_d10_variable;
ExcelValue user_inputs_d10() { if(variable_set[33] == 1) { return user_inputs_d10_variable; } else { return user_inputs_d10_default(); } }
void set_user_inputs_d10(ExcelValue newValue) { variable_set[33] = 1; user_inputs_d10_variable = newValue; }

ExcelValue user_inputs_e10() {
  static ExcelValue result;
  if(variable_set[34] == 1) { return result;}
  result = C18;
  variable_set[34] = 1;
  return result;
}

ExcelValue user_inputs_f10() {
  static ExcelValue result;
  if(variable_set[35] == 1) { return result;}
  result = BLANK;
  variable_set[35] = 1;
  return result;
}

ExcelValue user_inputs_c11() {
  static ExcelValue result;
  if(variable_set[36] == 1) { return result;}
  result = C25;
  variable_set[36] = 1;
  return result;
}

ExcelValue user_inputs_d11_default() {
  return C26;
}
static ExcelValue user_inputs_d11_variable;
ExcelValue user_inputs_d11() { if(variable_set[37] == 1) { return user_inputs_d11_variable; } else { return user_inputs_d11_default(); } }
void set_user_inputs_d11(ExcelValue newValue) { variable_set[37] = 1; user_inputs_d11_variable = newValue; }

ExcelValue user_inputs_e11() {
  static ExcelValue result;
  if(variable_set[38] == 1) { return result;}
  result = C18;
  variable_set[38] = 1;
  return result;
}

ExcelValue user_inputs_f11() {
  static ExcelValue result;
  if(variable_set[39] == 1) { return result;}
  result = BLANK;
  variable_set[39] = 1;
  return result;
}

ExcelValue user_inputs_c12() {
  static ExcelValue result;
  if(variable_set[40] == 1) { return result;}
  result = C27;
  variable_set[40] = 1;
  return result;
}

ExcelValue user_inputs_d12_default() {
  return C20;
}
static ExcelValue user_inputs_d12_variable;
ExcelValue user_inputs_d12() { if(variable_set[41] == 1) { return user_inputs_d12_variable; } else { return user_inputs_d12_default(); } }
void set_user_inputs_d12(ExcelValue newValue) { variable_set[41] = 1; user_inputs_d12_variable = newValue; }

ExcelValue user_inputs_e12() {
  static ExcelValue result;
  if(variable_set[42] == 1) { return result;}
  result = C18;
  variable_set[42] = 1;
  return result;
}

ExcelValue user_inputs_f12() {
  static ExcelValue result;
  if(variable_set[43] == 1) { return result;}
  result = BLANK;
  variable_set[43] = 1;
  return result;
}

ExcelValue user_inputs_c13() {
  static ExcelValue result;
  if(variable_set[44] == 1) { return result;}
  result = C28;
  variable_set[44] = 1;
  return result;
}

ExcelValue user_inputs_d13_default() {
  return C18;
}
static ExcelValue user_inputs_d13_variable;
ExcelValue user_inputs_d13() { if(variable_set[45] == 1) { return user_inputs_d13_variable; } else { return user_inputs_d13_default(); } }
void set_user_inputs_d13(ExcelValue newValue) { variable_set[45] = 1; user_inputs_d13_variable = newValue; }

ExcelValue user_inputs_e13() {
  static ExcelValue result;
  if(variable_set[46] == 1) { return result;}
  result = C18;
  variable_set[46] = 1;
  return result;
}

ExcelValue user_inputs_f13() {
  static ExcelValue result;
  if(variable_set[47] == 1) { return result;}
  result = BLANK;
  variable_set[47] = 1;
  return result;
}

ExcelValue user_inputs_b14() {
  static ExcelValue result;
  if(variable_set[48] == 1) { return result;}
  result = C29;
  variable_set[48] = 1;
  return result;
}

ExcelValue user_inputs_c14() {
  static ExcelValue result;
  if(variable_set[49] == 1) { return result;}
  result = C30;
  variable_set[49] = 1;
  return result;
}

ExcelValue user_inputs_d14_default() {
  return C20;
}
static ExcelValue user_inputs_d14_variable;
ExcelValue user_inputs_d14() { if(variable_set[50] == 1) { return user_inputs_d14_variable; } else { return user_inputs_d14_default(); } }
void set_user_inputs_d14(ExcelValue newValue) { variable_set[50] = 1; user_inputs_d14_variable = newValue; }

ExcelValue user_inputs_e14() {
  static ExcelValue result;
  if(variable_set[51] == 1) { return result;}
  result = C18;
  variable_set[51] = 1;
  return result;
}

ExcelValue user_inputs_f14() {
  static ExcelValue result;
  if(variable_set[52] == 1) { return result;}
  result = BLANK;
  variable_set[52] = 1;
  return result;
}

ExcelValue user_inputs_c15() {
  static ExcelValue result;
  if(variable_set[53] == 1) { return result;}
  result = C31;
  variable_set[53] = 1;
  return result;
}

ExcelValue user_inputs_d15_default() {
  return C26;
}
static ExcelValue user_inputs_d15_variable;
ExcelValue user_inputs_d15() { if(variable_set[54] == 1) { return user_inputs_d15_variable; } else { return user_inputs_d15_default(); } }
void set_user_inputs_d15(ExcelValue newValue) { variable_set[54] = 1; user_inputs_d15_variable = newValue; }

ExcelValue user_inputs_e15() {
  static ExcelValue result;
  if(variable_set[55] == 1) { return result;}
  result = C18;
  variable_set[55] = 1;
  return result;
}

ExcelValue user_inputs_f15() {
  static ExcelValue result;
  if(variable_set[56] == 1) { return result;}
  result = BLANK;
  variable_set[56] = 1;
  return result;
}

ExcelValue user_inputs_c16() {
  static ExcelValue result;
  if(variable_set[57] == 1) { return result;}
  result = C32;
  variable_set[57] = 1;
  return result;
}

ExcelValue user_inputs_d16_default() {
  return C20;
}
static ExcelValue user_inputs_d16_variable;
ExcelValue user_inputs_d16() { if(variable_set[58] == 1) { return user_inputs_d16_variable; } else { return user_inputs_d16_default(); } }
void set_user_inputs_d16(ExcelValue newValue) { variable_set[58] = 1; user_inputs_d16_variable = newValue; }

ExcelValue user_inputs_e16() {
  static ExcelValue result;
  if(variable_set[59] == 1) { return result;}
  result = C18;
  variable_set[59] = 1;
  return result;
}

ExcelValue user_inputs_f16() {
  static ExcelValue result;
  if(variable_set[60] == 1) { return result;}
  result = BLANK;
  variable_set[60] = 1;
  return result;
}

ExcelValue user_inputs_c17() {
  static ExcelValue result;
  if(variable_set[61] == 1) { return result;}
  result = C33;
  variable_set[61] = 1;
  return result;
}

ExcelValue user_inputs_d17_default() {
  return C20;
}
static ExcelValue user_inputs_d17_variable;
ExcelValue user_inputs_d17() { if(variable_set[62] == 1) { return user_inputs_d17_variable; } else { return user_inputs_d17_default(); } }
void set_user_inputs_d17(ExcelValue newValue) { variable_set[62] = 1; user_inputs_d17_variable = newValue; }

ExcelValue user_inputs_e17() {
  static ExcelValue result;
  if(variable_set[63] == 1) { return result;}
  result = C18;
  variable_set[63] = 1;
  return result;
}

ExcelValue user_inputs_f17() {
  static ExcelValue result;
  if(variable_set[64] == 1) { return result;}
  result = BLANK;
  variable_set[64] = 1;
  return result;
}

ExcelValue user_inputs_c18() {
  static ExcelValue result;
  if(variable_set[65] == 1) { return result;}
  result = C34;
  variable_set[65] = 1;
  return result;
}

ExcelValue user_inputs_d18_default() {
  return C20;
}
static ExcelValue user_inputs_d18_variable;
ExcelValue user_inputs_d18() { if(variable_set[66] == 1) { return user_inputs_d18_variable; } else { return user_inputs_d18_default(); } }
void set_user_inputs_d18(ExcelValue newValue) { variable_set[66] = 1; user_inputs_d18_variable = newValue; }

ExcelValue user_inputs_e18() {
  static ExcelValue result;
  if(variable_set[67] == 1) { return result;}
  result = C18;
  variable_set[67] = 1;
  return result;
}

ExcelValue user_inputs_f18() {
  static ExcelValue result;
  if(variable_set[68] == 1) { return result;}
  result = BLANK;
  variable_set[68] = 1;
  return result;
}

ExcelValue user_inputs_c19() {
  static ExcelValue result;
  if(variable_set[69] == 1) { return result;}
  result = C35;
  variable_set[69] = 1;
  return result;
}

ExcelValue user_inputs_d19_default() {
  return C26;
}
static ExcelValue user_inputs_d19_variable;
ExcelValue user_inputs_d19() { if(variable_set[70] == 1) { return user_inputs_d19_variable; } else { return user_inputs_d19_default(); } }
void set_user_inputs_d19(ExcelValue newValue) { variable_set[70] = 1; user_inputs_d19_variable = newValue; }

ExcelValue user_inputs_e19() {
  static ExcelValue result;
  if(variable_set[71] == 1) { return result;}
  result = C18;
  variable_set[71] = 1;
  return result;
}

ExcelValue user_inputs_f19() {
  static ExcelValue result;
  if(variable_set[72] == 1) { return result;}
  result = BLANK;
  variable_set[72] = 1;
  return result;
}

ExcelValue user_inputs_b20() {
  static ExcelValue result;
  if(variable_set[73] == 1) { return result;}
  result = C36;
  variable_set[73] = 1;
  return result;
}

ExcelValue user_inputs_c20() {
  static ExcelValue result;
  if(variable_set[74] == 1) { return result;}
  result = C37;
  variable_set[74] = 1;
  return result;
}

ExcelValue user_inputs_d20_default() {
  return C26;
}
static ExcelValue user_inputs_d20_variable;
ExcelValue user_inputs_d20() { if(variable_set[75] == 1) { return user_inputs_d20_variable; } else { return user_inputs_d20_default(); } }
void set_user_inputs_d20(ExcelValue newValue) { variable_set[75] = 1; user_inputs_d20_variable = newValue; }

ExcelValue user_inputs_e20() {
  static ExcelValue result;
  if(variable_set[76] == 1) { return result;}
  result = C18;
  variable_set[76] = 1;
  return result;
}

ExcelValue user_inputs_f20() {
  static ExcelValue result;
  if(variable_set[77] == 1) { return result;}
  result = BLANK;
  variable_set[77] = 1;
  return result;
}

ExcelValue user_inputs_c21() {
  static ExcelValue result;
  if(variable_set[78] == 1) { return result;}
  result = C38;
  variable_set[78] = 1;
  return result;
}

ExcelValue user_inputs_d21_default() {
  return C26;
}
static ExcelValue user_inputs_d21_variable;
ExcelValue user_inputs_d21() { if(variable_set[79] == 1) { return user_inputs_d21_variable; } else { return user_inputs_d21_default(); } }
void set_user_inputs_d21(ExcelValue newValue) { variable_set[79] = 1; user_inputs_d21_variable = newValue; }

ExcelValue user_inputs_e21() {
  static ExcelValue result;
  if(variable_set[80] == 1) { return result;}
  result = C18;
  variable_set[80] = 1;
  return result;
}

ExcelValue user_inputs_f21() {
  static ExcelValue result;
  if(variable_set[81] == 1) { return result;}
  result = BLANK;
  variable_set[81] = 1;
  return result;
}

ExcelValue user_inputs_c22() {
  static ExcelValue result;
  if(variable_set[82] == 1) { return result;}
  result = C39;
  variable_set[82] = 1;
  return result;
}

ExcelValue user_inputs_d22_default() {
  return C20;
}
static ExcelValue user_inputs_d22_variable;
ExcelValue user_inputs_d22() { if(variable_set[83] == 1) { return user_inputs_d22_variable; } else { return user_inputs_d22_default(); } }
void set_user_inputs_d22(ExcelValue newValue) { variable_set[83] = 1; user_inputs_d22_variable = newValue; }

ExcelValue user_inputs_e22() {
  static ExcelValue result;
  if(variable_set[84] == 1) { return result;}
  result = C18;
  variable_set[84] = 1;
  return result;
}

ExcelValue user_inputs_f22() {
  static ExcelValue result;
  if(variable_set[85] == 1) { return result;}
  result = BLANK;
  variable_set[85] = 1;
  return result;
}

ExcelValue user_inputs_c23() {
  static ExcelValue result;
  if(variable_set[86] == 1) { return result;}
  result = C40;
  variable_set[86] = 1;
  return result;
}

ExcelValue user_inputs_d23_default() {
  return C20;
}
static ExcelValue user_inputs_d23_variable;
ExcelValue user_inputs_d23() { if(variable_set[87] == 1) { return user_inputs_d23_variable; } else { return user_inputs_d23_default(); } }
void set_user_inputs_d23(ExcelValue newValue) { variable_set[87] = 1; user_inputs_d23_variable = newValue; }

ExcelValue user_inputs_e23() {
  static ExcelValue result;
  if(variable_set[88] == 1) { return result;}
  result = C18;
  variable_set[88] = 1;
  return result;
}

ExcelValue user_inputs_f23() {
  static ExcelValue result;
  if(variable_set[89] == 1) { return result;}
  result = BLANK;
  variable_set[89] = 1;
  return result;
}

ExcelValue user_inputs_b24() {
  static ExcelValue result;
  if(variable_set[90] == 1) { return result;}
  result = C41;
  variable_set[90] = 1;
  return result;
}

ExcelValue user_inputs_c24() {
  static ExcelValue result;
  if(variable_set[91] == 1) { return result;}
  result = C42;
  variable_set[91] = 1;
  return result;
}

ExcelValue user_inputs_d24_default() {
  return C26;
}
static ExcelValue user_inputs_d24_variable;
ExcelValue user_inputs_d24() { if(variable_set[92] == 1) { return user_inputs_d24_variable; } else { return user_inputs_d24_default(); } }
void set_user_inputs_d24(ExcelValue newValue) { variable_set[92] = 1; user_inputs_d24_variable = newValue; }

ExcelValue user_inputs_e24() {
  static ExcelValue result;
  if(variable_set[93] == 1) { return result;}
  result = C43;
  variable_set[93] = 1;
  return result;
}

ExcelValue user_inputs_f24() {
  static ExcelValue result;
  if(variable_set[94] == 1) { return result;}
  result = BLANK;
  variable_set[94] = 1;
  return result;
}

ExcelValue user_inputs_c25() {
  static ExcelValue result;
  if(variable_set[95] == 1) { return result;}
  result = C44;
  variable_set[95] = 1;
  return result;
}

ExcelValue user_inputs_d25_default() {
  return C18;
}
static ExcelValue user_inputs_d25_variable;
ExcelValue user_inputs_d25() { if(variable_set[96] == 1) { return user_inputs_d25_variable; } else { return user_inputs_d25_default(); } }
void set_user_inputs_d25(ExcelValue newValue) { variable_set[96] = 1; user_inputs_d25_variable = newValue; }

ExcelValue user_inputs_e25() {
  static ExcelValue result;
  if(variable_set[97] == 1) { return result;}
  result = C18;
  variable_set[97] = 1;
  return result;
}

ExcelValue user_inputs_f25() {
  static ExcelValue result;
  if(variable_set[98] == 1) { return result;}
  result = BLANK;
  variable_set[98] = 1;
  return result;
}

ExcelValue user_inputs_c26() {
  static ExcelValue result;
  if(variable_set[99] == 1) { return result;}
  result = C45;
  variable_set[99] = 1;
  return result;
}

ExcelValue user_inputs_d26_default() {
  return C26;
}
static ExcelValue user_inputs_d26_variable;
ExcelValue user_inputs_d26() { if(variable_set[100] == 1) { return user_inputs_d26_variable; } else { return user_inputs_d26_default(); } }
void set_user_inputs_d26(ExcelValue newValue) { variable_set[100] = 1; user_inputs_d26_variable = newValue; }

ExcelValue user_inputs_e26() {
  static ExcelValue result;
  if(variable_set[101] == 1) { return result;}
  result = C18;
  variable_set[101] = 1;
  return result;
}

ExcelValue user_inputs_f26() {
  static ExcelValue result;
  if(variable_set[102] == 1) { return result;}
  result = BLANK;
  variable_set[102] = 1;
  return result;
}

ExcelValue user_inputs_c27() {
  static ExcelValue result;
  if(variable_set[103] == 1) { return result;}
  result = C46;
  variable_set[103] = 1;
  return result;
}

ExcelValue user_inputs_d27_default() {
  return C18;
}
static ExcelValue user_inputs_d27_variable;
ExcelValue user_inputs_d27() { if(variable_set[104] == 1) { return user_inputs_d27_variable; } else { return user_inputs_d27_default(); } }
void set_user_inputs_d27(ExcelValue newValue) { variable_set[104] = 1; user_inputs_d27_variable = newValue; }

ExcelValue user_inputs_e27() {
  static ExcelValue result;
  if(variable_set[105] == 1) { return result;}
  result = C18;
  variable_set[105] = 1;
  return result;
}

ExcelValue user_inputs_f27() {
  static ExcelValue result;
  if(variable_set[106] == 1) { return result;}
  ExcelValue array0[] = {C47,g_40_data__q225(),C48,C49,C50,divide(g_40_data__q225(),C51),C52};
  result = string_join(7, array0);
  variable_set[106] = 1;
  return result;
}

ExcelValue user_inputs_c28() {
  static ExcelValue result;
  if(variable_set[107] == 1) { return result;}
  result = C53;
  variable_set[107] = 1;
  return result;
}

ExcelValue user_inputs_d28_default() {
  return C26;
}
static ExcelValue user_inputs_d28_variable;
ExcelValue user_inputs_d28() { if(variable_set[108] == 1) { return user_inputs_d28_variable; } else { return user_inputs_d28_default(); } }
void set_user_inputs_d28(ExcelValue newValue) { variable_set[108] = 1; user_inputs_d28_variable = newValue; }

ExcelValue user_inputs_e28() {
  static ExcelValue result;
  if(variable_set[109] == 1) { return result;}
  result = C18;
  variable_set[109] = 1;
  return result;
}

ExcelValue user_inputs_f28() {
  static ExcelValue result;
  if(variable_set[110] == 1) { return result;}
  result = BLANK;
  variable_set[110] = 1;
  return result;
}

ExcelValue user_inputs_c29() {
  static ExcelValue result;
  if(variable_set[111] == 1) { return result;}
  result = C54;
  variable_set[111] = 1;
  return result;
}

ExcelValue user_inputs_d29_default() {
  return C17;
}
static ExcelValue user_inputs_d29_variable;
ExcelValue user_inputs_d29() { if(variable_set[112] == 1) { return user_inputs_d29_variable; } else { return user_inputs_d29_default(); } }
void set_user_inputs_d29(ExcelValue newValue) { variable_set[112] = 1; user_inputs_d29_variable = newValue; }

ExcelValue user_inputs_e29() {
  static ExcelValue result;
  if(variable_set[113] == 1) { return result;}
  result = C18;
  variable_set[113] = 1;
  return result;
}

ExcelValue user_inputs_f29() {
  static ExcelValue result;
  if(variable_set[114] == 1) { return result;}
  result = BLANK;
  variable_set[114] = 1;
  return result;
}

ExcelValue user_inputs_c30() {
  static ExcelValue result;
  if(variable_set[115] == 1) { return result;}
  result = C55;
  variable_set[115] = 1;
  return result;
}

ExcelValue user_inputs_d30_default() {
  return C17;
}
static ExcelValue user_inputs_d30_variable;
ExcelValue user_inputs_d30() { if(variable_set[116] == 1) { return user_inputs_d30_variable; } else { return user_inputs_d30_default(); } }
void set_user_inputs_d30(ExcelValue newValue) { variable_set[116] = 1; user_inputs_d30_variable = newValue; }

ExcelValue user_inputs_e30() {
  static ExcelValue result;
  if(variable_set[117] == 1) { return result;}
  result = C18;
  variable_set[117] = 1;
  return result;
}

ExcelValue user_inputs_f30() {
  static ExcelValue result;
  if(variable_set[118] == 1) { return result;}
  result = BLANK;
  variable_set[118] = 1;
  return result;
}

ExcelValue user_inputs_c31() {
  static ExcelValue result;
  if(variable_set[119] == 1) { return result;}
  result = C56;
  variable_set[119] = 1;
  return result;
}

ExcelValue user_inputs_d31_default() {
  return C20;
}
static ExcelValue user_inputs_d31_variable;
ExcelValue user_inputs_d31() { if(variable_set[120] == 1) { return user_inputs_d31_variable; } else { return user_inputs_d31_default(); } }
void set_user_inputs_d31(ExcelValue newValue) { variable_set[120] = 1; user_inputs_d31_variable = newValue; }

ExcelValue user_inputs_e31() {
  static ExcelValue result;
  if(variable_set[121] == 1) { return result;}
  result = C18;
  variable_set[121] = 1;
  return result;
}

ExcelValue user_inputs_f31() {
  static ExcelValue result;
  if(variable_set[122] == 1) { return result;}
  result = BLANK;
  variable_set[122] = 1;
  return result;
}

ExcelValue user_inputs_c32() {
  static ExcelValue result;
  if(variable_set[123] == 1) { return result;}
  result = C57;
  variable_set[123] = 1;
  return result;
}

ExcelValue user_inputs_d32_default() {
  return C17;
}
static ExcelValue user_inputs_d32_variable;
ExcelValue user_inputs_d32() { if(variable_set[124] == 1) { return user_inputs_d32_variable; } else { return user_inputs_d32_default(); } }
void set_user_inputs_d32(ExcelValue newValue) { variable_set[124] = 1; user_inputs_d32_variable = newValue; }

ExcelValue user_inputs_e32() {
  static ExcelValue result;
  if(variable_set[125] == 1) { return result;}
  result = C18;
  variable_set[125] = 1;
  return result;
}

ExcelValue user_inputs_f32() {
  static ExcelValue result;
  if(variable_set[126] == 1) { return result;}
  result = BLANK;
  variable_set[126] = 1;
  return result;
}

ExcelValue user_inputs_c33() {
  static ExcelValue result;
  if(variable_set[127] == 1) { return result;}
  result = C58;
  variable_set[127] = 1;
  return result;
}

ExcelValue user_inputs_d33_default() {
  return C20;
}
static ExcelValue user_inputs_d33_variable;
ExcelValue user_inputs_d33() { if(variable_set[128] == 1) { return user_inputs_d33_variable; } else { return user_inputs_d33_default(); } }
void set_user_inputs_d33(ExcelValue newValue) { variable_set[128] = 1; user_inputs_d33_variable = newValue; }

ExcelValue user_inputs_e33() {
  static ExcelValue result;
  if(variable_set[129] == 1) { return result;}
  result = C18;
  variable_set[129] = 1;
  return result;
}

ExcelValue user_inputs_f33() {
  static ExcelValue result;
  if(variable_set[130] == 1) { return result;}
  result = BLANK;
  variable_set[130] = 1;
  return result;
}

ExcelValue user_inputs_b34() {
  static ExcelValue result;
  if(variable_set[131] == 1) { return result;}
  result = C59;
  variable_set[131] = 1;
  return result;
}

ExcelValue user_inputs_c34() {
  static ExcelValue result;
  if(variable_set[132] == 1) { return result;}
  result = C60;
  variable_set[132] = 1;
  return result;
}

ExcelValue user_inputs_d34_default() {
  return C17;
}
static ExcelValue user_inputs_d34_variable;
ExcelValue user_inputs_d34() { if(variable_set[133] == 1) { return user_inputs_d34_variable; } else { return user_inputs_d34_default(); } }
void set_user_inputs_d34(ExcelValue newValue) { variable_set[133] = 1; user_inputs_d34_variable = newValue; }

ExcelValue user_inputs_e34() {
  static ExcelValue result;
  if(variable_set[134] == 1) { return result;}
  result = C18;
  variable_set[134] = 1;
  return result;
}

ExcelValue user_inputs_f34() {
  static ExcelValue result;
  if(variable_set[135] == 1) { return result;}
  result = BLANK;
  variable_set[135] = 1;
  return result;
}

ExcelValue user_inputs_c35() {
  static ExcelValue result;
  if(variable_set[136] == 1) { return result;}
  result = C61;
  variable_set[136] = 1;
  return result;
}

ExcelValue user_inputs_d35_default() {
  return C17;
}
static ExcelValue user_inputs_d35_variable;
ExcelValue user_inputs_d35() { if(variable_set[137] == 1) { return user_inputs_d35_variable; } else { return user_inputs_d35_default(); } }
void set_user_inputs_d35(ExcelValue newValue) { variable_set[137] = 1; user_inputs_d35_variable = newValue; }

ExcelValue user_inputs_e35() {
  static ExcelValue result;
  if(variable_set[138] == 1) { return result;}
  result = C18;
  variable_set[138] = 1;
  return result;
}

ExcelValue user_inputs_f35() {
  static ExcelValue result;
  if(variable_set[139] == 1) { return result;}
  result = BLANK;
  variable_set[139] = 1;
  return result;
}

ExcelValue user_inputs_c36() {
  static ExcelValue result;
  if(variable_set[140] == 1) { return result;}
  result = C62;
  variable_set[140] = 1;
  return result;
}

ExcelValue user_inputs_d36_default() {
  return C17;
}
static ExcelValue user_inputs_d36_variable;
ExcelValue user_inputs_d36() { if(variable_set[141] == 1) { return user_inputs_d36_variable; } else { return user_inputs_d36_default(); } }
void set_user_inputs_d36(ExcelValue newValue) { variable_set[141] = 1; user_inputs_d36_variable = newValue; }

ExcelValue user_inputs_e36() {
  static ExcelValue result;
  if(variable_set[142] == 1) { return result;}
  result = C18;
  variable_set[142] = 1;
  return result;
}

ExcelValue user_inputs_f36() {
  static ExcelValue result;
  if(variable_set[143] == 1) { return result;}
  result = BLANK;
  variable_set[143] = 1;
  return result;
}

ExcelValue user_inputs_c37() {
  static ExcelValue result;
  if(variable_set[144] == 1) { return result;}
  result = C63;
  variable_set[144] = 1;
  return result;
}

ExcelValue user_inputs_d37_default() {
  return C17;
}
static ExcelValue user_inputs_d37_variable;
ExcelValue user_inputs_d37() { if(variable_set[145] == 1) { return user_inputs_d37_variable; } else { return user_inputs_d37_default(); } }
void set_user_inputs_d37(ExcelValue newValue) { variable_set[145] = 1; user_inputs_d37_variable = newValue; }

ExcelValue user_inputs_e37() {
  static ExcelValue result;
  if(variable_set[146] == 1) { return result;}
  result = C18;
  variable_set[146] = 1;
  return result;
}

ExcelValue user_inputs_f37() {
  static ExcelValue result;
  if(variable_set[147] == 1) { return result;}
  result = BLANK;
  variable_set[147] = 1;
  return result;
}

ExcelValue user_inputs_c38() {
  static ExcelValue result;
  if(variable_set[148] == 1) { return result;}
  result = C64;
  variable_set[148] = 1;
  return result;
}

ExcelValue user_inputs_d38_default() {
  return C17;
}
static ExcelValue user_inputs_d38_variable;
ExcelValue user_inputs_d38() { if(variable_set[149] == 1) { return user_inputs_d38_variable; } else { return user_inputs_d38_default(); } }
void set_user_inputs_d38(ExcelValue newValue) { variable_set[149] = 1; user_inputs_d38_variable = newValue; }

ExcelValue user_inputs_e38() {
  static ExcelValue result;
  if(variable_set[150] == 1) { return result;}
  result = C18;
  variable_set[150] = 1;
  return result;
}

ExcelValue user_inputs_f38() {
  static ExcelValue result;
  if(variable_set[151] == 1) { return result;}
  result = BLANK;
  variable_set[151] = 1;
  return result;
}

ExcelValue user_inputs_c39() {
  static ExcelValue result;
  if(variable_set[152] == 1) { return result;}
  result = C65;
  variable_set[152] = 1;
  return result;
}

ExcelValue user_inputs_d39_default() {
  return C20;
}
static ExcelValue user_inputs_d39_variable;
ExcelValue user_inputs_d39() { if(variable_set[153] == 1) { return user_inputs_d39_variable; } else { return user_inputs_d39_default(); } }
void set_user_inputs_d39(ExcelValue newValue) { variable_set[153] = 1; user_inputs_d39_variable = newValue; }

ExcelValue user_inputs_e39() {
  static ExcelValue result;
  if(variable_set[154] == 1) { return result;}
  result = C18;
  variable_set[154] = 1;
  return result;
}

ExcelValue user_inputs_f39() {
  static ExcelValue result;
  if(variable_set[155] == 1) { return result;}
  result = BLANK;
  variable_set[155] = 1;
  return result;
}

ExcelValue user_inputs_c40() {
  static ExcelValue result;
  if(variable_set[156] == 1) { return result;}
  result = C66;
  variable_set[156] = 1;
  return result;
}

ExcelValue user_inputs_d40_default() {
  return C18;
}
static ExcelValue user_inputs_d40_variable;
ExcelValue user_inputs_d40() { if(variable_set[157] == 1) { return user_inputs_d40_variable; } else { return user_inputs_d40_default(); } }
void set_user_inputs_d40(ExcelValue newValue) { variable_set[157] = 1; user_inputs_d40_variable = newValue; }

ExcelValue user_inputs_e40() {
  static ExcelValue result;
  if(variable_set[158] == 1) { return result;}
  result = C18;
  variable_set[158] = 1;
  return result;
}

ExcelValue user_inputs_f40() {
  static ExcelValue result;
  if(variable_set[159] == 1) { return result;}
  result = BLANK;
  variable_set[159] = 1;
  return result;
}

ExcelValue user_inputs_c41() {
  static ExcelValue result;
  if(variable_set[160] == 1) { return result;}
  result = C67;
  variable_set[160] = 1;
  return result;
}

ExcelValue user_inputs_d41_default() {
  return C17;
}
static ExcelValue user_inputs_d41_variable;
ExcelValue user_inputs_d41() { if(variable_set[161] == 1) { return user_inputs_d41_variable; } else { return user_inputs_d41_default(); } }
void set_user_inputs_d41(ExcelValue newValue) { variable_set[161] = 1; user_inputs_d41_variable = newValue; }

ExcelValue user_inputs_e41() {
  static ExcelValue result;
  if(variable_set[162] == 1) { return result;}
  result = C18;
  variable_set[162] = 1;
  return result;
}

ExcelValue user_inputs_f41() {
  static ExcelValue result;
  if(variable_set[163] == 1) { return result;}
  result = BLANK;
  variable_set[163] = 1;
  return result;
}

ExcelValue user_inputs_c42() {
  static ExcelValue result;
  if(variable_set[164] == 1) { return result;}
  result = C68;
  variable_set[164] = 1;
  return result;
}

ExcelValue user_inputs_d42_default() {
  return C24;
}
static ExcelValue user_inputs_d42_variable;
ExcelValue user_inputs_d42() { if(variable_set[165] == 1) { return user_inputs_d42_variable; } else { return user_inputs_d42_default(); } }
void set_user_inputs_d42(ExcelValue newValue) { variable_set[165] = 1; user_inputs_d42_variable = newValue; }

ExcelValue user_inputs_e42() {
  static ExcelValue result;
  if(variable_set[166] == 1) { return result;}
  result = C18;
  variable_set[166] = 1;
  return result;
}

ExcelValue user_inputs_f42() {
  static ExcelValue result;
  if(variable_set[167] == 1) { return result;}
  result = BLANK;
  variable_set[167] = 1;
  return result;
}

ExcelValue user_inputs_c43() {
  static ExcelValue result;
  if(variable_set[168] == 1) { return result;}
  result = C69;
  variable_set[168] = 1;
  return result;
}

ExcelValue user_inputs_d43_default() {
  return C24;
}
static ExcelValue user_inputs_d43_variable;
ExcelValue user_inputs_d43() { if(variable_set[169] == 1) { return user_inputs_d43_variable; } else { return user_inputs_d43_default(); } }
void set_user_inputs_d43(ExcelValue newValue) { variable_set[169] = 1; user_inputs_d43_variable = newValue; }

ExcelValue user_inputs_e43() {
  static ExcelValue result;
  if(variable_set[170] == 1) { return result;}
  result = C18;
  variable_set[170] = 1;
  return result;
}

ExcelValue user_inputs_f43() {
  static ExcelValue result;
  if(variable_set[171] == 1) { return result;}
  result = BLANK;
  variable_set[171] = 1;
  return result;
}

ExcelValue user_inputs_b44() {
  static ExcelValue result;
  if(variable_set[172] == 1) { return result;}
  result = C70;
  variable_set[172] = 1;
  return result;
}

ExcelValue user_inputs_c44() {
  static ExcelValue result;
  if(variable_set[173] == 1) { return result;}
  result = C71;
  variable_set[173] = 1;
  return result;
}

ExcelValue user_inputs_d44_default() {
  return C72;
}
static ExcelValue user_inputs_d44_variable;
ExcelValue user_inputs_d44() { if(variable_set[174] == 1) { return user_inputs_d44_variable; } else { return user_inputs_d44_default(); } }
void set_user_inputs_d44(ExcelValue newValue) { variable_set[174] = 1; user_inputs_d44_variable = newValue; }

ExcelValue user_inputs_e44() {
  static ExcelValue result;
  if(variable_set[175] == 1) { return result;}
  result = C73;
  variable_set[175] = 1;
  return result;
}

ExcelValue user_inputs_f44() {
  static ExcelValue result;
  if(variable_set[176] == 1) { return result;}
  result = BLANK;
  variable_set[176] = 1;
  return result;
}

ExcelValue user_inputs_b45() {
  static ExcelValue result;
  if(variable_set[177] == 1) { return result;}
  result = C74;
  variable_set[177] = 1;
  return result;
}

ExcelValue user_inputs_c45() {
  static ExcelValue result;
  if(variable_set[178] == 1) { return result;}
  result = C75;
  variable_set[178] = 1;
  return result;
}

ExcelValue user_inputs_d45_default() {
  return C26;
}
static ExcelValue user_inputs_d45_variable;
ExcelValue user_inputs_d45() { if(variable_set[179] == 1) { return user_inputs_d45_variable; } else { return user_inputs_d45_default(); } }
void set_user_inputs_d45(ExcelValue newValue) { variable_set[179] = 1; user_inputs_d45_variable = newValue; }

ExcelValue user_inputs_e45() {
  static ExcelValue result;
  if(variable_set[180] == 1) { return result;}
  result = C18;
  variable_set[180] = 1;
  return result;
}

ExcelValue user_inputs_f45() {
  static ExcelValue result;
  if(variable_set[181] == 1) { return result;}
  result = BLANK;
  variable_set[181] = 1;
  return result;
}

ExcelValue user_inputs_c46() {
  static ExcelValue result;
  if(variable_set[182] == 1) { return result;}
  result = C76;
  variable_set[182] = 1;
  return result;
}

ExcelValue user_inputs_d46() {
  static ExcelValue result;
  if(variable_set[183] == 1) { return result;}
  result = C17;
  variable_set[183] = 1;
  return result;
}

ExcelValue user_inputs_e46() {
  static ExcelValue result;
  if(variable_set[184] == 1) { return result;}
  result = C73;
  variable_set[184] = 1;
  return result;
}

ExcelValue user_inputs_f46() {
  static ExcelValue result;
  if(variable_set[185] == 1) { return result;}
  result = BLANK;
  variable_set[185] = 1;
  return result;
}

// end User inputs

// start User output preferences
// end User output preferences

// start Detailed lever guides
// end Detailed lever guides

// start Outputs - Climate impacts
ExcelValue outputs_climate_impacts_b2() {
  static ExcelValue result;
  if(variable_set[186] == 1) { return result;}
  result = C77;
  variable_set[186] = 1;
  return result;
}

ExcelValue outputs_climate_impacts_c2() {
  static ExcelValue result;
  if(variable_set[187] == 1) { return result;}
  result = C78;
  variable_set[187] = 1;
  return result;
}

ExcelValue outputs_climate_impacts_e2() {
  static ExcelValue result;
  if(variable_set[188] == 1) { return result;}
  result = C2;
  variable_set[188] = 1;
  return result;
}

ExcelValue outputs_climate_impacts_b3() {
  static ExcelValue result;
  if(variable_set[189] == 1) { return result;}
  result = C79;
  variable_set[189] = 1;
  return result;
}

ExcelValue outputs_climate_impacts_b4() {
  static ExcelValue result;
  if(variable_set[190] == 1) { return result;}
  result = C80;
  variable_set[190] = 1;
  return result;
}

// end Outputs - Climate impacts

// start Outputs - Emissions
ExcelValue outputs_emissions_b2() {
  static ExcelValue result;
  if(variable_set[191] == 1) { return result;}
  result = C77;
  variable_set[191] = 1;
  return result;
}

ExcelValue outputs_emissions_c2() {
  static ExcelValue result;
  if(variable_set[192] == 1) { return result;}
  result = C78;
  variable_set[192] = 1;
  return result;
}

ExcelValue outputs_emissions_e2() {
  static ExcelValue result;
  if(variable_set[193] == 1) { return result;}
  result = C2;
  variable_set[193] = 1;
  return result;
}

ExcelValue outputs_emissions_k2() {
  static ExcelValue result;
  if(variable_set[194] == 1) { return result;}
  result = C81;
  variable_set[194] = 1;
  return result;
}

ExcelValue outputs_emissions_b3() {
  static ExcelValue result;
  if(variable_set[195] == 1) { return result;}
  result = C82;
  variable_set[195] = 1;
  return result;
}

ExcelValue outputs_emissions_k3() {
  static ExcelValue result;
  if(variable_set[196] == 1) { return result;}
  result = C83;
  variable_set[196] = 1;
  return result;
}

ExcelValue outputs_emissions_c5() {
  static ExcelValue result;
  if(variable_set[197] == 1) { return result;}
  result = C84;
  variable_set[197] = 1;
  return result;
}

ExcelValue outputs_emissions_k5() {
  static ExcelValue result;
  if(variable_set[198] == 1) { return result;}
  result = C85;
  variable_set[198] = 1;
  return result;
}

ExcelValue outputs_emissions_c7() {
  static ExcelValue result;
  if(variable_set[199] == 1) { return result;}
  result = C86;
  variable_set[199] = 1;
  return result;
}

ExcelValue outputs_emissions_d7() {
  static ExcelValue result;
  if(variable_set[200] == 1) { return result;}
  result = C11;
  variable_set[200] = 1;
  return result;
}

ExcelValue outputs_emissions_f7() {
  static ExcelValue result;
  if(variable_set[201] == 1) { return result;}
  result = C12;
  variable_set[201] = 1;
  return result;
}

ExcelValue outputs_emissions_k7() {
  static ExcelValue result;
  if(variable_set[202] == 1) { return result;}
  result = C87;
  variable_set[202] = 1;
  return result;
}

ExcelValue outputs_emissions_c8() {
  static ExcelValue result;
  if(variable_set[203] == 1) { return result;}
  result = C17;
  variable_set[203] = 1;
  return result;
}

ExcelValue outputs_emissions_d8() {
  static ExcelValue result;
  if(variable_set[204] == 1) { return result;}
  result = C71;
  variable_set[204] = 1;
  return result;
}

ExcelValue outputs_emissions_f8() {
  static ExcelValue result;
  if(variable_set[205] == 1) { return result;}
  result = C88;
  variable_set[205] = 1;
  return result;
}

ExcelValue outputs_emissions_c11() {
  static ExcelValue result;
  if(variable_set[206] == 1) { return result;}
  result = C89;
  variable_set[206] = 1;
  return result;
}

ExcelValue outputs_emissions_c13() {
  static ExcelValue result;
  if(variable_set[207] == 1) { return result;}
  result = C12;
  variable_set[207] = 1;
  return result;
}

ExcelValue outputs_emissions_c14() {
  static ExcelValue result;
  if(variable_set[208] == 1) { return result;}
  result = C72;
  variable_set[208] = 1;
  return result;
}

ExcelValue outputs_emissions_d14() {
  static ExcelValue result;
  if(variable_set[209] == 1) { return result;}
  result = C90;
  variable_set[209] = 1;
  return result;
}

ExcelValue outputs_emissions_c15() {
  static ExcelValue result;
  if(variable_set[210] == 1) { return result;}
  result = C91;
  variable_set[210] = 1;
  return result;
}

ExcelValue outputs_emissions_d15() {
  static ExcelValue result;
  if(variable_set[211] == 1) { return result;}
  result = C92;
  variable_set[211] = 1;
  return result;
}

ExcelValue outputs_emissions_c16() {
  static ExcelValue result;
  if(variable_set[212] == 1) { return result;}
  result = C73;
  variable_set[212] = 1;
  return result;
}

ExcelValue outputs_emissions_d16() {
  static ExcelValue result;
  if(variable_set[213] == 1) { return result;}
  result = C93;
  variable_set[213] = 1;
  return result;
}

ExcelValue outputs_emissions_c19() {
  static ExcelValue result;
  if(variable_set[214] == 1) { return result;}
  result = C94;
  variable_set[214] = 1;
  return result;
}

ExcelValue outputs_emissions_c21() {
  static ExcelValue result;
  if(variable_set[215] == 1) { return result;}
  result = C95;
  variable_set[215] = 1;
  return result;
}

ExcelValue outputs_emissions_d21() {
  static ExcelValue result;
  if(variable_set[216] == 1) { return result;}
  result = C96;
  variable_set[216] = 1;
  return result;
}

ExcelValue outputs_emissions_g21() {
  static ExcelValue result;
  if(variable_set[217] == 1) { return result;}
  result = C97;
  variable_set[217] = 1;
  return result;
}

ExcelValue outputs_emissions_b26() {
  static ExcelValue result;
  if(variable_set[218] == 1) { return result;}
  result = C98;
  variable_set[218] = 1;
  return result;
}

ExcelValue outputs_emissions_c26() {
  static ExcelValue result;
  if(variable_set[219] == 1) { return result;}
  result = C99;
  variable_set[219] = 1;
  return result;
}

ExcelValue outputs_emissions_c28() {
  static ExcelValue result;
  if(variable_set[220] == 1) { return result;}
  result = C100;
  variable_set[220] = 1;
  return result;
}

ExcelValue outputs_emissions_aj28() {
  static ExcelValue result;
  if(variable_set[221] == 1) { return result;}
  result = C101;
  variable_set[221] = 1;
  return result;
}

ExcelValue outputs_emissions_h29() {
  static ExcelValue result;
  if(variable_set[222] == 1) { return result;}
  result = C102;
  variable_set[222] = 1;
  return result;
}

ExcelValue outputs_emissions_r29() {
  static ExcelValue result;
  if(variable_set[223] == 1) { return result;}
  result = C103;
  variable_set[223] = 1;
  return result;
}

ExcelValue outputs_emissions_aa29() {
  static ExcelValue result;
  if(variable_set[224] == 1) { return result;}
  result = C104;
  variable_set[224] = 1;
  return result;
}

ExcelValue outputs_emissions_d30() {
  static ExcelValue result;
  if(variable_set[225] == 1) { return result;}
  result = C105;
  variable_set[225] = 1;
  return result;
}

ExcelValue outputs_emissions_h30() {
  static ExcelValue result;
  if(variable_set[226] == 1) { return result;}
  result = C106;
  variable_set[226] = 1;
  return result;
}

ExcelValue outputs_emissions_i30() {
  static ExcelValue result;
  if(variable_set[227] == 1) { return result;}
  result = C107;
  variable_set[227] = 1;
  return result;
}

ExcelValue outputs_emissions_j30() {
  static ExcelValue result;
  if(variable_set[228] == 1) { return result;}
  result = C108;
  variable_set[228] = 1;
  return result;
}

ExcelValue outputs_emissions_k30() {
  static ExcelValue result;
  if(variable_set[229] == 1) { return result;}
  result = C109;
  variable_set[229] = 1;
  return result;
}

ExcelValue outputs_emissions_l30() {
  static ExcelValue result;
  if(variable_set[230] == 1) { return result;}
  result = C110;
  variable_set[230] = 1;
  return result;
}

ExcelValue outputs_emissions_m30() {
  static ExcelValue result;
  if(variable_set[231] == 1) { return result;}
  result = C111;
  variable_set[231] = 1;
  return result;
}

ExcelValue outputs_emissions_n30() {
  static ExcelValue result;
  if(variable_set[232] == 1) { return result;}
  result = C112;
  variable_set[232] = 1;
  return result;
}

ExcelValue outputs_emissions_o30() {
  static ExcelValue result;
  if(variable_set[233] == 1) { return result;}
  result = C113;
  variable_set[233] = 1;
  return result;
}

ExcelValue outputs_emissions_p30() {
  static ExcelValue result;
  if(variable_set[234] == 1) { return result;}
  result = C114;
  variable_set[234] = 1;
  return result;
}

ExcelValue outputs_emissions_r30() {
  static ExcelValue result;
  if(variable_set[235] == 1) { return result;}
  result = C115;
  variable_set[235] = 1;
  return result;
}

ExcelValue outputs_emissions_s30() {
  static ExcelValue result;
  if(variable_set[236] == 1) { return result;}
  result = C116;
  variable_set[236] = 1;
  return result;
}

ExcelValue outputs_emissions_t30() {
  static ExcelValue result;
  if(variable_set[237] == 1) { return result;}
  result = C117;
  variable_set[237] = 1;
  return result;
}

ExcelValue outputs_emissions_u30() {
  static ExcelValue result;
  if(variable_set[238] == 1) { return result;}
  result = C118;
  variable_set[238] = 1;
  return result;
}

ExcelValue outputs_emissions_v30() {
  static ExcelValue result;
  if(variable_set[239] == 1) { return result;}
  result = C119;
  variable_set[239] = 1;
  return result;
}

ExcelValue outputs_emissions_w30() {
  static ExcelValue result;
  if(variable_set[240] == 1) { return result;}
  result = C120;
  variable_set[240] = 1;
  return result;
}

ExcelValue outputs_emissions_x30() {
  static ExcelValue result;
  if(variable_set[241] == 1) { return result;}
  result = C121;
  variable_set[241] = 1;
  return result;
}

ExcelValue outputs_emissions_y30() {
  static ExcelValue result;
  if(variable_set[242] == 1) { return result;}
  result = C122;
  variable_set[242] = 1;
  return result;
}

ExcelValue outputs_emissions_z30() {
  static ExcelValue result;
  if(variable_set[243] == 1) { return result;}
  result = C123;
  variable_set[243] = 1;
  return result;
}

ExcelValue outputs_emissions_aa30() {
  static ExcelValue result;
  if(variable_set[244] == 1) { return result;}
  result = C124;
  variable_set[244] = 1;
  return result;
}

ExcelValue outputs_emissions_ab30() {
  static ExcelValue result;
  if(variable_set[245] == 1) { return result;}
  result = C125;
  variable_set[245] = 1;
  return result;
}

ExcelValue outputs_emissions_ac30() {
  static ExcelValue result;
  if(variable_set[246] == 1) { return result;}
  result = C126;
  variable_set[246] = 1;
  return result;
}

ExcelValue outputs_emissions_ad30() {
  static ExcelValue result;
  if(variable_set[247] == 1) { return result;}
  result = C127;
  variable_set[247] = 1;
  return result;
}

ExcelValue outputs_emissions_ae30() {
  static ExcelValue result;
  if(variable_set[248] == 1) { return result;}
  result = C128;
  variable_set[248] = 1;
  return result;
}

ExcelValue outputs_emissions_af30() {
  static ExcelValue result;
  if(variable_set[249] == 1) { return result;}
  result = C129;
  variable_set[249] = 1;
  return result;
}

ExcelValue outputs_emissions_ag30() {
  static ExcelValue result;
  if(variable_set[250] == 1) { return result;}
  result = C130;
  variable_set[250] = 1;
  return result;
}

ExcelValue outputs_emissions_ah30() {
  static ExcelValue result;
  if(variable_set[251] == 1) { return result;}
  result = C131;
  variable_set[251] = 1;
  return result;
}

ExcelValue outputs_emissions_ai30() {
  static ExcelValue result;
  if(variable_set[252] == 1) { return result;}
  result = C132;
  variable_set[252] = 1;
  return result;
}

ExcelValue outputs_emissions_aj30() {
  static ExcelValue result;
  if(variable_set[253] == 1) { return result;}
  result = C133;
  variable_set[253] = 1;
  return result;
}

ExcelValue outputs_emissions_c31() {
  static ExcelValue result;
  if(variable_set[254] == 1) { return result;}
  result = C134;
  variable_set[254] = 1;
  return result;
}

ExcelValue outputs_emissions_d31() {
  static ExcelValue result;
  if(variable_set[255] == 1) { return result;}
  result = C135;
  variable_set[255] = 1;
  return result;
}

ExcelValue outputs_emissions_h31() {
  static ExcelValue result;
  if(variable_set[256] == 1) { return result;}
  result = C136;
  variable_set[256] = 1;
  return result;
}

ExcelValue outputs_emissions_i31() {
  static ExcelValue result;
  if(variable_set[257] == 1) { return result;}
  result = C136;
  variable_set[257] = 1;
  return result;
}

ExcelValue outputs_emissions_j31() {
  static ExcelValue result;
  if(variable_set[258] == 1) { return result;}
  result = C136;
  variable_set[258] = 1;
  return result;
}

ExcelValue outputs_emissions_k31() {
  static ExcelValue result;
  if(variable_set[259] == 1) { return result;}
  result = C136;
  variable_set[259] = 1;
  return result;
}

ExcelValue outputs_emissions_l31() {
  static ExcelValue result;
  if(variable_set[260] == 1) { return result;}
  result = C136;
  variable_set[260] = 1;
  return result;
}

ExcelValue outputs_emissions_m31() {
  static ExcelValue result;
  if(variable_set[261] == 1) { return result;}
  result = C136;
  variable_set[261] = 1;
  return result;
}

ExcelValue outputs_emissions_n31() {
  static ExcelValue result;
  if(variable_set[262] == 1) { return result;}
  result = C136;
  variable_set[262] = 1;
  return result;
}

ExcelValue outputs_emissions_o31() {
  static ExcelValue result;
  if(variable_set[263] == 1) { return result;}
  result = C136;
  variable_set[263] = 1;
  return result;
}

ExcelValue outputs_emissions_p31() {
  static ExcelValue result;
  if(variable_set[264] == 1) { return result;}
  result = C136;
  variable_set[264] = 1;
  return result;
}

ExcelValue outputs_emissions_r31() {
  static ExcelValue result;
  if(variable_set[265] == 1) { return result;}
  result = C136;
  variable_set[265] = 1;
  return result;
}

ExcelValue outputs_emissions_s31() {
  static ExcelValue result;
  if(variable_set[266] == 1) { return result;}
  result = C136;
  variable_set[266] = 1;
  return result;
}

ExcelValue outputs_emissions_t31() {
  static ExcelValue result;
  if(variable_set[267] == 1) { return result;}
  result = C136;
  variable_set[267] = 1;
  return result;
}

ExcelValue outputs_emissions_u31() {
  static ExcelValue result;
  if(variable_set[268] == 1) { return result;}
  result = C136;
  variable_set[268] = 1;
  return result;
}

ExcelValue outputs_emissions_v31() {
  static ExcelValue result;
  if(variable_set[269] == 1) { return result;}
  result = C136;
  variable_set[269] = 1;
  return result;
}

ExcelValue outputs_emissions_w31() {
  static ExcelValue result;
  if(variable_set[270] == 1) { return result;}
  result = C136;
  variable_set[270] = 1;
  return result;
}

ExcelValue outputs_emissions_x31() {
  static ExcelValue result;
  if(variable_set[271] == 1) { return result;}
  result = C136;
  variable_set[271] = 1;
  return result;
}

ExcelValue outputs_emissions_y31() {
  static ExcelValue result;
  if(variable_set[272] == 1) { return result;}
  result = C136;
  variable_set[272] = 1;
  return result;
}

ExcelValue outputs_emissions_z31() {
  static ExcelValue result;
  if(variable_set[273] == 1) { return result;}
  result = C136;
  variable_set[273] = 1;
  return result;
}

ExcelValue outputs_emissions_aa31() {
  static ExcelValue result;
  if(variable_set[274] == 1) { return result;}
  result = C136;
  variable_set[274] = 1;
  return result;
}

ExcelValue outputs_emissions_ab31() {
  static ExcelValue result;
  if(variable_set[275] == 1) { return result;}
  result = C136;
  variable_set[275] = 1;
  return result;
}

ExcelValue outputs_emissions_ac31() {
  static ExcelValue result;
  if(variable_set[276] == 1) { return result;}
  result = C136;
  variable_set[276] = 1;
  return result;
}

ExcelValue outputs_emissions_ad31() {
  static ExcelValue result;
  if(variable_set[277] == 1) { return result;}
  result = C136;
  variable_set[277] = 1;
  return result;
}

ExcelValue outputs_emissions_ae31() {
  static ExcelValue result;
  if(variable_set[278] == 1) { return result;}
  result = C136;
  variable_set[278] = 1;
  return result;
}

ExcelValue outputs_emissions_af31() {
  static ExcelValue result;
  if(variable_set[279] == 1) { return result;}
  result = C136;
  variable_set[279] = 1;
  return result;
}

ExcelValue outputs_emissions_ag31() {
  static ExcelValue result;
  if(variable_set[280] == 1) { return result;}
  result = C136;
  variable_set[280] = 1;
  return result;
}

ExcelValue outputs_emissions_ah31() {
  static ExcelValue result;
  if(variable_set[281] == 1) { return result;}
  result = C136;
  variable_set[281] = 1;
  return result;
}

ExcelValue outputs_emissions_ai31() {
  static ExcelValue result;
  if(variable_set[282] == 1) { return result;}
  result = C136;
  variable_set[282] = 1;
  return result;
}

ExcelValue outputs_emissions_aj31() {
  static ExcelValue result;
  if(variable_set[283] == 1) { return result;}
  result = C136;
  variable_set[283] = 1;
  return result;
}

ExcelValue outputs_emissions_c32() {
  static ExcelValue result;
  if(variable_set[284] == 1) { return result;}
  result = C137;
  variable_set[284] = 1;
  return result;
}

ExcelValue outputs_emissions_d32() {
  static ExcelValue result;
  if(variable_set[285] == 1) { return result;}
  result = C138;
  variable_set[285] = 1;
  return result;
}

ExcelValue outputs_emissions_h32() {
  static ExcelValue result;
  if(variable_set[286] == 1) { return result;}
  result = C136;
  variable_set[286] = 1;
  return result;
}

ExcelValue outputs_emissions_i32() {
  static ExcelValue result;
  if(variable_set[287] == 1) { return result;}
  result = C136;
  variable_set[287] = 1;
  return result;
}

ExcelValue outputs_emissions_j32() {
  static ExcelValue result;
  if(variable_set[288] == 1) { return result;}
  result = C136;
  variable_set[288] = 1;
  return result;
}

ExcelValue outputs_emissions_k32() {
  static ExcelValue result;
  if(variable_set[289] == 1) { return result;}
  result = C136;
  variable_set[289] = 1;
  return result;
}

ExcelValue outputs_emissions_l32() {
  static ExcelValue result;
  if(variable_set[290] == 1) { return result;}
  result = C136;
  variable_set[290] = 1;
  return result;
}

ExcelValue outputs_emissions_m32() {
  static ExcelValue result;
  if(variable_set[291] == 1) { return result;}
  result = C136;
  variable_set[291] = 1;
  return result;
}

ExcelValue outputs_emissions_n32() {
  static ExcelValue result;
  if(variable_set[292] == 1) { return result;}
  result = C136;
  variable_set[292] = 1;
  return result;
}

ExcelValue outputs_emissions_o32() {
  static ExcelValue result;
  if(variable_set[293] == 1) { return result;}
  result = C136;
  variable_set[293] = 1;
  return result;
}

ExcelValue outputs_emissions_p32() {
  static ExcelValue result;
  if(variable_set[294] == 1) { return result;}
  result = C136;
  variable_set[294] = 1;
  return result;
}

ExcelValue outputs_emissions_r32() {
  static ExcelValue result;
  if(variable_set[295] == 1) { return result;}
  result = C136;
  variable_set[295] = 1;
  return result;
}

ExcelValue outputs_emissions_s32() {
  static ExcelValue result;
  if(variable_set[296] == 1) { return result;}
  result = C136;
  variable_set[296] = 1;
  return result;
}

ExcelValue outputs_emissions_t32() {
  static ExcelValue result;
  if(variable_set[297] == 1) { return result;}
  result = C136;
  variable_set[297] = 1;
  return result;
}

ExcelValue outputs_emissions_u32() {
  static ExcelValue result;
  if(variable_set[298] == 1) { return result;}
  result = C136;
  variable_set[298] = 1;
  return result;
}

ExcelValue outputs_emissions_v32() {
  static ExcelValue result;
  if(variable_set[299] == 1) { return result;}
  result = C136;
  variable_set[299] = 1;
  return result;
}

ExcelValue outputs_emissions_w32() {
  static ExcelValue result;
  if(variable_set[300] == 1) { return result;}
  result = C136;
  variable_set[300] = 1;
  return result;
}

ExcelValue outputs_emissions_x32() {
  static ExcelValue result;
  if(variable_set[301] == 1) { return result;}
  result = C136;
  variable_set[301] = 1;
  return result;
}

ExcelValue outputs_emissions_y32() {
  static ExcelValue result;
  if(variable_set[302] == 1) { return result;}
  result = C136;
  variable_set[302] = 1;
  return result;
}

ExcelValue outputs_emissions_z32() {
  static ExcelValue result;
  if(variable_set[303] == 1) { return result;}
  result = C136;
  variable_set[303] = 1;
  return result;
}

ExcelValue outputs_emissions_aa32() {
  static ExcelValue result;
  if(variable_set[304] == 1) { return result;}
  result = C136;
  variable_set[304] = 1;
  return result;
}

ExcelValue outputs_emissions_ab32() {
  static ExcelValue result;
  if(variable_set[305] == 1) { return result;}
  result = C136;
  variable_set[305] = 1;
  return result;
}

ExcelValue outputs_emissions_ac32() {
  static ExcelValue result;
  if(variable_set[306] == 1) { return result;}
  result = C136;
  variable_set[306] = 1;
  return result;
}

ExcelValue outputs_emissions_ad32() {
  static ExcelValue result;
  if(variable_set[307] == 1) { return result;}
  result = C136;
  variable_set[307] = 1;
  return result;
}

ExcelValue outputs_emissions_ae32() {
  static ExcelValue result;
  if(variable_set[308] == 1) { return result;}
  result = C136;
  variable_set[308] = 1;
  return result;
}

ExcelValue outputs_emissions_af32() {
  static ExcelValue result;
  if(variable_set[309] == 1) { return result;}
  result = C136;
  variable_set[309] = 1;
  return result;
}

ExcelValue outputs_emissions_ag32() {
  static ExcelValue result;
  if(variable_set[310] == 1) { return result;}
  result = C136;
  variable_set[310] = 1;
  return result;
}

ExcelValue outputs_emissions_ah32() {
  static ExcelValue result;
  if(variable_set[311] == 1) { return result;}
  result = C136;
  variable_set[311] = 1;
  return result;
}

ExcelValue outputs_emissions_ai32() {
  static ExcelValue result;
  if(variable_set[312] == 1) { return result;}
  result = C136;
  variable_set[312] = 1;
  return result;
}

ExcelValue outputs_emissions_aj32() {
  static ExcelValue result;
  if(variable_set[313] == 1) { return result;}
  result = C136;
  variable_set[313] = 1;
  return result;
}

ExcelValue outputs_emissions_c33() {
  static ExcelValue result;
  if(variable_set[314] == 1) { return result;}
  result = C139;
  variable_set[314] = 1;
  return result;
}

ExcelValue outputs_emissions_d33() {
  static ExcelValue result;
  if(variable_set[315] == 1) { return result;}
  result = C140;
  variable_set[315] = 1;
  return result;
}

ExcelValue outputs_emissions_h33() {
  static ExcelValue result;
  if(variable_set[316] == 1) { return result;}
  result = C136;
  variable_set[316] = 1;
  return result;
}

ExcelValue outputs_emissions_i33() {
  static ExcelValue result;
  if(variable_set[317] == 1) { return result;}
  result = C136;
  variable_set[317] = 1;
  return result;
}

ExcelValue outputs_emissions_j33() {
  static ExcelValue result;
  if(variable_set[318] == 1) { return result;}
  result = C136;
  variable_set[318] = 1;
  return result;
}

ExcelValue outputs_emissions_k33() {
  static ExcelValue result;
  if(variable_set[319] == 1) { return result;}
  result = C136;
  variable_set[319] = 1;
  return result;
}

ExcelValue outputs_emissions_l33() {
  static ExcelValue result;
  if(variable_set[320] == 1) { return result;}
  result = C136;
  variable_set[320] = 1;
  return result;
}

ExcelValue outputs_emissions_m33() {
  static ExcelValue result;
  if(variable_set[321] == 1) { return result;}
  result = C136;
  variable_set[321] = 1;
  return result;
}

ExcelValue outputs_emissions_n33() {
  static ExcelValue result;
  if(variable_set[322] == 1) { return result;}
  result = C136;
  variable_set[322] = 1;
  return result;
}

ExcelValue outputs_emissions_o33() {
  static ExcelValue result;
  if(variable_set[323] == 1) { return result;}
  result = C136;
  variable_set[323] = 1;
  return result;
}

ExcelValue outputs_emissions_p33() {
  static ExcelValue result;
  if(variable_set[324] == 1) { return result;}
  result = C136;
  variable_set[324] = 1;
  return result;
}

ExcelValue outputs_emissions_r33() {
  static ExcelValue result;
  if(variable_set[325] == 1) { return result;}
  result = C136;
  variable_set[325] = 1;
  return result;
}

ExcelValue outputs_emissions_s33() {
  static ExcelValue result;
  if(variable_set[326] == 1) { return result;}
  result = C136;
  variable_set[326] = 1;
  return result;
}

ExcelValue outputs_emissions_t33() {
  static ExcelValue result;
  if(variable_set[327] == 1) { return result;}
  result = C136;
  variable_set[327] = 1;
  return result;
}

ExcelValue outputs_emissions_u33() {
  static ExcelValue result;
  if(variable_set[328] == 1) { return result;}
  result = C136;
  variable_set[328] = 1;
  return result;
}

ExcelValue outputs_emissions_v33() {
  static ExcelValue result;
  if(variable_set[329] == 1) { return result;}
  result = C136;
  variable_set[329] = 1;
  return result;
}

ExcelValue outputs_emissions_w33() {
  static ExcelValue result;
  if(variable_set[330] == 1) { return result;}
  result = C136;
  variable_set[330] = 1;
  return result;
}

ExcelValue outputs_emissions_x33() {
  static ExcelValue result;
  if(variable_set[331] == 1) { return result;}
  result = C136;
  variable_set[331] = 1;
  return result;
}

ExcelValue outputs_emissions_y33() {
  static ExcelValue result;
  if(variable_set[332] == 1) { return result;}
  result = C136;
  variable_set[332] = 1;
  return result;
}

ExcelValue outputs_emissions_z33() {
  static ExcelValue result;
  if(variable_set[333] == 1) { return result;}
  result = C136;
  variable_set[333] = 1;
  return result;
}

ExcelValue outputs_emissions_aa33() {
  static ExcelValue result;
  if(variable_set[334] == 1) { return result;}
  result = C136;
  variable_set[334] = 1;
  return result;
}

ExcelValue outputs_emissions_ab33() {
  static ExcelValue result;
  if(variable_set[335] == 1) { return result;}
  result = C136;
  variable_set[335] = 1;
  return result;
}

ExcelValue outputs_emissions_ac33() {
  static ExcelValue result;
  if(variable_set[336] == 1) { return result;}
  result = C136;
  variable_set[336] = 1;
  return result;
}

ExcelValue outputs_emissions_ad33() {
  static ExcelValue result;
  if(variable_set[337] == 1) { return result;}
  result = C136;
  variable_set[337] = 1;
  return result;
}

ExcelValue outputs_emissions_ae33() {
  static ExcelValue result;
  if(variable_set[338] == 1) { return result;}
  result = C136;
  variable_set[338] = 1;
  return result;
}

ExcelValue outputs_emissions_af33() {
  static ExcelValue result;
  if(variable_set[339] == 1) { return result;}
  result = C136;
  variable_set[339] = 1;
  return result;
}

ExcelValue outputs_emissions_ag33() {
  static ExcelValue result;
  if(variable_set[340] == 1) { return result;}
  result = C136;
  variable_set[340] = 1;
  return result;
}

ExcelValue outputs_emissions_ah33() {
  static ExcelValue result;
  if(variable_set[341] == 1) { return result;}
  result = C136;
  variable_set[341] = 1;
  return result;
}

ExcelValue outputs_emissions_ai33() {
  static ExcelValue result;
  if(variable_set[342] == 1) { return result;}
  result = C136;
  variable_set[342] = 1;
  return result;
}

ExcelValue outputs_emissions_aj33() {
  static ExcelValue result;
  if(variable_set[343] == 1) { return result;}
  result = C136;
  variable_set[343] = 1;
  return result;
}

ExcelValue outputs_emissions_c34() {
  static ExcelValue result;
  if(variable_set[344] == 1) { return result;}
  result = C141;
  variable_set[344] = 1;
  return result;
}

ExcelValue outputs_emissions_d34() {
  static ExcelValue result;
  if(variable_set[345] == 1) { return result;}
  result = C142;
  variable_set[345] = 1;
  return result;
}

ExcelValue outputs_emissions_h34() {
  static ExcelValue result;
  if(variable_set[346] == 1) { return result;}
  result = C136;
  variable_set[346] = 1;
  return result;
}

ExcelValue outputs_emissions_i34() {
  static ExcelValue result;
  if(variable_set[347] == 1) { return result;}
  result = C136;
  variable_set[347] = 1;
  return result;
}

ExcelValue outputs_emissions_j34() {
  static ExcelValue result;
  if(variable_set[348] == 1) { return result;}
  result = C136;
  variable_set[348] = 1;
  return result;
}

ExcelValue outputs_emissions_k34() {
  static ExcelValue result;
  if(variable_set[349] == 1) { return result;}
  result = C136;
  variable_set[349] = 1;
  return result;
}

ExcelValue outputs_emissions_l34() {
  static ExcelValue result;
  if(variable_set[350] == 1) { return result;}
  result = C136;
  variable_set[350] = 1;
  return result;
}

ExcelValue outputs_emissions_m34() {
  static ExcelValue result;
  if(variable_set[351] == 1) { return result;}
  result = C136;
  variable_set[351] = 1;
  return result;
}

ExcelValue outputs_emissions_n34() {
  static ExcelValue result;
  if(variable_set[352] == 1) { return result;}
  result = C136;
  variable_set[352] = 1;
  return result;
}

ExcelValue outputs_emissions_o34() {
  static ExcelValue result;
  if(variable_set[353] == 1) { return result;}
  result = C136;
  variable_set[353] = 1;
  return result;
}

ExcelValue outputs_emissions_p34() {
  static ExcelValue result;
  if(variable_set[354] == 1) { return result;}
  result = C136;
  variable_set[354] = 1;
  return result;
}

ExcelValue outputs_emissions_r34() {
  static ExcelValue result;
  if(variable_set[355] == 1) { return result;}
  result = C136;
  variable_set[355] = 1;
  return result;
}

ExcelValue outputs_emissions_s34() {
  static ExcelValue result;
  if(variable_set[356] == 1) { return result;}
  result = C136;
  variable_set[356] = 1;
  return result;
}

ExcelValue outputs_emissions_t34() {
  static ExcelValue result;
  if(variable_set[357] == 1) { return result;}
  result = C136;
  variable_set[357] = 1;
  return result;
}

ExcelValue outputs_emissions_u34() {
  static ExcelValue result;
  if(variable_set[358] == 1) { return result;}
  result = C136;
  variable_set[358] = 1;
  return result;
}

ExcelValue outputs_emissions_v34() {
  static ExcelValue result;
  if(variable_set[359] == 1) { return result;}
  result = C136;
  variable_set[359] = 1;
  return result;
}

ExcelValue outputs_emissions_w34() {
  static ExcelValue result;
  if(variable_set[360] == 1) { return result;}
  result = C136;
  variable_set[360] = 1;
  return result;
}

ExcelValue outputs_emissions_x34() {
  static ExcelValue result;
  if(variable_set[361] == 1) { return result;}
  result = C136;
  variable_set[361] = 1;
  return result;
}

ExcelValue outputs_emissions_y34() {
  static ExcelValue result;
  if(variable_set[362] == 1) { return result;}
  result = C136;
  variable_set[362] = 1;
  return result;
}

ExcelValue outputs_emissions_z34() {
  static ExcelValue result;
  if(variable_set[363] == 1) { return result;}
  result = C136;
  variable_set[363] = 1;
  return result;
}

ExcelValue outputs_emissions_aa34() {
  static ExcelValue result;
  if(variable_set[364] == 1) { return result;}
  result = C136;
  variable_set[364] = 1;
  return result;
}

ExcelValue outputs_emissions_ab34() {
  static ExcelValue result;
  if(variable_set[365] == 1) { return result;}
  result = C136;
  variable_set[365] = 1;
  return result;
}

ExcelValue outputs_emissions_ac34() {
  static ExcelValue result;
  if(variable_set[366] == 1) { return result;}
  result = C136;
  variable_set[366] = 1;
  return result;
}

ExcelValue outputs_emissions_ad34() {
  static ExcelValue result;
  if(variable_set[367] == 1) { return result;}
  result = C136;
  variable_set[367] = 1;
  return result;
}

ExcelValue outputs_emissions_ae34() {
  static ExcelValue result;
  if(variable_set[368] == 1) { return result;}
  result = C136;
  variable_set[368] = 1;
  return result;
}

ExcelValue outputs_emissions_af34() {
  static ExcelValue result;
  if(variable_set[369] == 1) { return result;}
  result = C136;
  variable_set[369] = 1;
  return result;
}

ExcelValue outputs_emissions_ag34() {
  static ExcelValue result;
  if(variable_set[370] == 1) { return result;}
  result = C136;
  variable_set[370] = 1;
  return result;
}

ExcelValue outputs_emissions_ah34() {
  static ExcelValue result;
  if(variable_set[371] == 1) { return result;}
  result = C136;
  variable_set[371] = 1;
  return result;
}

ExcelValue outputs_emissions_ai34() {
  static ExcelValue result;
  if(variable_set[372] == 1) { return result;}
  result = C136;
  variable_set[372] = 1;
  return result;
}

ExcelValue outputs_emissions_aj34() {
  static ExcelValue result;
  if(variable_set[373] == 1) { return result;}
  result = C136;
  variable_set[373] = 1;
  return result;
}

ExcelValue outputs_emissions_c35() {
  static ExcelValue result;
  if(variable_set[374] == 1) { return result;}
  result = C143;
  variable_set[374] = 1;
  return result;
}

ExcelValue outputs_emissions_d35() {
  static ExcelValue result;
  if(variable_set[375] == 1) { return result;}
  result = C144;
  variable_set[375] = 1;
  return result;
}

ExcelValue outputs_emissions_h35() {
  static ExcelValue result;
  if(variable_set[376] == 1) { return result;}
  result = C136;
  variable_set[376] = 1;
  return result;
}

ExcelValue outputs_emissions_i35() {
  static ExcelValue result;
  if(variable_set[377] == 1) { return result;}
  result = C136;
  variable_set[377] = 1;
  return result;
}

ExcelValue outputs_emissions_j35() {
  static ExcelValue result;
  if(variable_set[378] == 1) { return result;}
  result = C136;
  variable_set[378] = 1;
  return result;
}

ExcelValue outputs_emissions_k35() {
  static ExcelValue result;
  if(variable_set[379] == 1) { return result;}
  result = C136;
  variable_set[379] = 1;
  return result;
}

ExcelValue outputs_emissions_l35() {
  static ExcelValue result;
  if(variable_set[380] == 1) { return result;}
  result = C136;
  variable_set[380] = 1;
  return result;
}

ExcelValue outputs_emissions_m35() {
  static ExcelValue result;
  if(variable_set[381] == 1) { return result;}
  result = C136;
  variable_set[381] = 1;
  return result;
}

ExcelValue outputs_emissions_n35() {
  static ExcelValue result;
  if(variable_set[382] == 1) { return result;}
  result = C136;
  variable_set[382] = 1;
  return result;
}

ExcelValue outputs_emissions_o35() {
  static ExcelValue result;
  if(variable_set[383] == 1) { return result;}
  result = C136;
  variable_set[383] = 1;
  return result;
}

ExcelValue outputs_emissions_p35() {
  static ExcelValue result;
  if(variable_set[384] == 1) { return result;}
  result = C136;
  variable_set[384] = 1;
  return result;
}

ExcelValue outputs_emissions_r35() {
  static ExcelValue result;
  if(variable_set[385] == 1) { return result;}
  result = C136;
  variable_set[385] = 1;
  return result;
}

ExcelValue outputs_emissions_s35() {
  static ExcelValue result;
  if(variable_set[386] == 1) { return result;}
  result = C136;
  variable_set[386] = 1;
  return result;
}

ExcelValue outputs_emissions_t35() {
  static ExcelValue result;
  if(variable_set[387] == 1) { return result;}
  result = C136;
  variable_set[387] = 1;
  return result;
}

ExcelValue outputs_emissions_u35() {
  static ExcelValue result;
  if(variable_set[388] == 1) { return result;}
  result = C136;
  variable_set[388] = 1;
  return result;
}

ExcelValue outputs_emissions_v35() {
  static ExcelValue result;
  if(variable_set[389] == 1) { return result;}
  result = C136;
  variable_set[389] = 1;
  return result;
}

ExcelValue outputs_emissions_w35() {
  static ExcelValue result;
  if(variable_set[390] == 1) { return result;}
  result = C136;
  variable_set[390] = 1;
  return result;
}

ExcelValue outputs_emissions_x35() {
  static ExcelValue result;
  if(variable_set[391] == 1) { return result;}
  result = C136;
  variable_set[391] = 1;
  return result;
}

ExcelValue outputs_emissions_y35() {
  static ExcelValue result;
  if(variable_set[392] == 1) { return result;}
  result = C136;
  variable_set[392] = 1;
  return result;
}

ExcelValue outputs_emissions_z35() {
  static ExcelValue result;
  if(variable_set[393] == 1) { return result;}
  result = C136;
  variable_set[393] = 1;
  return result;
}

ExcelValue outputs_emissions_aa35() {
  static ExcelValue result;
  if(variable_set[394] == 1) { return result;}
  result = C136;
  variable_set[394] = 1;
  return result;
}

ExcelValue outputs_emissions_ab35() {
  static ExcelValue result;
  if(variable_set[395] == 1) { return result;}
  result = C136;
  variable_set[395] = 1;
  return result;
}

ExcelValue outputs_emissions_ac35() {
  static ExcelValue result;
  if(variable_set[396] == 1) { return result;}
  result = C136;
  variable_set[396] = 1;
  return result;
}

ExcelValue outputs_emissions_ad35() {
  static ExcelValue result;
  if(variable_set[397] == 1) { return result;}
  result = C136;
  variable_set[397] = 1;
  return result;
}

ExcelValue outputs_emissions_ae35() {
  static ExcelValue result;
  if(variable_set[398] == 1) { return result;}
  result = C136;
  variable_set[398] = 1;
  return result;
}

ExcelValue outputs_emissions_af35() {
  static ExcelValue result;
  if(variable_set[399] == 1) { return result;}
  result = C136;
  variable_set[399] = 1;
  return result;
}

ExcelValue outputs_emissions_ag35() {
  static ExcelValue result;
  if(variable_set[400] == 1) { return result;}
  result = C136;
  variable_set[400] = 1;
  return result;
}

ExcelValue outputs_emissions_ah35() {
  static ExcelValue result;
  if(variable_set[401] == 1) { return result;}
  result = C136;
  variable_set[401] = 1;
  return result;
}

ExcelValue outputs_emissions_ai35() {
  static ExcelValue result;
  if(variable_set[402] == 1) { return result;}
  result = C136;
  variable_set[402] = 1;
  return result;
}

ExcelValue outputs_emissions_aj35() {
  static ExcelValue result;
  if(variable_set[403] == 1) { return result;}
  result = C136;
  variable_set[403] = 1;
  return result;
}

ExcelValue outputs_emissions_c36() {
  static ExcelValue result;
  if(variable_set[404] == 1) { return result;}
  result = C145;
  variable_set[404] = 1;
  return result;
}

ExcelValue outputs_emissions_d36() {
  static ExcelValue result;
  if(variable_set[405] == 1) { return result;}
  result = C146;
  variable_set[405] = 1;
  return result;
}

ExcelValue outputs_emissions_h36() {
  static ExcelValue result;
  if(variable_set[406] == 1) { return result;}
  result = C136;
  variable_set[406] = 1;
  return result;
}

ExcelValue outputs_emissions_i36() {
  static ExcelValue result;
  if(variable_set[407] == 1) { return result;}
  result = C136;
  variable_set[407] = 1;
  return result;
}

ExcelValue outputs_emissions_j36() {
  static ExcelValue result;
  if(variable_set[408] == 1) { return result;}
  result = C136;
  variable_set[408] = 1;
  return result;
}

ExcelValue outputs_emissions_k36() {
  static ExcelValue result;
  if(variable_set[409] == 1) { return result;}
  result = C136;
  variable_set[409] = 1;
  return result;
}

ExcelValue outputs_emissions_l36() {
  static ExcelValue result;
  if(variable_set[410] == 1) { return result;}
  result = C136;
  variable_set[410] = 1;
  return result;
}

ExcelValue outputs_emissions_m36() {
  static ExcelValue result;
  if(variable_set[411] == 1) { return result;}
  result = C136;
  variable_set[411] = 1;
  return result;
}

ExcelValue outputs_emissions_n36() {
  static ExcelValue result;
  if(variable_set[412] == 1) { return result;}
  result = C136;
  variable_set[412] = 1;
  return result;
}

ExcelValue outputs_emissions_o36() {
  static ExcelValue result;
  if(variable_set[413] == 1) { return result;}
  result = C136;
  variable_set[413] = 1;
  return result;
}

ExcelValue outputs_emissions_p36() {
  static ExcelValue result;
  if(variable_set[414] == 1) { return result;}
  result = C136;
  variable_set[414] = 1;
  return result;
}

ExcelValue outputs_emissions_r36() {
  static ExcelValue result;
  if(variable_set[415] == 1) { return result;}
  result = C136;
  variable_set[415] = 1;
  return result;
}

ExcelValue outputs_emissions_s36() {
  static ExcelValue result;
  if(variable_set[416] == 1) { return result;}
  result = C136;
  variable_set[416] = 1;
  return result;
}

ExcelValue outputs_emissions_t36() {
  static ExcelValue result;
  if(variable_set[417] == 1) { return result;}
  result = C136;
  variable_set[417] = 1;
  return result;
}

ExcelValue outputs_emissions_u36() {
  static ExcelValue result;
  if(variable_set[418] == 1) { return result;}
  result = C136;
  variable_set[418] = 1;
  return result;
}

ExcelValue outputs_emissions_v36() {
  static ExcelValue result;
  if(variable_set[419] == 1) { return result;}
  result = C136;
  variable_set[419] = 1;
  return result;
}

ExcelValue outputs_emissions_w36() {
  static ExcelValue result;
  if(variable_set[420] == 1) { return result;}
  result = C136;
  variable_set[420] = 1;
  return result;
}

ExcelValue outputs_emissions_x36() {
  static ExcelValue result;
  if(variable_set[421] == 1) { return result;}
  result = C136;
  variable_set[421] = 1;
  return result;
}

ExcelValue outputs_emissions_y36() {
  static ExcelValue result;
  if(variable_set[422] == 1) { return result;}
  result = C136;
  variable_set[422] = 1;
  return result;
}

ExcelValue outputs_emissions_z36() {
  static ExcelValue result;
  if(variable_set[423] == 1) { return result;}
  result = C136;
  variable_set[423] = 1;
  return result;
}

ExcelValue outputs_emissions_aa36() {
  static ExcelValue result;
  if(variable_set[424] == 1) { return result;}
  result = C136;
  variable_set[424] = 1;
  return result;
}

ExcelValue outputs_emissions_ab36() {
  static ExcelValue result;
  if(variable_set[425] == 1) { return result;}
  result = C136;
  variable_set[425] = 1;
  return result;
}

ExcelValue outputs_emissions_ac36() {
  static ExcelValue result;
  if(variable_set[426] == 1) { return result;}
  result = C136;
  variable_set[426] = 1;
  return result;
}

ExcelValue outputs_emissions_ad36() {
  static ExcelValue result;
  if(variable_set[427] == 1) { return result;}
  result = C136;
  variable_set[427] = 1;
  return result;
}

ExcelValue outputs_emissions_ae36() {
  static ExcelValue result;
  if(variable_set[428] == 1) { return result;}
  result = C136;
  variable_set[428] = 1;
  return result;
}

ExcelValue outputs_emissions_af36() {
  static ExcelValue result;
  if(variable_set[429] == 1) { return result;}
  result = C136;
  variable_set[429] = 1;
  return result;
}

ExcelValue outputs_emissions_ag36() {
  static ExcelValue result;
  if(variable_set[430] == 1) { return result;}
  result = C136;
  variable_set[430] = 1;
  return result;
}

ExcelValue outputs_emissions_ah36() {
  static ExcelValue result;
  if(variable_set[431] == 1) { return result;}
  result = C136;
  variable_set[431] = 1;
  return result;
}

ExcelValue outputs_emissions_ai36() {
  static ExcelValue result;
  if(variable_set[432] == 1) { return result;}
  result = C136;
  variable_set[432] = 1;
  return result;
}

ExcelValue outputs_emissions_aj36() {
  static ExcelValue result;
  if(variable_set[433] == 1) { return result;}
  result = C136;
  variable_set[433] = 1;
  return result;
}

ExcelValue outputs_emissions_c37() {
  static ExcelValue result;
  if(variable_set[434] == 1) { return result;}
  result = C147;
  variable_set[434] = 1;
  return result;
}

ExcelValue outputs_emissions_d37() {
  static ExcelValue result;
  if(variable_set[435] == 1) { return result;}
  result = C148;
  variable_set[435] = 1;
  return result;
}

ExcelValue outputs_emissions_h37() {
  static ExcelValue result;
  if(variable_set[436] == 1) { return result;}
  result = C136;
  variable_set[436] = 1;
  return result;
}

ExcelValue outputs_emissions_i37() {
  static ExcelValue result;
  if(variable_set[437] == 1) { return result;}
  result = C136;
  variable_set[437] = 1;
  return result;
}

ExcelValue outputs_emissions_j37() {
  static ExcelValue result;
  if(variable_set[438] == 1) { return result;}
  result = C136;
  variable_set[438] = 1;
  return result;
}

ExcelValue outputs_emissions_k37() {
  static ExcelValue result;
  if(variable_set[439] == 1) { return result;}
  result = C136;
  variable_set[439] = 1;
  return result;
}

ExcelValue outputs_emissions_l37() {
  static ExcelValue result;
  if(variable_set[440] == 1) { return result;}
  result = C136;
  variable_set[440] = 1;
  return result;
}

ExcelValue outputs_emissions_m37() {
  static ExcelValue result;
  if(variable_set[441] == 1) { return result;}
  result = C136;
  variable_set[441] = 1;
  return result;
}

ExcelValue outputs_emissions_n37() {
  static ExcelValue result;
  if(variable_set[442] == 1) { return result;}
  result = C136;
  variable_set[442] = 1;
  return result;
}

ExcelValue outputs_emissions_o37() {
  static ExcelValue result;
  if(variable_set[443] == 1) { return result;}
  result = C136;
  variable_set[443] = 1;
  return result;
}

ExcelValue outputs_emissions_p37() {
  static ExcelValue result;
  if(variable_set[444] == 1) { return result;}
  result = C136;
  variable_set[444] = 1;
  return result;
}

ExcelValue outputs_emissions_r37() {
  static ExcelValue result;
  if(variable_set[445] == 1) { return result;}
  result = C136;
  variable_set[445] = 1;
  return result;
}

ExcelValue outputs_emissions_s37() {
  static ExcelValue result;
  if(variable_set[446] == 1) { return result;}
  result = C136;
  variable_set[446] = 1;
  return result;
}

ExcelValue outputs_emissions_t37() {
  static ExcelValue result;
  if(variable_set[447] == 1) { return result;}
  result = C136;
  variable_set[447] = 1;
  return result;
}

ExcelValue outputs_emissions_u37() {
  static ExcelValue result;
  if(variable_set[448] == 1) { return result;}
  result = C136;
  variable_set[448] = 1;
  return result;
}

ExcelValue outputs_emissions_v37() {
  static ExcelValue result;
  if(variable_set[449] == 1) { return result;}
  result = C136;
  variable_set[449] = 1;
  return result;
}

ExcelValue outputs_emissions_w37() {
  static ExcelValue result;
  if(variable_set[450] == 1) { return result;}
  result = C136;
  variable_set[450] = 1;
  return result;
}

ExcelValue outputs_emissions_x37() {
  static ExcelValue result;
  if(variable_set[451] == 1) { return result;}
  result = C136;
  variable_set[451] = 1;
  return result;
}

ExcelValue outputs_emissions_y37() {
  static ExcelValue result;
  if(variable_set[452] == 1) { return result;}
  result = C136;
  variable_set[452] = 1;
  return result;
}

ExcelValue outputs_emissions_z37() {
  static ExcelValue result;
  if(variable_set[453] == 1) { return result;}
  result = C136;
  variable_set[453] = 1;
  return result;
}

ExcelValue outputs_emissions_aa37() {
  static ExcelValue result;
  if(variable_set[454] == 1) { return result;}
  result = C136;
  variable_set[454] = 1;
  return result;
}

ExcelValue outputs_emissions_ab37() {
  static ExcelValue result;
  if(variable_set[455] == 1) { return result;}
  result = C136;
  variable_set[455] = 1;
  return result;
}

ExcelValue outputs_emissions_ac37() {
  static ExcelValue result;
  if(variable_set[456] == 1) { return result;}
  result = C136;
  variable_set[456] = 1;
  return result;
}

ExcelValue outputs_emissions_ad37() {
  static ExcelValue result;
  if(variable_set[457] == 1) { return result;}
  result = C136;
  variable_set[457] = 1;
  return result;
}

ExcelValue outputs_emissions_ae37() {
  static ExcelValue result;
  if(variable_set[458] == 1) { return result;}
  result = C136;
  variable_set[458] = 1;
  return result;
}

ExcelValue outputs_emissions_af37() {
  static ExcelValue result;
  if(variable_set[459] == 1) { return result;}
  result = C136;
  variable_set[459] = 1;
  return result;
}

ExcelValue outputs_emissions_ag37() {
  static ExcelValue result;
  if(variable_set[460] == 1) { return result;}
  result = C136;
  variable_set[460] = 1;
  return result;
}

ExcelValue outputs_emissions_ah37() {
  static ExcelValue result;
  if(variable_set[461] == 1) { return result;}
  result = C136;
  variable_set[461] = 1;
  return result;
}

ExcelValue outputs_emissions_ai37() {
  static ExcelValue result;
  if(variable_set[462] == 1) { return result;}
  result = C136;
  variable_set[462] = 1;
  return result;
}

ExcelValue outputs_emissions_aj37() {
  static ExcelValue result;
  if(variable_set[463] == 1) { return result;}
  result = C136;
  variable_set[463] = 1;
  return result;
}

ExcelValue outputs_emissions_c38() {
  static ExcelValue result;
  if(variable_set[464] == 1) { return result;}
  result = C149;
  variable_set[464] = 1;
  return result;
}

ExcelValue outputs_emissions_d38() {
  static ExcelValue result;
  if(variable_set[465] == 1) { return result;}
  result = C150;
  variable_set[465] = 1;
  return result;
}

ExcelValue outputs_emissions_h38() {
  static ExcelValue result;
  if(variable_set[466] == 1) { return result;}
  result = C136;
  variable_set[466] = 1;
  return result;
}

ExcelValue outputs_emissions_i38() {
  static ExcelValue result;
  if(variable_set[467] == 1) { return result;}
  result = C136;
  variable_set[467] = 1;
  return result;
}

ExcelValue outputs_emissions_j38() {
  static ExcelValue result;
  if(variable_set[468] == 1) { return result;}
  result = C136;
  variable_set[468] = 1;
  return result;
}

ExcelValue outputs_emissions_k38() {
  static ExcelValue result;
  if(variable_set[469] == 1) { return result;}
  result = C136;
  variable_set[469] = 1;
  return result;
}

ExcelValue outputs_emissions_l38() {
  static ExcelValue result;
  if(variable_set[470] == 1) { return result;}
  result = C136;
  variable_set[470] = 1;
  return result;
}

ExcelValue outputs_emissions_m38() {
  static ExcelValue result;
  if(variable_set[471] == 1) { return result;}
  result = C136;
  variable_set[471] = 1;
  return result;
}

ExcelValue outputs_emissions_n38() {
  static ExcelValue result;
  if(variable_set[472] == 1) { return result;}
  result = C136;
  variable_set[472] = 1;
  return result;
}

ExcelValue outputs_emissions_o38() {
  static ExcelValue result;
  if(variable_set[473] == 1) { return result;}
  result = C136;
  variable_set[473] = 1;
  return result;
}

ExcelValue outputs_emissions_p38() {
  static ExcelValue result;
  if(variable_set[474] == 1) { return result;}
  result = C136;
  variable_set[474] = 1;
  return result;
}

ExcelValue outputs_emissions_r38() {
  static ExcelValue result;
  if(variable_set[475] == 1) { return result;}
  result = C136;
  variable_set[475] = 1;
  return result;
}

ExcelValue outputs_emissions_s38() {
  static ExcelValue result;
  if(variable_set[476] == 1) { return result;}
  result = C136;
  variable_set[476] = 1;
  return result;
}

ExcelValue outputs_emissions_t38() {
  static ExcelValue result;
  if(variable_set[477] == 1) { return result;}
  result = C136;
  variable_set[477] = 1;
  return result;
}

ExcelValue outputs_emissions_u38() {
  static ExcelValue result;
  if(variable_set[478] == 1) { return result;}
  result = C136;
  variable_set[478] = 1;
  return result;
}

ExcelValue outputs_emissions_v38() {
  static ExcelValue result;
  if(variable_set[479] == 1) { return result;}
  result = C136;
  variable_set[479] = 1;
  return result;
}

ExcelValue outputs_emissions_w38() {
  static ExcelValue result;
  if(variable_set[480] == 1) { return result;}
  result = C136;
  variable_set[480] = 1;
  return result;
}

ExcelValue outputs_emissions_x38() {
  static ExcelValue result;
  if(variable_set[481] == 1) { return result;}
  result = C136;
  variable_set[481] = 1;
  return result;
}

ExcelValue outputs_emissions_y38() {
  static ExcelValue result;
  if(variable_set[482] == 1) { return result;}
  result = C136;
  variable_set[482] = 1;
  return result;
}

ExcelValue outputs_emissions_z38() {
  static ExcelValue result;
  if(variable_set[483] == 1) { return result;}
  result = C136;
  variable_set[483] = 1;
  return result;
}

ExcelValue outputs_emissions_aa38() {
  static ExcelValue result;
  if(variable_set[484] == 1) { return result;}
  result = C136;
  variable_set[484] = 1;
  return result;
}

ExcelValue outputs_emissions_ab38() {
  static ExcelValue result;
  if(variable_set[485] == 1) { return result;}
  result = C136;
  variable_set[485] = 1;
  return result;
}

ExcelValue outputs_emissions_ac38() {
  static ExcelValue result;
  if(variable_set[486] == 1) { return result;}
  result = C136;
  variable_set[486] = 1;
  return result;
}

ExcelValue outputs_emissions_ad38() {
  static ExcelValue result;
  if(variable_set[487] == 1) { return result;}
  result = C136;
  variable_set[487] = 1;
  return result;
}

ExcelValue outputs_emissions_ae38() {
  static ExcelValue result;
  if(variable_set[488] == 1) { return result;}
  result = C136;
  variable_set[488] = 1;
  return result;
}

ExcelValue outputs_emissions_af38() {
  static ExcelValue result;
  if(variable_set[489] == 1) { return result;}
  result = C136;
  variable_set[489] = 1;
  return result;
}

ExcelValue outputs_emissions_ag38() {
  static ExcelValue result;
  if(variable_set[490] == 1) { return result;}
  result = C136;
  variable_set[490] = 1;
  return result;
}

ExcelValue outputs_emissions_ah38() {
  static ExcelValue result;
  if(variable_set[491] == 1) { return result;}
  result = C136;
  variable_set[491] = 1;
  return result;
}

ExcelValue outputs_emissions_ai38() {
  static ExcelValue result;
  if(variable_set[492] == 1) { return result;}
  result = C136;
  variable_set[492] = 1;
  return result;
}

ExcelValue outputs_emissions_aj38() {
  static ExcelValue result;
  if(variable_set[493] == 1) { return result;}
  result = C136;
  variable_set[493] = 1;
  return result;
}

ExcelValue outputs_emissions_c39() {
  static ExcelValue result;
  if(variable_set[494] == 1) { return result;}
  result = C151;
  variable_set[494] = 1;
  return result;
}

ExcelValue outputs_emissions_d39() {
  static ExcelValue result;
  if(variable_set[495] == 1) { return result;}
  result = C152;
  variable_set[495] = 1;
  return result;
}

ExcelValue outputs_emissions_h39() {
  static ExcelValue result;
  if(variable_set[496] == 1) { return result;}
  result = C136;
  variable_set[496] = 1;
  return result;
}

ExcelValue outputs_emissions_i39() {
  static ExcelValue result;
  if(variable_set[497] == 1) { return result;}
  result = C136;
  variable_set[497] = 1;
  return result;
}

ExcelValue outputs_emissions_j39() {
  static ExcelValue result;
  if(variable_set[498] == 1) { return result;}
  result = C136;
  variable_set[498] = 1;
  return result;
}

ExcelValue outputs_emissions_k39() {
  static ExcelValue result;
  if(variable_set[499] == 1) { return result;}
  result = C136;
  variable_set[499] = 1;
  return result;
}

ExcelValue outputs_emissions_l39() {
  static ExcelValue result;
  if(variable_set[500] == 1) { return result;}
  result = C136;
  variable_set[500] = 1;
  return result;
}

ExcelValue outputs_emissions_m39() {
  static ExcelValue result;
  if(variable_set[501] == 1) { return result;}
  result = C136;
  variable_set[501] = 1;
  return result;
}

ExcelValue outputs_emissions_n39() {
  static ExcelValue result;
  if(variable_set[502] == 1) { return result;}
  result = C136;
  variable_set[502] = 1;
  return result;
}

ExcelValue outputs_emissions_o39() {
  static ExcelValue result;
  if(variable_set[503] == 1) { return result;}
  result = C136;
  variable_set[503] = 1;
  return result;
}

ExcelValue outputs_emissions_p39() {
  static ExcelValue result;
  if(variable_set[504] == 1) { return result;}
  result = C136;
  variable_set[504] = 1;
  return result;
}

ExcelValue outputs_emissions_r39() {
  static ExcelValue result;
  if(variable_set[505] == 1) { return result;}
  result = C136;
  variable_set[505] = 1;
  return result;
}

ExcelValue outputs_emissions_s39() {
  static ExcelValue result;
  if(variable_set[506] == 1) { return result;}
  result = C136;
  variable_set[506] = 1;
  return result;
}

ExcelValue outputs_emissions_t39() {
  static ExcelValue result;
  if(variable_set[507] == 1) { return result;}
  result = C136;
  variable_set[507] = 1;
  return result;
}

ExcelValue outputs_emissions_u39() {
  static ExcelValue result;
  if(variable_set[508] == 1) { return result;}
  result = C136;
  variable_set[508] = 1;
  return result;
}

ExcelValue outputs_emissions_v39() {
  static ExcelValue result;
  if(variable_set[509] == 1) { return result;}
  result = C136;
  variable_set[509] = 1;
  return result;
}

ExcelValue outputs_emissions_w39() {
  static ExcelValue result;
  if(variable_set[510] == 1) { return result;}
  result = C136;
  variable_set[510] = 1;
  return result;
}

ExcelValue outputs_emissions_x39() {
  static ExcelValue result;
  if(variable_set[511] == 1) { return result;}
  result = C136;
  variable_set[511] = 1;
  return result;
}

ExcelValue outputs_emissions_y39() {
  static ExcelValue result;
  if(variable_set[512] == 1) { return result;}
  result = C136;
  variable_set[512] = 1;
  return result;
}

ExcelValue outputs_emissions_z39() {
  static ExcelValue result;
  if(variable_set[513] == 1) { return result;}
  result = C136;
  variable_set[513] = 1;
  return result;
}

ExcelValue outputs_emissions_aa39() {
  static ExcelValue result;
  if(variable_set[514] == 1) { return result;}
  result = C136;
  variable_set[514] = 1;
  return result;
}

ExcelValue outputs_emissions_ab39() {
  static ExcelValue result;
  if(variable_set[515] == 1) { return result;}
  result = C136;
  variable_set[515] = 1;
  return result;
}

ExcelValue outputs_emissions_ac39() {
  static ExcelValue result;
  if(variable_set[516] == 1) { return result;}
  result = C136;
  variable_set[516] = 1;
  return result;
}

ExcelValue outputs_emissions_ad39() {
  static ExcelValue result;
  if(variable_set[517] == 1) { return result;}
  result = C136;
  variable_set[517] = 1;
  return result;
}

ExcelValue outputs_emissions_ae39() {
  static ExcelValue result;
  if(variable_set[518] == 1) { return result;}
  result = C136;
  variable_set[518] = 1;
  return result;
}

ExcelValue outputs_emissions_af39() {
  static ExcelValue result;
  if(variable_set[519] == 1) { return result;}
  result = C136;
  variable_set[519] = 1;
  return result;
}

ExcelValue outputs_emissions_ag39() {
  static ExcelValue result;
  if(variable_set[520] == 1) { return result;}
  result = C136;
  variable_set[520] = 1;
  return result;
}

ExcelValue outputs_emissions_ah39() {
  static ExcelValue result;
  if(variable_set[521] == 1) { return result;}
  result = C136;
  variable_set[521] = 1;
  return result;
}

ExcelValue outputs_emissions_ai39() {
  static ExcelValue result;
  if(variable_set[522] == 1) { return result;}
  result = C136;
  variable_set[522] = 1;
  return result;
}

ExcelValue outputs_emissions_aj39() {
  static ExcelValue result;
  if(variable_set[523] == 1) { return result;}
  result = C136;
  variable_set[523] = 1;
  return result;
}

ExcelValue outputs_emissions_c40() {
  static ExcelValue result;
  if(variable_set[524] == 1) { return result;}
  result = C153;
  variable_set[524] = 1;
  return result;
}

ExcelValue outputs_emissions_d40() {
  static ExcelValue result;
  if(variable_set[525] == 1) { return result;}
  result = C154;
  variable_set[525] = 1;
  return result;
}

ExcelValue outputs_emissions_h40() {
  static ExcelValue result;
  if(variable_set[526] == 1) { return result;}
  result = C136;
  variable_set[526] = 1;
  return result;
}

ExcelValue outputs_emissions_i40() {
  static ExcelValue result;
  if(variable_set[527] == 1) { return result;}
  result = C136;
  variable_set[527] = 1;
  return result;
}

ExcelValue outputs_emissions_j40() {
  static ExcelValue result;
  if(variable_set[528] == 1) { return result;}
  result = C136;
  variable_set[528] = 1;
  return result;
}

ExcelValue outputs_emissions_k40() {
  static ExcelValue result;
  if(variable_set[529] == 1) { return result;}
  result = C136;
  variable_set[529] = 1;
  return result;
}

ExcelValue outputs_emissions_l40() {
  static ExcelValue result;
  if(variable_set[530] == 1) { return result;}
  result = C136;
  variable_set[530] = 1;
  return result;
}

ExcelValue outputs_emissions_m40() {
  static ExcelValue result;
  if(variable_set[531] == 1) { return result;}
  result = C136;
  variable_set[531] = 1;
  return result;
}

ExcelValue outputs_emissions_n40() {
  static ExcelValue result;
  if(variable_set[532] == 1) { return result;}
  result = C136;
  variable_set[532] = 1;
  return result;
}

ExcelValue outputs_emissions_o40() {
  static ExcelValue result;
  if(variable_set[533] == 1) { return result;}
  result = C136;
  variable_set[533] = 1;
  return result;
}

ExcelValue outputs_emissions_p40() {
  static ExcelValue result;
  if(variable_set[534] == 1) { return result;}
  result = C136;
  variable_set[534] = 1;
  return result;
}

ExcelValue outputs_emissions_r40() {
  static ExcelValue result;
  if(variable_set[535] == 1) { return result;}
  result = C136;
  variable_set[535] = 1;
  return result;
}

ExcelValue outputs_emissions_s40() {
  static ExcelValue result;
  if(variable_set[536] == 1) { return result;}
  result = C136;
  variable_set[536] = 1;
  return result;
}

ExcelValue outputs_emissions_t40() {
  static ExcelValue result;
  if(variable_set[537] == 1) { return result;}
  result = C136;
  variable_set[537] = 1;
  return result;
}

ExcelValue outputs_emissions_u40() {
  static ExcelValue result;
  if(variable_set[538] == 1) { return result;}
  result = C136;
  variable_set[538] = 1;
  return result;
}

ExcelValue outputs_emissions_v40() {
  static ExcelValue result;
  if(variable_set[539] == 1) { return result;}
  result = C136;
  variable_set[539] = 1;
  return result;
}

ExcelValue outputs_emissions_w40() {
  static ExcelValue result;
  if(variable_set[540] == 1) { return result;}
  result = C136;
  variable_set[540] = 1;
  return result;
}

ExcelValue outputs_emissions_x40() {
  static ExcelValue result;
  if(variable_set[541] == 1) { return result;}
  result = C136;
  variable_set[541] = 1;
  return result;
}

ExcelValue outputs_emissions_y40() {
  static ExcelValue result;
  if(variable_set[542] == 1) { return result;}
  result = C136;
  variable_set[542] = 1;
  return result;
}

ExcelValue outputs_emissions_z40() {
  static ExcelValue result;
  if(variable_set[543] == 1) { return result;}
  result = C136;
  variable_set[543] = 1;
  return result;
}

ExcelValue outputs_emissions_aa40() {
  static ExcelValue result;
  if(variable_set[544] == 1) { return result;}
  result = C136;
  variable_set[544] = 1;
  return result;
}

ExcelValue outputs_emissions_ab40() {
  static ExcelValue result;
  if(variable_set[545] == 1) { return result;}
  result = C136;
  variable_set[545] = 1;
  return result;
}

ExcelValue outputs_emissions_ac40() {
  static ExcelValue result;
  if(variable_set[546] == 1) { return result;}
  result = C136;
  variable_set[546] = 1;
  return result;
}

ExcelValue outputs_emissions_ad40() {
  static ExcelValue result;
  if(variable_set[547] == 1) { return result;}
  result = C136;
  variable_set[547] = 1;
  return result;
}

ExcelValue outputs_emissions_ae40() {
  static ExcelValue result;
  if(variable_set[548] == 1) { return result;}
  result = C136;
  variable_set[548] = 1;
  return result;
}

ExcelValue outputs_emissions_af40() {
  static ExcelValue result;
  if(variable_set[549] == 1) { return result;}
  result = C136;
  variable_set[549] = 1;
  return result;
}

ExcelValue outputs_emissions_ag40() {
  static ExcelValue result;
  if(variable_set[550] == 1) { return result;}
  result = C136;
  variable_set[550] = 1;
  return result;
}

ExcelValue outputs_emissions_ah40() {
  static ExcelValue result;
  if(variable_set[551] == 1) { return result;}
  result = C136;
  variable_set[551] = 1;
  return result;
}

ExcelValue outputs_emissions_ai40() {
  static ExcelValue result;
  if(variable_set[552] == 1) { return result;}
  result = C136;
  variable_set[552] = 1;
  return result;
}

ExcelValue outputs_emissions_aj40() {
  static ExcelValue result;
  if(variable_set[553] == 1) { return result;}
  result = C136;
  variable_set[553] = 1;
  return result;
}

ExcelValue outputs_emissions_d41() {
  static ExcelValue result;
  if(variable_set[554] == 1) { return result;}
  result = C155;
  variable_set[554] = 1;
  return result;
}

ExcelValue outputs_emissions_c45() {
  static ExcelValue result;
  if(variable_set[555] == 1) { return result;}
  result = C156;
  variable_set[555] = 1;
  return result;
}

ExcelValue outputs_emissions_h46() {
  static ExcelValue result;
  if(variable_set[556] == 1) { return result;}
  result = C102;
  variable_set[556] = 1;
  return result;
}

ExcelValue outputs_emissions_r46() {
  static ExcelValue result;
  if(variable_set[557] == 1) { return result;}
  result = C103;
  variable_set[557] = 1;
  return result;
}

ExcelValue outputs_emissions_aa46() {
  static ExcelValue result;
  if(variable_set[558] == 1) { return result;}
  result = C104;
  variable_set[558] = 1;
  return result;
}

ExcelValue outputs_emissions_d47() {
  static ExcelValue result;
  if(variable_set[559] == 1) { return result;}
  result = C105;
  variable_set[559] = 1;
  return result;
}

ExcelValue outputs_emissions_h47() {
  static ExcelValue result;
  if(variable_set[560] == 1) { return result;}
  result = C106;
  variable_set[560] = 1;
  return result;
}

ExcelValue outputs_emissions_i47() {
  static ExcelValue result;
  if(variable_set[561] == 1) { return result;}
  result = C107;
  variable_set[561] = 1;
  return result;
}

ExcelValue outputs_emissions_j47() {
  static ExcelValue result;
  if(variable_set[562] == 1) { return result;}
  result = C108;
  variable_set[562] = 1;
  return result;
}

ExcelValue outputs_emissions_k47() {
  static ExcelValue result;
  if(variable_set[563] == 1) { return result;}
  result = C109;
  variable_set[563] = 1;
  return result;
}

ExcelValue outputs_emissions_l47() {
  static ExcelValue result;
  if(variable_set[564] == 1) { return result;}
  result = C110;
  variable_set[564] = 1;
  return result;
}

ExcelValue outputs_emissions_m47() {
  static ExcelValue result;
  if(variable_set[565] == 1) { return result;}
  result = C111;
  variable_set[565] = 1;
  return result;
}

ExcelValue outputs_emissions_n47() {
  static ExcelValue result;
  if(variable_set[566] == 1) { return result;}
  result = C112;
  variable_set[566] = 1;
  return result;
}

ExcelValue outputs_emissions_o47() {
  static ExcelValue result;
  if(variable_set[567] == 1) { return result;}
  result = C113;
  variable_set[567] = 1;
  return result;
}

ExcelValue outputs_emissions_p47() {
  static ExcelValue result;
  if(variable_set[568] == 1) { return result;}
  result = C114;
  variable_set[568] = 1;
  return result;
}

ExcelValue outputs_emissions_r47() {
  static ExcelValue result;
  if(variable_set[569] == 1) { return result;}
  result = C115;
  variable_set[569] = 1;
  return result;
}

ExcelValue outputs_emissions_s47() {
  static ExcelValue result;
  if(variable_set[570] == 1) { return result;}
  result = C116;
  variable_set[570] = 1;
  return result;
}

ExcelValue outputs_emissions_t47() {
  static ExcelValue result;
  if(variable_set[571] == 1) { return result;}
  result = C117;
  variable_set[571] = 1;
  return result;
}

ExcelValue outputs_emissions_u47() {
  static ExcelValue result;
  if(variable_set[572] == 1) { return result;}
  result = C118;
  variable_set[572] = 1;
  return result;
}

ExcelValue outputs_emissions_v47() {
  static ExcelValue result;
  if(variable_set[573] == 1) { return result;}
  result = C119;
  variable_set[573] = 1;
  return result;
}

ExcelValue outputs_emissions_w47() {
  static ExcelValue result;
  if(variable_set[574] == 1) { return result;}
  result = C120;
  variable_set[574] = 1;
  return result;
}

ExcelValue outputs_emissions_x47() {
  static ExcelValue result;
  if(variable_set[575] == 1) { return result;}
  result = C121;
  variable_set[575] = 1;
  return result;
}

ExcelValue outputs_emissions_y47() {
  static ExcelValue result;
  if(variable_set[576] == 1) { return result;}
  result = C122;
  variable_set[576] = 1;
  return result;
}

ExcelValue outputs_emissions_z47() {
  static ExcelValue result;
  if(variable_set[577] == 1) { return result;}
  result = C123;
  variable_set[577] = 1;
  return result;
}

ExcelValue outputs_emissions_aa47() {
  static ExcelValue result;
  if(variable_set[578] == 1) { return result;}
  result = C124;
  variable_set[578] = 1;
  return result;
}

ExcelValue outputs_emissions_ab47() {
  static ExcelValue result;
  if(variable_set[579] == 1) { return result;}
  result = C157;
  variable_set[579] = 1;
  return result;
}

ExcelValue outputs_emissions_ac47() {
  static ExcelValue result;
  if(variable_set[580] == 1) { return result;}
  result = C126;
  variable_set[580] = 1;
  return result;
}

ExcelValue outputs_emissions_ad47() {
  static ExcelValue result;
  if(variable_set[581] == 1) { return result;}
  result = C127;
  variable_set[581] = 1;
  return result;
}

ExcelValue outputs_emissions_ae47() {
  static ExcelValue result;
  if(variable_set[582] == 1) { return result;}
  result = C128;
  variable_set[582] = 1;
  return result;
}

ExcelValue outputs_emissions_af47() {
  static ExcelValue result;
  if(variable_set[583] == 1) { return result;}
  result = C129;
  variable_set[583] = 1;
  return result;
}

ExcelValue outputs_emissions_ag47() {
  static ExcelValue result;
  if(variable_set[584] == 1) { return result;}
  result = C130;
  variable_set[584] = 1;
  return result;
}

ExcelValue outputs_emissions_ah47() {
  static ExcelValue result;
  if(variable_set[585] == 1) { return result;}
  result = C131;
  variable_set[585] = 1;
  return result;
}

ExcelValue outputs_emissions_ai47() {
  static ExcelValue result;
  if(variable_set[586] == 1) { return result;}
  result = C132;
  variable_set[586] = 1;
  return result;
}

ExcelValue outputs_emissions_aj47() {
  static ExcelValue result;
  if(variable_set[587] == 1) { return result;}
  result = C133;
  variable_set[587] = 1;
  return result;
}

ExcelValue outputs_emissions_c48() {
  static ExcelValue result;
  if(variable_set[588] == 1) { return result;}
  result = C134;
  variable_set[588] = 1;
  return result;
}

ExcelValue outputs_emissions_d48() {
  static ExcelValue result;
  if(variable_set[589] == 1) { return result;}
  result = C135;
  variable_set[589] = 1;
  return result;
}

ExcelValue outputs_emissions_s48() {
  static ExcelValue result;
  if(variable_set[590] == 1) { return result;}
  result = C158;
  variable_set[590] = 1;
  return result;
}

ExcelValue outputs_emissions_c49() {
  static ExcelValue result;
  if(variable_set[591] == 1) { return result;}
  result = C137;
  variable_set[591] = 1;
  return result;
}

ExcelValue outputs_emissions_d49() {
  static ExcelValue result;
  if(variable_set[592] == 1) { return result;}
  result = C138;
  variable_set[592] = 1;
  return result;
}

ExcelValue outputs_emissions_s49() {
  static ExcelValue result;
  if(variable_set[593] == 1) { return result;}
  result = C158;
  variable_set[593] = 1;
  return result;
}

ExcelValue outputs_emissions_c50() {
  static ExcelValue result;
  if(variable_set[594] == 1) { return result;}
  result = C139;
  variable_set[594] = 1;
  return result;
}

ExcelValue outputs_emissions_d50() {
  static ExcelValue result;
  if(variable_set[595] == 1) { return result;}
  result = C140;
  variable_set[595] = 1;
  return result;
}

ExcelValue outputs_emissions_s50() {
  static ExcelValue result;
  if(variable_set[596] == 1) { return result;}
  result = C158;
  variable_set[596] = 1;
  return result;
}

ExcelValue outputs_emissions_c51() {
  static ExcelValue result;
  if(variable_set[597] == 1) { return result;}
  result = C141;
  variable_set[597] = 1;
  return result;
}

ExcelValue outputs_emissions_d51() {
  static ExcelValue result;
  if(variable_set[598] == 1) { return result;}
  result = C142;
  variable_set[598] = 1;
  return result;
}

ExcelValue outputs_emissions_s51() {
  static ExcelValue result;
  if(variable_set[599] == 1) { return result;}
  result = C158;
  variable_set[599] = 1;
  return result;
}

ExcelValue outputs_emissions_c52() {
  static ExcelValue result;
  if(variable_set[600] == 1) { return result;}
  result = C143;
  variable_set[600] = 1;
  return result;
}

ExcelValue outputs_emissions_d52() {
  static ExcelValue result;
  if(variable_set[601] == 1) { return result;}
  result = C144;
  variable_set[601] = 1;
  return result;
}

ExcelValue outputs_emissions_s52() {
  static ExcelValue result;
  if(variable_set[602] == 1) { return result;}
  result = C158;
  variable_set[602] = 1;
  return result;
}

ExcelValue outputs_emissions_c53() {
  static ExcelValue result;
  if(variable_set[603] == 1) { return result;}
  result = C145;
  variable_set[603] = 1;
  return result;
}

ExcelValue outputs_emissions_d53() {
  static ExcelValue result;
  if(variable_set[604] == 1) { return result;}
  result = C146;
  variable_set[604] = 1;
  return result;
}

ExcelValue outputs_emissions_s53() {
  static ExcelValue result;
  if(variable_set[605] == 1) { return result;}
  result = C158;
  variable_set[605] = 1;
  return result;
}

ExcelValue outputs_emissions_c54() {
  static ExcelValue result;
  if(variable_set[606] == 1) { return result;}
  result = C147;
  variable_set[606] = 1;
  return result;
}

ExcelValue outputs_emissions_d54() {
  static ExcelValue result;
  if(variable_set[607] == 1) { return result;}
  result = C148;
  variable_set[607] = 1;
  return result;
}

ExcelValue outputs_emissions_s54() {
  static ExcelValue result;
  if(variable_set[608] == 1) { return result;}
  result = C158;
  variable_set[608] = 1;
  return result;
}

ExcelValue outputs_emissions_c55() {
  static ExcelValue result;
  if(variable_set[609] == 1) { return result;}
  result = C149;
  variable_set[609] = 1;
  return result;
}

ExcelValue outputs_emissions_d55() {
  static ExcelValue result;
  if(variable_set[610] == 1) { return result;}
  result = C150;
  variable_set[610] = 1;
  return result;
}

ExcelValue outputs_emissions_s55() {
  static ExcelValue result;
  if(variable_set[611] == 1) { return result;}
  result = C158;
  variable_set[611] = 1;
  return result;
}

ExcelValue outputs_emissions_c56() {
  static ExcelValue result;
  if(variable_set[612] == 1) { return result;}
  result = C151;
  variable_set[612] = 1;
  return result;
}

ExcelValue outputs_emissions_d56() {
  static ExcelValue result;
  if(variable_set[613] == 1) { return result;}
  result = C152;
  variable_set[613] = 1;
  return result;
}

ExcelValue outputs_emissions_s56() {
  static ExcelValue result;
  if(variable_set[614] == 1) { return result;}
  result = C158;
  variable_set[614] = 1;
  return result;
}

ExcelValue outputs_emissions_c57() {
  static ExcelValue result;
  if(variable_set[615] == 1) { return result;}
  result = C153;
  variable_set[615] = 1;
  return result;
}

ExcelValue outputs_emissions_d57() {
  static ExcelValue result;
  if(variable_set[616] == 1) { return result;}
  result = C154;
  variable_set[616] = 1;
  return result;
}

ExcelValue outputs_emissions_s57() {
  static ExcelValue result;
  if(variable_set[617] == 1) { return result;}
  result = C158;
  variable_set[617] = 1;
  return result;
}

ExcelValue outputs_emissions_d58() {
  static ExcelValue result;
  if(variable_set[618] == 1) { return result;}
  result = C155;
  variable_set[618] = 1;
  return result;
}

ExcelValue outputs_emissions_h58() {
  static ExcelValue result;
  if(variable_set[619] == 1) { return result;}
  result = C158;
  variable_set[619] = 1;
  return result;
}

ExcelValue outputs_emissions_i58() {
  static ExcelValue result;
  if(variable_set[620] == 1) { return result;}
  result = C158;
  variable_set[620] = 1;
  return result;
}

ExcelValue outputs_emissions_j58() {
  static ExcelValue result;
  if(variable_set[621] == 1) { return result;}
  result = C158;
  variable_set[621] = 1;
  return result;
}

ExcelValue outputs_emissions_k58() {
  static ExcelValue result;
  if(variable_set[622] == 1) { return result;}
  result = C158;
  variable_set[622] = 1;
  return result;
}

ExcelValue outputs_emissions_l58() {
  static ExcelValue result;
  if(variable_set[623] == 1) { return result;}
  result = C158;
  variable_set[623] = 1;
  return result;
}

ExcelValue outputs_emissions_m58() {
  static ExcelValue result;
  if(variable_set[624] == 1) { return result;}
  result = C158;
  variable_set[624] = 1;
  return result;
}

ExcelValue outputs_emissions_n58() {
  static ExcelValue result;
  if(variable_set[625] == 1) { return result;}
  result = C158;
  variable_set[625] = 1;
  return result;
}

ExcelValue outputs_emissions_o58() {
  static ExcelValue result;
  if(variable_set[626] == 1) { return result;}
  result = C158;
  variable_set[626] = 1;
  return result;
}

ExcelValue outputs_emissions_p58() {
  static ExcelValue result;
  if(variable_set[627] == 1) { return result;}
  result = C158;
  variable_set[627] = 1;
  return result;
}

ExcelValue outputs_emissions_r58() {
  static ExcelValue result;
  if(variable_set[628] == 1) { return result;}
  result = C158;
  variable_set[628] = 1;
  return result;
}

ExcelValue outputs_emissions_s58() {
  static ExcelValue result;
  if(variable_set[629] == 1) { return result;}
  result = C158;
  variable_set[629] = 1;
  return result;
}

ExcelValue outputs_emissions_t58() {
  static ExcelValue result;
  if(variable_set[630] == 1) { return result;}
  result = C158;
  variable_set[630] = 1;
  return result;
}

ExcelValue outputs_emissions_u58() {
  static ExcelValue result;
  if(variable_set[631] == 1) { return result;}
  result = C158;
  variable_set[631] = 1;
  return result;
}

ExcelValue outputs_emissions_v58() {
  static ExcelValue result;
  if(variable_set[632] == 1) { return result;}
  result = C158;
  variable_set[632] = 1;
  return result;
}

ExcelValue outputs_emissions_w58() {
  static ExcelValue result;
  if(variable_set[633] == 1) { return result;}
  result = C158;
  variable_set[633] = 1;
  return result;
}

ExcelValue outputs_emissions_x58() {
  static ExcelValue result;
  if(variable_set[634] == 1) { return result;}
  result = C158;
  variable_set[634] = 1;
  return result;
}

ExcelValue outputs_emissions_y58() {
  static ExcelValue result;
  if(variable_set[635] == 1) { return result;}
  result = C158;
  variable_set[635] = 1;
  return result;
}

ExcelValue outputs_emissions_z58() {
  static ExcelValue result;
  if(variable_set[636] == 1) { return result;}
  result = C158;
  variable_set[636] = 1;
  return result;
}

ExcelValue outputs_emissions_aa58() {
  static ExcelValue result;
  if(variable_set[637] == 1) { return result;}
  result = C158;
  variable_set[637] = 1;
  return result;
}

ExcelValue outputs_emissions_ab58() {
  static ExcelValue result;
  if(variable_set[638] == 1) { return result;}
  result = C158;
  variable_set[638] = 1;
  return result;
}

ExcelValue outputs_emissions_ac58() {
  static ExcelValue result;
  if(variable_set[639] == 1) { return result;}
  result = C158;
  variable_set[639] = 1;
  return result;
}

ExcelValue outputs_emissions_ad58() {
  static ExcelValue result;
  if(variable_set[640] == 1) { return result;}
  result = C158;
  variable_set[640] = 1;
  return result;
}

ExcelValue outputs_emissions_ae58() {
  static ExcelValue result;
  if(variable_set[641] == 1) { return result;}
  result = C158;
  variable_set[641] = 1;
  return result;
}

ExcelValue outputs_emissions_af58() {
  static ExcelValue result;
  if(variable_set[642] == 1) { return result;}
  result = C158;
  variable_set[642] = 1;
  return result;
}

ExcelValue outputs_emissions_ag58() {
  static ExcelValue result;
  if(variable_set[643] == 1) { return result;}
  result = C158;
  variable_set[643] = 1;
  return result;
}

ExcelValue outputs_emissions_ah58() {
  static ExcelValue result;
  if(variable_set[644] == 1) { return result;}
  result = C158;
  variable_set[644] = 1;
  return result;
}

ExcelValue outputs_emissions_ai58() {
  static ExcelValue result;
  if(variable_set[645] == 1) { return result;}
  result = C158;
  variable_set[645] = 1;
  return result;
}

ExcelValue outputs_emissions_aj58() {
  static ExcelValue result;
  if(variable_set[646] == 1) { return result;}
  result = C158;
  variable_set[646] = 1;
  return result;
}

ExcelValue outputs_emissions_d59() {
  static ExcelValue result;
  if(variable_set[647] == 1) { return result;}
  result = C159;
  variable_set[647] = 1;
  return result;
}

ExcelValue outputs_emissions_d60() {
  static ExcelValue result;
  if(variable_set[648] == 1) { return result;}
  result = C160;
  variable_set[648] = 1;
  return result;
}

ExcelValue outputs_emissions_c63() {
  static ExcelValue result;
  if(variable_set[649] == 1) { return result;}
  result = C161;
  variable_set[649] = 1;
  return result;
}

ExcelValue outputs_emissions_h64() {
  static ExcelValue result;
  if(variable_set[650] == 1) { return result;}
  result = C102;
  variable_set[650] = 1;
  return result;
}

ExcelValue outputs_emissions_r64() {
  static ExcelValue result;
  if(variable_set[651] == 1) { return result;}
  result = C103;
  variable_set[651] = 1;
  return result;
}

ExcelValue outputs_emissions_aa64() {
  static ExcelValue result;
  if(variable_set[652] == 1) { return result;}
  result = C104;
  variable_set[652] = 1;
  return result;
}

ExcelValue outputs_emissions_c65() {
  static ExcelValue result;
  if(variable_set[653] == 1) { return result;}
  result = C162;
  variable_set[653] = 1;
  return result;
}

ExcelValue outputs_emissions_d65() {
  static ExcelValue result;
  if(variable_set[654] == 1) { return result;}
  result = C163;
  variable_set[654] = 1;
  return result;
}

ExcelValue outputs_emissions_h65() {
  static ExcelValue result;
  if(variable_set[655] == 1) { return result;}
  result = C106;
  variable_set[655] = 1;
  return result;
}

ExcelValue outputs_emissions_i65() {
  static ExcelValue result;
  if(variable_set[656] == 1) { return result;}
  result = C107;
  variable_set[656] = 1;
  return result;
}

ExcelValue outputs_emissions_j65() {
  static ExcelValue result;
  if(variable_set[657] == 1) { return result;}
  result = C108;
  variable_set[657] = 1;
  return result;
}

ExcelValue outputs_emissions_k65() {
  static ExcelValue result;
  if(variable_set[658] == 1) { return result;}
  result = C109;
  variable_set[658] = 1;
  return result;
}

ExcelValue outputs_emissions_l65() {
  static ExcelValue result;
  if(variable_set[659] == 1) { return result;}
  result = C110;
  variable_set[659] = 1;
  return result;
}

ExcelValue outputs_emissions_m65() {
  static ExcelValue result;
  if(variable_set[660] == 1) { return result;}
  result = C111;
  variable_set[660] = 1;
  return result;
}

ExcelValue outputs_emissions_n65() {
  static ExcelValue result;
  if(variable_set[661] == 1) { return result;}
  result = C112;
  variable_set[661] = 1;
  return result;
}

ExcelValue outputs_emissions_o65() {
  static ExcelValue result;
  if(variable_set[662] == 1) { return result;}
  result = C113;
  variable_set[662] = 1;
  return result;
}

ExcelValue outputs_emissions_p65() {
  static ExcelValue result;
  if(variable_set[663] == 1) { return result;}
  result = C114;
  variable_set[663] = 1;
  return result;
}

ExcelValue outputs_emissions_r65() {
  static ExcelValue result;
  if(variable_set[664] == 1) { return result;}
  result = C115;
  variable_set[664] = 1;
  return result;
}

ExcelValue outputs_emissions_s65() {
  static ExcelValue result;
  if(variable_set[665] == 1) { return result;}
  result = C116;
  variable_set[665] = 1;
  return result;
}

ExcelValue outputs_emissions_t65() {
  static ExcelValue result;
  if(variable_set[666] == 1) { return result;}
  result = C117;
  variable_set[666] = 1;
  return result;
}

ExcelValue outputs_emissions_u65() {
  static ExcelValue result;
  if(variable_set[667] == 1) { return result;}
  result = C118;
  variable_set[667] = 1;
  return result;
}

ExcelValue outputs_emissions_v65() {
  static ExcelValue result;
  if(variable_set[668] == 1) { return result;}
  result = C119;
  variable_set[668] = 1;
  return result;
}

ExcelValue outputs_emissions_w65() {
  static ExcelValue result;
  if(variable_set[669] == 1) { return result;}
  result = C120;
  variable_set[669] = 1;
  return result;
}

ExcelValue outputs_emissions_x65() {
  static ExcelValue result;
  if(variable_set[670] == 1) { return result;}
  result = C121;
  variable_set[670] = 1;
  return result;
}

ExcelValue outputs_emissions_y65() {
  static ExcelValue result;
  if(variable_set[671] == 1) { return result;}
  result = C122;
  variable_set[671] = 1;
  return result;
}

ExcelValue outputs_emissions_z65() {
  static ExcelValue result;
  if(variable_set[672] == 1) { return result;}
  result = C123;
  variable_set[672] = 1;
  return result;
}

ExcelValue outputs_emissions_aa65() {
  static ExcelValue result;
  if(variable_set[673] == 1) { return result;}
  result = C124;
  variable_set[673] = 1;
  return result;
}

ExcelValue outputs_emissions_ab65() {
  static ExcelValue result;
  if(variable_set[674] == 1) { return result;}
  result = C157;
  variable_set[674] = 1;
  return result;
}

ExcelValue outputs_emissions_ac65() {
  static ExcelValue result;
  if(variable_set[675] == 1) { return result;}
  result = C126;
  variable_set[675] = 1;
  return result;
}

ExcelValue outputs_emissions_ad65() {
  static ExcelValue result;
  if(variable_set[676] == 1) { return result;}
  result = C127;
  variable_set[676] = 1;
  return result;
}

ExcelValue outputs_emissions_ae65() {
  static ExcelValue result;
  if(variable_set[677] == 1) { return result;}
  result = C128;
  variable_set[677] = 1;
  return result;
}

ExcelValue outputs_emissions_af65() {
  static ExcelValue result;
  if(variable_set[678] == 1) { return result;}
  result = C129;
  variable_set[678] = 1;
  return result;
}

ExcelValue outputs_emissions_ag65() {
  static ExcelValue result;
  if(variable_set[679] == 1) { return result;}
  result = C130;
  variable_set[679] = 1;
  return result;
}

ExcelValue outputs_emissions_ah65() {
  static ExcelValue result;
  if(variable_set[680] == 1) { return result;}
  result = C131;
  variable_set[680] = 1;
  return result;
}

ExcelValue outputs_emissions_ai65() {
  static ExcelValue result;
  if(variable_set[681] == 1) { return result;}
  result = C132;
  variable_set[681] = 1;
  return result;
}

ExcelValue outputs_emissions_aj65() {
  static ExcelValue result;
  if(variable_set[682] == 1) { return result;}
  result = C133;
  variable_set[682] = 1;
  return result;
}

ExcelValue outputs_emissions_c66() {
  static ExcelValue result;
  if(variable_set[683] == 1) { return result;}
  result = C164;
  variable_set[683] = 1;
  return result;
}

ExcelValue outputs_emissions_d66() {
  static ExcelValue result;
  if(variable_set[684] == 1) { return result;}
  result = NAME;
  variable_set[684] = 1;
  return result;
}

ExcelValue outputs_emissions_s66() {
  static ExcelValue result;
  if(variable_set[685] == 1) { return result;}
  result = NAME;
  variable_set[685] = 1;
  return result;
}

ExcelValue outputs_emissions_c67() {
  static ExcelValue result;
  if(variable_set[686] == 1) { return result;}
  result = C165;
  variable_set[686] = 1;
  return result;
}

ExcelValue outputs_emissions_d67() {
  static ExcelValue result;
  if(variable_set[687] == 1) { return result;}
  result = NAME;
  variable_set[687] = 1;
  return result;
}

ExcelValue outputs_emissions_s67() {
  static ExcelValue result;
  if(variable_set[688] == 1) { return result;}
  result = NAME;
  variable_set[688] = 1;
  return result;
}

ExcelValue outputs_emissions_c68() {
  static ExcelValue result;
  if(variable_set[689] == 1) { return result;}
  result = C166;
  variable_set[689] = 1;
  return result;
}

ExcelValue outputs_emissions_d68() {
  static ExcelValue result;
  if(variable_set[690] == 1) { return result;}
  result = NAME;
  variable_set[690] = 1;
  return result;
}

ExcelValue outputs_emissions_s68() {
  static ExcelValue result;
  if(variable_set[691] == 1) { return result;}
  result = NAME;
  variable_set[691] = 1;
  return result;
}

ExcelValue outputs_emissions_c69() {
  static ExcelValue result;
  if(variable_set[692] == 1) { return result;}
  result = C167;
  variable_set[692] = 1;
  return result;
}

ExcelValue outputs_emissions_d69() {
  static ExcelValue result;
  if(variable_set[693] == 1) { return result;}
  result = NAME;
  variable_set[693] = 1;
  return result;
}

ExcelValue outputs_emissions_s69() {
  static ExcelValue result;
  if(variable_set[694] == 1) { return result;}
  result = NAME;
  variable_set[694] = 1;
  return result;
}

ExcelValue outputs_emissions_c70() {
  static ExcelValue result;
  if(variable_set[695] == 1) { return result;}
  result = C168;
  variable_set[695] = 1;
  return result;
}

ExcelValue outputs_emissions_d70() {
  static ExcelValue result;
  if(variable_set[696] == 1) { return result;}
  result = NAME;
  variable_set[696] = 1;
  return result;
}

ExcelValue outputs_emissions_s70() {
  static ExcelValue result;
  if(variable_set[697] == 1) { return result;}
  result = NAME;
  variable_set[697] = 1;
  return result;
}

ExcelValue outputs_emissions_c71() {
  static ExcelValue result;
  if(variable_set[698] == 1) { return result;}
  result = C169;
  variable_set[698] = 1;
  return result;
}

ExcelValue outputs_emissions_d71() {
  static ExcelValue result;
  if(variable_set[699] == 1) { return result;}
  result = NAME;
  variable_set[699] = 1;
  return result;
}

ExcelValue outputs_emissions_s71() {
  static ExcelValue result;
  if(variable_set[700] == 1) { return result;}
  result = NAME;
  variable_set[700] = 1;
  return result;
}

ExcelValue outputs_emissions_d72() {
  static ExcelValue result;
  if(variable_set[701] == 1) { return result;}
  result = C155;
  variable_set[701] = 1;
  return result;
}

ExcelValue outputs_emissions_h72() {
  static ExcelValue result;
  if(variable_set[702] == 1) { return result;}
  result = C158;
  variable_set[702] = 1;
  return result;
}

ExcelValue outputs_emissions_i72() {
  static ExcelValue result;
  if(variable_set[703] == 1) { return result;}
  result = C158;
  variable_set[703] = 1;
  return result;
}

ExcelValue outputs_emissions_j72() {
  static ExcelValue result;
  if(variable_set[704] == 1) { return result;}
  result = C158;
  variable_set[704] = 1;
  return result;
}

ExcelValue outputs_emissions_k72() {
  static ExcelValue result;
  if(variable_set[705] == 1) { return result;}
  result = C158;
  variable_set[705] = 1;
  return result;
}

ExcelValue outputs_emissions_l72() {
  static ExcelValue result;
  if(variable_set[706] == 1) { return result;}
  result = C158;
  variable_set[706] = 1;
  return result;
}

ExcelValue outputs_emissions_m72() {
  static ExcelValue result;
  if(variable_set[707] == 1) { return result;}
  result = C158;
  variable_set[707] = 1;
  return result;
}

ExcelValue outputs_emissions_n72() {
  static ExcelValue result;
  if(variable_set[708] == 1) { return result;}
  result = C158;
  variable_set[708] = 1;
  return result;
}

ExcelValue outputs_emissions_o72() {
  static ExcelValue result;
  if(variable_set[709] == 1) { return result;}
  result = C158;
  variable_set[709] = 1;
  return result;
}

ExcelValue outputs_emissions_p72() {
  static ExcelValue result;
  if(variable_set[710] == 1) { return result;}
  result = C158;
  variable_set[710] = 1;
  return result;
}

ExcelValue outputs_emissions_r72() {
  static ExcelValue result;
  if(variable_set[711] == 1) { return result;}
  result = C158;
  variable_set[711] = 1;
  return result;
}

ExcelValue outputs_emissions_s72() {
  static ExcelValue result;
  if(variable_set[712] == 1) { return result;}
  result = NAME;
  variable_set[712] = 1;
  return result;
}

ExcelValue outputs_emissions_t72() {
  static ExcelValue result;
  if(variable_set[713] == 1) { return result;}
  result = C158;
  variable_set[713] = 1;
  return result;
}

ExcelValue outputs_emissions_u72() {
  static ExcelValue result;
  if(variable_set[714] == 1) { return result;}
  result = C158;
  variable_set[714] = 1;
  return result;
}

ExcelValue outputs_emissions_v72() {
  static ExcelValue result;
  if(variable_set[715] == 1) { return result;}
  result = C158;
  variable_set[715] = 1;
  return result;
}

ExcelValue outputs_emissions_w72() {
  static ExcelValue result;
  if(variable_set[716] == 1) { return result;}
  result = C158;
  variable_set[716] = 1;
  return result;
}

ExcelValue outputs_emissions_x72() {
  static ExcelValue result;
  if(variable_set[717] == 1) { return result;}
  result = C158;
  variable_set[717] = 1;
  return result;
}

ExcelValue outputs_emissions_y72() {
  static ExcelValue result;
  if(variable_set[718] == 1) { return result;}
  result = C158;
  variable_set[718] = 1;
  return result;
}

ExcelValue outputs_emissions_z72() {
  static ExcelValue result;
  if(variable_set[719] == 1) { return result;}
  result = C158;
  variable_set[719] = 1;
  return result;
}

ExcelValue outputs_emissions_aa72() {
  static ExcelValue result;
  if(variable_set[720] == 1) { return result;}
  result = C158;
  variable_set[720] = 1;
  return result;
}

ExcelValue outputs_emissions_ab72() {
  static ExcelValue result;
  if(variable_set[721] == 1) { return result;}
  result = C158;
  variable_set[721] = 1;
  return result;
}

ExcelValue outputs_emissions_ac72() {
  static ExcelValue result;
  if(variable_set[722] == 1) { return result;}
  result = C158;
  variable_set[722] = 1;
  return result;
}

ExcelValue outputs_emissions_ad72() {
  static ExcelValue result;
  if(variable_set[723] == 1) { return result;}
  result = C158;
  variable_set[723] = 1;
  return result;
}

ExcelValue outputs_emissions_ae72() {
  static ExcelValue result;
  if(variable_set[724] == 1) { return result;}
  result = C158;
  variable_set[724] = 1;
  return result;
}

ExcelValue outputs_emissions_af72() {
  static ExcelValue result;
  if(variable_set[725] == 1) { return result;}
  result = C158;
  variable_set[725] = 1;
  return result;
}

ExcelValue outputs_emissions_ag72() {
  static ExcelValue result;
  if(variable_set[726] == 1) { return result;}
  result = C158;
  variable_set[726] = 1;
  return result;
}

ExcelValue outputs_emissions_ah72() {
  static ExcelValue result;
  if(variable_set[727] == 1) { return result;}
  result = C158;
  variable_set[727] = 1;
  return result;
}

ExcelValue outputs_emissions_ai72() {
  static ExcelValue result;
  if(variable_set[728] == 1) { return result;}
  result = C158;
  variable_set[728] = 1;
  return result;
}

ExcelValue outputs_emissions_aj72() {
  static ExcelValue result;
  if(variable_set[729] == 1) { return result;}
  result = C158;
  variable_set[729] = 1;
  return result;
}

ExcelValue outputs_emissions_d73() {
  static ExcelValue result;
  if(variable_set[730] == 1) { return result;}
  result = C159;
  variable_set[730] = 1;
  return result;
}

ExcelValue outputs_emissions_d74() {
  static ExcelValue result;
  if(variable_set[731] == 1) { return result;}
  result = C160;
  variable_set[731] = 1;
  return result;
}

ExcelValue outputs_emissions_c77() {
  static ExcelValue result;
  if(variable_set[732] == 1) { return result;}
  result = C170;
  variable_set[732] = 1;
  return result;
}

ExcelValue outputs_emissions_h78() {
  static ExcelValue result;
  if(variable_set[733] == 1) { return result;}
  result = C102;
  variable_set[733] = 1;
  return result;
}

ExcelValue outputs_emissions_r78() {
  static ExcelValue result;
  if(variable_set[734] == 1) { return result;}
  result = C103;
  variable_set[734] = 1;
  return result;
}

ExcelValue outputs_emissions_aa78() {
  static ExcelValue result;
  if(variable_set[735] == 1) { return result;}
  result = C104;
  variable_set[735] = 1;
  return result;
}

ExcelValue outputs_emissions_c79() {
  static ExcelValue result;
  if(variable_set[736] == 1) { return result;}
  result = C171;
  variable_set[736] = 1;
  return result;
}

ExcelValue outputs_emissions_h79() {
  static ExcelValue result;
  if(variable_set[737] == 1) { return result;}
  result = C106;
  variable_set[737] = 1;
  return result;
}

ExcelValue outputs_emissions_i79() {
  static ExcelValue result;
  if(variable_set[738] == 1) { return result;}
  result = C107;
  variable_set[738] = 1;
  return result;
}

ExcelValue outputs_emissions_j79() {
  static ExcelValue result;
  if(variable_set[739] == 1) { return result;}
  result = C108;
  variable_set[739] = 1;
  return result;
}

ExcelValue outputs_emissions_k79() {
  static ExcelValue result;
  if(variable_set[740] == 1) { return result;}
  result = C109;
  variable_set[740] = 1;
  return result;
}

ExcelValue outputs_emissions_l79() {
  static ExcelValue result;
  if(variable_set[741] == 1) { return result;}
  result = C110;
  variable_set[741] = 1;
  return result;
}

ExcelValue outputs_emissions_m79() {
  static ExcelValue result;
  if(variable_set[742] == 1) { return result;}
  result = C111;
  variable_set[742] = 1;
  return result;
}

ExcelValue outputs_emissions_n79() {
  static ExcelValue result;
  if(variable_set[743] == 1) { return result;}
  result = C112;
  variable_set[743] = 1;
  return result;
}

ExcelValue outputs_emissions_o79() {
  static ExcelValue result;
  if(variable_set[744] == 1) { return result;}
  result = C113;
  variable_set[744] = 1;
  return result;
}

ExcelValue outputs_emissions_p79() {
  static ExcelValue result;
  if(variable_set[745] == 1) { return result;}
  result = C114;
  variable_set[745] = 1;
  return result;
}

ExcelValue outputs_emissions_r79() {
  static ExcelValue result;
  if(variable_set[746] == 1) { return result;}
  result = C115;
  variable_set[746] = 1;
  return result;
}

ExcelValue outputs_emissions_s79() {
  static ExcelValue result;
  if(variable_set[747] == 1) { return result;}
  result = C116;
  variable_set[747] = 1;
  return result;
}

ExcelValue outputs_emissions_t79() {
  static ExcelValue result;
  if(variable_set[748] == 1) { return result;}
  result = C117;
  variable_set[748] = 1;
  return result;
}

ExcelValue outputs_emissions_u79() {
  static ExcelValue result;
  if(variable_set[749] == 1) { return result;}
  result = C118;
  variable_set[749] = 1;
  return result;
}

ExcelValue outputs_emissions_v79() {
  static ExcelValue result;
  if(variable_set[750] == 1) { return result;}
  result = C119;
  variable_set[750] = 1;
  return result;
}

ExcelValue outputs_emissions_w79() {
  static ExcelValue result;
  if(variable_set[751] == 1) { return result;}
  result = C120;
  variable_set[751] = 1;
  return result;
}

ExcelValue outputs_emissions_x79() {
  static ExcelValue result;
  if(variable_set[752] == 1) { return result;}
  result = C121;
  variable_set[752] = 1;
  return result;
}

ExcelValue outputs_emissions_y79() {
  static ExcelValue result;
  if(variable_set[753] == 1) { return result;}
  result = C122;
  variable_set[753] = 1;
  return result;
}

ExcelValue outputs_emissions_z79() {
  static ExcelValue result;
  if(variable_set[754] == 1) { return result;}
  result = C123;
  variable_set[754] = 1;
  return result;
}

ExcelValue outputs_emissions_aa79() {
  static ExcelValue result;
  if(variable_set[755] == 1) { return result;}
  result = C124;
  variable_set[755] = 1;
  return result;
}

ExcelValue outputs_emissions_ab79() {
  static ExcelValue result;
  if(variable_set[756] == 1) { return result;}
  result = C157;
  variable_set[756] = 1;
  return result;
}

ExcelValue outputs_emissions_ac79() {
  static ExcelValue result;
  if(variable_set[757] == 1) { return result;}
  result = C126;
  variable_set[757] = 1;
  return result;
}

ExcelValue outputs_emissions_ad79() {
  static ExcelValue result;
  if(variable_set[758] == 1) { return result;}
  result = C127;
  variable_set[758] = 1;
  return result;
}

ExcelValue outputs_emissions_ae79() {
  static ExcelValue result;
  if(variable_set[759] == 1) { return result;}
  result = C128;
  variable_set[759] = 1;
  return result;
}

ExcelValue outputs_emissions_af79() {
  static ExcelValue result;
  if(variable_set[760] == 1) { return result;}
  result = C129;
  variable_set[760] = 1;
  return result;
}

ExcelValue outputs_emissions_ag79() {
  static ExcelValue result;
  if(variable_set[761] == 1) { return result;}
  result = C130;
  variable_set[761] = 1;
  return result;
}

ExcelValue outputs_emissions_ah79() {
  static ExcelValue result;
  if(variable_set[762] == 1) { return result;}
  result = C131;
  variable_set[762] = 1;
  return result;
}

ExcelValue outputs_emissions_ai79() {
  static ExcelValue result;
  if(variable_set[763] == 1) { return result;}
  result = C132;
  variable_set[763] = 1;
  return result;
}

ExcelValue outputs_emissions_aj79() {
  static ExcelValue result;
  if(variable_set[764] == 1) { return result;}
  result = C133;
  variable_set[764] = 1;
  return result;
}

ExcelValue outputs_emissions_c80() {
  static ExcelValue result;
  if(variable_set[765] == 1) { return result;}
  result = C172;
  variable_set[765] = 1;
  return result;
}

ExcelValue outputs_emissions_d80() {
  static ExcelValue result;
  if(variable_set[766] == 1) { return result;}
  result = NA;
  variable_set[766] = 1;
  return result;
}

ExcelValue outputs_emissions_s80() {
  static ExcelValue result;
  if(variable_set[767] == 1) { return result;}
  result = NA;
  variable_set[767] = 1;
  return result;
}

ExcelValue outputs_emissions_c81() {
  static ExcelValue result;
  if(variable_set[768] == 1) { return result;}
  result = C173;
  variable_set[768] = 1;
  return result;
}

ExcelValue outputs_emissions_d81() {
  static ExcelValue result;
  if(variable_set[769] == 1) { return result;}
  result = NA;
  variable_set[769] = 1;
  return result;
}

ExcelValue outputs_emissions_s81() {
  static ExcelValue result;
  if(variable_set[770] == 1) { return result;}
  result = NA;
  variable_set[770] = 1;
  return result;
}

ExcelValue outputs_emissions_c82() {
  static ExcelValue result;
  if(variable_set[771] == 1) { return result;}
  result = C174;
  variable_set[771] = 1;
  return result;
}

ExcelValue outputs_emissions_d82() {
  static ExcelValue result;
  if(variable_set[772] == 1) { return result;}
  result = NA;
  variable_set[772] = 1;
  return result;
}

ExcelValue outputs_emissions_s82() {
  static ExcelValue result;
  if(variable_set[773] == 1) { return result;}
  result = NA;
  variable_set[773] = 1;
  return result;
}

ExcelValue outputs_emissions_c83() {
  static ExcelValue result;
  if(variable_set[774] == 1) { return result;}
  result = C175;
  variable_set[774] = 1;
  return result;
}

ExcelValue outputs_emissions_d83() {
  static ExcelValue result;
  if(variable_set[775] == 1) { return result;}
  result = NA;
  variable_set[775] = 1;
  return result;
}

ExcelValue outputs_emissions_s83() {
  static ExcelValue result;
  if(variable_set[776] == 1) { return result;}
  result = NA;
  variable_set[776] = 1;
  return result;
}

ExcelValue outputs_emissions_c84() {
  static ExcelValue result;
  if(variable_set[777] == 1) { return result;}
  result = C176;
  variable_set[777] = 1;
  return result;
}

ExcelValue outputs_emissions_d84() {
  static ExcelValue result;
  if(variable_set[778] == 1) { return result;}
  result = NA;
  variable_set[778] = 1;
  return result;
}

ExcelValue outputs_emissions_s84() {
  static ExcelValue result;
  if(variable_set[779] == 1) { return result;}
  result = NA;
  variable_set[779] = 1;
  return result;
}

ExcelValue outputs_emissions_c85() {
  static ExcelValue result;
  if(variable_set[780] == 1) { return result;}
  result = C177;
  variable_set[780] = 1;
  return result;
}

ExcelValue outputs_emissions_d85() {
  static ExcelValue result;
  if(variable_set[781] == 1) { return result;}
  result = NA;
  variable_set[781] = 1;
  return result;
}

ExcelValue outputs_emissions_s85() {
  static ExcelValue result;
  if(variable_set[782] == 1) { return result;}
  result = NA;
  variable_set[782] = 1;
  return result;
}

ExcelValue outputs_emissions_c86() {
  static ExcelValue result;
  if(variable_set[783] == 1) { return result;}
  result = C178;
  variable_set[783] = 1;
  return result;
}

ExcelValue outputs_emissions_d86() {
  static ExcelValue result;
  if(variable_set[784] == 1) { return result;}
  result = NA;
  variable_set[784] = 1;
  return result;
}

ExcelValue outputs_emissions_s86() {
  static ExcelValue result;
  if(variable_set[785] == 1) { return result;}
  result = NA;
  variable_set[785] = 1;
  return result;
}

ExcelValue outputs_emissions_c87() {
  static ExcelValue result;
  if(variable_set[786] == 1) { return result;}
  result = C179;
  variable_set[786] = 1;
  return result;
}

ExcelValue outputs_emissions_d87() {
  static ExcelValue result;
  if(variable_set[787] == 1) { return result;}
  result = NA;
  variable_set[787] = 1;
  return result;
}

ExcelValue outputs_emissions_s87() {
  static ExcelValue result;
  if(variable_set[788] == 1) { return result;}
  result = NA;
  variable_set[788] = 1;
  return result;
}

ExcelValue outputs_emissions_c88() {
  static ExcelValue result;
  if(variable_set[789] == 1) { return result;}
  result = C180;
  variable_set[789] = 1;
  return result;
}

ExcelValue outputs_emissions_d88() {
  static ExcelValue result;
  if(variable_set[790] == 1) { return result;}
  result = NA;
  variable_set[790] = 1;
  return result;
}

ExcelValue outputs_emissions_s88() {
  static ExcelValue result;
  if(variable_set[791] == 1) { return result;}
  result = NA;
  variable_set[791] = 1;
  return result;
}

ExcelValue outputs_emissions_d89() {
  static ExcelValue result;
  if(variable_set[792] == 1) { return result;}
  result = C181;
  variable_set[792] = 1;
  return result;
}

ExcelValue outputs_emissions_h89() {
  static ExcelValue result;
  if(variable_set[793] == 1) { return result;}
  result = C158;
  variable_set[793] = 1;
  return result;
}

ExcelValue outputs_emissions_i89() {
  static ExcelValue result;
  if(variable_set[794] == 1) { return result;}
  result = C158;
  variable_set[794] = 1;
  return result;
}

ExcelValue outputs_emissions_j89() {
  static ExcelValue result;
  if(variable_set[795] == 1) { return result;}
  result = C158;
  variable_set[795] = 1;
  return result;
}

ExcelValue outputs_emissions_k89() {
  static ExcelValue result;
  if(variable_set[796] == 1) { return result;}
  result = C158;
  variable_set[796] = 1;
  return result;
}

ExcelValue outputs_emissions_l89() {
  static ExcelValue result;
  if(variable_set[797] == 1) { return result;}
  result = C158;
  variable_set[797] = 1;
  return result;
}

ExcelValue outputs_emissions_m89() {
  static ExcelValue result;
  if(variable_set[798] == 1) { return result;}
  result = C158;
  variable_set[798] = 1;
  return result;
}

ExcelValue outputs_emissions_n89() {
  static ExcelValue result;
  if(variable_set[799] == 1) { return result;}
  result = C158;
  variable_set[799] = 1;
  return result;
}

ExcelValue outputs_emissions_o89() {
  static ExcelValue result;
  if(variable_set[800] == 1) { return result;}
  result = C158;
  variable_set[800] = 1;
  return result;
}

ExcelValue outputs_emissions_p89() {
  static ExcelValue result;
  if(variable_set[801] == 1) { return result;}
  result = C158;
  variable_set[801] = 1;
  return result;
}

ExcelValue outputs_emissions_r89() {
  static ExcelValue result;
  if(variable_set[802] == 1) { return result;}
  result = C158;
  variable_set[802] = 1;
  return result;
}

ExcelValue outputs_emissions_s89() {
  static ExcelValue result;
  if(variable_set[803] == 1) { return result;}
  result = NA;
  variable_set[803] = 1;
  return result;
}

ExcelValue outputs_emissions_t89() {
  static ExcelValue result;
  if(variable_set[804] == 1) { return result;}
  result = C158;
  variable_set[804] = 1;
  return result;
}

ExcelValue outputs_emissions_u89() {
  static ExcelValue result;
  if(variable_set[805] == 1) { return result;}
  result = C158;
  variable_set[805] = 1;
  return result;
}

ExcelValue outputs_emissions_v89() {
  static ExcelValue result;
  if(variable_set[806] == 1) { return result;}
  result = C158;
  variable_set[806] = 1;
  return result;
}

ExcelValue outputs_emissions_w89() {
  static ExcelValue result;
  if(variable_set[807] == 1) { return result;}
  result = C158;
  variable_set[807] = 1;
  return result;
}

ExcelValue outputs_emissions_x89() {
  static ExcelValue result;
  if(variable_set[808] == 1) { return result;}
  result = C158;
  variable_set[808] = 1;
  return result;
}

ExcelValue outputs_emissions_y89() {
  static ExcelValue result;
  if(variable_set[809] == 1) { return result;}
  result = C158;
  variable_set[809] = 1;
  return result;
}

ExcelValue outputs_emissions_z89() {
  static ExcelValue result;
  if(variable_set[810] == 1) { return result;}
  result = C158;
  variable_set[810] = 1;
  return result;
}

ExcelValue outputs_emissions_aa89() {
  static ExcelValue result;
  if(variable_set[811] == 1) { return result;}
  result = C158;
  variable_set[811] = 1;
  return result;
}

ExcelValue outputs_emissions_ab89() {
  static ExcelValue result;
  if(variable_set[812] == 1) { return result;}
  result = C158;
  variable_set[812] = 1;
  return result;
}

ExcelValue outputs_emissions_ac89() {
  static ExcelValue result;
  if(variable_set[813] == 1) { return result;}
  result = C158;
  variable_set[813] = 1;
  return result;
}

ExcelValue outputs_emissions_ad89() {
  static ExcelValue result;
  if(variable_set[814] == 1) { return result;}
  result = C158;
  variable_set[814] = 1;
  return result;
}

ExcelValue outputs_emissions_ae89() {
  static ExcelValue result;
  if(variable_set[815] == 1) { return result;}
  result = C158;
  variable_set[815] = 1;
  return result;
}

ExcelValue outputs_emissions_af89() {
  static ExcelValue result;
  if(variable_set[816] == 1) { return result;}
  result = C158;
  variable_set[816] = 1;
  return result;
}

ExcelValue outputs_emissions_ag89() {
  static ExcelValue result;
  if(variable_set[817] == 1) { return result;}
  result = C158;
  variable_set[817] = 1;
  return result;
}

ExcelValue outputs_emissions_ah89() {
  static ExcelValue result;
  if(variable_set[818] == 1) { return result;}
  result = C158;
  variable_set[818] = 1;
  return result;
}

ExcelValue outputs_emissions_ai89() {
  static ExcelValue result;
  if(variable_set[819] == 1) { return result;}
  result = C158;
  variable_set[819] = 1;
  return result;
}

ExcelValue outputs_emissions_aj89() {
  static ExcelValue result;
  if(variable_set[820] == 1) { return result;}
  result = C158;
  variable_set[820] = 1;
  return result;
}

ExcelValue outputs_emissions_c90() {
  static ExcelValue result;
  if(variable_set[821] == 1) { return result;}
  result = C182;
  variable_set[821] = 1;
  return result;
}

ExcelValue outputs_emissions_c93() {
  static ExcelValue result;
  if(variable_set[822] == 1) { return result;}
  result = C183;
  variable_set[822] = 1;
  return result;
}

ExcelValue outputs_emissions_d93() {
  static ExcelValue result;
  if(variable_set[823] == 1) { return result;}
  result = C184;
  variable_set[823] = 1;
  return result;
}

ExcelValue outputs_emissions_d94() {
  static ExcelValue result;
  if(variable_set[824] == 1) { return result;}
  result = C185;
  variable_set[824] = 1;
  return result;
}

ExcelValue outputs_emissions_b99() {
  static ExcelValue result;
  if(variable_set[825] == 1) { return result;}
  result = C186;
  variable_set[825] = 1;
  return result;
}

ExcelValue outputs_emissions_c99() {
  static ExcelValue result;
  if(variable_set[826] == 1) { return result;}
  result = C187;
  variable_set[826] = 1;
  return result;
}

ExcelValue outputs_emissions_c101() {
  static ExcelValue result;
  if(variable_set[827] == 1) { return result;}
  result = C100;
  variable_set[827] = 1;
  return result;
}

ExcelValue outputs_emissions_aj101() {
  static ExcelValue result;
  if(variable_set[828] == 1) { return result;}
  result = C101;
  variable_set[828] = 1;
  return result;
}

ExcelValue outputs_emissions_h102() {
  static ExcelValue result;
  if(variable_set[829] == 1) { return result;}
  result = C102;
  variable_set[829] = 1;
  return result;
}

ExcelValue outputs_emissions_r102() {
  static ExcelValue result;
  if(variable_set[830] == 1) { return result;}
  result = C103;
  variable_set[830] = 1;
  return result;
}

ExcelValue outputs_emissions_aa102() {
  static ExcelValue result;
  if(variable_set[831] == 1) { return result;}
  result = C104;
  variable_set[831] = 1;
  return result;
}

ExcelValue outputs_emissions_d103() {
  static ExcelValue result;
  if(variable_set[832] == 1) { return result;}
  result = C105;
  variable_set[832] = 1;
  return result;
}

ExcelValue outputs_emissions_h103() {
  static ExcelValue result;
  if(variable_set[833] == 1) { return result;}
  result = C106;
  variable_set[833] = 1;
  return result;
}

ExcelValue outputs_emissions_i103() {
  static ExcelValue result;
  if(variable_set[834] == 1) { return result;}
  result = C107;
  variable_set[834] = 1;
  return result;
}

ExcelValue outputs_emissions_j103() {
  static ExcelValue result;
  if(variable_set[835] == 1) { return result;}
  result = C108;
  variable_set[835] = 1;
  return result;
}

ExcelValue outputs_emissions_k103() {
  static ExcelValue result;
  if(variable_set[836] == 1) { return result;}
  result = C109;
  variable_set[836] = 1;
  return result;
}

ExcelValue outputs_emissions_l103() {
  static ExcelValue result;
  if(variable_set[837] == 1) { return result;}
  result = C110;
  variable_set[837] = 1;
  return result;
}

ExcelValue outputs_emissions_m103() {
  static ExcelValue result;
  if(variable_set[838] == 1) { return result;}
  result = C111;
  variable_set[838] = 1;
  return result;
}

ExcelValue outputs_emissions_n103() {
  static ExcelValue result;
  if(variable_set[839] == 1) { return result;}
  result = C112;
  variable_set[839] = 1;
  return result;
}

ExcelValue outputs_emissions_o103() {
  static ExcelValue result;
  if(variable_set[840] == 1) { return result;}
  result = C113;
  variable_set[840] = 1;
  return result;
}

ExcelValue outputs_emissions_p103() {
  static ExcelValue result;
  if(variable_set[841] == 1) { return result;}
  result = C114;
  variable_set[841] = 1;
  return result;
}

ExcelValue outputs_emissions_r103() {
  static ExcelValue result;
  if(variable_set[842] == 1) { return result;}
  result = C115;
  variable_set[842] = 1;
  return result;
}

ExcelValue outputs_emissions_s103() {
  static ExcelValue result;
  if(variable_set[843] == 1) { return result;}
  result = C116;
  variable_set[843] = 1;
  return result;
}

ExcelValue outputs_emissions_t103() {
  static ExcelValue result;
  if(variable_set[844] == 1) { return result;}
  result = C117;
  variable_set[844] = 1;
  return result;
}

ExcelValue outputs_emissions_u103() {
  static ExcelValue result;
  if(variable_set[845] == 1) { return result;}
  result = C118;
  variable_set[845] = 1;
  return result;
}

ExcelValue outputs_emissions_v103() {
  static ExcelValue result;
  if(variable_set[846] == 1) { return result;}
  result = C119;
  variable_set[846] = 1;
  return result;
}

ExcelValue outputs_emissions_w103() {
  static ExcelValue result;
  if(variable_set[847] == 1) { return result;}
  result = C120;
  variable_set[847] = 1;
  return result;
}

ExcelValue outputs_emissions_x103() {
  static ExcelValue result;
  if(variable_set[848] == 1) { return result;}
  result = C121;
  variable_set[848] = 1;
  return result;
}

ExcelValue outputs_emissions_y103() {
  static ExcelValue result;
  if(variable_set[849] == 1) { return result;}
  result = C122;
  variable_set[849] = 1;
  return result;
}

ExcelValue outputs_emissions_z103() {
  static ExcelValue result;
  if(variable_set[850] == 1) { return result;}
  result = C123;
  variable_set[850] = 1;
  return result;
}

ExcelValue outputs_emissions_aa103() {
  static ExcelValue result;
  if(variable_set[851] == 1) { return result;}
  result = C124;
  variable_set[851] = 1;
  return result;
}

ExcelValue outputs_emissions_ab103() {
  static ExcelValue result;
  if(variable_set[852] == 1) { return result;}
  result = C125;
  variable_set[852] = 1;
  return result;
}

ExcelValue outputs_emissions_ac103() {
  static ExcelValue result;
  if(variable_set[853] == 1) { return result;}
  result = C126;
  variable_set[853] = 1;
  return result;
}

ExcelValue outputs_emissions_ad103() {
  static ExcelValue result;
  if(variable_set[854] == 1) { return result;}
  result = C127;
  variable_set[854] = 1;
  return result;
}

ExcelValue outputs_emissions_ae103() {
  static ExcelValue result;
  if(variable_set[855] == 1) { return result;}
  result = C128;
  variable_set[855] = 1;
  return result;
}

ExcelValue outputs_emissions_af103() {
  static ExcelValue result;
  if(variable_set[856] == 1) { return result;}
  result = C129;
  variable_set[856] = 1;
  return result;
}

ExcelValue outputs_emissions_ag103() {
  static ExcelValue result;
  if(variable_set[857] == 1) { return result;}
  result = C130;
  variable_set[857] = 1;
  return result;
}

ExcelValue outputs_emissions_ah103() {
  static ExcelValue result;
  if(variable_set[858] == 1) { return result;}
  result = C131;
  variable_set[858] = 1;
  return result;
}

ExcelValue outputs_emissions_ai103() {
  static ExcelValue result;
  if(variable_set[859] == 1) { return result;}
  result = C132;
  variable_set[859] = 1;
  return result;
}

ExcelValue outputs_emissions_aj103() {
  static ExcelValue result;
  if(variable_set[860] == 1) { return result;}
  result = C133;
  variable_set[860] = 1;
  return result;
}

ExcelValue outputs_emissions_c104() {
  static ExcelValue result;
  if(variable_set[861] == 1) { return result;}
  result = C134;
  variable_set[861] = 1;
  return result;
}

ExcelValue outputs_emissions_d104() {
  static ExcelValue result;
  if(variable_set[862] == 1) { return result;}
  result = C135;
  variable_set[862] = 1;
  return result;
}

ExcelValue outputs_emissions_h104() {
  static ExcelValue result;
  if(variable_set[863] == 1) { return result;}
  result = C136;
  variable_set[863] = 1;
  return result;
}

ExcelValue outputs_emissions_i104() {
  static ExcelValue result;
  if(variable_set[864] == 1) { return result;}
  result = C136;
  variable_set[864] = 1;
  return result;
}

ExcelValue outputs_emissions_j104() {
  static ExcelValue result;
  if(variable_set[865] == 1) { return result;}
  result = C136;
  variable_set[865] = 1;
  return result;
}

ExcelValue outputs_emissions_k104() {
  static ExcelValue result;
  if(variable_set[866] == 1) { return result;}
  result = C136;
  variable_set[866] = 1;
  return result;
}

ExcelValue outputs_emissions_l104() {
  static ExcelValue result;
  if(variable_set[867] == 1) { return result;}
  result = C136;
  variable_set[867] = 1;
  return result;
}

ExcelValue outputs_emissions_m104() {
  static ExcelValue result;
  if(variable_set[868] == 1) { return result;}
  result = C136;
  variable_set[868] = 1;
  return result;
}

ExcelValue outputs_emissions_n104() {
  static ExcelValue result;
  if(variable_set[869] == 1) { return result;}
  result = C136;
  variable_set[869] = 1;
  return result;
}

ExcelValue outputs_emissions_o104() {
  static ExcelValue result;
  if(variable_set[870] == 1) { return result;}
  result = C136;
  variable_set[870] = 1;
  return result;
}

ExcelValue outputs_emissions_p104() {
  static ExcelValue result;
  if(variable_set[871] == 1) { return result;}
  result = C136;
  variable_set[871] = 1;
  return result;
}

ExcelValue outputs_emissions_r104() {
  static ExcelValue result;
  if(variable_set[872] == 1) { return result;}
  result = C136;
  variable_set[872] = 1;
  return result;
}

ExcelValue outputs_emissions_s104() {
  static ExcelValue result;
  if(variable_set[873] == 1) { return result;}
  result = C136;
  variable_set[873] = 1;
  return result;
}

ExcelValue outputs_emissions_t104() {
  static ExcelValue result;
  if(variable_set[874] == 1) { return result;}
  result = C136;
  variable_set[874] = 1;
  return result;
}

ExcelValue outputs_emissions_u104() {
  static ExcelValue result;
  if(variable_set[875] == 1) { return result;}
  result = C136;
  variable_set[875] = 1;
  return result;
}

ExcelValue outputs_emissions_v104() {
  static ExcelValue result;
  if(variable_set[876] == 1) { return result;}
  result = C136;
  variable_set[876] = 1;
  return result;
}

ExcelValue outputs_emissions_w104() {
  static ExcelValue result;
  if(variable_set[877] == 1) { return result;}
  result = C136;
  variable_set[877] = 1;
  return result;
}

ExcelValue outputs_emissions_x104() {
  static ExcelValue result;
  if(variable_set[878] == 1) { return result;}
  result = C136;
  variable_set[878] = 1;
  return result;
}

ExcelValue outputs_emissions_y104() {
  static ExcelValue result;
  if(variable_set[879] == 1) { return result;}
  result = C136;
  variable_set[879] = 1;
  return result;
}

ExcelValue outputs_emissions_z104() {
  static ExcelValue result;
  if(variable_set[880] == 1) { return result;}
  result = C136;
  variable_set[880] = 1;
  return result;
}

ExcelValue outputs_emissions_aa104() {
  static ExcelValue result;
  if(variable_set[881] == 1) { return result;}
  result = C136;
  variable_set[881] = 1;
  return result;
}

ExcelValue outputs_emissions_ab104() {
  static ExcelValue result;
  if(variable_set[882] == 1) { return result;}
  result = C136;
  variable_set[882] = 1;
  return result;
}

ExcelValue outputs_emissions_ac104() {
  static ExcelValue result;
  if(variable_set[883] == 1) { return result;}
  result = C136;
  variable_set[883] = 1;
  return result;
}

ExcelValue outputs_emissions_ad104() {
  static ExcelValue result;
  if(variable_set[884] == 1) { return result;}
  result = C136;
  variable_set[884] = 1;
  return result;
}

ExcelValue outputs_emissions_ae104() {
  static ExcelValue result;
  if(variable_set[885] == 1) { return result;}
  result = C136;
  variable_set[885] = 1;
  return result;
}

ExcelValue outputs_emissions_af104() {
  static ExcelValue result;
  if(variable_set[886] == 1) { return result;}
  result = C136;
  variable_set[886] = 1;
  return result;
}

ExcelValue outputs_emissions_ag104() {
  static ExcelValue result;
  if(variable_set[887] == 1) { return result;}
  result = C136;
  variable_set[887] = 1;
  return result;
}

ExcelValue outputs_emissions_ah104() {
  static ExcelValue result;
  if(variable_set[888] == 1) { return result;}
  result = C136;
  variable_set[888] = 1;
  return result;
}

ExcelValue outputs_emissions_ai104() {
  static ExcelValue result;
  if(variable_set[889] == 1) { return result;}
  result = C136;
  variable_set[889] = 1;
  return result;
}

ExcelValue outputs_emissions_aj104() {
  static ExcelValue result;
  if(variable_set[890] == 1) { return result;}
  result = C136;
  variable_set[890] = 1;
  return result;
}

ExcelValue outputs_emissions_c105() {
  static ExcelValue result;
  if(variable_set[891] == 1) { return result;}
  result = C137;
  variable_set[891] = 1;
  return result;
}

ExcelValue outputs_emissions_d105() {
  static ExcelValue result;
  if(variable_set[892] == 1) { return result;}
  result = C138;
  variable_set[892] = 1;
  return result;
}

ExcelValue outputs_emissions_h105() {
  static ExcelValue result;
  if(variable_set[893] == 1) { return result;}
  result = C136;
  variable_set[893] = 1;
  return result;
}

ExcelValue outputs_emissions_i105() {
  static ExcelValue result;
  if(variable_set[894] == 1) { return result;}
  result = C136;
  variable_set[894] = 1;
  return result;
}

ExcelValue outputs_emissions_j105() {
  static ExcelValue result;
  if(variable_set[895] == 1) { return result;}
  result = C136;
  variable_set[895] = 1;
  return result;
}

ExcelValue outputs_emissions_k105() {
  static ExcelValue result;
  if(variable_set[896] == 1) { return result;}
  result = C136;
  variable_set[896] = 1;
  return result;
}

ExcelValue outputs_emissions_l105() {
  static ExcelValue result;
  if(variable_set[897] == 1) { return result;}
  result = C136;
  variable_set[897] = 1;
  return result;
}

ExcelValue outputs_emissions_m105() {
  static ExcelValue result;
  if(variable_set[898] == 1) { return result;}
  result = C136;
  variable_set[898] = 1;
  return result;
}

ExcelValue outputs_emissions_n105() {
  static ExcelValue result;
  if(variable_set[899] == 1) { return result;}
  result = C136;
  variable_set[899] = 1;
  return result;
}

ExcelValue outputs_emissions_o105() {
  static ExcelValue result;
  if(variable_set[900] == 1) { return result;}
  result = C136;
  variable_set[900] = 1;
  return result;
}

ExcelValue outputs_emissions_p105() {
  static ExcelValue result;
  if(variable_set[901] == 1) { return result;}
  result = C136;
  variable_set[901] = 1;
  return result;
}

ExcelValue outputs_emissions_r105() {
  static ExcelValue result;
  if(variable_set[902] == 1) { return result;}
  result = C136;
  variable_set[902] = 1;
  return result;
}

ExcelValue outputs_emissions_s105() {
  static ExcelValue result;
  if(variable_set[903] == 1) { return result;}
  result = C136;
  variable_set[903] = 1;
  return result;
}

ExcelValue outputs_emissions_t105() {
  static ExcelValue result;
  if(variable_set[904] == 1) { return result;}
  result = C136;
  variable_set[904] = 1;
  return result;
}

ExcelValue outputs_emissions_u105() {
  static ExcelValue result;
  if(variable_set[905] == 1) { return result;}
  result = C136;
  variable_set[905] = 1;
  return result;
}

ExcelValue outputs_emissions_v105() {
  static ExcelValue result;
  if(variable_set[906] == 1) { return result;}
  result = C136;
  variable_set[906] = 1;
  return result;
}

ExcelValue outputs_emissions_w105() {
  static ExcelValue result;
  if(variable_set[907] == 1) { return result;}
  result = C136;
  variable_set[907] = 1;
  return result;
}

ExcelValue outputs_emissions_x105() {
  static ExcelValue result;
  if(variable_set[908] == 1) { return result;}
  result = C136;
  variable_set[908] = 1;
  return result;
}

ExcelValue outputs_emissions_y105() {
  static ExcelValue result;
  if(variable_set[909] == 1) { return result;}
  result = C136;
  variable_set[909] = 1;
  return result;
}

ExcelValue outputs_emissions_z105() {
  static ExcelValue result;
  if(variable_set[910] == 1) { return result;}
  result = C136;
  variable_set[910] = 1;
  return result;
}

ExcelValue outputs_emissions_aa105() {
  static ExcelValue result;
  if(variable_set[911] == 1) { return result;}
  result = C136;
  variable_set[911] = 1;
  return result;
}

ExcelValue outputs_emissions_ab105() {
  static ExcelValue result;
  if(variable_set[912] == 1) { return result;}
  result = C136;
  variable_set[912] = 1;
  return result;
}

ExcelValue outputs_emissions_ac105() {
  static ExcelValue result;
  if(variable_set[913] == 1) { return result;}
  result = C136;
  variable_set[913] = 1;
  return result;
}

ExcelValue outputs_emissions_ad105() {
  static ExcelValue result;
  if(variable_set[914] == 1) { return result;}
  result = C136;
  variable_set[914] = 1;
  return result;
}

ExcelValue outputs_emissions_ae105() {
  static ExcelValue result;
  if(variable_set[915] == 1) { return result;}
  result = C136;
  variable_set[915] = 1;
  return result;
}

ExcelValue outputs_emissions_af105() {
  static ExcelValue result;
  if(variable_set[916] == 1) { return result;}
  result = C136;
  variable_set[916] = 1;
  return result;
}

ExcelValue outputs_emissions_ag105() {
  static ExcelValue result;
  if(variable_set[917] == 1) { return result;}
  result = C136;
  variable_set[917] = 1;
  return result;
}

ExcelValue outputs_emissions_ah105() {
  static ExcelValue result;
  if(variable_set[918] == 1) { return result;}
  result = C136;
  variable_set[918] = 1;
  return result;
}

ExcelValue outputs_emissions_ai105() {
  static ExcelValue result;
  if(variable_set[919] == 1) { return result;}
  result = C136;
  variable_set[919] = 1;
  return result;
}

ExcelValue outputs_emissions_aj105() {
  static ExcelValue result;
  if(variable_set[920] == 1) { return result;}
  result = C136;
  variable_set[920] = 1;
  return result;
}

ExcelValue outputs_emissions_c106() {
  static ExcelValue result;
  if(variable_set[921] == 1) { return result;}
  result = C139;
  variable_set[921] = 1;
  return result;
}

ExcelValue outputs_emissions_d106() {
  static ExcelValue result;
  if(variable_set[922] == 1) { return result;}
  result = C140;
  variable_set[922] = 1;
  return result;
}

ExcelValue outputs_emissions_h106() {
  static ExcelValue result;
  if(variable_set[923] == 1) { return result;}
  result = C136;
  variable_set[923] = 1;
  return result;
}

ExcelValue outputs_emissions_i106() {
  static ExcelValue result;
  if(variable_set[924] == 1) { return result;}
  result = C136;
  variable_set[924] = 1;
  return result;
}

ExcelValue outputs_emissions_j106() {
  static ExcelValue result;
  if(variable_set[925] == 1) { return result;}
  result = C136;
  variable_set[925] = 1;
  return result;
}

ExcelValue outputs_emissions_k106() {
  static ExcelValue result;
  if(variable_set[926] == 1) { return result;}
  result = C136;
  variable_set[926] = 1;
  return result;
}

ExcelValue outputs_emissions_l106() {
  static ExcelValue result;
  if(variable_set[927] == 1) { return result;}
  result = C136;
  variable_set[927] = 1;
  return result;
}

ExcelValue outputs_emissions_m106() {
  static ExcelValue result;
  if(variable_set[928] == 1) { return result;}
  result = C136;
  variable_set[928] = 1;
  return result;
}

ExcelValue outputs_emissions_n106() {
  static ExcelValue result;
  if(variable_set[929] == 1) { return result;}
  result = C136;
  variable_set[929] = 1;
  return result;
}

ExcelValue outputs_emissions_o106() {
  static ExcelValue result;
  if(variable_set[930] == 1) { return result;}
  result = C136;
  variable_set[930] = 1;
  return result;
}

ExcelValue outputs_emissions_p106() {
  static ExcelValue result;
  if(variable_set[931] == 1) { return result;}
  result = C136;
  variable_set[931] = 1;
  return result;
}

ExcelValue outputs_emissions_r106() {
  static ExcelValue result;
  if(variable_set[932] == 1) { return result;}
  result = C136;
  variable_set[932] = 1;
  return result;
}

ExcelValue outputs_emissions_s106() {
  static ExcelValue result;
  if(variable_set[933] == 1) { return result;}
  result = C136;
  variable_set[933] = 1;
  return result;
}

ExcelValue outputs_emissions_t106() {
  static ExcelValue result;
  if(variable_set[934] == 1) { return result;}
  result = C136;
  variable_set[934] = 1;
  return result;
}

ExcelValue outputs_emissions_u106() {
  static ExcelValue result;
  if(variable_set[935] == 1) { return result;}
  result = C136;
  variable_set[935] = 1;
  return result;
}

ExcelValue outputs_emissions_v106() {
  static ExcelValue result;
  if(variable_set[936] == 1) { return result;}
  result = C136;
  variable_set[936] = 1;
  return result;
}

ExcelValue outputs_emissions_w106() {
  static ExcelValue result;
  if(variable_set[937] == 1) { return result;}
  result = C136;
  variable_set[937] = 1;
  return result;
}

ExcelValue outputs_emissions_x106() {
  static ExcelValue result;
  if(variable_set[938] == 1) { return result;}
  result = C136;
  variable_set[938] = 1;
  return result;
}

ExcelValue outputs_emissions_y106() {
  static ExcelValue result;
  if(variable_set[939] == 1) { return result;}
  result = C136;
  variable_set[939] = 1;
  return result;
}

ExcelValue outputs_emissions_z106() {
  static ExcelValue result;
  if(variable_set[940] == 1) { return result;}
  result = C136;
  variable_set[940] = 1;
  return result;
}

ExcelValue outputs_emissions_aa106() {
  static ExcelValue result;
  if(variable_set[941] == 1) { return result;}
  result = C136;
  variable_set[941] = 1;
  return result;
}

ExcelValue outputs_emissions_ab106() {
  static ExcelValue result;
  if(variable_set[942] == 1) { return result;}
  result = C136;
  variable_set[942] = 1;
  return result;
}

ExcelValue outputs_emissions_ac106() {
  static ExcelValue result;
  if(variable_set[943] == 1) { return result;}
  result = C136;
  variable_set[943] = 1;
  return result;
}

ExcelValue outputs_emissions_ad106() {
  static ExcelValue result;
  if(variable_set[944] == 1) { return result;}
  result = C136;
  variable_set[944] = 1;
  return result;
}

ExcelValue outputs_emissions_ae106() {
  static ExcelValue result;
  if(variable_set[945] == 1) { return result;}
  result = C136;
  variable_set[945] = 1;
  return result;
}

ExcelValue outputs_emissions_af106() {
  static ExcelValue result;
  if(variable_set[946] == 1) { return result;}
  result = C136;
  variable_set[946] = 1;
  return result;
}

ExcelValue outputs_emissions_ag106() {
  static ExcelValue result;
  if(variable_set[947] == 1) { return result;}
  result = C136;
  variable_set[947] = 1;
  return result;
}

ExcelValue outputs_emissions_ah106() {
  static ExcelValue result;
  if(variable_set[948] == 1) { return result;}
  result = C136;
  variable_set[948] = 1;
  return result;
}

ExcelValue outputs_emissions_ai106() {
  static ExcelValue result;
  if(variable_set[949] == 1) { return result;}
  result = C136;
  variable_set[949] = 1;
  return result;
}

ExcelValue outputs_emissions_aj106() {
  static ExcelValue result;
  if(variable_set[950] == 1) { return result;}
  result = C136;
  variable_set[950] = 1;
  return result;
}

ExcelValue outputs_emissions_c107() {
  static ExcelValue result;
  if(variable_set[951] == 1) { return result;}
  result = C141;
  variable_set[951] = 1;
  return result;
}

ExcelValue outputs_emissions_d107() {
  static ExcelValue result;
  if(variable_set[952] == 1) { return result;}
  result = C142;
  variable_set[952] = 1;
  return result;
}

ExcelValue outputs_emissions_h107() {
  static ExcelValue result;
  if(variable_set[953] == 1) { return result;}
  result = C136;
  variable_set[953] = 1;
  return result;
}

ExcelValue outputs_emissions_i107() {
  static ExcelValue result;
  if(variable_set[954] == 1) { return result;}
  result = C136;
  variable_set[954] = 1;
  return result;
}

ExcelValue outputs_emissions_j107() {
  static ExcelValue result;
  if(variable_set[955] == 1) { return result;}
  result = C136;
  variable_set[955] = 1;
  return result;
}

ExcelValue outputs_emissions_k107() {
  static ExcelValue result;
  if(variable_set[956] == 1) { return result;}
  result = C136;
  variable_set[956] = 1;
  return result;
}

ExcelValue outputs_emissions_l107() {
  static ExcelValue result;
  if(variable_set[957] == 1) { return result;}
  result = C136;
  variable_set[957] = 1;
  return result;
}

ExcelValue outputs_emissions_m107() {
  static ExcelValue result;
  if(variable_set[958] == 1) { return result;}
  result = C136;
  variable_set[958] = 1;
  return result;
}

ExcelValue outputs_emissions_n107() {
  static ExcelValue result;
  if(variable_set[959] == 1) { return result;}
  result = C136;
  variable_set[959] = 1;
  return result;
}

ExcelValue outputs_emissions_o107() {
  static ExcelValue result;
  if(variable_set[960] == 1) { return result;}
  result = C136;
  variable_set[960] = 1;
  return result;
}

ExcelValue outputs_emissions_p107() {
  static ExcelValue result;
  if(variable_set[961] == 1) { return result;}
  result = C136;
  variable_set[961] = 1;
  return result;
}

ExcelValue outputs_emissions_r107() {
  static ExcelValue result;
  if(variable_set[962] == 1) { return result;}
  result = C136;
  variable_set[962] = 1;
  return result;
}

ExcelValue outputs_emissions_s107() {
  static ExcelValue result;
  if(variable_set[963] == 1) { return result;}
  result = C136;
  variable_set[963] = 1;
  return result;
}

ExcelValue outputs_emissions_t107() {
  static ExcelValue result;
  if(variable_set[964] == 1) { return result;}
  result = C136;
  variable_set[964] = 1;
  return result;
}

ExcelValue outputs_emissions_u107() {
  static ExcelValue result;
  if(variable_set[965] == 1) { return result;}
  result = C136;
  variable_set[965] = 1;
  return result;
}

ExcelValue outputs_emissions_v107() {
  static ExcelValue result;
  if(variable_set[966] == 1) { return result;}
  result = C136;
  variable_set[966] = 1;
  return result;
}

ExcelValue outputs_emissions_w107() {
  static ExcelValue result;
  if(variable_set[967] == 1) { return result;}
  result = C136;
  variable_set[967] = 1;
  return result;
}

ExcelValue outputs_emissions_x107() {
  static ExcelValue result;
  if(variable_set[968] == 1) { return result;}
  result = C136;
  variable_set[968] = 1;
  return result;
}

ExcelValue outputs_emissions_y107() {
  static ExcelValue result;
  if(variable_set[969] == 1) { return result;}
  result = C136;
  variable_set[969] = 1;
  return result;
}

ExcelValue outputs_emissions_z107() {
  static ExcelValue result;
  if(variable_set[970] == 1) { return result;}
  result = C136;
  variable_set[970] = 1;
  return result;
}

ExcelValue outputs_emissions_aa107() {
  static ExcelValue result;
  if(variable_set[971] == 1) { return result;}
  result = C136;
  variable_set[971] = 1;
  return result;
}

ExcelValue outputs_emissions_ab107() {
  static ExcelValue result;
  if(variable_set[972] == 1) { return result;}
  result = C136;
  variable_set[972] = 1;
  return result;
}

ExcelValue outputs_emissions_ac107() {
  static ExcelValue result;
  if(variable_set[973] == 1) { return result;}
  result = C136;
  variable_set[973] = 1;
  return result;
}

ExcelValue outputs_emissions_ad107() {
  static ExcelValue result;
  if(variable_set[974] == 1) { return result;}
  result = C136;
  variable_set[974] = 1;
  return result;
}

ExcelValue outputs_emissions_ae107() {
  static ExcelValue result;
  if(variable_set[975] == 1) { return result;}
  result = C136;
  variable_set[975] = 1;
  return result;
}

ExcelValue outputs_emissions_af107() {
  static ExcelValue result;
  if(variable_set[976] == 1) { return result;}
  result = C136;
  variable_set[976] = 1;
  return result;
}

ExcelValue outputs_emissions_ag107() {
  static ExcelValue result;
  if(variable_set[977] == 1) { return result;}
  result = C136;
  variable_set[977] = 1;
  return result;
}

ExcelValue outputs_emissions_ah107() {
  static ExcelValue result;
  if(variable_set[978] == 1) { return result;}
  result = C136;
  variable_set[978] = 1;
  return result;
}

ExcelValue outputs_emissions_ai107() {
  static ExcelValue result;
  if(variable_set[979] == 1) { return result;}
  result = C136;
  variable_set[979] = 1;
  return result;
}

ExcelValue outputs_emissions_aj107() {
  static ExcelValue result;
  if(variable_set[980] == 1) { return result;}
  result = C136;
  variable_set[980] = 1;
  return result;
}

ExcelValue outputs_emissions_c108() {
  static ExcelValue result;
  if(variable_set[981] == 1) { return result;}
  result = C143;
  variable_set[981] = 1;
  return result;
}

ExcelValue outputs_emissions_d108() {
  static ExcelValue result;
  if(variable_set[982] == 1) { return result;}
  result = C144;
  variable_set[982] = 1;
  return result;
}

ExcelValue outputs_emissions_h108() {
  static ExcelValue result;
  if(variable_set[983] == 1) { return result;}
  result = C136;
  variable_set[983] = 1;
  return result;
}

ExcelValue outputs_emissions_i108() {
  static ExcelValue result;
  if(variable_set[984] == 1) { return result;}
  result = C136;
  variable_set[984] = 1;
  return result;
}

ExcelValue outputs_emissions_j108() {
  static ExcelValue result;
  if(variable_set[985] == 1) { return result;}
  result = C136;
  variable_set[985] = 1;
  return result;
}

ExcelValue outputs_emissions_k108() {
  static ExcelValue result;
  if(variable_set[986] == 1) { return result;}
  result = C136;
  variable_set[986] = 1;
  return result;
}

ExcelValue outputs_emissions_l108() {
  static ExcelValue result;
  if(variable_set[987] == 1) { return result;}
  result = C136;
  variable_set[987] = 1;
  return result;
}

ExcelValue outputs_emissions_m108() {
  static ExcelValue result;
  if(variable_set[988] == 1) { return result;}
  result = C136;
  variable_set[988] = 1;
  return result;
}

ExcelValue outputs_emissions_n108() {
  static ExcelValue result;
  if(variable_set[989] == 1) { return result;}
  result = C136;
  variable_set[989] = 1;
  return result;
}

ExcelValue outputs_emissions_o108() {
  static ExcelValue result;
  if(variable_set[990] == 1) { return result;}
  result = C136;
  variable_set[990] = 1;
  return result;
}

ExcelValue outputs_emissions_p108() {
  static ExcelValue result;
  if(variable_set[991] == 1) { return result;}
  result = C136;
  variable_set[991] = 1;
  return result;
}

ExcelValue outputs_emissions_r108() {
  static ExcelValue result;
  if(variable_set[992] == 1) { return result;}
  result = C136;
  variable_set[992] = 1;
  return result;
}

ExcelValue outputs_emissions_s108() {
  static ExcelValue result;
  if(variable_set[993] == 1) { return result;}
  result = C136;
  variable_set[993] = 1;
  return result;
}

ExcelValue outputs_emissions_t108() {
  static ExcelValue result;
  if(variable_set[994] == 1) { return result;}
  result = C136;
  variable_set[994] = 1;
  return result;
}

ExcelValue outputs_emissions_u108() {
  static ExcelValue result;
  if(variable_set[995] == 1) { return result;}
  result = C136;
  variable_set[995] = 1;
  return result;
}

ExcelValue outputs_emissions_v108() {
  static ExcelValue result;
  if(variable_set[996] == 1) { return result;}
  result = C136;
  variable_set[996] = 1;
  return result;
}

ExcelValue outputs_emissions_w108() {
  static ExcelValue result;
  if(variable_set[997] == 1) { return result;}
  result = C136;
  variable_set[997] = 1;
  return result;
}

ExcelValue outputs_emissions_x108() {
  static ExcelValue result;
  if(variable_set[998] == 1) { return result;}
  result = C136;
  variable_set[998] = 1;
  return result;
}

ExcelValue outputs_emissions_y108() {
  static ExcelValue result;
  if(variable_set[999] == 1) { return result;}
  result = C136;
  variable_set[999] = 1;
  return result;
}

ExcelValue outputs_emissions_z108() {
  static ExcelValue result;
  if(variable_set[1000] == 1) { return result;}
  result = C136;
  variable_set[1000] = 1;
  return result;
}

ExcelValue outputs_emissions_aa108() {
  static ExcelValue result;
  if(variable_set[1001] == 1) { return result;}
  result = C136;
  variable_set[1001] = 1;
  return result;
}

ExcelValue outputs_emissions_ab108() {
  static ExcelValue result;
  if(variable_set[1002] == 1) { return result;}
  result = C136;
  variable_set[1002] = 1;
  return result;
}

ExcelValue outputs_emissions_ac108() {
  static ExcelValue result;
  if(variable_set[1003] == 1) { return result;}
  result = C136;
  variable_set[1003] = 1;
  return result;
}

ExcelValue outputs_emissions_ad108() {
  static ExcelValue result;
  if(variable_set[1004] == 1) { return result;}
  result = C136;
  variable_set[1004] = 1;
  return result;
}

ExcelValue outputs_emissions_ae108() {
  static ExcelValue result;
  if(variable_set[1005] == 1) { return result;}
  result = C136;
  variable_set[1005] = 1;
  return result;
}

ExcelValue outputs_emissions_af108() {
  static ExcelValue result;
  if(variable_set[1006] == 1) { return result;}
  result = C136;
  variable_set[1006] = 1;
  return result;
}

ExcelValue outputs_emissions_ag108() {
  static ExcelValue result;
  if(variable_set[1007] == 1) { return result;}
  result = C136;
  variable_set[1007] = 1;
  return result;
}

ExcelValue outputs_emissions_ah108() {
  static ExcelValue result;
  if(variable_set[1008] == 1) { return result;}
  result = C136;
  variable_set[1008] = 1;
  return result;
}

ExcelValue outputs_emissions_ai108() {
  static ExcelValue result;
  if(variable_set[1009] == 1) { return result;}
  result = C136;
  variable_set[1009] = 1;
  return result;
}

ExcelValue outputs_emissions_aj108() {
  static ExcelValue result;
  if(variable_set[1010] == 1) { return result;}
  result = C136;
  variable_set[1010] = 1;
  return result;
}

ExcelValue outputs_emissions_c109() {
  static ExcelValue result;
  if(variable_set[1011] == 1) { return result;}
  result = C145;
  variable_set[1011] = 1;
  return result;
}

ExcelValue outputs_emissions_d109() {
  static ExcelValue result;
  if(variable_set[1012] == 1) { return result;}
  result = C146;
  variable_set[1012] = 1;
  return result;
}

ExcelValue outputs_emissions_h109() {
  static ExcelValue result;
  if(variable_set[1013] == 1) { return result;}
  result = C136;
  variable_set[1013] = 1;
  return result;
}

ExcelValue outputs_emissions_i109() {
  static ExcelValue result;
  if(variable_set[1014] == 1) { return result;}
  result = C136;
  variable_set[1014] = 1;
  return result;
}

ExcelValue outputs_emissions_j109() {
  static ExcelValue result;
  if(variable_set[1015] == 1) { return result;}
  result = C136;
  variable_set[1015] = 1;
  return result;
}

ExcelValue outputs_emissions_k109() {
  static ExcelValue result;
  if(variable_set[1016] == 1) { return result;}
  result = C136;
  variable_set[1016] = 1;
  return result;
}

ExcelValue outputs_emissions_l109() {
  static ExcelValue result;
  if(variable_set[1017] == 1) { return result;}
  result = C136;
  variable_set[1017] = 1;
  return result;
}

ExcelValue outputs_emissions_m109() {
  static ExcelValue result;
  if(variable_set[1018] == 1) { return result;}
  result = C136;
  variable_set[1018] = 1;
  return result;
}

ExcelValue outputs_emissions_n109() {
  static ExcelValue result;
  if(variable_set[1019] == 1) { return result;}
  result = C136;
  variable_set[1019] = 1;
  return result;
}

ExcelValue outputs_emissions_o109() {
  static ExcelValue result;
  if(variable_set[1020] == 1) { return result;}
  result = C136;
  variable_set[1020] = 1;
  return result;
}

ExcelValue outputs_emissions_p109() {
  static ExcelValue result;
  if(variable_set[1021] == 1) { return result;}
  result = C136;
  variable_set[1021] = 1;
  return result;
}

ExcelValue outputs_emissions_r109() {
  static ExcelValue result;
  if(variable_set[1022] == 1) { return result;}
  result = C136;
  variable_set[1022] = 1;
  return result;
}

ExcelValue outputs_emissions_s109() {
  static ExcelValue result;
  if(variable_set[1023] == 1) { return result;}
  result = C136;
  variable_set[1023] = 1;
  return result;
}

ExcelValue outputs_emissions_t109() {
  static ExcelValue result;
  if(variable_set[1024] == 1) { return result;}
  result = C136;
  variable_set[1024] = 1;
  return result;
}

ExcelValue outputs_emissions_u109() {
  static ExcelValue result;
  if(variable_set[1025] == 1) { return result;}
  result = C136;
  variable_set[1025] = 1;
  return result;
}

ExcelValue outputs_emissions_v109() {
  static ExcelValue result;
  if(variable_set[1026] == 1) { return result;}
  result = C136;
  variable_set[1026] = 1;
  return result;
}

ExcelValue outputs_emissions_w109() {
  static ExcelValue result;
  if(variable_set[1027] == 1) { return result;}
  result = C136;
  variable_set[1027] = 1;
  return result;
}

ExcelValue outputs_emissions_x109() {
  static ExcelValue result;
  if(variable_set[1028] == 1) { return result;}
  result = C136;
  variable_set[1028] = 1;
  return result;
}

ExcelValue outputs_emissions_y109() {
  static ExcelValue result;
  if(variable_set[1029] == 1) { return result;}
  result = C136;
  variable_set[1029] = 1;
  return result;
}

ExcelValue outputs_emissions_z109() {
  static ExcelValue result;
  if(variable_set[1030] == 1) { return result;}
  result = C136;
  variable_set[1030] = 1;
  return result;
}

ExcelValue outputs_emissions_aa109() {
  static ExcelValue result;
  if(variable_set[1031] == 1) { return result;}
  result = C136;
  variable_set[1031] = 1;
  return result;
}

ExcelValue outputs_emissions_ab109() {
  static ExcelValue result;
  if(variable_set[1032] == 1) { return result;}
  result = C136;
  variable_set[1032] = 1;
  return result;
}

ExcelValue outputs_emissions_ac109() {
  static ExcelValue result;
  if(variable_set[1033] == 1) { return result;}
  result = C136;
  variable_set[1033] = 1;
  return result;
}

ExcelValue outputs_emissions_ad109() {
  static ExcelValue result;
  if(variable_set[1034] == 1) { return result;}
  result = C136;
  variable_set[1034] = 1;
  return result;
}

ExcelValue outputs_emissions_ae109() {
  static ExcelValue result;
  if(variable_set[1035] == 1) { return result;}
  result = C136;
  variable_set[1035] = 1;
  return result;
}

ExcelValue outputs_emissions_af109() {
  static ExcelValue result;
  if(variable_set[1036] == 1) { return result;}
  result = C136;
  variable_set[1036] = 1;
  return result;
}

ExcelValue outputs_emissions_ag109() {
  static ExcelValue result;
  if(variable_set[1037] == 1) { return result;}
  result = C136;
  variable_set[1037] = 1;
  return result;
}

ExcelValue outputs_emissions_ah109() {
  static ExcelValue result;
  if(variable_set[1038] == 1) { return result;}
  result = C136;
  variable_set[1038] = 1;
  return result;
}

ExcelValue outputs_emissions_ai109() {
  static ExcelValue result;
  if(variable_set[1039] == 1) { return result;}
  result = C136;
  variable_set[1039] = 1;
  return result;
}

ExcelValue outputs_emissions_aj109() {
  static ExcelValue result;
  if(variable_set[1040] == 1) { return result;}
  result = C136;
  variable_set[1040] = 1;
  return result;
}

ExcelValue outputs_emissions_c110() {
  static ExcelValue result;
  if(variable_set[1041] == 1) { return result;}
  result = C147;
  variable_set[1041] = 1;
  return result;
}

ExcelValue outputs_emissions_d110() {
  static ExcelValue result;
  if(variable_set[1042] == 1) { return result;}
  result = C148;
  variable_set[1042] = 1;
  return result;
}

ExcelValue outputs_emissions_h110() {
  static ExcelValue result;
  if(variable_set[1043] == 1) { return result;}
  result = C136;
  variable_set[1043] = 1;
  return result;
}

ExcelValue outputs_emissions_i110() {
  static ExcelValue result;
  if(variable_set[1044] == 1) { return result;}
  result = C136;
  variable_set[1044] = 1;
  return result;
}

ExcelValue outputs_emissions_j110() {
  static ExcelValue result;
  if(variable_set[1045] == 1) { return result;}
  result = C136;
  variable_set[1045] = 1;
  return result;
}

ExcelValue outputs_emissions_k110() {
  static ExcelValue result;
  if(variable_set[1046] == 1) { return result;}
  result = C136;
  variable_set[1046] = 1;
  return result;
}

ExcelValue outputs_emissions_l110() {
  static ExcelValue result;
  if(variable_set[1047] == 1) { return result;}
  result = C136;
  variable_set[1047] = 1;
  return result;
}

ExcelValue outputs_emissions_m110() {
  static ExcelValue result;
  if(variable_set[1048] == 1) { return result;}
  result = C136;
  variable_set[1048] = 1;
  return result;
}

ExcelValue outputs_emissions_n110() {
  static ExcelValue result;
  if(variable_set[1049] == 1) { return result;}
  result = C136;
  variable_set[1049] = 1;
  return result;
}

ExcelValue outputs_emissions_o110() {
  static ExcelValue result;
  if(variable_set[1050] == 1) { return result;}
  result = C136;
  variable_set[1050] = 1;
  return result;
}

ExcelValue outputs_emissions_p110() {
  static ExcelValue result;
  if(variable_set[1051] == 1) { return result;}
  result = C136;
  variable_set[1051] = 1;
  return result;
}

ExcelValue outputs_emissions_r110() {
  static ExcelValue result;
  if(variable_set[1052] == 1) { return result;}
  result = C136;
  variable_set[1052] = 1;
  return result;
}

ExcelValue outputs_emissions_s110() {
  static ExcelValue result;
  if(variable_set[1053] == 1) { return result;}
  result = C136;
  variable_set[1053] = 1;
  return result;
}

ExcelValue outputs_emissions_t110() {
  static ExcelValue result;
  if(variable_set[1054] == 1) { return result;}
  result = C136;
  variable_set[1054] = 1;
  return result;
}

ExcelValue outputs_emissions_u110() {
  static ExcelValue result;
  if(variable_set[1055] == 1) { return result;}
  result = C136;
  variable_set[1055] = 1;
  return result;
}

ExcelValue outputs_emissions_v110() {
  static ExcelValue result;
  if(variable_set[1056] == 1) { return result;}
  result = C136;
  variable_set[1056] = 1;
  return result;
}

ExcelValue outputs_emissions_w110() {
  static ExcelValue result;
  if(variable_set[1057] == 1) { return result;}
  result = C136;
  variable_set[1057] = 1;
  return result;
}

ExcelValue outputs_emissions_x110() {
  static ExcelValue result;
  if(variable_set[1058] == 1) { return result;}
  result = C136;
  variable_set[1058] = 1;
  return result;
}

ExcelValue outputs_emissions_y110() {
  static ExcelValue result;
  if(variable_set[1059] == 1) { return result;}
  result = C136;
  variable_set[1059] = 1;
  return result;
}

ExcelValue outputs_emissions_z110() {
  static ExcelValue result;
  if(variable_set[1060] == 1) { return result;}
  result = C136;
  variable_set[1060] = 1;
  return result;
}

ExcelValue outputs_emissions_aa110() {
  static ExcelValue result;
  if(variable_set[1061] == 1) { return result;}
  result = C136;
  variable_set[1061] = 1;
  return result;
}

ExcelValue outputs_emissions_ab110() {
  static ExcelValue result;
  if(variable_set[1062] == 1) { return result;}
  result = C136;
  variable_set[1062] = 1;
  return result;
}

ExcelValue outputs_emissions_ac110() {
  static ExcelValue result;
  if(variable_set[1063] == 1) { return result;}
  result = C136;
  variable_set[1063] = 1;
  return result;
}

ExcelValue outputs_emissions_ad110() {
  static ExcelValue result;
  if(variable_set[1064] == 1) { return result;}
  result = C136;
  variable_set[1064] = 1;
  return result;
}

ExcelValue outputs_emissions_ae110() {
  static ExcelValue result;
  if(variable_set[1065] == 1) { return result;}
  result = C136;
  variable_set[1065] = 1;
  return result;
}

ExcelValue outputs_emissions_af110() {
  static ExcelValue result;
  if(variable_set[1066] == 1) { return result;}
  result = C136;
  variable_set[1066] = 1;
  return result;
}

ExcelValue outputs_emissions_ag110() {
  static ExcelValue result;
  if(variable_set[1067] == 1) { return result;}
  result = C136;
  variable_set[1067] = 1;
  return result;
}

ExcelValue outputs_emissions_ah110() {
  static ExcelValue result;
  if(variable_set[1068] == 1) { return result;}
  result = C136;
  variable_set[1068] = 1;
  return result;
}

ExcelValue outputs_emissions_ai110() {
  static ExcelValue result;
  if(variable_set[1069] == 1) { return result;}
  result = C136;
  variable_set[1069] = 1;
  return result;
}

ExcelValue outputs_emissions_aj110() {
  static ExcelValue result;
  if(variable_set[1070] == 1) { return result;}
  result = C136;
  variable_set[1070] = 1;
  return result;
}

ExcelValue outputs_emissions_c111() {
  static ExcelValue result;
  if(variable_set[1071] == 1) { return result;}
  result = C149;
  variable_set[1071] = 1;
  return result;
}

ExcelValue outputs_emissions_d111() {
  static ExcelValue result;
  if(variable_set[1072] == 1) { return result;}
  result = C150;
  variable_set[1072] = 1;
  return result;
}

ExcelValue outputs_emissions_h111() {
  static ExcelValue result;
  if(variable_set[1073] == 1) { return result;}
  result = C136;
  variable_set[1073] = 1;
  return result;
}

ExcelValue outputs_emissions_i111() {
  static ExcelValue result;
  if(variable_set[1074] == 1) { return result;}
  result = C136;
  variable_set[1074] = 1;
  return result;
}

ExcelValue outputs_emissions_j111() {
  static ExcelValue result;
  if(variable_set[1075] == 1) { return result;}
  result = C136;
  variable_set[1075] = 1;
  return result;
}

ExcelValue outputs_emissions_k111() {
  static ExcelValue result;
  if(variable_set[1076] == 1) { return result;}
  result = C136;
  variable_set[1076] = 1;
  return result;
}

ExcelValue outputs_emissions_l111() {
  static ExcelValue result;
  if(variable_set[1077] == 1) { return result;}
  result = C136;
  variable_set[1077] = 1;
  return result;
}

ExcelValue outputs_emissions_m111() {
  static ExcelValue result;
  if(variable_set[1078] == 1) { return result;}
  result = C136;
  variable_set[1078] = 1;
  return result;
}

ExcelValue outputs_emissions_n111() {
  static ExcelValue result;
  if(variable_set[1079] == 1) { return result;}
  result = C136;
  variable_set[1079] = 1;
  return result;
}

ExcelValue outputs_emissions_o111() {
  static ExcelValue result;
  if(variable_set[1080] == 1) { return result;}
  result = C136;
  variable_set[1080] = 1;
  return result;
}

ExcelValue outputs_emissions_p111() {
  static ExcelValue result;
  if(variable_set[1081] == 1) { return result;}
  result = C136;
  variable_set[1081] = 1;
  return result;
}

ExcelValue outputs_emissions_r111() {
  static ExcelValue result;
  if(variable_set[1082] == 1) { return result;}
  result = C136;
  variable_set[1082] = 1;
  return result;
}

ExcelValue outputs_emissions_s111() {
  static ExcelValue result;
  if(variable_set[1083] == 1) { return result;}
  result = C136;
  variable_set[1083] = 1;
  return result;
}

ExcelValue outputs_emissions_t111() {
  static ExcelValue result;
  if(variable_set[1084] == 1) { return result;}
  result = C136;
  variable_set[1084] = 1;
  return result;
}

ExcelValue outputs_emissions_u111() {
  static ExcelValue result;
  if(variable_set[1085] == 1) { return result;}
  result = C136;
  variable_set[1085] = 1;
  return result;
}

ExcelValue outputs_emissions_v111() {
  static ExcelValue result;
  if(variable_set[1086] == 1) { return result;}
  result = C136;
  variable_set[1086] = 1;
  return result;
}

ExcelValue outputs_emissions_w111() {
  static ExcelValue result;
  if(variable_set[1087] == 1) { return result;}
  result = C136;
  variable_set[1087] = 1;
  return result;
}

ExcelValue outputs_emissions_x111() {
  static ExcelValue result;
  if(variable_set[1088] == 1) { return result;}
  result = C136;
  variable_set[1088] = 1;
  return result;
}

ExcelValue outputs_emissions_y111() {
  static ExcelValue result;
  if(variable_set[1089] == 1) { return result;}
  result = C136;
  variable_set[1089] = 1;
  return result;
}

ExcelValue outputs_emissions_z111() {
  static ExcelValue result;
  if(variable_set[1090] == 1) { return result;}
  result = C136;
  variable_set[1090] = 1;
  return result;
}

ExcelValue outputs_emissions_aa111() {
  static ExcelValue result;
  if(variable_set[1091] == 1) { return result;}
  result = C136;
  variable_set[1091] = 1;
  return result;
}

ExcelValue outputs_emissions_ab111() {
  static ExcelValue result;
  if(variable_set[1092] == 1) { return result;}
  result = C136;
  variable_set[1092] = 1;
  return result;
}

ExcelValue outputs_emissions_ac111() {
  static ExcelValue result;
  if(variable_set[1093] == 1) { return result;}
  result = C136;
  variable_set[1093] = 1;
  return result;
}

ExcelValue outputs_emissions_ad111() {
  static ExcelValue result;
  if(variable_set[1094] == 1) { return result;}
  result = C136;
  variable_set[1094] = 1;
  return result;
}

ExcelValue outputs_emissions_ae111() {
  static ExcelValue result;
  if(variable_set[1095] == 1) { return result;}
  result = C136;
  variable_set[1095] = 1;
  return result;
}

ExcelValue outputs_emissions_af111() {
  static ExcelValue result;
  if(variable_set[1096] == 1) { return result;}
  result = C136;
  variable_set[1096] = 1;
  return result;
}

ExcelValue outputs_emissions_ag111() {
  static ExcelValue result;
  if(variable_set[1097] == 1) { return result;}
  result = C136;
  variable_set[1097] = 1;
  return result;
}

ExcelValue outputs_emissions_ah111() {
  static ExcelValue result;
  if(variable_set[1098] == 1) { return result;}
  result = C136;
  variable_set[1098] = 1;
  return result;
}

ExcelValue outputs_emissions_ai111() {
  static ExcelValue result;
  if(variable_set[1099] == 1) { return result;}
  result = C136;
  variable_set[1099] = 1;
  return result;
}

ExcelValue outputs_emissions_aj111() {
  static ExcelValue result;
  if(variable_set[1100] == 1) { return result;}
  result = C136;
  variable_set[1100] = 1;
  return result;
}

ExcelValue outputs_emissions_c112() {
  static ExcelValue result;
  if(variable_set[1101] == 1) { return result;}
  result = C151;
  variable_set[1101] = 1;
  return result;
}

ExcelValue outputs_emissions_d112() {
  static ExcelValue result;
  if(variable_set[1102] == 1) { return result;}
  result = C152;
  variable_set[1102] = 1;
  return result;
}

ExcelValue outputs_emissions_h112() {
  static ExcelValue result;
  if(variable_set[1103] == 1) { return result;}
  result = C136;
  variable_set[1103] = 1;
  return result;
}

ExcelValue outputs_emissions_i112() {
  static ExcelValue result;
  if(variable_set[1104] == 1) { return result;}
  result = C136;
  variable_set[1104] = 1;
  return result;
}

ExcelValue outputs_emissions_j112() {
  static ExcelValue result;
  if(variable_set[1105] == 1) { return result;}
  result = C136;
  variable_set[1105] = 1;
  return result;
}

ExcelValue outputs_emissions_k112() {
  static ExcelValue result;
  if(variable_set[1106] == 1) { return result;}
  result = C136;
  variable_set[1106] = 1;
  return result;
}

ExcelValue outputs_emissions_l112() {
  static ExcelValue result;
  if(variable_set[1107] == 1) { return result;}
  result = C136;
  variable_set[1107] = 1;
  return result;
}

ExcelValue outputs_emissions_m112() {
  static ExcelValue result;
  if(variable_set[1108] == 1) { return result;}
  result = C136;
  variable_set[1108] = 1;
  return result;
}

ExcelValue outputs_emissions_n112() {
  static ExcelValue result;
  if(variable_set[1109] == 1) { return result;}
  result = C136;
  variable_set[1109] = 1;
  return result;
}

ExcelValue outputs_emissions_o112() {
  static ExcelValue result;
  if(variable_set[1110] == 1) { return result;}
  result = C136;
  variable_set[1110] = 1;
  return result;
}

ExcelValue outputs_emissions_p112() {
  static ExcelValue result;
  if(variable_set[1111] == 1) { return result;}
  result = C136;
  variable_set[1111] = 1;
  return result;
}

ExcelValue outputs_emissions_r112() {
  static ExcelValue result;
  if(variable_set[1112] == 1) { return result;}
  result = C136;
  variable_set[1112] = 1;
  return result;
}

ExcelValue outputs_emissions_s112() {
  static ExcelValue result;
  if(variable_set[1113] == 1) { return result;}
  result = C136;
  variable_set[1113] = 1;
  return result;
}

ExcelValue outputs_emissions_t112() {
  static ExcelValue result;
  if(variable_set[1114] == 1) { return result;}
  result = C136;
  variable_set[1114] = 1;
  return result;
}

ExcelValue outputs_emissions_u112() {
  static ExcelValue result;
  if(variable_set[1115] == 1) { return result;}
  result = C136;
  variable_set[1115] = 1;
  return result;
}

ExcelValue outputs_emissions_v112() {
  static ExcelValue result;
  if(variable_set[1116] == 1) { return result;}
  result = C136;
  variable_set[1116] = 1;
  return result;
}

ExcelValue outputs_emissions_w112() {
  static ExcelValue result;
  if(variable_set[1117] == 1) { return result;}
  result = C136;
  variable_set[1117] = 1;
  return result;
}

ExcelValue outputs_emissions_x112() {
  static ExcelValue result;
  if(variable_set[1118] == 1) { return result;}
  result = C136;
  variable_set[1118] = 1;
  return result;
}

ExcelValue outputs_emissions_y112() {
  static ExcelValue result;
  if(variable_set[1119] == 1) { return result;}
  result = C136;
  variable_set[1119] = 1;
  return result;
}

ExcelValue outputs_emissions_z112() {
  static ExcelValue result;
  if(variable_set[1120] == 1) { return result;}
  result = C136;
  variable_set[1120] = 1;
  return result;
}

ExcelValue outputs_emissions_aa112() {
  static ExcelValue result;
  if(variable_set[1121] == 1) { return result;}
  result = C136;
  variable_set[1121] = 1;
  return result;
}

ExcelValue outputs_emissions_ab112() {
  static ExcelValue result;
  if(variable_set[1122] == 1) { return result;}
  result = C136;
  variable_set[1122] = 1;
  return result;
}

ExcelValue outputs_emissions_ac112() {
  static ExcelValue result;
  if(variable_set[1123] == 1) { return result;}
  result = C136;
  variable_set[1123] = 1;
  return result;
}

ExcelValue outputs_emissions_ad112() {
  static ExcelValue result;
  if(variable_set[1124] == 1) { return result;}
  result = C136;
  variable_set[1124] = 1;
  return result;
}

ExcelValue outputs_emissions_ae112() {
  static ExcelValue result;
  if(variable_set[1125] == 1) { return result;}
  result = C136;
  variable_set[1125] = 1;
  return result;
}

ExcelValue outputs_emissions_af112() {
  static ExcelValue result;
  if(variable_set[1126] == 1) { return result;}
  result = C136;
  variable_set[1126] = 1;
  return result;
}

ExcelValue outputs_emissions_ag112() {
  static ExcelValue result;
  if(variable_set[1127] == 1) { return result;}
  result = C136;
  variable_set[1127] = 1;
  return result;
}

ExcelValue outputs_emissions_ah112() {
  static ExcelValue result;
  if(variable_set[1128] == 1) { return result;}
  result = C136;
  variable_set[1128] = 1;
  return result;
}

ExcelValue outputs_emissions_ai112() {
  static ExcelValue result;
  if(variable_set[1129] == 1) { return result;}
  result = C136;
  variable_set[1129] = 1;
  return result;
}

ExcelValue outputs_emissions_aj112() {
  static ExcelValue result;
  if(variable_set[1130] == 1) { return result;}
  result = C136;
  variable_set[1130] = 1;
  return result;
}

ExcelValue outputs_emissions_c113() {
  static ExcelValue result;
  if(variable_set[1131] == 1) { return result;}
  result = C153;
  variable_set[1131] = 1;
  return result;
}

ExcelValue outputs_emissions_d113() {
  static ExcelValue result;
  if(variable_set[1132] == 1) { return result;}
  result = C154;
  variable_set[1132] = 1;
  return result;
}

ExcelValue outputs_emissions_h113() {
  static ExcelValue result;
  if(variable_set[1133] == 1) { return result;}
  result = C136;
  variable_set[1133] = 1;
  return result;
}

ExcelValue outputs_emissions_i113() {
  static ExcelValue result;
  if(variable_set[1134] == 1) { return result;}
  result = C136;
  variable_set[1134] = 1;
  return result;
}

ExcelValue outputs_emissions_j113() {
  static ExcelValue result;
  if(variable_set[1135] == 1) { return result;}
  result = C136;
  variable_set[1135] = 1;
  return result;
}

ExcelValue outputs_emissions_k113() {
  static ExcelValue result;
  if(variable_set[1136] == 1) { return result;}
  result = C136;
  variable_set[1136] = 1;
  return result;
}

ExcelValue outputs_emissions_l113() {
  static ExcelValue result;
  if(variable_set[1137] == 1) { return result;}
  result = C136;
  variable_set[1137] = 1;
  return result;
}

ExcelValue outputs_emissions_m113() {
  static ExcelValue result;
  if(variable_set[1138] == 1) { return result;}
  result = C136;
  variable_set[1138] = 1;
  return result;
}

ExcelValue outputs_emissions_n113() {
  static ExcelValue result;
  if(variable_set[1139] == 1) { return result;}
  result = C136;
  variable_set[1139] = 1;
  return result;
}

ExcelValue outputs_emissions_o113() {
  static ExcelValue result;
  if(variable_set[1140] == 1) { return result;}
  result = C136;
  variable_set[1140] = 1;
  return result;
}

ExcelValue outputs_emissions_p113() {
  static ExcelValue result;
  if(variable_set[1141] == 1) { return result;}
  result = C136;
  variable_set[1141] = 1;
  return result;
}

ExcelValue outputs_emissions_r113() {
  static ExcelValue result;
  if(variable_set[1142] == 1) { return result;}
  result = C136;
  variable_set[1142] = 1;
  return result;
}

ExcelValue outputs_emissions_s113() {
  static ExcelValue result;
  if(variable_set[1143] == 1) { return result;}
  result = C136;
  variable_set[1143] = 1;
  return result;
}

ExcelValue outputs_emissions_t113() {
  static ExcelValue result;
  if(variable_set[1144] == 1) { return result;}
  result = C136;
  variable_set[1144] = 1;
  return result;
}

ExcelValue outputs_emissions_u113() {
  static ExcelValue result;
  if(variable_set[1145] == 1) { return result;}
  result = C136;
  variable_set[1145] = 1;
  return result;
}

ExcelValue outputs_emissions_v113() {
  static ExcelValue result;
  if(variable_set[1146] == 1) { return result;}
  result = C136;
  variable_set[1146] = 1;
  return result;
}

ExcelValue outputs_emissions_w113() {
  static ExcelValue result;
  if(variable_set[1147] == 1) { return result;}
  result = C136;
  variable_set[1147] = 1;
  return result;
}

ExcelValue outputs_emissions_x113() {
  static ExcelValue result;
  if(variable_set[1148] == 1) { return result;}
  result = C136;
  variable_set[1148] = 1;
  return result;
}

ExcelValue outputs_emissions_y113() {
  static ExcelValue result;
  if(variable_set[1149] == 1) { return result;}
  result = C136;
  variable_set[1149] = 1;
  return result;
}

ExcelValue outputs_emissions_z113() {
  static ExcelValue result;
  if(variable_set[1150] == 1) { return result;}
  result = C136;
  variable_set[1150] = 1;
  return result;
}

ExcelValue outputs_emissions_aa113() {
  static ExcelValue result;
  if(variable_set[1151] == 1) { return result;}
  result = C136;
  variable_set[1151] = 1;
  return result;
}

ExcelValue outputs_emissions_ab113() {
  static ExcelValue result;
  if(variable_set[1152] == 1) { return result;}
  result = C136;
  variable_set[1152] = 1;
  return result;
}

ExcelValue outputs_emissions_ac113() {
  static ExcelValue result;
  if(variable_set[1153] == 1) { return result;}
  result = C136;
  variable_set[1153] = 1;
  return result;
}

ExcelValue outputs_emissions_ad113() {
  static ExcelValue result;
  if(variable_set[1154] == 1) { return result;}
  result = C136;
  variable_set[1154] = 1;
  return result;
}

ExcelValue outputs_emissions_ae113() {
  static ExcelValue result;
  if(variable_set[1155] == 1) { return result;}
  result = C136;
  variable_set[1155] = 1;
  return result;
}

ExcelValue outputs_emissions_af113() {
  static ExcelValue result;
  if(variable_set[1156] == 1) { return result;}
  result = C136;
  variable_set[1156] = 1;
  return result;
}

ExcelValue outputs_emissions_ag113() {
  static ExcelValue result;
  if(variable_set[1157] == 1) { return result;}
  result = C136;
  variable_set[1157] = 1;
  return result;
}

ExcelValue outputs_emissions_ah113() {
  static ExcelValue result;
  if(variable_set[1158] == 1) { return result;}
  result = C136;
  variable_set[1158] = 1;
  return result;
}

ExcelValue outputs_emissions_ai113() {
  static ExcelValue result;
  if(variable_set[1159] == 1) { return result;}
  result = C136;
  variable_set[1159] = 1;
  return result;
}

ExcelValue outputs_emissions_aj113() {
  static ExcelValue result;
  if(variable_set[1160] == 1) { return result;}
  result = C136;
  variable_set[1160] = 1;
  return result;
}

ExcelValue outputs_emissions_d114() {
  static ExcelValue result;
  if(variable_set[1161] == 1) { return result;}
  result = C155;
  variable_set[1161] = 1;
  return result;
}

ExcelValue outputs_emissions_c118() {
  static ExcelValue result;
  if(variable_set[1162] == 1) { return result;}
  result = C156;
  variable_set[1162] = 1;
  return result;
}

ExcelValue outputs_emissions_h119() {
  static ExcelValue result;
  if(variable_set[1163] == 1) { return result;}
  result = C102;
  variable_set[1163] = 1;
  return result;
}

ExcelValue outputs_emissions_r119() {
  static ExcelValue result;
  if(variable_set[1164] == 1) { return result;}
  result = C103;
  variable_set[1164] = 1;
  return result;
}

ExcelValue outputs_emissions_aa119() {
  static ExcelValue result;
  if(variable_set[1165] == 1) { return result;}
  result = C104;
  variable_set[1165] = 1;
  return result;
}

ExcelValue outputs_emissions_d120() {
  static ExcelValue result;
  if(variable_set[1166] == 1) { return result;}
  result = C105;
  variable_set[1166] = 1;
  return result;
}

ExcelValue outputs_emissions_h120() {
  static ExcelValue result;
  if(variable_set[1167] == 1) { return result;}
  result = C106;
  variable_set[1167] = 1;
  return result;
}

ExcelValue outputs_emissions_i120() {
  static ExcelValue result;
  if(variable_set[1168] == 1) { return result;}
  result = C107;
  variable_set[1168] = 1;
  return result;
}

ExcelValue outputs_emissions_j120() {
  static ExcelValue result;
  if(variable_set[1169] == 1) { return result;}
  result = C108;
  variable_set[1169] = 1;
  return result;
}

ExcelValue outputs_emissions_k120() {
  static ExcelValue result;
  if(variable_set[1170] == 1) { return result;}
  result = C109;
  variable_set[1170] = 1;
  return result;
}

ExcelValue outputs_emissions_l120() {
  static ExcelValue result;
  if(variable_set[1171] == 1) { return result;}
  result = C110;
  variable_set[1171] = 1;
  return result;
}

ExcelValue outputs_emissions_m120() {
  static ExcelValue result;
  if(variable_set[1172] == 1) { return result;}
  result = C111;
  variable_set[1172] = 1;
  return result;
}

ExcelValue outputs_emissions_n120() {
  static ExcelValue result;
  if(variable_set[1173] == 1) { return result;}
  result = C112;
  variable_set[1173] = 1;
  return result;
}

ExcelValue outputs_emissions_o120() {
  static ExcelValue result;
  if(variable_set[1174] == 1) { return result;}
  result = C113;
  variable_set[1174] = 1;
  return result;
}

ExcelValue outputs_emissions_p120() {
  static ExcelValue result;
  if(variable_set[1175] == 1) { return result;}
  result = C114;
  variable_set[1175] = 1;
  return result;
}

ExcelValue outputs_emissions_r120() {
  static ExcelValue result;
  if(variable_set[1176] == 1) { return result;}
  result = C115;
  variable_set[1176] = 1;
  return result;
}

ExcelValue outputs_emissions_s120() {
  static ExcelValue result;
  if(variable_set[1177] == 1) { return result;}
  result = C116;
  variable_set[1177] = 1;
  return result;
}

ExcelValue outputs_emissions_t120() {
  static ExcelValue result;
  if(variable_set[1178] == 1) { return result;}
  result = C117;
  variable_set[1178] = 1;
  return result;
}

ExcelValue outputs_emissions_u120() {
  static ExcelValue result;
  if(variable_set[1179] == 1) { return result;}
  result = C118;
  variable_set[1179] = 1;
  return result;
}

ExcelValue outputs_emissions_v120() {
  static ExcelValue result;
  if(variable_set[1180] == 1) { return result;}
  result = C119;
  variable_set[1180] = 1;
  return result;
}

ExcelValue outputs_emissions_w120() {
  static ExcelValue result;
  if(variable_set[1181] == 1) { return result;}
  result = C120;
  variable_set[1181] = 1;
  return result;
}

ExcelValue outputs_emissions_x120() {
  static ExcelValue result;
  if(variable_set[1182] == 1) { return result;}
  result = C121;
  variable_set[1182] = 1;
  return result;
}

ExcelValue outputs_emissions_y120() {
  static ExcelValue result;
  if(variable_set[1183] == 1) { return result;}
  result = C122;
  variable_set[1183] = 1;
  return result;
}

ExcelValue outputs_emissions_z120() {
  static ExcelValue result;
  if(variable_set[1184] == 1) { return result;}
  result = C123;
  variable_set[1184] = 1;
  return result;
}

ExcelValue outputs_emissions_aa120() {
  static ExcelValue result;
  if(variable_set[1185] == 1) { return result;}
  result = C124;
  variable_set[1185] = 1;
  return result;
}

ExcelValue outputs_emissions_ab120() {
  static ExcelValue result;
  if(variable_set[1186] == 1) { return result;}
  result = C157;
  variable_set[1186] = 1;
  return result;
}

ExcelValue outputs_emissions_ac120() {
  static ExcelValue result;
  if(variable_set[1187] == 1) { return result;}
  result = C126;
  variable_set[1187] = 1;
  return result;
}

ExcelValue outputs_emissions_ad120() {
  static ExcelValue result;
  if(variable_set[1188] == 1) { return result;}
  result = C127;
  variable_set[1188] = 1;
  return result;
}

ExcelValue outputs_emissions_ae120() {
  static ExcelValue result;
  if(variable_set[1189] == 1) { return result;}
  result = C128;
  variable_set[1189] = 1;
  return result;
}

ExcelValue outputs_emissions_af120() {
  static ExcelValue result;
  if(variable_set[1190] == 1) { return result;}
  result = C129;
  variable_set[1190] = 1;
  return result;
}

ExcelValue outputs_emissions_ag120() {
  static ExcelValue result;
  if(variable_set[1191] == 1) { return result;}
  result = C130;
  variable_set[1191] = 1;
  return result;
}

ExcelValue outputs_emissions_ah120() {
  static ExcelValue result;
  if(variable_set[1192] == 1) { return result;}
  result = C131;
  variable_set[1192] = 1;
  return result;
}

ExcelValue outputs_emissions_ai120() {
  static ExcelValue result;
  if(variable_set[1193] == 1) { return result;}
  result = C132;
  variable_set[1193] = 1;
  return result;
}

ExcelValue outputs_emissions_aj120() {
  static ExcelValue result;
  if(variable_set[1194] == 1) { return result;}
  result = C133;
  variable_set[1194] = 1;
  return result;
}

ExcelValue outputs_emissions_c121() {
  static ExcelValue result;
  if(variable_set[1195] == 1) { return result;}
  result = C134;
  variable_set[1195] = 1;
  return result;
}

ExcelValue outputs_emissions_d121() {
  static ExcelValue result;
  if(variable_set[1196] == 1) { return result;}
  result = C135;
  variable_set[1196] = 1;
  return result;
}

ExcelValue outputs_emissions_s121() {
  static ExcelValue result;
  if(variable_set[1197] == 1) { return result;}
  result = C158;
  variable_set[1197] = 1;
  return result;
}

ExcelValue outputs_emissions_c122() {
  static ExcelValue result;
  if(variable_set[1198] == 1) { return result;}
  result = C137;
  variable_set[1198] = 1;
  return result;
}

ExcelValue outputs_emissions_d122() {
  static ExcelValue result;
  if(variable_set[1199] == 1) { return result;}
  result = C138;
  variable_set[1199] = 1;
  return result;
}

ExcelValue outputs_emissions_s122() {
  static ExcelValue result;
  if(variable_set[1200] == 1) { return result;}
  result = C158;
  variable_set[1200] = 1;
  return result;
}

ExcelValue outputs_emissions_c123() {
  static ExcelValue result;
  if(variable_set[1201] == 1) { return result;}
  result = C139;
  variable_set[1201] = 1;
  return result;
}

ExcelValue outputs_emissions_d123() {
  static ExcelValue result;
  if(variable_set[1202] == 1) { return result;}
  result = C140;
  variable_set[1202] = 1;
  return result;
}

ExcelValue outputs_emissions_s123() {
  static ExcelValue result;
  if(variable_set[1203] == 1) { return result;}
  result = C158;
  variable_set[1203] = 1;
  return result;
}

ExcelValue outputs_emissions_c124() {
  static ExcelValue result;
  if(variable_set[1204] == 1) { return result;}
  result = C141;
  variable_set[1204] = 1;
  return result;
}

ExcelValue outputs_emissions_d124() {
  static ExcelValue result;
  if(variable_set[1205] == 1) { return result;}
  result = C142;
  variable_set[1205] = 1;
  return result;
}

ExcelValue outputs_emissions_s124() {
  static ExcelValue result;
  if(variable_set[1206] == 1) { return result;}
  result = C158;
  variable_set[1206] = 1;
  return result;
}

ExcelValue outputs_emissions_c125() {
  static ExcelValue result;
  if(variable_set[1207] == 1) { return result;}
  result = C143;
  variable_set[1207] = 1;
  return result;
}

ExcelValue outputs_emissions_d125() {
  static ExcelValue result;
  if(variable_set[1208] == 1) { return result;}
  result = C144;
  variable_set[1208] = 1;
  return result;
}

ExcelValue outputs_emissions_s125() {
  static ExcelValue result;
  if(variable_set[1209] == 1) { return result;}
  result = C158;
  variable_set[1209] = 1;
  return result;
}

ExcelValue outputs_emissions_c126() {
  static ExcelValue result;
  if(variable_set[1210] == 1) { return result;}
  result = C145;
  variable_set[1210] = 1;
  return result;
}

ExcelValue outputs_emissions_d126() {
  static ExcelValue result;
  if(variable_set[1211] == 1) { return result;}
  result = C146;
  variable_set[1211] = 1;
  return result;
}

ExcelValue outputs_emissions_s126() {
  static ExcelValue result;
  if(variable_set[1212] == 1) { return result;}
  result = C158;
  variable_set[1212] = 1;
  return result;
}

ExcelValue outputs_emissions_c127() {
  static ExcelValue result;
  if(variable_set[1213] == 1) { return result;}
  result = C147;
  variable_set[1213] = 1;
  return result;
}

ExcelValue outputs_emissions_d127() {
  static ExcelValue result;
  if(variable_set[1214] == 1) { return result;}
  result = C148;
  variable_set[1214] = 1;
  return result;
}

ExcelValue outputs_emissions_s127() {
  static ExcelValue result;
  if(variable_set[1215] == 1) { return result;}
  result = C158;
  variable_set[1215] = 1;
  return result;
}

ExcelValue outputs_emissions_c128() {
  static ExcelValue result;
  if(variable_set[1216] == 1) { return result;}
  result = C149;
  variable_set[1216] = 1;
  return result;
}

ExcelValue outputs_emissions_d128() {
  static ExcelValue result;
  if(variable_set[1217] == 1) { return result;}
  result = C150;
  variable_set[1217] = 1;
  return result;
}

ExcelValue outputs_emissions_s128() {
  static ExcelValue result;
  if(variable_set[1218] == 1) { return result;}
  result = C158;
  variable_set[1218] = 1;
  return result;
}

ExcelValue outputs_emissions_c129() {
  static ExcelValue result;
  if(variable_set[1219] == 1) { return result;}
  result = C151;
  variable_set[1219] = 1;
  return result;
}

ExcelValue outputs_emissions_d129() {
  static ExcelValue result;
  if(variable_set[1220] == 1) { return result;}
  result = C152;
  variable_set[1220] = 1;
  return result;
}

ExcelValue outputs_emissions_s129() {
  static ExcelValue result;
  if(variable_set[1221] == 1) { return result;}
  result = C158;
  variable_set[1221] = 1;
  return result;
}

ExcelValue outputs_emissions_c130() {
  static ExcelValue result;
  if(variable_set[1222] == 1) { return result;}
  result = C153;
  variable_set[1222] = 1;
  return result;
}

ExcelValue outputs_emissions_d130() {
  static ExcelValue result;
  if(variable_set[1223] == 1) { return result;}
  result = C154;
  variable_set[1223] = 1;
  return result;
}

ExcelValue outputs_emissions_s130() {
  static ExcelValue result;
  if(variable_set[1224] == 1) { return result;}
  result = C158;
  variable_set[1224] = 1;
  return result;
}

ExcelValue outputs_emissions_d131() {
  static ExcelValue result;
  if(variable_set[1225] == 1) { return result;}
  result = C155;
  variable_set[1225] = 1;
  return result;
}

ExcelValue outputs_emissions_h131() {
  static ExcelValue result;
  if(variable_set[1226] == 1) { return result;}
  result = C158;
  variable_set[1226] = 1;
  return result;
}

ExcelValue outputs_emissions_i131() {
  static ExcelValue result;
  if(variable_set[1227] == 1) { return result;}
  result = C158;
  variable_set[1227] = 1;
  return result;
}

ExcelValue outputs_emissions_j131() {
  static ExcelValue result;
  if(variable_set[1228] == 1) { return result;}
  result = C158;
  variable_set[1228] = 1;
  return result;
}

ExcelValue outputs_emissions_k131() {
  static ExcelValue result;
  if(variable_set[1229] == 1) { return result;}
  result = C158;
  variable_set[1229] = 1;
  return result;
}

ExcelValue outputs_emissions_l131() {
  static ExcelValue result;
  if(variable_set[1230] == 1) { return result;}
  result = C158;
  variable_set[1230] = 1;
  return result;
}

ExcelValue outputs_emissions_m131() {
  static ExcelValue result;
  if(variable_set[1231] == 1) { return result;}
  result = C158;
  variable_set[1231] = 1;
  return result;
}

ExcelValue outputs_emissions_n131() {
  static ExcelValue result;
  if(variable_set[1232] == 1) { return result;}
  result = C158;
  variable_set[1232] = 1;
  return result;
}

ExcelValue outputs_emissions_o131() {
  static ExcelValue result;
  if(variable_set[1233] == 1) { return result;}
  result = C158;
  variable_set[1233] = 1;
  return result;
}

ExcelValue outputs_emissions_p131() {
  static ExcelValue result;
  if(variable_set[1234] == 1) { return result;}
  result = C158;
  variable_set[1234] = 1;
  return result;
}

ExcelValue outputs_emissions_r131() {
  static ExcelValue result;
  if(variable_set[1235] == 1) { return result;}
  result = C158;
  variable_set[1235] = 1;
  return result;
}

ExcelValue outputs_emissions_s131() {
  static ExcelValue result;
  if(variable_set[1236] == 1) { return result;}
  result = C158;
  variable_set[1236] = 1;
  return result;
}

ExcelValue outputs_emissions_t131() {
  static ExcelValue result;
  if(variable_set[1237] == 1) { return result;}
  result = C158;
  variable_set[1237] = 1;
  return result;
}

ExcelValue outputs_emissions_u131() {
  static ExcelValue result;
  if(variable_set[1238] == 1) { return result;}
  result = C158;
  variable_set[1238] = 1;
  return result;
}

ExcelValue outputs_emissions_v131() {
  static ExcelValue result;
  if(variable_set[1239] == 1) { return result;}
  result = C158;
  variable_set[1239] = 1;
  return result;
}

ExcelValue outputs_emissions_w131() {
  static ExcelValue result;
  if(variable_set[1240] == 1) { return result;}
  result = C158;
  variable_set[1240] = 1;
  return result;
}

ExcelValue outputs_emissions_x131() {
  static ExcelValue result;
  if(variable_set[1241] == 1) { return result;}
  result = C158;
  variable_set[1241] = 1;
  return result;
}

ExcelValue outputs_emissions_y131() {
  static ExcelValue result;
  if(variable_set[1242] == 1) { return result;}
  result = C158;
  variable_set[1242] = 1;
  return result;
}

ExcelValue outputs_emissions_z131() {
  static ExcelValue result;
  if(variable_set[1243] == 1) { return result;}
  result = C158;
  variable_set[1243] = 1;
  return result;
}

ExcelValue outputs_emissions_aa131() {
  static ExcelValue result;
  if(variable_set[1244] == 1) { return result;}
  result = C158;
  variable_set[1244] = 1;
  return result;
}

ExcelValue outputs_emissions_ab131() {
  static ExcelValue result;
  if(variable_set[1245] == 1) { return result;}
  result = C158;
  variable_set[1245] = 1;
  return result;
}

ExcelValue outputs_emissions_ac131() {
  static ExcelValue result;
  if(variable_set[1246] == 1) { return result;}
  result = C158;
  variable_set[1246] = 1;
  return result;
}

ExcelValue outputs_emissions_ad131() {
  static ExcelValue result;
  if(variable_set[1247] == 1) { return result;}
  result = C158;
  variable_set[1247] = 1;
  return result;
}

ExcelValue outputs_emissions_ae131() {
  static ExcelValue result;
  if(variable_set[1248] == 1) { return result;}
  result = C158;
  variable_set[1248] = 1;
  return result;
}

ExcelValue outputs_emissions_af131() {
  static ExcelValue result;
  if(variable_set[1249] == 1) { return result;}
  result = C158;
  variable_set[1249] = 1;
  return result;
}

ExcelValue outputs_emissions_ag131() {
  static ExcelValue result;
  if(variable_set[1250] == 1) { return result;}
  result = C158;
  variable_set[1250] = 1;
  return result;
}

ExcelValue outputs_emissions_ah131() {
  static ExcelValue result;
  if(variable_set[1251] == 1) { return result;}
  result = C158;
  variable_set[1251] = 1;
  return result;
}

ExcelValue outputs_emissions_ai131() {
  static ExcelValue result;
  if(variable_set[1252] == 1) { return result;}
  result = C158;
  variable_set[1252] = 1;
  return result;
}

ExcelValue outputs_emissions_aj131() {
  static ExcelValue result;
  if(variable_set[1253] == 1) { return result;}
  result = C158;
  variable_set[1253] = 1;
  return result;
}

ExcelValue outputs_emissions_d132() {
  static ExcelValue result;
  if(variable_set[1254] == 1) { return result;}
  result = C159;
  variable_set[1254] = 1;
  return result;
}

ExcelValue outputs_emissions_d133() {
  static ExcelValue result;
  if(variable_set[1255] == 1) { return result;}
  result = C160;
  variable_set[1255] = 1;
  return result;
}

ExcelValue outputs_emissions_c136() {
  static ExcelValue result;
  if(variable_set[1256] == 1) { return result;}
  result = C161;
  variable_set[1256] = 1;
  return result;
}

ExcelValue outputs_emissions_h137() {
  static ExcelValue result;
  if(variable_set[1257] == 1) { return result;}
  result = C102;
  variable_set[1257] = 1;
  return result;
}

ExcelValue outputs_emissions_r137() {
  static ExcelValue result;
  if(variable_set[1258] == 1) { return result;}
  result = C103;
  variable_set[1258] = 1;
  return result;
}

ExcelValue outputs_emissions_aa137() {
  static ExcelValue result;
  if(variable_set[1259] == 1) { return result;}
  result = C104;
  variable_set[1259] = 1;
  return result;
}

ExcelValue outputs_emissions_c138() {
  static ExcelValue result;
  if(variable_set[1260] == 1) { return result;}
  result = C162;
  variable_set[1260] = 1;
  return result;
}

ExcelValue outputs_emissions_d138() {
  static ExcelValue result;
  if(variable_set[1261] == 1) { return result;}
  result = C163;
  variable_set[1261] = 1;
  return result;
}

ExcelValue outputs_emissions_h138() {
  static ExcelValue result;
  if(variable_set[1262] == 1) { return result;}
  result = C106;
  variable_set[1262] = 1;
  return result;
}

ExcelValue outputs_emissions_i138() {
  static ExcelValue result;
  if(variable_set[1263] == 1) { return result;}
  result = C107;
  variable_set[1263] = 1;
  return result;
}

ExcelValue outputs_emissions_j138() {
  static ExcelValue result;
  if(variable_set[1264] == 1) { return result;}
  result = C108;
  variable_set[1264] = 1;
  return result;
}

ExcelValue outputs_emissions_k138() {
  static ExcelValue result;
  if(variable_set[1265] == 1) { return result;}
  result = C109;
  variable_set[1265] = 1;
  return result;
}

ExcelValue outputs_emissions_l138() {
  static ExcelValue result;
  if(variable_set[1266] == 1) { return result;}
  result = C110;
  variable_set[1266] = 1;
  return result;
}

ExcelValue outputs_emissions_m138() {
  static ExcelValue result;
  if(variable_set[1267] == 1) { return result;}
  result = C111;
  variable_set[1267] = 1;
  return result;
}

ExcelValue outputs_emissions_n138() {
  static ExcelValue result;
  if(variable_set[1268] == 1) { return result;}
  result = C112;
  variable_set[1268] = 1;
  return result;
}

ExcelValue outputs_emissions_o138() {
  static ExcelValue result;
  if(variable_set[1269] == 1) { return result;}
  result = C113;
  variable_set[1269] = 1;
  return result;
}

ExcelValue outputs_emissions_p138() {
  static ExcelValue result;
  if(variable_set[1270] == 1) { return result;}
  result = C114;
  variable_set[1270] = 1;
  return result;
}

ExcelValue outputs_emissions_r138() {
  static ExcelValue result;
  if(variable_set[1271] == 1) { return result;}
  result = C115;
  variable_set[1271] = 1;
  return result;
}

ExcelValue outputs_emissions_s138() {
  static ExcelValue result;
  if(variable_set[1272] == 1) { return result;}
  result = C116;
  variable_set[1272] = 1;
  return result;
}

ExcelValue outputs_emissions_t138() {
  static ExcelValue result;
  if(variable_set[1273] == 1) { return result;}
  result = C117;
  variable_set[1273] = 1;
  return result;
}

ExcelValue outputs_emissions_u138() {
  static ExcelValue result;
  if(variable_set[1274] == 1) { return result;}
  result = C118;
  variable_set[1274] = 1;
  return result;
}

ExcelValue outputs_emissions_v138() {
  static ExcelValue result;
  if(variable_set[1275] == 1) { return result;}
  result = C119;
  variable_set[1275] = 1;
  return result;
}

ExcelValue outputs_emissions_w138() {
  static ExcelValue result;
  if(variable_set[1276] == 1) { return result;}
  result = C120;
  variable_set[1276] = 1;
  return result;
}

ExcelValue outputs_emissions_x138() {
  static ExcelValue result;
  if(variable_set[1277] == 1) { return result;}
  result = C121;
  variable_set[1277] = 1;
  return result;
}

ExcelValue outputs_emissions_y138() {
  static ExcelValue result;
  if(variable_set[1278] == 1) { return result;}
  result = C122;
  variable_set[1278] = 1;
  return result;
}

ExcelValue outputs_emissions_z138() {
  static ExcelValue result;
  if(variable_set[1279] == 1) { return result;}
  result = C123;
  variable_set[1279] = 1;
  return result;
}

ExcelValue outputs_emissions_aa138() {
  static ExcelValue result;
  if(variable_set[1280] == 1) { return result;}
  result = C124;
  variable_set[1280] = 1;
  return result;
}

ExcelValue outputs_emissions_ab138() {
  static ExcelValue result;
  if(variable_set[1281] == 1) { return result;}
  result = C157;
  variable_set[1281] = 1;
  return result;
}

ExcelValue outputs_emissions_ac138() {
  static ExcelValue result;
  if(variable_set[1282] == 1) { return result;}
  result = C126;
  variable_set[1282] = 1;
  return result;
}

ExcelValue outputs_emissions_ad138() {
  static ExcelValue result;
  if(variable_set[1283] == 1) { return result;}
  result = C127;
  variable_set[1283] = 1;
  return result;
}

ExcelValue outputs_emissions_ae138() {
  static ExcelValue result;
  if(variable_set[1284] == 1) { return result;}
  result = C128;
  variable_set[1284] = 1;
  return result;
}

ExcelValue outputs_emissions_af138() {
  static ExcelValue result;
  if(variable_set[1285] == 1) { return result;}
  result = C129;
  variable_set[1285] = 1;
  return result;
}

ExcelValue outputs_emissions_ag138() {
  static ExcelValue result;
  if(variable_set[1286] == 1) { return result;}
  result = C130;
  variable_set[1286] = 1;
  return result;
}

ExcelValue outputs_emissions_ah138() {
  static ExcelValue result;
  if(variable_set[1287] == 1) { return result;}
  result = C131;
  variable_set[1287] = 1;
  return result;
}

ExcelValue outputs_emissions_ai138() {
  static ExcelValue result;
  if(variable_set[1288] == 1) { return result;}
  result = C132;
  variable_set[1288] = 1;
  return result;
}

ExcelValue outputs_emissions_aj138() {
  static ExcelValue result;
  if(variable_set[1289] == 1) { return result;}
  result = C133;
  variable_set[1289] = 1;
  return result;
}

ExcelValue outputs_emissions_c139() {
  static ExcelValue result;
  if(variable_set[1290] == 1) { return result;}
  result = C164;
  variable_set[1290] = 1;
  return result;
}

ExcelValue outputs_emissions_d139() {
  static ExcelValue result;
  if(variable_set[1291] == 1) { return result;}
  result = NAME;
  variable_set[1291] = 1;
  return result;
}

ExcelValue outputs_emissions_s139() {
  static ExcelValue result;
  if(variable_set[1292] == 1) { return result;}
  result = NAME;
  variable_set[1292] = 1;
  return result;
}

ExcelValue outputs_emissions_c140() {
  static ExcelValue result;
  if(variable_set[1293] == 1) { return result;}
  result = C165;
  variable_set[1293] = 1;
  return result;
}

ExcelValue outputs_emissions_d140() {
  static ExcelValue result;
  if(variable_set[1294] == 1) { return result;}
  result = NAME;
  variable_set[1294] = 1;
  return result;
}

ExcelValue outputs_emissions_s140() {
  static ExcelValue result;
  if(variable_set[1295] == 1) { return result;}
  result = NAME;
  variable_set[1295] = 1;
  return result;
}

ExcelValue outputs_emissions_c141() {
  static ExcelValue result;
  if(variable_set[1296] == 1) { return result;}
  result = C166;
  variable_set[1296] = 1;
  return result;
}

ExcelValue outputs_emissions_d141() {
  static ExcelValue result;
  if(variable_set[1297] == 1) { return result;}
  result = NAME;
  variable_set[1297] = 1;
  return result;
}

ExcelValue outputs_emissions_s141() {
  static ExcelValue result;
  if(variable_set[1298] == 1) { return result;}
  result = NAME;
  variable_set[1298] = 1;
  return result;
}

ExcelValue outputs_emissions_c142() {
  static ExcelValue result;
  if(variable_set[1299] == 1) { return result;}
  result = C167;
  variable_set[1299] = 1;
  return result;
}

ExcelValue outputs_emissions_d142() {
  static ExcelValue result;
  if(variable_set[1300] == 1) { return result;}
  result = NAME;
  variable_set[1300] = 1;
  return result;
}

ExcelValue outputs_emissions_s142() {
  static ExcelValue result;
  if(variable_set[1301] == 1) { return result;}
  result = NAME;
  variable_set[1301] = 1;
  return result;
}

ExcelValue outputs_emissions_c143() {
  static ExcelValue result;
  if(variable_set[1302] == 1) { return result;}
  result = C168;
  variable_set[1302] = 1;
  return result;
}

ExcelValue outputs_emissions_d143() {
  static ExcelValue result;
  if(variable_set[1303] == 1) { return result;}
  result = NAME;
  variable_set[1303] = 1;
  return result;
}

ExcelValue outputs_emissions_s143() {
  static ExcelValue result;
  if(variable_set[1304] == 1) { return result;}
  result = NAME;
  variable_set[1304] = 1;
  return result;
}

ExcelValue outputs_emissions_c144() {
  static ExcelValue result;
  if(variable_set[1305] == 1) { return result;}
  result = C169;
  variable_set[1305] = 1;
  return result;
}

ExcelValue outputs_emissions_d144() {
  static ExcelValue result;
  if(variable_set[1306] == 1) { return result;}
  result = NAME;
  variable_set[1306] = 1;
  return result;
}

ExcelValue outputs_emissions_s144() {
  static ExcelValue result;
  if(variable_set[1307] == 1) { return result;}
  result = NAME;
  variable_set[1307] = 1;
  return result;
}

ExcelValue outputs_emissions_d145() {
  static ExcelValue result;
  if(variable_set[1308] == 1) { return result;}
  result = C155;
  variable_set[1308] = 1;
  return result;
}

ExcelValue outputs_emissions_h145() {
  static ExcelValue result;
  if(variable_set[1309] == 1) { return result;}
  result = C158;
  variable_set[1309] = 1;
  return result;
}

ExcelValue outputs_emissions_i145() {
  static ExcelValue result;
  if(variable_set[1310] == 1) { return result;}
  result = C158;
  variable_set[1310] = 1;
  return result;
}

ExcelValue outputs_emissions_j145() {
  static ExcelValue result;
  if(variable_set[1311] == 1) { return result;}
  result = C158;
  variable_set[1311] = 1;
  return result;
}

ExcelValue outputs_emissions_k145() {
  static ExcelValue result;
  if(variable_set[1312] == 1) { return result;}
  result = C158;
  variable_set[1312] = 1;
  return result;
}

ExcelValue outputs_emissions_l145() {
  static ExcelValue result;
  if(variable_set[1313] == 1) { return result;}
  result = C158;
  variable_set[1313] = 1;
  return result;
}

ExcelValue outputs_emissions_m145() {
  static ExcelValue result;
  if(variable_set[1314] == 1) { return result;}
  result = C158;
  variable_set[1314] = 1;
  return result;
}

ExcelValue outputs_emissions_n145() {
  static ExcelValue result;
  if(variable_set[1315] == 1) { return result;}
  result = C158;
  variable_set[1315] = 1;
  return result;
}

ExcelValue outputs_emissions_o145() {
  static ExcelValue result;
  if(variable_set[1316] == 1) { return result;}
  result = C158;
  variable_set[1316] = 1;
  return result;
}

ExcelValue outputs_emissions_p145() {
  static ExcelValue result;
  if(variable_set[1317] == 1) { return result;}
  result = C158;
  variable_set[1317] = 1;
  return result;
}

ExcelValue outputs_emissions_r145() {
  static ExcelValue result;
  if(variable_set[1318] == 1) { return result;}
  result = C158;
  variable_set[1318] = 1;
  return result;
}

ExcelValue outputs_emissions_s145() {
  static ExcelValue result;
  if(variable_set[1319] == 1) { return result;}
  result = NAME;
  variable_set[1319] = 1;
  return result;
}

ExcelValue outputs_emissions_t145() {
  static ExcelValue result;
  if(variable_set[1320] == 1) { return result;}
  result = C158;
  variable_set[1320] = 1;
  return result;
}

ExcelValue outputs_emissions_u145() {
  static ExcelValue result;
  if(variable_set[1321] == 1) { return result;}
  result = C158;
  variable_set[1321] = 1;
  return result;
}

ExcelValue outputs_emissions_v145() {
  static ExcelValue result;
  if(variable_set[1322] == 1) { return result;}
  result = C158;
  variable_set[1322] = 1;
  return result;
}

ExcelValue outputs_emissions_w145() {
  static ExcelValue result;
  if(variable_set[1323] == 1) { return result;}
  result = C158;
  variable_set[1323] = 1;
  return result;
}

ExcelValue outputs_emissions_x145() {
  static ExcelValue result;
  if(variable_set[1324] == 1) { return result;}
  result = C158;
  variable_set[1324] = 1;
  return result;
}

ExcelValue outputs_emissions_y145() {
  static ExcelValue result;
  if(variable_set[1325] == 1) { return result;}
  result = C158;
  variable_set[1325] = 1;
  return result;
}

ExcelValue outputs_emissions_z145() {
  static ExcelValue result;
  if(variable_set[1326] == 1) { return result;}
  result = C158;
  variable_set[1326] = 1;
  return result;
}

ExcelValue outputs_emissions_aa145() {
  static ExcelValue result;
  if(variable_set[1327] == 1) { return result;}
  result = C158;
  variable_set[1327] = 1;
  return result;
}

ExcelValue outputs_emissions_ab145() {
  static ExcelValue result;
  if(variable_set[1328] == 1) { return result;}
  result = C158;
  variable_set[1328] = 1;
  return result;
}

ExcelValue outputs_emissions_ac145() {
  static ExcelValue result;
  if(variable_set[1329] == 1) { return result;}
  result = C158;
  variable_set[1329] = 1;
  return result;
}

ExcelValue outputs_emissions_ad145() {
  static ExcelValue result;
  if(variable_set[1330] == 1) { return result;}
  result = C158;
  variable_set[1330] = 1;
  return result;
}

ExcelValue outputs_emissions_ae145() {
  static ExcelValue result;
  if(variable_set[1331] == 1) { return result;}
  result = C158;
  variable_set[1331] = 1;
  return result;
}

ExcelValue outputs_emissions_af145() {
  static ExcelValue result;
  if(variable_set[1332] == 1) { return result;}
  result = C158;
  variable_set[1332] = 1;
  return result;
}

ExcelValue outputs_emissions_ag145() {
  static ExcelValue result;
  if(variable_set[1333] == 1) { return result;}
  result = C158;
  variable_set[1333] = 1;
  return result;
}

ExcelValue outputs_emissions_ah145() {
  static ExcelValue result;
  if(variable_set[1334] == 1) { return result;}
  result = C158;
  variable_set[1334] = 1;
  return result;
}

ExcelValue outputs_emissions_ai145() {
  static ExcelValue result;
  if(variable_set[1335] == 1) { return result;}
  result = C158;
  variable_set[1335] = 1;
  return result;
}

ExcelValue outputs_emissions_aj145() {
  static ExcelValue result;
  if(variable_set[1336] == 1) { return result;}
  result = C158;
  variable_set[1336] = 1;
  return result;
}

ExcelValue outputs_emissions_d146() {
  static ExcelValue result;
  if(variable_set[1337] == 1) { return result;}
  result = C159;
  variable_set[1337] = 1;
  return result;
}

ExcelValue outputs_emissions_d147() {
  static ExcelValue result;
  if(variable_set[1338] == 1) { return result;}
  result = C160;
  variable_set[1338] = 1;
  return result;
}

ExcelValue outputs_emissions_c150() {
  static ExcelValue result;
  if(variable_set[1339] == 1) { return result;}
  result = C170;
  variable_set[1339] = 1;
  return result;
}

ExcelValue outputs_emissions_h151() {
  static ExcelValue result;
  if(variable_set[1340] == 1) { return result;}
  result = C102;
  variable_set[1340] = 1;
  return result;
}

ExcelValue outputs_emissions_r151() {
  static ExcelValue result;
  if(variable_set[1341] == 1) { return result;}
  result = C103;
  variable_set[1341] = 1;
  return result;
}

ExcelValue outputs_emissions_aa151() {
  static ExcelValue result;
  if(variable_set[1342] == 1) { return result;}
  result = C104;
  variable_set[1342] = 1;
  return result;
}

ExcelValue outputs_emissions_c152() {
  static ExcelValue result;
  if(variable_set[1343] == 1) { return result;}
  result = C171;
  variable_set[1343] = 1;
  return result;
}

ExcelValue outputs_emissions_h152() {
  static ExcelValue result;
  if(variable_set[1344] == 1) { return result;}
  result = C106;
  variable_set[1344] = 1;
  return result;
}

ExcelValue outputs_emissions_i152() {
  static ExcelValue result;
  if(variable_set[1345] == 1) { return result;}
  result = C107;
  variable_set[1345] = 1;
  return result;
}

ExcelValue outputs_emissions_j152() {
  static ExcelValue result;
  if(variable_set[1346] == 1) { return result;}
  result = C108;
  variable_set[1346] = 1;
  return result;
}

ExcelValue outputs_emissions_k152() {
  static ExcelValue result;
  if(variable_set[1347] == 1) { return result;}
  result = C109;
  variable_set[1347] = 1;
  return result;
}

ExcelValue outputs_emissions_l152() {
  static ExcelValue result;
  if(variable_set[1348] == 1) { return result;}
  result = C110;
  variable_set[1348] = 1;
  return result;
}

ExcelValue outputs_emissions_m152() {
  static ExcelValue result;
  if(variable_set[1349] == 1) { return result;}
  result = C111;
  variable_set[1349] = 1;
  return result;
}

ExcelValue outputs_emissions_n152() {
  static ExcelValue result;
  if(variable_set[1350] == 1) { return result;}
  result = C112;
  variable_set[1350] = 1;
  return result;
}

ExcelValue outputs_emissions_o152() {
  static ExcelValue result;
  if(variable_set[1351] == 1) { return result;}
  result = C113;
  variable_set[1351] = 1;
  return result;
}

ExcelValue outputs_emissions_p152() {
  static ExcelValue result;
  if(variable_set[1352] == 1) { return result;}
  result = C114;
  variable_set[1352] = 1;
  return result;
}

ExcelValue outputs_emissions_r152() {
  static ExcelValue result;
  if(variable_set[1353] == 1) { return result;}
  result = C115;
  variable_set[1353] = 1;
  return result;
}

ExcelValue outputs_emissions_s152() {
  static ExcelValue result;
  if(variable_set[1354] == 1) { return result;}
  result = C116;
  variable_set[1354] = 1;
  return result;
}

ExcelValue outputs_emissions_t152() {
  static ExcelValue result;
  if(variable_set[1355] == 1) { return result;}
  result = C117;
  variable_set[1355] = 1;
  return result;
}

ExcelValue outputs_emissions_u152() {
  static ExcelValue result;
  if(variable_set[1356] == 1) { return result;}
  result = C118;
  variable_set[1356] = 1;
  return result;
}

ExcelValue outputs_emissions_v152() {
  static ExcelValue result;
  if(variable_set[1357] == 1) { return result;}
  result = C119;
  variable_set[1357] = 1;
  return result;
}

ExcelValue outputs_emissions_w152() {
  static ExcelValue result;
  if(variable_set[1358] == 1) { return result;}
  result = C120;
  variable_set[1358] = 1;
  return result;
}

ExcelValue outputs_emissions_x152() {
  static ExcelValue result;
  if(variable_set[1359] == 1) { return result;}
  result = C121;
  variable_set[1359] = 1;
  return result;
}

ExcelValue outputs_emissions_y152() {
  static ExcelValue result;
  if(variable_set[1360] == 1) { return result;}
  result = C122;
  variable_set[1360] = 1;
  return result;
}

ExcelValue outputs_emissions_z152() {
  static ExcelValue result;
  if(variable_set[1361] == 1) { return result;}
  result = C123;
  variable_set[1361] = 1;
  return result;
}

ExcelValue outputs_emissions_aa152() {
  static ExcelValue result;
  if(variable_set[1362] == 1) { return result;}
  result = C124;
  variable_set[1362] = 1;
  return result;
}

ExcelValue outputs_emissions_ab152() {
  static ExcelValue result;
  if(variable_set[1363] == 1) { return result;}
  result = C157;
  variable_set[1363] = 1;
  return result;
}

ExcelValue outputs_emissions_ac152() {
  static ExcelValue result;
  if(variable_set[1364] == 1) { return result;}
  result = C126;
  variable_set[1364] = 1;
  return result;
}

ExcelValue outputs_emissions_ad152() {
  static ExcelValue result;
  if(variable_set[1365] == 1) { return result;}
  result = C127;
  variable_set[1365] = 1;
  return result;
}

ExcelValue outputs_emissions_ae152() {
  static ExcelValue result;
  if(variable_set[1366] == 1) { return result;}
  result = C128;
  variable_set[1366] = 1;
  return result;
}

ExcelValue outputs_emissions_af152() {
  static ExcelValue result;
  if(variable_set[1367] == 1) { return result;}
  result = C129;
  variable_set[1367] = 1;
  return result;
}

ExcelValue outputs_emissions_ag152() {
  static ExcelValue result;
  if(variable_set[1368] == 1) { return result;}
  result = C130;
  variable_set[1368] = 1;
  return result;
}

ExcelValue outputs_emissions_ah152() {
  static ExcelValue result;
  if(variable_set[1369] == 1) { return result;}
  result = C131;
  variable_set[1369] = 1;
  return result;
}

ExcelValue outputs_emissions_ai152() {
  static ExcelValue result;
  if(variable_set[1370] == 1) { return result;}
  result = C132;
  variable_set[1370] = 1;
  return result;
}

ExcelValue outputs_emissions_aj152() {
  static ExcelValue result;
  if(variable_set[1371] == 1) { return result;}
  result = C133;
  variable_set[1371] = 1;
  return result;
}

ExcelValue outputs_emissions_c153() {
  static ExcelValue result;
  if(variable_set[1372] == 1) { return result;}
  result = C172;
  variable_set[1372] = 1;
  return result;
}

ExcelValue outputs_emissions_d153() {
  static ExcelValue result;
  if(variable_set[1373] == 1) { return result;}
  result = NA;
  variable_set[1373] = 1;
  return result;
}

ExcelValue outputs_emissions_s153() {
  static ExcelValue result;
  if(variable_set[1374] == 1) { return result;}
  result = NA;
  variable_set[1374] = 1;
  return result;
}

ExcelValue outputs_emissions_c154() {
  static ExcelValue result;
  if(variable_set[1375] == 1) { return result;}
  result = C173;
  variable_set[1375] = 1;
  return result;
}

ExcelValue outputs_emissions_d154() {
  static ExcelValue result;
  if(variable_set[1376] == 1) { return result;}
  result = NA;
  variable_set[1376] = 1;
  return result;
}

ExcelValue outputs_emissions_s154() {
  static ExcelValue result;
  if(variable_set[1377] == 1) { return result;}
  result = NA;
  variable_set[1377] = 1;
  return result;
}

ExcelValue outputs_emissions_c155() {
  static ExcelValue result;
  if(variable_set[1378] == 1) { return result;}
  result = C174;
  variable_set[1378] = 1;
  return result;
}

ExcelValue outputs_emissions_d155() {
  static ExcelValue result;
  if(variable_set[1379] == 1) { return result;}
  result = NA;
  variable_set[1379] = 1;
  return result;
}

ExcelValue outputs_emissions_s155() {
  static ExcelValue result;
  if(variable_set[1380] == 1) { return result;}
  result = NA;
  variable_set[1380] = 1;
  return result;
}

ExcelValue outputs_emissions_c156() {
  static ExcelValue result;
  if(variable_set[1381] == 1) { return result;}
  result = C175;
  variable_set[1381] = 1;
  return result;
}

ExcelValue outputs_emissions_d156() {
  static ExcelValue result;
  if(variable_set[1382] == 1) { return result;}
  result = NA;
  variable_set[1382] = 1;
  return result;
}

ExcelValue outputs_emissions_s156() {
  static ExcelValue result;
  if(variable_set[1383] == 1) { return result;}
  result = NA;
  variable_set[1383] = 1;
  return result;
}

ExcelValue outputs_emissions_c157() {
  static ExcelValue result;
  if(variable_set[1384] == 1) { return result;}
  result = C176;
  variable_set[1384] = 1;
  return result;
}

ExcelValue outputs_emissions_d157() {
  static ExcelValue result;
  if(variable_set[1385] == 1) { return result;}
  result = NA;
  variable_set[1385] = 1;
  return result;
}

ExcelValue outputs_emissions_s157() {
  static ExcelValue result;
  if(variable_set[1386] == 1) { return result;}
  result = NA;
  variable_set[1386] = 1;
  return result;
}

ExcelValue outputs_emissions_c158() {
  static ExcelValue result;
  if(variable_set[1387] == 1) { return result;}
  result = C177;
  variable_set[1387] = 1;
  return result;
}

ExcelValue outputs_emissions_d158() {
  static ExcelValue result;
  if(variable_set[1388] == 1) { return result;}
  result = NA;
  variable_set[1388] = 1;
  return result;
}

ExcelValue outputs_emissions_s158() {
  static ExcelValue result;
  if(variable_set[1389] == 1) { return result;}
  result = NA;
  variable_set[1389] = 1;
  return result;
}

ExcelValue outputs_emissions_c159() {
  static ExcelValue result;
  if(variable_set[1390] == 1) { return result;}
  result = C178;
  variable_set[1390] = 1;
  return result;
}

ExcelValue outputs_emissions_d159() {
  static ExcelValue result;
  if(variable_set[1391] == 1) { return result;}
  result = NA;
  variable_set[1391] = 1;
  return result;
}

ExcelValue outputs_emissions_s159() {
  static ExcelValue result;
  if(variable_set[1392] == 1) { return result;}
  result = NA;
  variable_set[1392] = 1;
  return result;
}

ExcelValue outputs_emissions_c160() {
  static ExcelValue result;
  if(variable_set[1393] == 1) { return result;}
  result = C179;
  variable_set[1393] = 1;
  return result;
}

ExcelValue outputs_emissions_d160() {
  static ExcelValue result;
  if(variable_set[1394] == 1) { return result;}
  result = NA;
  variable_set[1394] = 1;
  return result;
}

ExcelValue outputs_emissions_s160() {
  static ExcelValue result;
  if(variable_set[1395] == 1) { return result;}
  result = NA;
  variable_set[1395] = 1;
  return result;
}

ExcelValue outputs_emissions_c161() {
  static ExcelValue result;
  if(variable_set[1396] == 1) { return result;}
  result = C180;
  variable_set[1396] = 1;
  return result;
}

ExcelValue outputs_emissions_d161() {
  static ExcelValue result;
  if(variable_set[1397] == 1) { return result;}
  result = NA;
  variable_set[1397] = 1;
  return result;
}

ExcelValue outputs_emissions_s161() {
  static ExcelValue result;
  if(variable_set[1398] == 1) { return result;}
  result = NA;
  variable_set[1398] = 1;
  return result;
}

ExcelValue outputs_emissions_d162() {
  static ExcelValue result;
  if(variable_set[1399] == 1) { return result;}
  result = C181;
  variable_set[1399] = 1;
  return result;
}

ExcelValue outputs_emissions_h162() {
  static ExcelValue result;
  if(variable_set[1400] == 1) { return result;}
  result = C158;
  variable_set[1400] = 1;
  return result;
}

ExcelValue outputs_emissions_i162() {
  static ExcelValue result;
  if(variable_set[1401] == 1) { return result;}
  result = C158;
  variable_set[1401] = 1;
  return result;
}

ExcelValue outputs_emissions_j162() {
  static ExcelValue result;
  if(variable_set[1402] == 1) { return result;}
  result = C158;
  variable_set[1402] = 1;
  return result;
}

ExcelValue outputs_emissions_k162() {
  static ExcelValue result;
  if(variable_set[1403] == 1) { return result;}
  result = C158;
  variable_set[1403] = 1;
  return result;
}

ExcelValue outputs_emissions_l162() {
  static ExcelValue result;
  if(variable_set[1404] == 1) { return result;}
  result = C158;
  variable_set[1404] = 1;
  return result;
}

ExcelValue outputs_emissions_m162() {
  static ExcelValue result;
  if(variable_set[1405] == 1) { return result;}
  result = C158;
  variable_set[1405] = 1;
  return result;
}

ExcelValue outputs_emissions_n162() {
  static ExcelValue result;
  if(variable_set[1406] == 1) { return result;}
  result = C158;
  variable_set[1406] = 1;
  return result;
}

ExcelValue outputs_emissions_o162() {
  static ExcelValue result;
  if(variable_set[1407] == 1) { return result;}
  result = C158;
  variable_set[1407] = 1;
  return result;
}

ExcelValue outputs_emissions_p162() {
  static ExcelValue result;
  if(variable_set[1408] == 1) { return result;}
  result = C158;
  variable_set[1408] = 1;
  return result;
}

ExcelValue outputs_emissions_r162() {
  static ExcelValue result;
  if(variable_set[1409] == 1) { return result;}
  result = C158;
  variable_set[1409] = 1;
  return result;
}

ExcelValue outputs_emissions_s162() {
  static ExcelValue result;
  if(variable_set[1410] == 1) { return result;}
  result = NA;
  variable_set[1410] = 1;
  return result;
}

ExcelValue outputs_emissions_t162() {
  static ExcelValue result;
  if(variable_set[1411] == 1) { return result;}
  result = C158;
  variable_set[1411] = 1;
  return result;
}

ExcelValue outputs_emissions_u162() {
  static ExcelValue result;
  if(variable_set[1412] == 1) { return result;}
  result = C158;
  variable_set[1412] = 1;
  return result;
}

ExcelValue outputs_emissions_v162() {
  static ExcelValue result;
  if(variable_set[1413] == 1) { return result;}
  result = C158;
  variable_set[1413] = 1;
  return result;
}

ExcelValue outputs_emissions_w162() {
  static ExcelValue result;
  if(variable_set[1414] == 1) { return result;}
  result = C158;
  variable_set[1414] = 1;
  return result;
}

ExcelValue outputs_emissions_x162() {
  static ExcelValue result;
  if(variable_set[1415] == 1) { return result;}
  result = C158;
  variable_set[1415] = 1;
  return result;
}

ExcelValue outputs_emissions_y162() {
  static ExcelValue result;
  if(variable_set[1416] == 1) { return result;}
  result = C158;
  variable_set[1416] = 1;
  return result;
}

ExcelValue outputs_emissions_z162() {
  static ExcelValue result;
  if(variable_set[1417] == 1) { return result;}
  result = C158;
  variable_set[1417] = 1;
  return result;
}

ExcelValue outputs_emissions_aa162() {
  static ExcelValue result;
  if(variable_set[1418] == 1) { return result;}
  result = C158;
  variable_set[1418] = 1;
  return result;
}

ExcelValue outputs_emissions_ab162() {
  static ExcelValue result;
  if(variable_set[1419] == 1) { return result;}
  result = C158;
  variable_set[1419] = 1;
  return result;
}

ExcelValue outputs_emissions_ac162() {
  static ExcelValue result;
  if(variable_set[1420] == 1) { return result;}
  result = C158;
  variable_set[1420] = 1;
  return result;
}

ExcelValue outputs_emissions_ad162() {
  static ExcelValue result;
  if(variable_set[1421] == 1) { return result;}
  result = C158;
  variable_set[1421] = 1;
  return result;
}

ExcelValue outputs_emissions_ae162() {
  static ExcelValue result;
  if(variable_set[1422] == 1) { return result;}
  result = C158;
  variable_set[1422] = 1;
  return result;
}

ExcelValue outputs_emissions_af162() {
  static ExcelValue result;
  if(variable_set[1423] == 1) { return result;}
  result = C158;
  variable_set[1423] = 1;
  return result;
}

ExcelValue outputs_emissions_ag162() {
  static ExcelValue result;
  if(variable_set[1424] == 1) { return result;}
  result = C158;
  variable_set[1424] = 1;
  return result;
}

ExcelValue outputs_emissions_ah162() {
  static ExcelValue result;
  if(variable_set[1425] == 1) { return result;}
  result = C158;
  variable_set[1425] = 1;
  return result;
}

ExcelValue outputs_emissions_ai162() {
  static ExcelValue result;
  if(variable_set[1426] == 1) { return result;}
  result = C158;
  variable_set[1426] = 1;
  return result;
}

ExcelValue outputs_emissions_aj162() {
  static ExcelValue result;
  if(variable_set[1427] == 1) { return result;}
  result = C158;
  variable_set[1427] = 1;
  return result;
}

ExcelValue outputs_emissions_c163() {
  static ExcelValue result;
  if(variable_set[1428] == 1) { return result;}
  result = C182;
  variable_set[1428] = 1;
  return result;
}

ExcelValue outputs_emissions_c166() {
  static ExcelValue result;
  if(variable_set[1429] == 1) { return result;}
  result = C183;
  variable_set[1429] = 1;
  return result;
}

ExcelValue outputs_emissions_d166() {
  static ExcelValue result;
  if(variable_set[1430] == 1) { return result;}
  result = C184;
  variable_set[1430] = 1;
  return result;
}

ExcelValue outputs_emissions_d167() {
  static ExcelValue result;
  if(variable_set[1431] == 1) { return result;}
  result = C185;
  variable_set[1431] = 1;
  return result;
}

ExcelValue outputs_emissions_b172() {
  static ExcelValue result;
  if(variable_set[1432] == 1) { return result;}
  result = C188;
  variable_set[1432] = 1;
  return result;
}

ExcelValue outputs_emissions_c172() {
  static ExcelValue result;
  if(variable_set[1433] == 1) { return result;}
  result = C189;
  variable_set[1433] = 1;
  return result;
}

ExcelValue outputs_emissions_c174() {
  static ExcelValue result;
  if(variable_set[1434] == 1) { return result;}
  result = C100;
  variable_set[1434] = 1;
  return result;
}

ExcelValue outputs_emissions_aj174() {
  static ExcelValue result;
  if(variable_set[1435] == 1) { return result;}
  result = C101;
  variable_set[1435] = 1;
  return result;
}

ExcelValue outputs_emissions_h175() {
  static ExcelValue result;
  if(variable_set[1436] == 1) { return result;}
  result = C102;
  variable_set[1436] = 1;
  return result;
}

ExcelValue outputs_emissions_r175() {
  static ExcelValue result;
  if(variable_set[1437] == 1) { return result;}
  result = C103;
  variable_set[1437] = 1;
  return result;
}

ExcelValue outputs_emissions_aa175() {
  static ExcelValue result;
  if(variable_set[1438] == 1) { return result;}
  result = C104;
  variable_set[1438] = 1;
  return result;
}

ExcelValue outputs_emissions_d176() {
  static ExcelValue result;
  if(variable_set[1439] == 1) { return result;}
  result = C105;
  variable_set[1439] = 1;
  return result;
}

ExcelValue outputs_emissions_h176() {
  static ExcelValue result;
  if(variable_set[1440] == 1) { return result;}
  result = C106;
  variable_set[1440] = 1;
  return result;
}

ExcelValue outputs_emissions_i176() {
  static ExcelValue result;
  if(variable_set[1441] == 1) { return result;}
  result = C107;
  variable_set[1441] = 1;
  return result;
}

ExcelValue outputs_emissions_j176() {
  static ExcelValue result;
  if(variable_set[1442] == 1) { return result;}
  result = C108;
  variable_set[1442] = 1;
  return result;
}

ExcelValue outputs_emissions_k176() {
  static ExcelValue result;
  if(variable_set[1443] == 1) { return result;}
  result = C109;
  variable_set[1443] = 1;
  return result;
}

ExcelValue outputs_emissions_l176() {
  static ExcelValue result;
  if(variable_set[1444] == 1) { return result;}
  result = C110;
  variable_set[1444] = 1;
  return result;
}

ExcelValue outputs_emissions_m176() {
  static ExcelValue result;
  if(variable_set[1445] == 1) { return result;}
  result = C111;
  variable_set[1445] = 1;
  return result;
}

ExcelValue outputs_emissions_n176() {
  static ExcelValue result;
  if(variable_set[1446] == 1) { return result;}
  result = C112;
  variable_set[1446] = 1;
  return result;
}

ExcelValue outputs_emissions_o176() {
  static ExcelValue result;
  if(variable_set[1447] == 1) { return result;}
  result = C113;
  variable_set[1447] = 1;
  return result;
}

ExcelValue outputs_emissions_p176() {
  static ExcelValue result;
  if(variable_set[1448] == 1) { return result;}
  result = C114;
  variable_set[1448] = 1;
  return result;
}

ExcelValue outputs_emissions_r176() {
  static ExcelValue result;
  if(variable_set[1449] == 1) { return result;}
  result = C115;
  variable_set[1449] = 1;
  return result;
}

ExcelValue outputs_emissions_s176() {
  static ExcelValue result;
  if(variable_set[1450] == 1) { return result;}
  result = C116;
  variable_set[1450] = 1;
  return result;
}

ExcelValue outputs_emissions_t176() {
  static ExcelValue result;
  if(variable_set[1451] == 1) { return result;}
  result = C117;
  variable_set[1451] = 1;
  return result;
}

ExcelValue outputs_emissions_u176() {
  static ExcelValue result;
  if(variable_set[1452] == 1) { return result;}
  result = C118;
  variable_set[1452] = 1;
  return result;
}

ExcelValue outputs_emissions_v176() {
  static ExcelValue result;
  if(variable_set[1453] == 1) { return result;}
  result = C119;
  variable_set[1453] = 1;
  return result;
}

ExcelValue outputs_emissions_w176() {
  static ExcelValue result;
  if(variable_set[1454] == 1) { return result;}
  result = C120;
  variable_set[1454] = 1;
  return result;
}

ExcelValue outputs_emissions_x176() {
  static ExcelValue result;
  if(variable_set[1455] == 1) { return result;}
  result = C121;
  variable_set[1455] = 1;
  return result;
}

ExcelValue outputs_emissions_y176() {
  static ExcelValue result;
  if(variable_set[1456] == 1) { return result;}
  result = C122;
  variable_set[1456] = 1;
  return result;
}

ExcelValue outputs_emissions_z176() {
  static ExcelValue result;
  if(variable_set[1457] == 1) { return result;}
  result = C123;
  variable_set[1457] = 1;
  return result;
}

ExcelValue outputs_emissions_aa176() {
  static ExcelValue result;
  if(variable_set[1458] == 1) { return result;}
  result = C124;
  variable_set[1458] = 1;
  return result;
}

ExcelValue outputs_emissions_ab176() {
  static ExcelValue result;
  if(variable_set[1459] == 1) { return result;}
  result = C125;
  variable_set[1459] = 1;
  return result;
}

ExcelValue outputs_emissions_ac176() {
  static ExcelValue result;
  if(variable_set[1460] == 1) { return result;}
  result = C126;
  variable_set[1460] = 1;
  return result;
}

ExcelValue outputs_emissions_ad176() {
  static ExcelValue result;
  if(variable_set[1461] == 1) { return result;}
  result = C127;
  variable_set[1461] = 1;
  return result;
}

ExcelValue outputs_emissions_ae176() {
  static ExcelValue result;
  if(variable_set[1462] == 1) { return result;}
  result = C128;
  variable_set[1462] = 1;
  return result;
}

ExcelValue outputs_emissions_af176() {
  static ExcelValue result;
  if(variable_set[1463] == 1) { return result;}
  result = C129;
  variable_set[1463] = 1;
  return result;
}

ExcelValue outputs_emissions_ag176() {
  static ExcelValue result;
  if(variable_set[1464] == 1) { return result;}
  result = C130;
  variable_set[1464] = 1;
  return result;
}

ExcelValue outputs_emissions_ah176() {
  static ExcelValue result;
  if(variable_set[1465] == 1) { return result;}
  result = C131;
  variable_set[1465] = 1;
  return result;
}

ExcelValue outputs_emissions_ai176() {
  static ExcelValue result;
  if(variable_set[1466] == 1) { return result;}
  result = C132;
  variable_set[1466] = 1;
  return result;
}

ExcelValue outputs_emissions_aj176() {
  static ExcelValue result;
  if(variable_set[1467] == 1) { return result;}
  result = C133;
  variable_set[1467] = 1;
  return result;
}

ExcelValue outputs_emissions_c177() {
  static ExcelValue result;
  if(variable_set[1468] == 1) { return result;}
  result = C134;
  variable_set[1468] = 1;
  return result;
}

ExcelValue outputs_emissions_d177() {
  static ExcelValue result;
  if(variable_set[1469] == 1) { return result;}
  result = C135;
  variable_set[1469] = 1;
  return result;
}

ExcelValue outputs_emissions_h177() {
  static ExcelValue result;
  if(variable_set[1470] == 1) { return result;}
  result = C136;
  variable_set[1470] = 1;
  return result;
}

ExcelValue outputs_emissions_i177() {
  static ExcelValue result;
  if(variable_set[1471] == 1) { return result;}
  result = C136;
  variable_set[1471] = 1;
  return result;
}

ExcelValue outputs_emissions_j177() {
  static ExcelValue result;
  if(variable_set[1472] == 1) { return result;}
  result = C136;
  variable_set[1472] = 1;
  return result;
}

ExcelValue outputs_emissions_k177() {
  static ExcelValue result;
  if(variable_set[1473] == 1) { return result;}
  result = C136;
  variable_set[1473] = 1;
  return result;
}

ExcelValue outputs_emissions_l177() {
  static ExcelValue result;
  if(variable_set[1474] == 1) { return result;}
  result = C136;
  variable_set[1474] = 1;
  return result;
}

ExcelValue outputs_emissions_m177() {
  static ExcelValue result;
  if(variable_set[1475] == 1) { return result;}
  result = C136;
  variable_set[1475] = 1;
  return result;
}

ExcelValue outputs_emissions_n177() {
  static ExcelValue result;
  if(variable_set[1476] == 1) { return result;}
  result = C136;
  variable_set[1476] = 1;
  return result;
}

ExcelValue outputs_emissions_o177() {
  static ExcelValue result;
  if(variable_set[1477] == 1) { return result;}
  result = C136;
  variable_set[1477] = 1;
  return result;
}

ExcelValue outputs_emissions_p177() {
  static ExcelValue result;
  if(variable_set[1478] == 1) { return result;}
  result = C136;
  variable_set[1478] = 1;
  return result;
}

ExcelValue outputs_emissions_r177() {
  static ExcelValue result;
  if(variable_set[1479] == 1) { return result;}
  result = C136;
  variable_set[1479] = 1;
  return result;
}

ExcelValue outputs_emissions_s177() {
  static ExcelValue result;
  if(variable_set[1480] == 1) { return result;}
  result = C136;
  variable_set[1480] = 1;
  return result;
}

ExcelValue outputs_emissions_t177() {
  static ExcelValue result;
  if(variable_set[1481] == 1) { return result;}
  result = C136;
  variable_set[1481] = 1;
  return result;
}

ExcelValue outputs_emissions_u177() {
  static ExcelValue result;
  if(variable_set[1482] == 1) { return result;}
  result = C136;
  variable_set[1482] = 1;
  return result;
}

ExcelValue outputs_emissions_v177() {
  static ExcelValue result;
  if(variable_set[1483] == 1) { return result;}
  result = C136;
  variable_set[1483] = 1;
  return result;
}

ExcelValue outputs_emissions_w177() {
  static ExcelValue result;
  if(variable_set[1484] == 1) { return result;}
  result = C136;
  variable_set[1484] = 1;
  return result;
}

ExcelValue outputs_emissions_x177() {
  static ExcelValue result;
  if(variable_set[1485] == 1) { return result;}
  result = C136;
  variable_set[1485] = 1;
  return result;
}

ExcelValue outputs_emissions_y177() {
  static ExcelValue result;
  if(variable_set[1486] == 1) { return result;}
  result = C136;
  variable_set[1486] = 1;
  return result;
}

ExcelValue outputs_emissions_z177() {
  static ExcelValue result;
  if(variable_set[1487] == 1) { return result;}
  result = C136;
  variable_set[1487] = 1;
  return result;
}

ExcelValue outputs_emissions_aa177() {
  static ExcelValue result;
  if(variable_set[1488] == 1) { return result;}
  result = C136;
  variable_set[1488] = 1;
  return result;
}

ExcelValue outputs_emissions_ab177() {
  static ExcelValue result;
  if(variable_set[1489] == 1) { return result;}
  result = C136;
  variable_set[1489] = 1;
  return result;
}

ExcelValue outputs_emissions_ac177() {
  static ExcelValue result;
  if(variable_set[1490] == 1) { return result;}
  result = C136;
  variable_set[1490] = 1;
  return result;
}

ExcelValue outputs_emissions_ad177() {
  static ExcelValue result;
  if(variable_set[1491] == 1) { return result;}
  result = C136;
  variable_set[1491] = 1;
  return result;
}

ExcelValue outputs_emissions_ae177() {
  static ExcelValue result;
  if(variable_set[1492] == 1) { return result;}
  result = C136;
  variable_set[1492] = 1;
  return result;
}

ExcelValue outputs_emissions_af177() {
  static ExcelValue result;
  if(variable_set[1493] == 1) { return result;}
  result = C136;
  variable_set[1493] = 1;
  return result;
}

ExcelValue outputs_emissions_ag177() {
  static ExcelValue result;
  if(variable_set[1494] == 1) { return result;}
  result = C136;
  variable_set[1494] = 1;
  return result;
}

ExcelValue outputs_emissions_ah177() {
  static ExcelValue result;
  if(variable_set[1495] == 1) { return result;}
  result = C136;
  variable_set[1495] = 1;
  return result;
}

ExcelValue outputs_emissions_ai177() {
  static ExcelValue result;
  if(variable_set[1496] == 1) { return result;}
  result = C136;
  variable_set[1496] = 1;
  return result;
}

ExcelValue outputs_emissions_aj177() {
  static ExcelValue result;
  if(variable_set[1497] == 1) { return result;}
  result = C136;
  variable_set[1497] = 1;
  return result;
}

ExcelValue outputs_emissions_c178() {
  static ExcelValue result;
  if(variable_set[1498] == 1) { return result;}
  result = C137;
  variable_set[1498] = 1;
  return result;
}

ExcelValue outputs_emissions_d178() {
  static ExcelValue result;
  if(variable_set[1499] == 1) { return result;}
  result = C138;
  variable_set[1499] = 1;
  return result;
}

ExcelValue outputs_emissions_h178() {
  static ExcelValue result;
  if(variable_set[1500] == 1) { return result;}
  result = C136;
  variable_set[1500] = 1;
  return result;
}

ExcelValue outputs_emissions_i178() {
  static ExcelValue result;
  if(variable_set[1501] == 1) { return result;}
  result = C136;
  variable_set[1501] = 1;
  return result;
}

ExcelValue outputs_emissions_j178() {
  static ExcelValue result;
  if(variable_set[1502] == 1) { return result;}
  result = C136;
  variable_set[1502] = 1;
  return result;
}

ExcelValue outputs_emissions_k178() {
  static ExcelValue result;
  if(variable_set[1503] == 1) { return result;}
  result = C136;
  variable_set[1503] = 1;
  return result;
}

ExcelValue outputs_emissions_l178() {
  static ExcelValue result;
  if(variable_set[1504] == 1) { return result;}
  result = C136;
  variable_set[1504] = 1;
  return result;
}

ExcelValue outputs_emissions_m178() {
  static ExcelValue result;
  if(variable_set[1505] == 1) { return result;}
  result = C136;
  variable_set[1505] = 1;
  return result;
}

ExcelValue outputs_emissions_n178() {
  static ExcelValue result;
  if(variable_set[1506] == 1) { return result;}
  result = C136;
  variable_set[1506] = 1;
  return result;
}

ExcelValue outputs_emissions_o178() {
  static ExcelValue result;
  if(variable_set[1507] == 1) { return result;}
  result = C136;
  variable_set[1507] = 1;
  return result;
}

ExcelValue outputs_emissions_p178() {
  static ExcelValue result;
  if(variable_set[1508] == 1) { return result;}
  result = C136;
  variable_set[1508] = 1;
  return result;
}

ExcelValue outputs_emissions_r178() {
  static ExcelValue result;
  if(variable_set[1509] == 1) { return result;}
  result = C136;
  variable_set[1509] = 1;
  return result;
}

ExcelValue outputs_emissions_s178() {
  static ExcelValue result;
  if(variable_set[1510] == 1) { return result;}
  result = C136;
  variable_set[1510] = 1;
  return result;
}

ExcelValue outputs_emissions_t178() {
  static ExcelValue result;
  if(variable_set[1511] == 1) { return result;}
  result = C136;
  variable_set[1511] = 1;
  return result;
}

ExcelValue outputs_emissions_u178() {
  static ExcelValue result;
  if(variable_set[1512] == 1) { return result;}
  result = C136;
  variable_set[1512] = 1;
  return result;
}

ExcelValue outputs_emissions_v178() {
  static ExcelValue result;
  if(variable_set[1513] == 1) { return result;}
  result = C136;
  variable_set[1513] = 1;
  return result;
}

ExcelValue outputs_emissions_w178() {
  static ExcelValue result;
  if(variable_set[1514] == 1) { return result;}
  result = C136;
  variable_set[1514] = 1;
  return result;
}

ExcelValue outputs_emissions_x178() {
  static ExcelValue result;
  if(variable_set[1515] == 1) { return result;}
  result = C136;
  variable_set[1515] = 1;
  return result;
}

ExcelValue outputs_emissions_y178() {
  static ExcelValue result;
  if(variable_set[1516] == 1) { return result;}
  result = C136;
  variable_set[1516] = 1;
  return result;
}

ExcelValue outputs_emissions_z178() {
  static ExcelValue result;
  if(variable_set[1517] == 1) { return result;}
  result = C136;
  variable_set[1517] = 1;
  return result;
}

ExcelValue outputs_emissions_aa178() {
  static ExcelValue result;
  if(variable_set[1518] == 1) { return result;}
  result = C136;
  variable_set[1518] = 1;
  return result;
}

ExcelValue outputs_emissions_ab178() {
  static ExcelValue result;
  if(variable_set[1519] == 1) { return result;}
  result = C136;
  variable_set[1519] = 1;
  return result;
}

ExcelValue outputs_emissions_ac178() {
  static ExcelValue result;
  if(variable_set[1520] == 1) { return result;}
  result = C136;
  variable_set[1520] = 1;
  return result;
}

ExcelValue outputs_emissions_ad178() {
  static ExcelValue result;
  if(variable_set[1521] == 1) { return result;}
  result = C136;
  variable_set[1521] = 1;
  return result;
}

ExcelValue outputs_emissions_ae178() {
  static ExcelValue result;
  if(variable_set[1522] == 1) { return result;}
  result = C136;
  variable_set[1522] = 1;
  return result;
}

ExcelValue outputs_emissions_af178() {
  static ExcelValue result;
  if(variable_set[1523] == 1) { return result;}
  result = C136;
  variable_set[1523] = 1;
  return result;
}

ExcelValue outputs_emissions_ag178() {
  static ExcelValue result;
  if(variable_set[1524] == 1) { return result;}
  result = C136;
  variable_set[1524] = 1;
  return result;
}

ExcelValue outputs_emissions_ah178() {
  static ExcelValue result;
  if(variable_set[1525] == 1) { return result;}
  result = C136;
  variable_set[1525] = 1;
  return result;
}

ExcelValue outputs_emissions_ai178() {
  static ExcelValue result;
  if(variable_set[1526] == 1) { return result;}
  result = C136;
  variable_set[1526] = 1;
  return result;
}

ExcelValue outputs_emissions_aj178() {
  static ExcelValue result;
  if(variable_set[1527] == 1) { return result;}
  result = C136;
  variable_set[1527] = 1;
  return result;
}

ExcelValue outputs_emissions_c179() {
  static ExcelValue result;
  if(variable_set[1528] == 1) { return result;}
  result = C139;
  variable_set[1528] = 1;
  return result;
}

ExcelValue outputs_emissions_d179() {
  static ExcelValue result;
  if(variable_set[1529] == 1) { return result;}
  result = C140;
  variable_set[1529] = 1;
  return result;
}

ExcelValue outputs_emissions_h179() {
  static ExcelValue result;
  if(variable_set[1530] == 1) { return result;}
  result = C136;
  variable_set[1530] = 1;
  return result;
}

ExcelValue outputs_emissions_i179() {
  static ExcelValue result;
  if(variable_set[1531] == 1) { return result;}
  result = C136;
  variable_set[1531] = 1;
  return result;
}

ExcelValue outputs_emissions_j179() {
  static ExcelValue result;
  if(variable_set[1532] == 1) { return result;}
  result = C136;
  variable_set[1532] = 1;
  return result;
}

ExcelValue outputs_emissions_k179() {
  static ExcelValue result;
  if(variable_set[1533] == 1) { return result;}
  result = C136;
  variable_set[1533] = 1;
  return result;
}

ExcelValue outputs_emissions_l179() {
  static ExcelValue result;
  if(variable_set[1534] == 1) { return result;}
  result = C136;
  variable_set[1534] = 1;
  return result;
}

ExcelValue outputs_emissions_m179() {
  static ExcelValue result;
  if(variable_set[1535] == 1) { return result;}
  result = C136;
  variable_set[1535] = 1;
  return result;
}

ExcelValue outputs_emissions_n179() {
  static ExcelValue result;
  if(variable_set[1536] == 1) { return result;}
  result = C136;
  variable_set[1536] = 1;
  return result;
}

ExcelValue outputs_emissions_o179() {
  static ExcelValue result;
  if(variable_set[1537] == 1) { return result;}
  result = C136;
  variable_set[1537] = 1;
  return result;
}

ExcelValue outputs_emissions_p179() {
  static ExcelValue result;
  if(variable_set[1538] == 1) { return result;}
  result = C136;
  variable_set[1538] = 1;
  return result;
}

ExcelValue outputs_emissions_r179() {
  static ExcelValue result;
  if(variable_set[1539] == 1) { return result;}
  result = C136;
  variable_set[1539] = 1;
  return result;
}

ExcelValue outputs_emissions_s179() {
  static ExcelValue result;
  if(variable_set[1540] == 1) { return result;}
  result = C136;
  variable_set[1540] = 1;
  return result;
}

ExcelValue outputs_emissions_t179() {
  static ExcelValue result;
  if(variable_set[1541] == 1) { return result;}
  result = C136;
  variable_set[1541] = 1;
  return result;
}

ExcelValue outputs_emissions_u179() {
  static ExcelValue result;
  if(variable_set[1542] == 1) { return result;}
  result = C136;
  variable_set[1542] = 1;
  return result;
}

ExcelValue outputs_emissions_v179() {
  static ExcelValue result;
  if(variable_set[1543] == 1) { return result;}
  result = C136;
  variable_set[1543] = 1;
  return result;
}

ExcelValue outputs_emissions_w179() {
  static ExcelValue result;
  if(variable_set[1544] == 1) { return result;}
  result = C136;
  variable_set[1544] = 1;
  return result;
}

ExcelValue outputs_emissions_x179() {
  static ExcelValue result;
  if(variable_set[1545] == 1) { return result;}
  result = C136;
  variable_set[1545] = 1;
  return result;
}

ExcelValue outputs_emissions_y179() {
  static ExcelValue result;
  if(variable_set[1546] == 1) { return result;}
  result = C136;
  variable_set[1546] = 1;
  return result;
}

ExcelValue outputs_emissions_z179() {
  static ExcelValue result;
  if(variable_set[1547] == 1) { return result;}
  result = C136;
  variable_set[1547] = 1;
  return result;
}

ExcelValue outputs_emissions_aa179() {
  static ExcelValue result;
  if(variable_set[1548] == 1) { return result;}
  result = C136;
  variable_set[1548] = 1;
  return result;
}

ExcelValue outputs_emissions_ab179() {
  static ExcelValue result;
  if(variable_set[1549] == 1) { return result;}
  result = C136;
  variable_set[1549] = 1;
  return result;
}

ExcelValue outputs_emissions_ac179() {
  static ExcelValue result;
  if(variable_set[1550] == 1) { return result;}
  result = C136;
  variable_set[1550] = 1;
  return result;
}

ExcelValue outputs_emissions_ad179() {
  static ExcelValue result;
  if(variable_set[1551] == 1) { return result;}
  result = C136;
  variable_set[1551] = 1;
  return result;
}

ExcelValue outputs_emissions_ae179() {
  static ExcelValue result;
  if(variable_set[1552] == 1) { return result;}
  result = C136;
  variable_set[1552] = 1;
  return result;
}

ExcelValue outputs_emissions_af179() {
  static ExcelValue result;
  if(variable_set[1553] == 1) { return result;}
  result = C136;
  variable_set[1553] = 1;
  return result;
}

ExcelValue outputs_emissions_ag179() {
  static ExcelValue result;
  if(variable_set[1554] == 1) { return result;}
  result = C136;
  variable_set[1554] = 1;
  return result;
}

ExcelValue outputs_emissions_ah179() {
  static ExcelValue result;
  if(variable_set[1555] == 1) { return result;}
  result = C136;
  variable_set[1555] = 1;
  return result;
}

ExcelValue outputs_emissions_ai179() {
  static ExcelValue result;
  if(variable_set[1556] == 1) { return result;}
  result = C136;
  variable_set[1556] = 1;
  return result;
}

ExcelValue outputs_emissions_aj179() {
  static ExcelValue result;
  if(variable_set[1557] == 1) { return result;}
  result = C136;
  variable_set[1557] = 1;
  return result;
}

ExcelValue outputs_emissions_c180() {
  static ExcelValue result;
  if(variable_set[1558] == 1) { return result;}
  result = C141;
  variable_set[1558] = 1;
  return result;
}

ExcelValue outputs_emissions_d180() {
  static ExcelValue result;
  if(variable_set[1559] == 1) { return result;}
  result = C142;
  variable_set[1559] = 1;
  return result;
}

ExcelValue outputs_emissions_h180() {
  static ExcelValue result;
  if(variable_set[1560] == 1) { return result;}
  result = C136;
  variable_set[1560] = 1;
  return result;
}

ExcelValue outputs_emissions_i180() {
  static ExcelValue result;
  if(variable_set[1561] == 1) { return result;}
  result = C136;
  variable_set[1561] = 1;
  return result;
}

ExcelValue outputs_emissions_j180() {
  static ExcelValue result;
  if(variable_set[1562] == 1) { return result;}
  result = C136;
  variable_set[1562] = 1;
  return result;
}

ExcelValue outputs_emissions_k180() {
  static ExcelValue result;
  if(variable_set[1563] == 1) { return result;}
  result = C136;
  variable_set[1563] = 1;
  return result;
}

ExcelValue outputs_emissions_l180() {
  static ExcelValue result;
  if(variable_set[1564] == 1) { return result;}
  result = C136;
  variable_set[1564] = 1;
  return result;
}

ExcelValue outputs_emissions_m180() {
  static ExcelValue result;
  if(variable_set[1565] == 1) { return result;}
  result = C136;
  variable_set[1565] = 1;
  return result;
}

ExcelValue outputs_emissions_n180() {
  static ExcelValue result;
  if(variable_set[1566] == 1) { return result;}
  result = C136;
  variable_set[1566] = 1;
  return result;
}

ExcelValue outputs_emissions_o180() {
  static ExcelValue result;
  if(variable_set[1567] == 1) { return result;}
  result = C136;
  variable_set[1567] = 1;
  return result;
}

ExcelValue outputs_emissions_p180() {
  static ExcelValue result;
  if(variable_set[1568] == 1) { return result;}
  result = C136;
  variable_set[1568] = 1;
  return result;
}

ExcelValue outputs_emissions_r180() {
  static ExcelValue result;
  if(variable_set[1569] == 1) { return result;}
  result = C136;
  variable_set[1569] = 1;
  return result;
}

ExcelValue outputs_emissions_s180() {
  static ExcelValue result;
  if(variable_set[1570] == 1) { return result;}
  result = C136;
  variable_set[1570] = 1;
  return result;
}

ExcelValue outputs_emissions_t180() {
  static ExcelValue result;
  if(variable_set[1571] == 1) { return result;}
  result = C136;
  variable_set[1571] = 1;
  return result;
}

ExcelValue outputs_emissions_u180() {
  static ExcelValue result;
  if(variable_set[1572] == 1) { return result;}
  result = C136;
  variable_set[1572] = 1;
  return result;
}

ExcelValue outputs_emissions_v180() {
  static ExcelValue result;
  if(variable_set[1573] == 1) { return result;}
  result = C136;
  variable_set[1573] = 1;
  return result;
}

ExcelValue outputs_emissions_w180() {
  static ExcelValue result;
  if(variable_set[1574] == 1) { return result;}
  result = C136;
  variable_set[1574] = 1;
  return result;
}

ExcelValue outputs_emissions_x180() {
  static ExcelValue result;
  if(variable_set[1575] == 1) { return result;}
  result = C136;
  variable_set[1575] = 1;
  return result;
}

ExcelValue outputs_emissions_y180() {
  static ExcelValue result;
  if(variable_set[1576] == 1) { return result;}
  result = C136;
  variable_set[1576] = 1;
  return result;
}

ExcelValue outputs_emissions_z180() {
  static ExcelValue result;
  if(variable_set[1577] == 1) { return result;}
  result = C136;
  variable_set[1577] = 1;
  return result;
}

ExcelValue outputs_emissions_aa180() {
  static ExcelValue result;
  if(variable_set[1578] == 1) { return result;}
  result = C136;
  variable_set[1578] = 1;
  return result;
}

ExcelValue outputs_emissions_ab180() {
  static ExcelValue result;
  if(variable_set[1579] == 1) { return result;}
  result = C136;
  variable_set[1579] = 1;
  return result;
}

ExcelValue outputs_emissions_ac180() {
  static ExcelValue result;
  if(variable_set[1580] == 1) { return result;}
  result = C136;
  variable_set[1580] = 1;
  return result;
}

ExcelValue outputs_emissions_ad180() {
  static ExcelValue result;
  if(variable_set[1581] == 1) { return result;}
  result = C136;
  variable_set[1581] = 1;
  return result;
}

ExcelValue outputs_emissions_ae180() {
  static ExcelValue result;
  if(variable_set[1582] == 1) { return result;}
  result = C136;
  variable_set[1582] = 1;
  return result;
}

ExcelValue outputs_emissions_af180() {
  static ExcelValue result;
  if(variable_set[1583] == 1) { return result;}
  result = C136;
  variable_set[1583] = 1;
  return result;
}

ExcelValue outputs_emissions_ag180() {
  static ExcelValue result;
  if(variable_set[1584] == 1) { return result;}
  result = C136;
  variable_set[1584] = 1;
  return result;
}

ExcelValue outputs_emissions_ah180() {
  static ExcelValue result;
  if(variable_set[1585] == 1) { return result;}
  result = C136;
  variable_set[1585] = 1;
  return result;
}

ExcelValue outputs_emissions_ai180() {
  static ExcelValue result;
  if(variable_set[1586] == 1) { return result;}
  result = C136;
  variable_set[1586] = 1;
  return result;
}

ExcelValue outputs_emissions_aj180() {
  static ExcelValue result;
  if(variable_set[1587] == 1) { return result;}
  result = C136;
  variable_set[1587] = 1;
  return result;
}

ExcelValue outputs_emissions_c181() {
  static ExcelValue result;
  if(variable_set[1588] == 1) { return result;}
  result = C143;
  variable_set[1588] = 1;
  return result;
}

ExcelValue outputs_emissions_d181() {
  static ExcelValue result;
  if(variable_set[1589] == 1) { return result;}
  result = C144;
  variable_set[1589] = 1;
  return result;
}

ExcelValue outputs_emissions_h181() {
  static ExcelValue result;
  if(variable_set[1590] == 1) { return result;}
  result = C136;
  variable_set[1590] = 1;
  return result;
}

ExcelValue outputs_emissions_i181() {
  static ExcelValue result;
  if(variable_set[1591] == 1) { return result;}
  result = C136;
  variable_set[1591] = 1;
  return result;
}

ExcelValue outputs_emissions_j181() {
  static ExcelValue result;
  if(variable_set[1592] == 1) { return result;}
  result = C136;
  variable_set[1592] = 1;
  return result;
}

ExcelValue outputs_emissions_k181() {
  static ExcelValue result;
  if(variable_set[1593] == 1) { return result;}
  result = C136;
  variable_set[1593] = 1;
  return result;
}

ExcelValue outputs_emissions_l181() {
  static ExcelValue result;
  if(variable_set[1594] == 1) { return result;}
  result = C136;
  variable_set[1594] = 1;
  return result;
}

ExcelValue outputs_emissions_m181() {
  static ExcelValue result;
  if(variable_set[1595] == 1) { return result;}
  result = C136;
  variable_set[1595] = 1;
  return result;
}

ExcelValue outputs_emissions_n181() {
  static ExcelValue result;
  if(variable_set[1596] == 1) { return result;}
  result = C136;
  variable_set[1596] = 1;
  return result;
}

ExcelValue outputs_emissions_o181() {
  static ExcelValue result;
  if(variable_set[1597] == 1) { return result;}
  result = C136;
  variable_set[1597] = 1;
  return result;
}

ExcelValue outputs_emissions_p181() {
  static ExcelValue result;
  if(variable_set[1598] == 1) { return result;}
  result = C136;
  variable_set[1598] = 1;
  return result;
}

ExcelValue outputs_emissions_r181() {
  static ExcelValue result;
  if(variable_set[1599] == 1) { return result;}
  result = C136;
  variable_set[1599] = 1;
  return result;
}

ExcelValue outputs_emissions_s181() {
  static ExcelValue result;
  if(variable_set[1600] == 1) { return result;}
  result = C136;
  variable_set[1600] = 1;
  return result;
}

ExcelValue outputs_emissions_t181() {
  static ExcelValue result;
  if(variable_set[1601] == 1) { return result;}
  result = C136;
  variable_set[1601] = 1;
  return result;
}

ExcelValue outputs_emissions_u181() {
  static ExcelValue result;
  if(variable_set[1602] == 1) { return result;}
  result = C136;
  variable_set[1602] = 1;
  return result;
}

ExcelValue outputs_emissions_v181() {
  static ExcelValue result;
  if(variable_set[1603] == 1) { return result;}
  result = C136;
  variable_set[1603] = 1;
  return result;
}

ExcelValue outputs_emissions_w181() {
  static ExcelValue result;
  if(variable_set[1604] == 1) { return result;}
  result = C136;
  variable_set[1604] = 1;
  return result;
}

ExcelValue outputs_emissions_x181() {
  static ExcelValue result;
  if(variable_set[1605] == 1) { return result;}
  result = C136;
  variable_set[1605] = 1;
  return result;
}

ExcelValue outputs_emissions_y181() {
  static ExcelValue result;
  if(variable_set[1606] == 1) { return result;}
  result = C136;
  variable_set[1606] = 1;
  return result;
}

ExcelValue outputs_emissions_z181() {
  static ExcelValue result;
  if(variable_set[1607] == 1) { return result;}
  result = C136;
  variable_set[1607] = 1;
  return result;
}

ExcelValue outputs_emissions_aa181() {
  static ExcelValue result;
  if(variable_set[1608] == 1) { return result;}
  result = C136;
  variable_set[1608] = 1;
  return result;
}

ExcelValue outputs_emissions_ab181() {
  static ExcelValue result;
  if(variable_set[1609] == 1) { return result;}
  result = C136;
  variable_set[1609] = 1;
  return result;
}

ExcelValue outputs_emissions_ac181() {
  static ExcelValue result;
  if(variable_set[1610] == 1) { return result;}
  result = C136;
  variable_set[1610] = 1;
  return result;
}

ExcelValue outputs_emissions_ad181() {
  static ExcelValue result;
  if(variable_set[1611] == 1) { return result;}
  result = C136;
  variable_set[1611] = 1;
  return result;
}

ExcelValue outputs_emissions_ae181() {
  static ExcelValue result;
  if(variable_set[1612] == 1) { return result;}
  result = C136;
  variable_set[1612] = 1;
  return result;
}

ExcelValue outputs_emissions_af181() {
  static ExcelValue result;
  if(variable_set[1613] == 1) { return result;}
  result = C136;
  variable_set[1613] = 1;
  return result;
}

ExcelValue outputs_emissions_ag181() {
  static ExcelValue result;
  if(variable_set[1614] == 1) { return result;}
  result = C136;
  variable_set[1614] = 1;
  return result;
}

ExcelValue outputs_emissions_ah181() {
  static ExcelValue result;
  if(variable_set[1615] == 1) { return result;}
  result = C136;
  variable_set[1615] = 1;
  return result;
}

ExcelValue outputs_emissions_ai181() {
  static ExcelValue result;
  if(variable_set[1616] == 1) { return result;}
  result = C136;
  variable_set[1616] = 1;
  return result;
}

ExcelValue outputs_emissions_aj181() {
  static ExcelValue result;
  if(variable_set[1617] == 1) { return result;}
  result = C136;
  variable_set[1617] = 1;
  return result;
}

ExcelValue outputs_emissions_c182() {
  static ExcelValue result;
  if(variable_set[1618] == 1) { return result;}
  result = C145;
  variable_set[1618] = 1;
  return result;
}

ExcelValue outputs_emissions_d182() {
  static ExcelValue result;
  if(variable_set[1619] == 1) { return result;}
  result = C146;
  variable_set[1619] = 1;
  return result;
}

ExcelValue outputs_emissions_h182() {
  static ExcelValue result;
  if(variable_set[1620] == 1) { return result;}
  result = C136;
  variable_set[1620] = 1;
  return result;
}

ExcelValue outputs_emissions_i182() {
  static ExcelValue result;
  if(variable_set[1621] == 1) { return result;}
  result = C136;
  variable_set[1621] = 1;
  return result;
}

ExcelValue outputs_emissions_j182() {
  static ExcelValue result;
  if(variable_set[1622] == 1) { return result;}
  result = C136;
  variable_set[1622] = 1;
  return result;
}

ExcelValue outputs_emissions_k182() {
  static ExcelValue result;
  if(variable_set[1623] == 1) { return result;}
  result = C136;
  variable_set[1623] = 1;
  return result;
}

ExcelValue outputs_emissions_l182() {
  static ExcelValue result;
  if(variable_set[1624] == 1) { return result;}
  result = C136;
  variable_set[1624] = 1;
  return result;
}

ExcelValue outputs_emissions_m182() {
  static ExcelValue result;
  if(variable_set[1625] == 1) { return result;}
  result = C136;
  variable_set[1625] = 1;
  return result;
}

ExcelValue outputs_emissions_n182() {
  static ExcelValue result;
  if(variable_set[1626] == 1) { return result;}
  result = C136;
  variable_set[1626] = 1;
  return result;
}

ExcelValue outputs_emissions_o182() {
  static ExcelValue result;
  if(variable_set[1627] == 1) { return result;}
  result = C136;
  variable_set[1627] = 1;
  return result;
}

ExcelValue outputs_emissions_p182() {
  static ExcelValue result;
  if(variable_set[1628] == 1) { return result;}
  result = C136;
  variable_set[1628] = 1;
  return result;
}

ExcelValue outputs_emissions_r182() {
  static ExcelValue result;
  if(variable_set[1629] == 1) { return result;}
  result = C136;
  variable_set[1629] = 1;
  return result;
}

ExcelValue outputs_emissions_s182() {
  static ExcelValue result;
  if(variable_set[1630] == 1) { return result;}
  result = C136;
  variable_set[1630] = 1;
  return result;
}

ExcelValue outputs_emissions_t182() {
  static ExcelValue result;
  if(variable_set[1631] == 1) { return result;}
  result = C136;
  variable_set[1631] = 1;
  return result;
}

ExcelValue outputs_emissions_u182() {
  static ExcelValue result;
  if(variable_set[1632] == 1) { return result;}
  result = C136;
  variable_set[1632] = 1;
  return result;
}

ExcelValue outputs_emissions_v182() {
  static ExcelValue result;
  if(variable_set[1633] == 1) { return result;}
  result = C136;
  variable_set[1633] = 1;
  return result;
}

ExcelValue outputs_emissions_w182() {
  static ExcelValue result;
  if(variable_set[1634] == 1) { return result;}
  result = C136;
  variable_set[1634] = 1;
  return result;
}

ExcelValue outputs_emissions_x182() {
  static ExcelValue result;
  if(variable_set[1635] == 1) { return result;}
  result = C136;
  variable_set[1635] = 1;
  return result;
}

ExcelValue outputs_emissions_y182() {
  static ExcelValue result;
  if(variable_set[1636] == 1) { return result;}
  result = C136;
  variable_set[1636] = 1;
  return result;
}

ExcelValue outputs_emissions_z182() {
  static ExcelValue result;
  if(variable_set[1637] == 1) { return result;}
  result = C136;
  variable_set[1637] = 1;
  return result;
}

ExcelValue outputs_emissions_aa182() {
  static ExcelValue result;
  if(variable_set[1638] == 1) { return result;}
  result = C136;
  variable_set[1638] = 1;
  return result;
}

ExcelValue outputs_emissions_ab182() {
  static ExcelValue result;
  if(variable_set[1639] == 1) { return result;}
  result = C136;
  variable_set[1639] = 1;
  return result;
}

ExcelValue outputs_emissions_ac182() {
  static ExcelValue result;
  if(variable_set[1640] == 1) { return result;}
  result = C136;
  variable_set[1640] = 1;
  return result;
}

ExcelValue outputs_emissions_ad182() {
  static ExcelValue result;
  if(variable_set[1641] == 1) { return result;}
  result = C136;
  variable_set[1641] = 1;
  return result;
}

ExcelValue outputs_emissions_ae182() {
  static ExcelValue result;
  if(variable_set[1642] == 1) { return result;}
  result = C136;
  variable_set[1642] = 1;
  return result;
}

ExcelValue outputs_emissions_af182() {
  static ExcelValue result;
  if(variable_set[1643] == 1) { return result;}
  result = C136;
  variable_set[1643] = 1;
  return result;
}

ExcelValue outputs_emissions_ag182() {
  static ExcelValue result;
  if(variable_set[1644] == 1) { return result;}
  result = C136;
  variable_set[1644] = 1;
  return result;
}

ExcelValue outputs_emissions_ah182() {
  static ExcelValue result;
  if(variable_set[1645] == 1) { return result;}
  result = C136;
  variable_set[1645] = 1;
  return result;
}

ExcelValue outputs_emissions_ai182() {
  static ExcelValue result;
  if(variable_set[1646] == 1) { return result;}
  result = C136;
  variable_set[1646] = 1;
  return result;
}

ExcelValue outputs_emissions_aj182() {
  static ExcelValue result;
  if(variable_set[1647] == 1) { return result;}
  result = C136;
  variable_set[1647] = 1;
  return result;
}

ExcelValue outputs_emissions_c183() {
  static ExcelValue result;
  if(variable_set[1648] == 1) { return result;}
  result = C147;
  variable_set[1648] = 1;
  return result;
}

ExcelValue outputs_emissions_d183() {
  static ExcelValue result;
  if(variable_set[1649] == 1) { return result;}
  result = C148;
  variable_set[1649] = 1;
  return result;
}

ExcelValue outputs_emissions_h183() {
  static ExcelValue result;
  if(variable_set[1650] == 1) { return result;}
  result = C136;
  variable_set[1650] = 1;
  return result;
}

ExcelValue outputs_emissions_i183() {
  static ExcelValue result;
  if(variable_set[1651] == 1) { return result;}
  result = C136;
  variable_set[1651] = 1;
  return result;
}

ExcelValue outputs_emissions_j183() {
  static ExcelValue result;
  if(variable_set[1652] == 1) { return result;}
  result = C136;
  variable_set[1652] = 1;
  return result;
}

ExcelValue outputs_emissions_k183() {
  static ExcelValue result;
  if(variable_set[1653] == 1) { return result;}
  result = C136;
  variable_set[1653] = 1;
  return result;
}

ExcelValue outputs_emissions_l183() {
  static ExcelValue result;
  if(variable_set[1654] == 1) { return result;}
  result = C136;
  variable_set[1654] = 1;
  return result;
}

ExcelValue outputs_emissions_m183() {
  static ExcelValue result;
  if(variable_set[1655] == 1) { return result;}
  result = C136;
  variable_set[1655] = 1;
  return result;
}

ExcelValue outputs_emissions_n183() {
  static ExcelValue result;
  if(variable_set[1656] == 1) { return result;}
  result = C136;
  variable_set[1656] = 1;
  return result;
}

ExcelValue outputs_emissions_o183() {
  static ExcelValue result;
  if(variable_set[1657] == 1) { return result;}
  result = C136;
  variable_set[1657] = 1;
  return result;
}

ExcelValue outputs_emissions_p183() {
  static ExcelValue result;
  if(variable_set[1658] == 1) { return result;}
  result = C136;
  variable_set[1658] = 1;
  return result;
}

ExcelValue outputs_emissions_r183() {
  static ExcelValue result;
  if(variable_set[1659] == 1) { return result;}
  result = C136;
  variable_set[1659] = 1;
  return result;
}

ExcelValue outputs_emissions_s183() {
  static ExcelValue result;
  if(variable_set[1660] == 1) { return result;}
  result = C136;
  variable_set[1660] = 1;
  return result;
}

ExcelValue outputs_emissions_t183() {
  static ExcelValue result;
  if(variable_set[1661] == 1) { return result;}
  result = C136;
  variable_set[1661] = 1;
  return result;
}

ExcelValue outputs_emissions_u183() {
  static ExcelValue result;
  if(variable_set[1662] == 1) { return result;}
  result = C136;
  variable_set[1662] = 1;
  return result;
}

ExcelValue outputs_emissions_v183() {
  static ExcelValue result;
  if(variable_set[1663] == 1) { return result;}
  result = C136;
  variable_set[1663] = 1;
  return result;
}

ExcelValue outputs_emissions_w183() {
  static ExcelValue result;
  if(variable_set[1664] == 1) { return result;}
  result = C136;
  variable_set[1664] = 1;
  return result;
}

ExcelValue outputs_emissions_x183() {
  static ExcelValue result;
  if(variable_set[1665] == 1) { return result;}
  result = C136;
  variable_set[1665] = 1;
  return result;
}

ExcelValue outputs_emissions_y183() {
  static ExcelValue result;
  if(variable_set[1666] == 1) { return result;}
  result = C136;
  variable_set[1666] = 1;
  return result;
}

ExcelValue outputs_emissions_z183() {
  static ExcelValue result;
  if(variable_set[1667] == 1) { return result;}
  result = C136;
  variable_set[1667] = 1;
  return result;
}

ExcelValue outputs_emissions_aa183() {
  static ExcelValue result;
  if(variable_set[1668] == 1) { return result;}
  result = C136;
  variable_set[1668] = 1;
  return result;
}

ExcelValue outputs_emissions_ab183() {
  static ExcelValue result;
  if(variable_set[1669] == 1) { return result;}
  result = C136;
  variable_set[1669] = 1;
  return result;
}

ExcelValue outputs_emissions_ac183() {
  static ExcelValue result;
  if(variable_set[1670] == 1) { return result;}
  result = C136;
  variable_set[1670] = 1;
  return result;
}

ExcelValue outputs_emissions_ad183() {
  static ExcelValue result;
  if(variable_set[1671] == 1) { return result;}
  result = C136;
  variable_set[1671] = 1;
  return result;
}

ExcelValue outputs_emissions_ae183() {
  static ExcelValue result;
  if(variable_set[1672] == 1) { return result;}
  result = C136;
  variable_set[1672] = 1;
  return result;
}

ExcelValue outputs_emissions_af183() {
  static ExcelValue result;
  if(variable_set[1673] == 1) { return result;}
  result = C136;
  variable_set[1673] = 1;
  return result;
}

ExcelValue outputs_emissions_ag183() {
  static ExcelValue result;
  if(variable_set[1674] == 1) { return result;}
  result = C136;
  variable_set[1674] = 1;
  return result;
}

ExcelValue outputs_emissions_ah183() {
  static ExcelValue result;
  if(variable_set[1675] == 1) { return result;}
  result = C136;
  variable_set[1675] = 1;
  return result;
}

ExcelValue outputs_emissions_ai183() {
  static ExcelValue result;
  if(variable_set[1676] == 1) { return result;}
  result = C136;
  variable_set[1676] = 1;
  return result;
}

ExcelValue outputs_emissions_aj183() {
  static ExcelValue result;
  if(variable_set[1677] == 1) { return result;}
  result = C136;
  variable_set[1677] = 1;
  return result;
}

ExcelValue outputs_emissions_c184() {
  static ExcelValue result;
  if(variable_set[1678] == 1) { return result;}
  result = C149;
  variable_set[1678] = 1;
  return result;
}

ExcelValue outputs_emissions_d184() {
  static ExcelValue result;
  if(variable_set[1679] == 1) { return result;}
  result = C150;
  variable_set[1679] = 1;
  return result;
}

ExcelValue outputs_emissions_h184() {
  static ExcelValue result;
  if(variable_set[1680] == 1) { return result;}
  result = C136;
  variable_set[1680] = 1;
  return result;
}

ExcelValue outputs_emissions_i184() {
  static ExcelValue result;
  if(variable_set[1681] == 1) { return result;}
  result = C136;
  variable_set[1681] = 1;
  return result;
}

ExcelValue outputs_emissions_j184() {
  static ExcelValue result;
  if(variable_set[1682] == 1) { return result;}
  result = C136;
  variable_set[1682] = 1;
  return result;
}

ExcelValue outputs_emissions_k184() {
  static ExcelValue result;
  if(variable_set[1683] == 1) { return result;}
  result = C136;
  variable_set[1683] = 1;
  return result;
}

ExcelValue outputs_emissions_l184() {
  static ExcelValue result;
  if(variable_set[1684] == 1) { return result;}
  result = C136;
  variable_set[1684] = 1;
  return result;
}

ExcelValue outputs_emissions_m184() {
  static ExcelValue result;
  if(variable_set[1685] == 1) { return result;}
  result = C136;
  variable_set[1685] = 1;
  return result;
}

ExcelValue outputs_emissions_n184() {
  static ExcelValue result;
  if(variable_set[1686] == 1) { return result;}
  result = C136;
  variable_set[1686] = 1;
  return result;
}

ExcelValue outputs_emissions_o184() {
  static ExcelValue result;
  if(variable_set[1687] == 1) { return result;}
  result = C136;
  variable_set[1687] = 1;
  return result;
}

ExcelValue outputs_emissions_p184() {
  static ExcelValue result;
  if(variable_set[1688] == 1) { return result;}
  result = C136;
  variable_set[1688] = 1;
  return result;
}

ExcelValue outputs_emissions_r184() {
  static ExcelValue result;
  if(variable_set[1689] == 1) { return result;}
  result = C136;
  variable_set[1689] = 1;
  return result;
}

ExcelValue outputs_emissions_s184() {
  static ExcelValue result;
  if(variable_set[1690] == 1) { return result;}
  result = C136;
  variable_set[1690] = 1;
  return result;
}

ExcelValue outputs_emissions_t184() {
  static ExcelValue result;
  if(variable_set[1691] == 1) { return result;}
  result = C136;
  variable_set[1691] = 1;
  return result;
}

ExcelValue outputs_emissions_u184() {
  static ExcelValue result;
  if(variable_set[1692] == 1) { return result;}
  result = C136;
  variable_set[1692] = 1;
  return result;
}

ExcelValue outputs_emissions_v184() {
  static ExcelValue result;
  if(variable_set[1693] == 1) { return result;}
  result = C136;
  variable_set[1693] = 1;
  return result;
}

ExcelValue outputs_emissions_w184() {
  static ExcelValue result;
  if(variable_set[1694] == 1) { return result;}
  result = C136;
  variable_set[1694] = 1;
  return result;
}

ExcelValue outputs_emissions_x184() {
  static ExcelValue result;
  if(variable_set[1695] == 1) { return result;}
  result = C136;
  variable_set[1695] = 1;
  return result;
}

ExcelValue outputs_emissions_y184() {
  static ExcelValue result;
  if(variable_set[1696] == 1) { return result;}
  result = C136;
  variable_set[1696] = 1;
  return result;
}

ExcelValue outputs_emissions_z184() {
  static ExcelValue result;
  if(variable_set[1697] == 1) { return result;}
  result = C136;
  variable_set[1697] = 1;
  return result;
}

ExcelValue outputs_emissions_aa184() {
  static ExcelValue result;
  if(variable_set[1698] == 1) { return result;}
  result = C136;
  variable_set[1698] = 1;
  return result;
}

ExcelValue outputs_emissions_ab184() {
  static ExcelValue result;
  if(variable_set[1699] == 1) { return result;}
  result = C136;
  variable_set[1699] = 1;
  return result;
}

ExcelValue outputs_emissions_ac184() {
  static ExcelValue result;
  if(variable_set[1700] == 1) { return result;}
  result = C136;
  variable_set[1700] = 1;
  return result;
}

ExcelValue outputs_emissions_ad184() {
  static ExcelValue result;
  if(variable_set[1701] == 1) { return result;}
  result = C136;
  variable_set[1701] = 1;
  return result;
}

ExcelValue outputs_emissions_ae184() {
  static ExcelValue result;
  if(variable_set[1702] == 1) { return result;}
  result = C136;
  variable_set[1702] = 1;
  return result;
}

ExcelValue outputs_emissions_af184() {
  static ExcelValue result;
  if(variable_set[1703] == 1) { return result;}
  result = C136;
  variable_set[1703] = 1;
  return result;
}

ExcelValue outputs_emissions_ag184() {
  static ExcelValue result;
  if(variable_set[1704] == 1) { return result;}
  result = C136;
  variable_set[1704] = 1;
  return result;
}

ExcelValue outputs_emissions_ah184() {
  static ExcelValue result;
  if(variable_set[1705] == 1) { return result;}
  result = C136;
  variable_set[1705] = 1;
  return result;
}

ExcelValue outputs_emissions_ai184() {
  static ExcelValue result;
  if(variable_set[1706] == 1) { return result;}
  result = C136;
  variable_set[1706] = 1;
  return result;
}

ExcelValue outputs_emissions_aj184() {
  static ExcelValue result;
  if(variable_set[1707] == 1) { return result;}
  result = C136;
  variable_set[1707] = 1;
  return result;
}

ExcelValue outputs_emissions_c185() {
  static ExcelValue result;
  if(variable_set[1708] == 1) { return result;}
  result = C151;
  variable_set[1708] = 1;
  return result;
}

ExcelValue outputs_emissions_d185() {
  static ExcelValue result;
  if(variable_set[1709] == 1) { return result;}
  result = C152;
  variable_set[1709] = 1;
  return result;
}

ExcelValue outputs_emissions_h185() {
  static ExcelValue result;
  if(variable_set[1710] == 1) { return result;}
  result = C136;
  variable_set[1710] = 1;
  return result;
}

ExcelValue outputs_emissions_i185() {
  static ExcelValue result;
  if(variable_set[1711] == 1) { return result;}
  result = C136;
  variable_set[1711] = 1;
  return result;
}

ExcelValue outputs_emissions_j185() {
  static ExcelValue result;
  if(variable_set[1712] == 1) { return result;}
  result = C136;
  variable_set[1712] = 1;
  return result;
}

ExcelValue outputs_emissions_k185() {
  static ExcelValue result;
  if(variable_set[1713] == 1) { return result;}
  result = C136;
  variable_set[1713] = 1;
  return result;
}

ExcelValue outputs_emissions_l185() {
  static ExcelValue result;
  if(variable_set[1714] == 1) { return result;}
  result = C136;
  variable_set[1714] = 1;
  return result;
}

ExcelValue outputs_emissions_m185() {
  static ExcelValue result;
  if(variable_set[1715] == 1) { return result;}
  result = C136;
  variable_set[1715] = 1;
  return result;
}

ExcelValue outputs_emissions_n185() {
  static ExcelValue result;
  if(variable_set[1716] == 1) { return result;}
  result = C136;
  variable_set[1716] = 1;
  return result;
}

ExcelValue outputs_emissions_o185() {
  static ExcelValue result;
  if(variable_set[1717] == 1) { return result;}
  result = C136;
  variable_set[1717] = 1;
  return result;
}

ExcelValue outputs_emissions_p185() {
  static ExcelValue result;
  if(variable_set[1718] == 1) { return result;}
  result = C136;
  variable_set[1718] = 1;
  return result;
}

ExcelValue outputs_emissions_r185() {
  static ExcelValue result;
  if(variable_set[1719] == 1) { return result;}
  result = C136;
  variable_set[1719] = 1;
  return result;
}

ExcelValue outputs_emissions_s185() {
  static ExcelValue result;
  if(variable_set[1720] == 1) { return result;}
  result = C136;
  variable_set[1720] = 1;
  return result;
}

ExcelValue outputs_emissions_t185() {
  static ExcelValue result;
  if(variable_set[1721] == 1) { return result;}
  result = C136;
  variable_set[1721] = 1;
  return result;
}

ExcelValue outputs_emissions_u185() {
  static ExcelValue result;
  if(variable_set[1722] == 1) { return result;}
  result = C136;
  variable_set[1722] = 1;
  return result;
}

ExcelValue outputs_emissions_v185() {
  static ExcelValue result;
  if(variable_set[1723] == 1) { return result;}
  result = C136;
  variable_set[1723] = 1;
  return result;
}

ExcelValue outputs_emissions_w185() {
  static ExcelValue result;
  if(variable_set[1724] == 1) { return result;}
  result = C136;
  variable_set[1724] = 1;
  return result;
}

ExcelValue outputs_emissions_x185() {
  static ExcelValue result;
  if(variable_set[1725] == 1) { return result;}
  result = C136;
  variable_set[1725] = 1;
  return result;
}

ExcelValue outputs_emissions_y185() {
  static ExcelValue result;
  if(variable_set[1726] == 1) { return result;}
  result = C136;
  variable_set[1726] = 1;
  return result;
}

ExcelValue outputs_emissions_z185() {
  static ExcelValue result;
  if(variable_set[1727] == 1) { return result;}
  result = C136;
  variable_set[1727] = 1;
  return result;
}

ExcelValue outputs_emissions_aa185() {
  static ExcelValue result;
  if(variable_set[1728] == 1) { return result;}
  result = C136;
  variable_set[1728] = 1;
  return result;
}

ExcelValue outputs_emissions_ab185() {
  static ExcelValue result;
  if(variable_set[1729] == 1) { return result;}
  result = C136;
  variable_set[1729] = 1;
  return result;
}

ExcelValue outputs_emissions_ac185() {
  static ExcelValue result;
  if(variable_set[1730] == 1) { return result;}
  result = C136;
  variable_set[1730] = 1;
  return result;
}

ExcelValue outputs_emissions_ad185() {
  static ExcelValue result;
  if(variable_set[1731] == 1) { return result;}
  result = C136;
  variable_set[1731] = 1;
  return result;
}

ExcelValue outputs_emissions_ae185() {
  static ExcelValue result;
  if(variable_set[1732] == 1) { return result;}
  result = C136;
  variable_set[1732] = 1;
  return result;
}

ExcelValue outputs_emissions_af185() {
  static ExcelValue result;
  if(variable_set[1733] == 1) { return result;}
  result = C136;
  variable_set[1733] = 1;
  return result;
}

ExcelValue outputs_emissions_ag185() {
  static ExcelValue result;
  if(variable_set[1734] == 1) { return result;}
  result = C136;
  variable_set[1734] = 1;
  return result;
}

ExcelValue outputs_emissions_ah185() {
  static ExcelValue result;
  if(variable_set[1735] == 1) { return result;}
  result = C136;
  variable_set[1735] = 1;
  return result;
}

ExcelValue outputs_emissions_ai185() {
  static ExcelValue result;
  if(variable_set[1736] == 1) { return result;}
  result = C136;
  variable_set[1736] = 1;
  return result;
}

ExcelValue outputs_emissions_aj185() {
  static ExcelValue result;
  if(variable_set[1737] == 1) { return result;}
  result = C136;
  variable_set[1737] = 1;
  return result;
}

ExcelValue outputs_emissions_c186() {
  static ExcelValue result;
  if(variable_set[1738] == 1) { return result;}
  result = C153;
  variable_set[1738] = 1;
  return result;
}

ExcelValue outputs_emissions_d186() {
  static ExcelValue result;
  if(variable_set[1739] == 1) { return result;}
  result = C154;
  variable_set[1739] = 1;
  return result;
}

ExcelValue outputs_emissions_h186() {
  static ExcelValue result;
  if(variable_set[1740] == 1) { return result;}
  result = C136;
  variable_set[1740] = 1;
  return result;
}

ExcelValue outputs_emissions_i186() {
  static ExcelValue result;
  if(variable_set[1741] == 1) { return result;}
  result = C136;
  variable_set[1741] = 1;
  return result;
}

ExcelValue outputs_emissions_j186() {
  static ExcelValue result;
  if(variable_set[1742] == 1) { return result;}
  result = C136;
  variable_set[1742] = 1;
  return result;
}

ExcelValue outputs_emissions_k186() {
  static ExcelValue result;
  if(variable_set[1743] == 1) { return result;}
  result = C136;
  variable_set[1743] = 1;
  return result;
}

ExcelValue outputs_emissions_l186() {
  static ExcelValue result;
  if(variable_set[1744] == 1) { return result;}
  result = C136;
  variable_set[1744] = 1;
  return result;
}

ExcelValue outputs_emissions_m186() {
  static ExcelValue result;
  if(variable_set[1745] == 1) { return result;}
  result = C136;
  variable_set[1745] = 1;
  return result;
}

ExcelValue outputs_emissions_n186() {
  static ExcelValue result;
  if(variable_set[1746] == 1) { return result;}
  result = C136;
  variable_set[1746] = 1;
  return result;
}

ExcelValue outputs_emissions_o186() {
  static ExcelValue result;
  if(variable_set[1747] == 1) { return result;}
  result = C136;
  variable_set[1747] = 1;
  return result;
}

ExcelValue outputs_emissions_p186() {
  static ExcelValue result;
  if(variable_set[1748] == 1) { return result;}
  result = C136;
  variable_set[1748] = 1;
  return result;
}

ExcelValue outputs_emissions_r186() {
  static ExcelValue result;
  if(variable_set[1749] == 1) { return result;}
  result = C136;
  variable_set[1749] = 1;
  return result;
}

ExcelValue outputs_emissions_s186() {
  static ExcelValue result;
  if(variable_set[1750] == 1) { return result;}
  result = C136;
  variable_set[1750] = 1;
  return result;
}

ExcelValue outputs_emissions_t186() {
  static ExcelValue result;
  if(variable_set[1751] == 1) { return result;}
  result = C136;
  variable_set[1751] = 1;
  return result;
}

ExcelValue outputs_emissions_u186() {
  static ExcelValue result;
  if(variable_set[1752] == 1) { return result;}
  result = C136;
  variable_set[1752] = 1;
  return result;
}

ExcelValue outputs_emissions_v186() {
  static ExcelValue result;
  if(variable_set[1753] == 1) { return result;}
  result = C136;
  variable_set[1753] = 1;
  return result;
}

ExcelValue outputs_emissions_w186() {
  static ExcelValue result;
  if(variable_set[1754] == 1) { return result;}
  result = C136;
  variable_set[1754] = 1;
  return result;
}

ExcelValue outputs_emissions_x186() {
  static ExcelValue result;
  if(variable_set[1755] == 1) { return result;}
  result = C136;
  variable_set[1755] = 1;
  return result;
}

ExcelValue outputs_emissions_y186() {
  static ExcelValue result;
  if(variable_set[1756] == 1) { return result;}
  result = C136;
  variable_set[1756] = 1;
  return result;
}

ExcelValue outputs_emissions_z186() {
  static ExcelValue result;
  if(variable_set[1757] == 1) { return result;}
  result = C136;
  variable_set[1757] = 1;
  return result;
}

ExcelValue outputs_emissions_aa186() {
  static ExcelValue result;
  if(variable_set[1758] == 1) { return result;}
  result = C136;
  variable_set[1758] = 1;
  return result;
}

ExcelValue outputs_emissions_ab186() {
  static ExcelValue result;
  if(variable_set[1759] == 1) { return result;}
  result = C136;
  variable_set[1759] = 1;
  return result;
}

ExcelValue outputs_emissions_ac186() {
  static ExcelValue result;
  if(variable_set[1760] == 1) { return result;}
  result = C136;
  variable_set[1760] = 1;
  return result;
}

ExcelValue outputs_emissions_ad186() {
  static ExcelValue result;
  if(variable_set[1761] == 1) { return result;}
  result = C136;
  variable_set[1761] = 1;
  return result;
}

ExcelValue outputs_emissions_ae186() {
  static ExcelValue result;
  if(variable_set[1762] == 1) { return result;}
  result = C136;
  variable_set[1762] = 1;
  return result;
}

ExcelValue outputs_emissions_af186() {
  static ExcelValue result;
  if(variable_set[1763] == 1) { return result;}
  result = C136;
  variable_set[1763] = 1;
  return result;
}

ExcelValue outputs_emissions_ag186() {
  static ExcelValue result;
  if(variable_set[1764] == 1) { return result;}
  result = C136;
  variable_set[1764] = 1;
  return result;
}

ExcelValue outputs_emissions_ah186() {
  static ExcelValue result;
  if(variable_set[1765] == 1) { return result;}
  result = C136;
  variable_set[1765] = 1;
  return result;
}

ExcelValue outputs_emissions_ai186() {
  static ExcelValue result;
  if(variable_set[1766] == 1) { return result;}
  result = C136;
  variable_set[1766] = 1;
  return result;
}

ExcelValue outputs_emissions_aj186() {
  static ExcelValue result;
  if(variable_set[1767] == 1) { return result;}
  result = C136;
  variable_set[1767] = 1;
  return result;
}

ExcelValue outputs_emissions_d187() {
  static ExcelValue result;
  if(variable_set[1768] == 1) { return result;}
  result = C155;
  variable_set[1768] = 1;
  return result;
}

ExcelValue outputs_emissions_c191() {
  static ExcelValue result;
  if(variable_set[1769] == 1) { return result;}
  result = C156;
  variable_set[1769] = 1;
  return result;
}

ExcelValue outputs_emissions_h192() {
  static ExcelValue result;
  if(variable_set[1770] == 1) { return result;}
  result = C102;
  variable_set[1770] = 1;
  return result;
}

ExcelValue outputs_emissions_r192() {
  static ExcelValue result;
  if(variable_set[1771] == 1) { return result;}
  result = C103;
  variable_set[1771] = 1;
  return result;
}

ExcelValue outputs_emissions_aa192() {
  static ExcelValue result;
  if(variable_set[1772] == 1) { return result;}
  result = C104;
  variable_set[1772] = 1;
  return result;
}

ExcelValue outputs_emissions_d193() {
  static ExcelValue result;
  if(variable_set[1773] == 1) { return result;}
  result = C105;
  variable_set[1773] = 1;
  return result;
}

ExcelValue outputs_emissions_h193() {
  static ExcelValue result;
  if(variable_set[1774] == 1) { return result;}
  result = C106;
  variable_set[1774] = 1;
  return result;
}

ExcelValue outputs_emissions_i193() {
  static ExcelValue result;
  if(variable_set[1775] == 1) { return result;}
  result = C107;
  variable_set[1775] = 1;
  return result;
}

ExcelValue outputs_emissions_j193() {
  static ExcelValue result;
  if(variable_set[1776] == 1) { return result;}
  result = C108;
  variable_set[1776] = 1;
  return result;
}

ExcelValue outputs_emissions_k193() {
  static ExcelValue result;
  if(variable_set[1777] == 1) { return result;}
  result = C109;
  variable_set[1777] = 1;
  return result;
}

ExcelValue outputs_emissions_l193() {
  static ExcelValue result;
  if(variable_set[1778] == 1) { return result;}
  result = C110;
  variable_set[1778] = 1;
  return result;
}

ExcelValue outputs_emissions_m193() {
  static ExcelValue result;
  if(variable_set[1779] == 1) { return result;}
  result = C111;
  variable_set[1779] = 1;
  return result;
}

ExcelValue outputs_emissions_n193() {
  static ExcelValue result;
  if(variable_set[1780] == 1) { return result;}
  result = C112;
  variable_set[1780] = 1;
  return result;
}

ExcelValue outputs_emissions_o193() {
  static ExcelValue result;
  if(variable_set[1781] == 1) { return result;}
  result = C113;
  variable_set[1781] = 1;
  return result;
}

ExcelValue outputs_emissions_p193() {
  static ExcelValue result;
  if(variable_set[1782] == 1) { return result;}
  result = C114;
  variable_set[1782] = 1;
  return result;
}

ExcelValue outputs_emissions_r193() {
  static ExcelValue result;
  if(variable_set[1783] == 1) { return result;}
  result = C115;
  variable_set[1783] = 1;
  return result;
}

ExcelValue outputs_emissions_s193() {
  static ExcelValue result;
  if(variable_set[1784] == 1) { return result;}
  result = C116;
  variable_set[1784] = 1;
  return result;
}

ExcelValue outputs_emissions_t193() {
  static ExcelValue result;
  if(variable_set[1785] == 1) { return result;}
  result = C117;
  variable_set[1785] = 1;
  return result;
}

ExcelValue outputs_emissions_u193() {
  static ExcelValue result;
  if(variable_set[1786] == 1) { return result;}
  result = C118;
  variable_set[1786] = 1;
  return result;
}

ExcelValue outputs_emissions_v193() {
  static ExcelValue result;
  if(variable_set[1787] == 1) { return result;}
  result = C119;
  variable_set[1787] = 1;
  return result;
}

ExcelValue outputs_emissions_w193() {
  static ExcelValue result;
  if(variable_set[1788] == 1) { return result;}
  result = C120;
  variable_set[1788] = 1;
  return result;
}

ExcelValue outputs_emissions_x193() {
  static ExcelValue result;
  if(variable_set[1789] == 1) { return result;}
  result = C121;
  variable_set[1789] = 1;
  return result;
}

ExcelValue outputs_emissions_y193() {
  static ExcelValue result;
  if(variable_set[1790] == 1) { return result;}
  result = C122;
  variable_set[1790] = 1;
  return result;
}

ExcelValue outputs_emissions_z193() {
  static ExcelValue result;
  if(variable_set[1791] == 1) { return result;}
  result = C123;
  variable_set[1791] = 1;
  return result;
}

ExcelValue outputs_emissions_aa193() {
  static ExcelValue result;
  if(variable_set[1792] == 1) { return result;}
  result = C124;
  variable_set[1792] = 1;
  return result;
}

ExcelValue outputs_emissions_ab193() {
  static ExcelValue result;
  if(variable_set[1793] == 1) { return result;}
  result = C157;
  variable_set[1793] = 1;
  return result;
}

ExcelValue outputs_emissions_ac193() {
  static ExcelValue result;
  if(variable_set[1794] == 1) { return result;}
  result = C126;
  variable_set[1794] = 1;
  return result;
}

ExcelValue outputs_emissions_ad193() {
  static ExcelValue result;
  if(variable_set[1795] == 1) { return result;}
  result = C127;
  variable_set[1795] = 1;
  return result;
}

ExcelValue outputs_emissions_ae193() {
  static ExcelValue result;
  if(variable_set[1796] == 1) { return result;}
  result = C128;
  variable_set[1796] = 1;
  return result;
}

ExcelValue outputs_emissions_af193() {
  static ExcelValue result;
  if(variable_set[1797] == 1) { return result;}
  result = C129;
  variable_set[1797] = 1;
  return result;
}

ExcelValue outputs_emissions_ag193() {
  static ExcelValue result;
  if(variable_set[1798] == 1) { return result;}
  result = C130;
  variable_set[1798] = 1;
  return result;
}

ExcelValue outputs_emissions_ah193() {
  static ExcelValue result;
  if(variable_set[1799] == 1) { return result;}
  result = C131;
  variable_set[1799] = 1;
  return result;
}

ExcelValue outputs_emissions_ai193() {
  static ExcelValue result;
  if(variable_set[1800] == 1) { return result;}
  result = C132;
  variable_set[1800] = 1;
  return result;
}

ExcelValue outputs_emissions_aj193() {
  static ExcelValue result;
  if(variable_set[1801] == 1) { return result;}
  result = C133;
  variable_set[1801] = 1;
  return result;
}

ExcelValue outputs_emissions_c194() {
  static ExcelValue result;
  if(variable_set[1802] == 1) { return result;}
  result = C134;
  variable_set[1802] = 1;
  return result;
}

ExcelValue outputs_emissions_d194() {
  static ExcelValue result;
  if(variable_set[1803] == 1) { return result;}
  result = C135;
  variable_set[1803] = 1;
  return result;
}

ExcelValue outputs_emissions_s194() {
  static ExcelValue result;
  if(variable_set[1804] == 1) { return result;}
  result = C158;
  variable_set[1804] = 1;
  return result;
}

ExcelValue outputs_emissions_c195() {
  static ExcelValue result;
  if(variable_set[1805] == 1) { return result;}
  result = C137;
  variable_set[1805] = 1;
  return result;
}

ExcelValue outputs_emissions_d195() {
  static ExcelValue result;
  if(variable_set[1806] == 1) { return result;}
  result = C138;
  variable_set[1806] = 1;
  return result;
}

ExcelValue outputs_emissions_s195() {
  static ExcelValue result;
  if(variable_set[1807] == 1) { return result;}
  result = C158;
  variable_set[1807] = 1;
  return result;
}

ExcelValue outputs_emissions_c196() {
  static ExcelValue result;
  if(variable_set[1808] == 1) { return result;}
  result = C139;
  variable_set[1808] = 1;
  return result;
}

ExcelValue outputs_emissions_d196() {
  static ExcelValue result;
  if(variable_set[1809] == 1) { return result;}
  result = C140;
  variable_set[1809] = 1;
  return result;
}

ExcelValue outputs_emissions_s196() {
  static ExcelValue result;
  if(variable_set[1810] == 1) { return result;}
  result = C158;
  variable_set[1810] = 1;
  return result;
}

ExcelValue outputs_emissions_c197() {
  static ExcelValue result;
  if(variable_set[1811] == 1) { return result;}
  result = C141;
  variable_set[1811] = 1;
  return result;
}

ExcelValue outputs_emissions_d197() {
  static ExcelValue result;
  if(variable_set[1812] == 1) { return result;}
  result = C142;
  variable_set[1812] = 1;
  return result;
}

ExcelValue outputs_emissions_s197() {
  static ExcelValue result;
  if(variable_set[1813] == 1) { return result;}
  result = C158;
  variable_set[1813] = 1;
  return result;
}

ExcelValue outputs_emissions_c198() {
  static ExcelValue result;
  if(variable_set[1814] == 1) { return result;}
  result = C143;
  variable_set[1814] = 1;
  return result;
}

ExcelValue outputs_emissions_d198() {
  static ExcelValue result;
  if(variable_set[1815] == 1) { return result;}
  result = C144;
  variable_set[1815] = 1;
  return result;
}

ExcelValue outputs_emissions_s198() {
  static ExcelValue result;
  if(variable_set[1816] == 1) { return result;}
  result = C158;
  variable_set[1816] = 1;
  return result;
}

ExcelValue outputs_emissions_c199() {
  static ExcelValue result;
  if(variable_set[1817] == 1) { return result;}
  result = C145;
  variable_set[1817] = 1;
  return result;
}

ExcelValue outputs_emissions_d199() {
  static ExcelValue result;
  if(variable_set[1818] == 1) { return result;}
  result = C146;
  variable_set[1818] = 1;
  return result;
}

ExcelValue outputs_emissions_s199() {
  static ExcelValue result;
  if(variable_set[1819] == 1) { return result;}
  result = C158;
  variable_set[1819] = 1;
  return result;
}

ExcelValue outputs_emissions_c200() {
  static ExcelValue result;
  if(variable_set[1820] == 1) { return result;}
  result = C147;
  variable_set[1820] = 1;
  return result;
}

ExcelValue outputs_emissions_d200() {
  static ExcelValue result;
  if(variable_set[1821] == 1) { return result;}
  result = C148;
  variable_set[1821] = 1;
  return result;
}

ExcelValue outputs_emissions_s200() {
  static ExcelValue result;
  if(variable_set[1822] == 1) { return result;}
  result = C158;
  variable_set[1822] = 1;
  return result;
}

ExcelValue outputs_emissions_c201() {
  static ExcelValue result;
  if(variable_set[1823] == 1) { return result;}
  result = C149;
  variable_set[1823] = 1;
  return result;
}

ExcelValue outputs_emissions_d201() {
  static ExcelValue result;
  if(variable_set[1824] == 1) { return result;}
  result = C150;
  variable_set[1824] = 1;
  return result;
}

ExcelValue outputs_emissions_s201() {
  static ExcelValue result;
  if(variable_set[1825] == 1) { return result;}
  result = C158;
  variable_set[1825] = 1;
  return result;
}

ExcelValue outputs_emissions_c202() {
  static ExcelValue result;
  if(variable_set[1826] == 1) { return result;}
  result = C151;
  variable_set[1826] = 1;
  return result;
}

ExcelValue outputs_emissions_d202() {
  static ExcelValue result;
  if(variable_set[1827] == 1) { return result;}
  result = C152;
  variable_set[1827] = 1;
  return result;
}

ExcelValue outputs_emissions_s202() {
  static ExcelValue result;
  if(variable_set[1828] == 1) { return result;}
  result = C158;
  variable_set[1828] = 1;
  return result;
}

ExcelValue outputs_emissions_c203() {
  static ExcelValue result;
  if(variable_set[1829] == 1) { return result;}
  result = C153;
  variable_set[1829] = 1;
  return result;
}

ExcelValue outputs_emissions_d203() {
  static ExcelValue result;
  if(variable_set[1830] == 1) { return result;}
  result = C154;
  variable_set[1830] = 1;
  return result;
}

ExcelValue outputs_emissions_s203() {
  static ExcelValue result;
  if(variable_set[1831] == 1) { return result;}
  result = C158;
  variable_set[1831] = 1;
  return result;
}

ExcelValue outputs_emissions_d204() {
  static ExcelValue result;
  if(variable_set[1832] == 1) { return result;}
  result = C155;
  variable_set[1832] = 1;
  return result;
}

ExcelValue outputs_emissions_h204() {
  static ExcelValue result;
  if(variable_set[1833] == 1) { return result;}
  result = C158;
  variable_set[1833] = 1;
  return result;
}

ExcelValue outputs_emissions_i204() {
  static ExcelValue result;
  if(variable_set[1834] == 1) { return result;}
  result = C158;
  variable_set[1834] = 1;
  return result;
}

ExcelValue outputs_emissions_j204() {
  static ExcelValue result;
  if(variable_set[1835] == 1) { return result;}
  result = C158;
  variable_set[1835] = 1;
  return result;
}

ExcelValue outputs_emissions_k204() {
  static ExcelValue result;
  if(variable_set[1836] == 1) { return result;}
  result = C158;
  variable_set[1836] = 1;
  return result;
}

ExcelValue outputs_emissions_l204() {
  static ExcelValue result;
  if(variable_set[1837] == 1) { return result;}
  result = C158;
  variable_set[1837] = 1;
  return result;
}

ExcelValue outputs_emissions_m204() {
  static ExcelValue result;
  if(variable_set[1838] == 1) { return result;}
  result = C158;
  variable_set[1838] = 1;
  return result;
}

ExcelValue outputs_emissions_n204() {
  static ExcelValue result;
  if(variable_set[1839] == 1) { return result;}
  result = C158;
  variable_set[1839] = 1;
  return result;
}

ExcelValue outputs_emissions_o204() {
  static ExcelValue result;
  if(variable_set[1840] == 1) { return result;}
  result = C158;
  variable_set[1840] = 1;
  return result;
}

ExcelValue outputs_emissions_p204() {
  static ExcelValue result;
  if(variable_set[1841] == 1) { return result;}
  result = C158;
  variable_set[1841] = 1;
  return result;
}

ExcelValue outputs_emissions_r204() {
  static ExcelValue result;
  if(variable_set[1842] == 1) { return result;}
  result = C158;
  variable_set[1842] = 1;
  return result;
}

ExcelValue outputs_emissions_s204() {
  static ExcelValue result;
  if(variable_set[1843] == 1) { return result;}
  result = C158;
  variable_set[1843] = 1;
  return result;
}

ExcelValue outputs_emissions_t204() {
  static ExcelValue result;
  if(variable_set[1844] == 1) { return result;}
  result = C158;
  variable_set[1844] = 1;
  return result;
}

ExcelValue outputs_emissions_u204() {
  static ExcelValue result;
  if(variable_set[1845] == 1) { return result;}
  result = C158;
  variable_set[1845] = 1;
  return result;
}

ExcelValue outputs_emissions_v204() {
  static ExcelValue result;
  if(variable_set[1846] == 1) { return result;}
  result = C158;
  variable_set[1846] = 1;
  return result;
}

ExcelValue outputs_emissions_w204() {
  static ExcelValue result;
  if(variable_set[1847] == 1) { return result;}
  result = C158;
  variable_set[1847] = 1;
  return result;
}

ExcelValue outputs_emissions_x204() {
  static ExcelValue result;
  if(variable_set[1848] == 1) { return result;}
  result = C158;
  variable_set[1848] = 1;
  return result;
}

ExcelValue outputs_emissions_y204() {
  static ExcelValue result;
  if(variable_set[1849] == 1) { return result;}
  result = C158;
  variable_set[1849] = 1;
  return result;
}

ExcelValue outputs_emissions_z204() {
  static ExcelValue result;
  if(variable_set[1850] == 1) { return result;}
  result = C158;
  variable_set[1850] = 1;
  return result;
}

ExcelValue outputs_emissions_aa204() {
  static ExcelValue result;
  if(variable_set[1851] == 1) { return result;}
  result = C158;
  variable_set[1851] = 1;
  return result;
}

ExcelValue outputs_emissions_ab204() {
  static ExcelValue result;
  if(variable_set[1852] == 1) { return result;}
  result = C158;
  variable_set[1852] = 1;
  return result;
}

ExcelValue outputs_emissions_ac204() {
  static ExcelValue result;
  if(variable_set[1853] == 1) { return result;}
  result = C158;
  variable_set[1853] = 1;
  return result;
}

ExcelValue outputs_emissions_ad204() {
  static ExcelValue result;
  if(variable_set[1854] == 1) { return result;}
  result = C158;
  variable_set[1854] = 1;
  return result;
}

ExcelValue outputs_emissions_ae204() {
  static ExcelValue result;
  if(variable_set[1855] == 1) { return result;}
  result = C158;
  variable_set[1855] = 1;
  return result;
}

ExcelValue outputs_emissions_af204() {
  static ExcelValue result;
  if(variable_set[1856] == 1) { return result;}
  result = C158;
  variable_set[1856] = 1;
  return result;
}

ExcelValue outputs_emissions_ag204() {
  static ExcelValue result;
  if(variable_set[1857] == 1) { return result;}
  result = C158;
  variable_set[1857] = 1;
  return result;
}

ExcelValue outputs_emissions_ah204() {
  static ExcelValue result;
  if(variable_set[1858] == 1) { return result;}
  result = C158;
  variable_set[1858] = 1;
  return result;
}

ExcelValue outputs_emissions_ai204() {
  static ExcelValue result;
  if(variable_set[1859] == 1) { return result;}
  result = C158;
  variable_set[1859] = 1;
  return result;
}

ExcelValue outputs_emissions_aj204() {
  static ExcelValue result;
  if(variable_set[1860] == 1) { return result;}
  result = C158;
  variable_set[1860] = 1;
  return result;
}

ExcelValue outputs_emissions_d205() {
  static ExcelValue result;
  if(variable_set[1861] == 1) { return result;}
  result = C159;
  variable_set[1861] = 1;
  return result;
}

ExcelValue outputs_emissions_d206() {
  static ExcelValue result;
  if(variable_set[1862] == 1) { return result;}
  result = C160;
  variable_set[1862] = 1;
  return result;
}

ExcelValue outputs_emissions_c209() {
  static ExcelValue result;
  if(variable_set[1863] == 1) { return result;}
  result = C161;
  variable_set[1863] = 1;
  return result;
}

ExcelValue outputs_emissions_h210() {
  static ExcelValue result;
  if(variable_set[1864] == 1) { return result;}
  result = C102;
  variable_set[1864] = 1;
  return result;
}

ExcelValue outputs_emissions_r210() {
  static ExcelValue result;
  if(variable_set[1865] == 1) { return result;}
  result = C103;
  variable_set[1865] = 1;
  return result;
}

ExcelValue outputs_emissions_aa210() {
  static ExcelValue result;
  if(variable_set[1866] == 1) { return result;}
  result = C104;
  variable_set[1866] = 1;
  return result;
}

ExcelValue outputs_emissions_c211() {
  static ExcelValue result;
  if(variable_set[1867] == 1) { return result;}
  result = C162;
  variable_set[1867] = 1;
  return result;
}

ExcelValue outputs_emissions_d211() {
  static ExcelValue result;
  if(variable_set[1868] == 1) { return result;}
  result = C163;
  variable_set[1868] = 1;
  return result;
}

ExcelValue outputs_emissions_h211() {
  static ExcelValue result;
  if(variable_set[1869] == 1) { return result;}
  result = C106;
  variable_set[1869] = 1;
  return result;
}

ExcelValue outputs_emissions_i211() {
  static ExcelValue result;
  if(variable_set[1870] == 1) { return result;}
  result = C107;
  variable_set[1870] = 1;
  return result;
}

ExcelValue outputs_emissions_j211() {
  static ExcelValue result;
  if(variable_set[1871] == 1) { return result;}
  result = C108;
  variable_set[1871] = 1;
  return result;
}

ExcelValue outputs_emissions_k211() {
  static ExcelValue result;
  if(variable_set[1872] == 1) { return result;}
  result = C109;
  variable_set[1872] = 1;
  return result;
}

ExcelValue outputs_emissions_l211() {
  static ExcelValue result;
  if(variable_set[1873] == 1) { return result;}
  result = C110;
  variable_set[1873] = 1;
  return result;
}

ExcelValue outputs_emissions_m211() {
  static ExcelValue result;
  if(variable_set[1874] == 1) { return result;}
  result = C111;
  variable_set[1874] = 1;
  return result;
}

ExcelValue outputs_emissions_n211() {
  static ExcelValue result;
  if(variable_set[1875] == 1) { return result;}
  result = C112;
  variable_set[1875] = 1;
  return result;
}

ExcelValue outputs_emissions_o211() {
  static ExcelValue result;
  if(variable_set[1876] == 1) { return result;}
  result = C113;
  variable_set[1876] = 1;
  return result;
}

ExcelValue outputs_emissions_p211() {
  static ExcelValue result;
  if(variable_set[1877] == 1) { return result;}
  result = C114;
  variable_set[1877] = 1;
  return result;
}

ExcelValue outputs_emissions_r211() {
  static ExcelValue result;
  if(variable_set[1878] == 1) { return result;}
  result = C115;
  variable_set[1878] = 1;
  return result;
}

ExcelValue outputs_emissions_s211() {
  static ExcelValue result;
  if(variable_set[1879] == 1) { return result;}
  result = C116;
  variable_set[1879] = 1;
  return result;
}

ExcelValue outputs_emissions_t211() {
  static ExcelValue result;
  if(variable_set[1880] == 1) { return result;}
  result = C117;
  variable_set[1880] = 1;
  return result;
}

ExcelValue outputs_emissions_u211() {
  static ExcelValue result;
  if(variable_set[1881] == 1) { return result;}
  result = C118;
  variable_set[1881] = 1;
  return result;
}

ExcelValue outputs_emissions_v211() {
  static ExcelValue result;
  if(variable_set[1882] == 1) { return result;}
  result = C119;
  variable_set[1882] = 1;
  return result;
}

ExcelValue outputs_emissions_w211() {
  static ExcelValue result;
  if(variable_set[1883] == 1) { return result;}
  result = C120;
  variable_set[1883] = 1;
  return result;
}

ExcelValue outputs_emissions_x211() {
  static ExcelValue result;
  if(variable_set[1884] == 1) { return result;}
  result = C121;
  variable_set[1884] = 1;
  return result;
}

ExcelValue outputs_emissions_y211() {
  static ExcelValue result;
  if(variable_set[1885] == 1) { return result;}
  result = C122;
  variable_set[1885] = 1;
  return result;
}

ExcelValue outputs_emissions_z211() {
  static ExcelValue result;
  if(variable_set[1886] == 1) { return result;}
  result = C123;
  variable_set[1886] = 1;
  return result;
}

ExcelValue outputs_emissions_aa211() {
  static ExcelValue result;
  if(variable_set[1887] == 1) { return result;}
  result = C124;
  variable_set[1887] = 1;
  return result;
}

ExcelValue outputs_emissions_ab211() {
  static ExcelValue result;
  if(variable_set[1888] == 1) { return result;}
  result = C157;
  variable_set[1888] = 1;
  return result;
}

ExcelValue outputs_emissions_ac211() {
  static ExcelValue result;
  if(variable_set[1889] == 1) { return result;}
  result = C126;
  variable_set[1889] = 1;
  return result;
}

ExcelValue outputs_emissions_ad211() {
  static ExcelValue result;
  if(variable_set[1890] == 1) { return result;}
  result = C127;
  variable_set[1890] = 1;
  return result;
}

ExcelValue outputs_emissions_ae211() {
  static ExcelValue result;
  if(variable_set[1891] == 1) { return result;}
  result = C128;
  variable_set[1891] = 1;
  return result;
}

ExcelValue outputs_emissions_af211() {
  static ExcelValue result;
  if(variable_set[1892] == 1) { return result;}
  result = C129;
  variable_set[1892] = 1;
  return result;
}

ExcelValue outputs_emissions_ag211() {
  static ExcelValue result;
  if(variable_set[1893] == 1) { return result;}
  result = C130;
  variable_set[1893] = 1;
  return result;
}

ExcelValue outputs_emissions_ah211() {
  static ExcelValue result;
  if(variable_set[1894] == 1) { return result;}
  result = C131;
  variable_set[1894] = 1;
  return result;
}

ExcelValue outputs_emissions_ai211() {
  static ExcelValue result;
  if(variable_set[1895] == 1) { return result;}
  result = C132;
  variable_set[1895] = 1;
  return result;
}

ExcelValue outputs_emissions_aj211() {
  static ExcelValue result;
  if(variable_set[1896] == 1) { return result;}
  result = C133;
  variable_set[1896] = 1;
  return result;
}

ExcelValue outputs_emissions_c212() {
  static ExcelValue result;
  if(variable_set[1897] == 1) { return result;}
  result = C164;
  variable_set[1897] = 1;
  return result;
}

ExcelValue outputs_emissions_d212() {
  static ExcelValue result;
  if(variable_set[1898] == 1) { return result;}
  result = NAME;
  variable_set[1898] = 1;
  return result;
}

ExcelValue outputs_emissions_s212() {
  static ExcelValue result;
  if(variable_set[1899] == 1) { return result;}
  result = NAME;
  variable_set[1899] = 1;
  return result;
}

ExcelValue outputs_emissions_c213() {
  static ExcelValue result;
  if(variable_set[1900] == 1) { return result;}
  result = C165;
  variable_set[1900] = 1;
  return result;
}

ExcelValue outputs_emissions_d213() {
  static ExcelValue result;
  if(variable_set[1901] == 1) { return result;}
  result = NAME;
  variable_set[1901] = 1;
  return result;
}

ExcelValue outputs_emissions_s213() {
  static ExcelValue result;
  if(variable_set[1902] == 1) { return result;}
  result = NAME;
  variable_set[1902] = 1;
  return result;
}

ExcelValue outputs_emissions_c214() {
  static ExcelValue result;
  if(variable_set[1903] == 1) { return result;}
  result = C166;
  variable_set[1903] = 1;
  return result;
}

ExcelValue outputs_emissions_d214() {
  static ExcelValue result;
  if(variable_set[1904] == 1) { return result;}
  result = NAME;
  variable_set[1904] = 1;
  return result;
}

ExcelValue outputs_emissions_s214() {
  static ExcelValue result;
  if(variable_set[1905] == 1) { return result;}
  result = NAME;
  variable_set[1905] = 1;
  return result;
}

ExcelValue outputs_emissions_c215() {
  static ExcelValue result;
  if(variable_set[1906] == 1) { return result;}
  result = C167;
  variable_set[1906] = 1;
  return result;
}

ExcelValue outputs_emissions_d215() {
  static ExcelValue result;
  if(variable_set[1907] == 1) { return result;}
  result = NAME;
  variable_set[1907] = 1;
  return result;
}

ExcelValue outputs_emissions_s215() {
  static ExcelValue result;
  if(variable_set[1908] == 1) { return result;}
  result = NAME;
  variable_set[1908] = 1;
  return result;
}

ExcelValue outputs_emissions_c216() {
  static ExcelValue result;
  if(variable_set[1909] == 1) { return result;}
  result = C168;
  variable_set[1909] = 1;
  return result;
}

ExcelValue outputs_emissions_d216() {
  static ExcelValue result;
  if(variable_set[1910] == 1) { return result;}
  result = NAME;
  variable_set[1910] = 1;
  return result;
}

ExcelValue outputs_emissions_s216() {
  static ExcelValue result;
  if(variable_set[1911] == 1) { return result;}
  result = NAME;
  variable_set[1911] = 1;
  return result;
}

ExcelValue outputs_emissions_c217() {
  static ExcelValue result;
  if(variable_set[1912] == 1) { return result;}
  result = C169;
  variable_set[1912] = 1;
  return result;
}

ExcelValue outputs_emissions_d217() {
  static ExcelValue result;
  if(variable_set[1913] == 1) { return result;}
  result = NAME;
  variable_set[1913] = 1;
  return result;
}

ExcelValue outputs_emissions_s217() {
  static ExcelValue result;
  if(variable_set[1914] == 1) { return result;}
  result = NAME;
  variable_set[1914] = 1;
  return result;
}

ExcelValue outputs_emissions_d218() {
  static ExcelValue result;
  if(variable_set[1915] == 1) { return result;}
  result = C155;
  variable_set[1915] = 1;
  return result;
}

ExcelValue outputs_emissions_h218() {
  static ExcelValue result;
  if(variable_set[1916] == 1) { return result;}
  result = C158;
  variable_set[1916] = 1;
  return result;
}

ExcelValue outputs_emissions_i218() {
  static ExcelValue result;
  if(variable_set[1917] == 1) { return result;}
  result = C158;
  variable_set[1917] = 1;
  return result;
}

ExcelValue outputs_emissions_j218() {
  static ExcelValue result;
  if(variable_set[1918] == 1) { return result;}
  result = C158;
  variable_set[1918] = 1;
  return result;
}

ExcelValue outputs_emissions_k218() {
  static ExcelValue result;
  if(variable_set[1919] == 1) { return result;}
  result = C158;
  variable_set[1919] = 1;
  return result;
}

ExcelValue outputs_emissions_l218() {
  static ExcelValue result;
  if(variable_set[1920] == 1) { return result;}
  result = C158;
  variable_set[1920] = 1;
  return result;
}

ExcelValue outputs_emissions_m218() {
  static ExcelValue result;
  if(variable_set[1921] == 1) { return result;}
  result = C158;
  variable_set[1921] = 1;
  return result;
}

ExcelValue outputs_emissions_n218() {
  static ExcelValue result;
  if(variable_set[1922] == 1) { return result;}
  result = C158;
  variable_set[1922] = 1;
  return result;
}

ExcelValue outputs_emissions_o218() {
  static ExcelValue result;
  if(variable_set[1923] == 1) { return result;}
  result = C158;
  variable_set[1923] = 1;
  return result;
}

ExcelValue outputs_emissions_p218() {
  static ExcelValue result;
  if(variable_set[1924] == 1) { return result;}
  result = C158;
  variable_set[1924] = 1;
  return result;
}

ExcelValue outputs_emissions_r218() {
  static ExcelValue result;
  if(variable_set[1925] == 1) { return result;}
  result = C158;
  variable_set[1925] = 1;
  return result;
}

ExcelValue outputs_emissions_s218() {
  static ExcelValue result;
  if(variable_set[1926] == 1) { return result;}
  result = NAME;
  variable_set[1926] = 1;
  return result;
}

ExcelValue outputs_emissions_t218() {
  static ExcelValue result;
  if(variable_set[1927] == 1) { return result;}
  result = C158;
  variable_set[1927] = 1;
  return result;
}

ExcelValue outputs_emissions_u218() {
  static ExcelValue result;
  if(variable_set[1928] == 1) { return result;}
  result = C158;
  variable_set[1928] = 1;
  return result;
}

ExcelValue outputs_emissions_v218() {
  static ExcelValue result;
  if(variable_set[1929] == 1) { return result;}
  result = C158;
  variable_set[1929] = 1;
  return result;
}

ExcelValue outputs_emissions_w218() {
  static ExcelValue result;
  if(variable_set[1930] == 1) { return result;}
  result = C158;
  variable_set[1930] = 1;
  return result;
}

ExcelValue outputs_emissions_x218() {
  static ExcelValue result;
  if(variable_set[1931] == 1) { return result;}
  result = C158;
  variable_set[1931] = 1;
  return result;
}

ExcelValue outputs_emissions_y218() {
  static ExcelValue result;
  if(variable_set[1932] == 1) { return result;}
  result = C158;
  variable_set[1932] = 1;
  return result;
}

ExcelValue outputs_emissions_z218() {
  static ExcelValue result;
  if(variable_set[1933] == 1) { return result;}
  result = C158;
  variable_set[1933] = 1;
  return result;
}

ExcelValue outputs_emissions_aa218() {
  static ExcelValue result;
  if(variable_set[1934] == 1) { return result;}
  result = C158;
  variable_set[1934] = 1;
  return result;
}

ExcelValue outputs_emissions_ab218() {
  static ExcelValue result;
  if(variable_set[1935] == 1) { return result;}
  result = C158;
  variable_set[1935] = 1;
  return result;
}

ExcelValue outputs_emissions_ac218() {
  static ExcelValue result;
  if(variable_set[1936] == 1) { return result;}
  result = C158;
  variable_set[1936] = 1;
  return result;
}

ExcelValue outputs_emissions_ad218() {
  static ExcelValue result;
  if(variable_set[1937] == 1) { return result;}
  result = C158;
  variable_set[1937] = 1;
  return result;
}

ExcelValue outputs_emissions_ae218() {
  static ExcelValue result;
  if(variable_set[1938] == 1) { return result;}
  result = C158;
  variable_set[1938] = 1;
  return result;
}

ExcelValue outputs_emissions_af218() {
  static ExcelValue result;
  if(variable_set[1939] == 1) { return result;}
  result = C158;
  variable_set[1939] = 1;
  return result;
}

ExcelValue outputs_emissions_ag218() {
  static ExcelValue result;
  if(variable_set[1940] == 1) { return result;}
  result = C158;
  variable_set[1940] = 1;
  return result;
}

ExcelValue outputs_emissions_ah218() {
  static ExcelValue result;
  if(variable_set[1941] == 1) { return result;}
  result = C158;
  variable_set[1941] = 1;
  return result;
}

ExcelValue outputs_emissions_ai218() {
  static ExcelValue result;
  if(variable_set[1942] == 1) { return result;}
  result = C158;
  variable_set[1942] = 1;
  return result;
}

ExcelValue outputs_emissions_aj218() {
  static ExcelValue result;
  if(variable_set[1943] == 1) { return result;}
  result = C158;
  variable_set[1943] = 1;
  return result;
}

ExcelValue outputs_emissions_d219() {
  static ExcelValue result;
  if(variable_set[1944] == 1) { return result;}
  result = C159;
  variable_set[1944] = 1;
  return result;
}

ExcelValue outputs_emissions_d220() {
  static ExcelValue result;
  if(variable_set[1945] == 1) { return result;}
  result = C160;
  variable_set[1945] = 1;
  return result;
}

ExcelValue outputs_emissions_c223() {
  static ExcelValue result;
  if(variable_set[1946] == 1) { return result;}
  result = C170;
  variable_set[1946] = 1;
  return result;
}

ExcelValue outputs_emissions_h224() {
  static ExcelValue result;
  if(variable_set[1947] == 1) { return result;}
  result = C102;
  variable_set[1947] = 1;
  return result;
}

ExcelValue outputs_emissions_r224() {
  static ExcelValue result;
  if(variable_set[1948] == 1) { return result;}
  result = C103;
  variable_set[1948] = 1;
  return result;
}

ExcelValue outputs_emissions_aa224() {
  static ExcelValue result;
  if(variable_set[1949] == 1) { return result;}
  result = C104;
  variable_set[1949] = 1;
  return result;
}

ExcelValue outputs_emissions_c225() {
  static ExcelValue result;
  if(variable_set[1950] == 1) { return result;}
  result = C171;
  variable_set[1950] = 1;
  return result;
}

ExcelValue outputs_emissions_h225() {
  static ExcelValue result;
  if(variable_set[1951] == 1) { return result;}
  result = C106;
  variable_set[1951] = 1;
  return result;
}

ExcelValue outputs_emissions_i225() {
  static ExcelValue result;
  if(variable_set[1952] == 1) { return result;}
  result = C107;
  variable_set[1952] = 1;
  return result;
}

ExcelValue outputs_emissions_j225() {
  static ExcelValue result;
  if(variable_set[1953] == 1) { return result;}
  result = C108;
  variable_set[1953] = 1;
  return result;
}

ExcelValue outputs_emissions_k225() {
  static ExcelValue result;
  if(variable_set[1954] == 1) { return result;}
  result = C109;
  variable_set[1954] = 1;
  return result;
}

ExcelValue outputs_emissions_l225() {
  static ExcelValue result;
  if(variable_set[1955] == 1) { return result;}
  result = C110;
  variable_set[1955] = 1;
  return result;
}

ExcelValue outputs_emissions_m225() {
  static ExcelValue result;
  if(variable_set[1956] == 1) { return result;}
  result = C111;
  variable_set[1956] = 1;
  return result;
}

ExcelValue outputs_emissions_n225() {
  static ExcelValue result;
  if(variable_set[1957] == 1) { return result;}
  result = C112;
  variable_set[1957] = 1;
  return result;
}

ExcelValue outputs_emissions_o225() {
  static ExcelValue result;
  if(variable_set[1958] == 1) { return result;}
  result = C113;
  variable_set[1958] = 1;
  return result;
}

ExcelValue outputs_emissions_p225() {
  static ExcelValue result;
  if(variable_set[1959] == 1) { return result;}
  result = C114;
  variable_set[1959] = 1;
  return result;
}

ExcelValue outputs_emissions_r225() {
  static ExcelValue result;
  if(variable_set[1960] == 1) { return result;}
  result = C115;
  variable_set[1960] = 1;
  return result;
}

ExcelValue outputs_emissions_s225() {
  static ExcelValue result;
  if(variable_set[1961] == 1) { return result;}
  result = C116;
  variable_set[1961] = 1;
  return result;
}

ExcelValue outputs_emissions_t225() {
  static ExcelValue result;
  if(variable_set[1962] == 1) { return result;}
  result = C117;
  variable_set[1962] = 1;
  return result;
}

ExcelValue outputs_emissions_u225() {
  static ExcelValue result;
  if(variable_set[1963] == 1) { return result;}
  result = C118;
  variable_set[1963] = 1;
  return result;
}

ExcelValue outputs_emissions_v225() {
  static ExcelValue result;
  if(variable_set[1964] == 1) { return result;}
  result = C119;
  variable_set[1964] = 1;
  return result;
}

ExcelValue outputs_emissions_w225() {
  static ExcelValue result;
  if(variable_set[1965] == 1) { return result;}
  result = C120;
  variable_set[1965] = 1;
  return result;
}

ExcelValue outputs_emissions_x225() {
  static ExcelValue result;
  if(variable_set[1966] == 1) { return result;}
  result = C121;
  variable_set[1966] = 1;
  return result;
}

ExcelValue outputs_emissions_y225() {
  static ExcelValue result;
  if(variable_set[1967] == 1) { return result;}
  result = C122;
  variable_set[1967] = 1;
  return result;
}

ExcelValue outputs_emissions_z225() {
  static ExcelValue result;
  if(variable_set[1968] == 1) { return result;}
  result = C123;
  variable_set[1968] = 1;
  return result;
}

ExcelValue outputs_emissions_aa225() {
  static ExcelValue result;
  if(variable_set[1969] == 1) { return result;}
  result = C124;
  variable_set[1969] = 1;
  return result;
}

ExcelValue outputs_emissions_ab225() {
  static ExcelValue result;
  if(variable_set[1970] == 1) { return result;}
  result = C157;
  variable_set[1970] = 1;
  return result;
}

ExcelValue outputs_emissions_ac225() {
  static ExcelValue result;
  if(variable_set[1971] == 1) { return result;}
  result = C126;
  variable_set[1971] = 1;
  return result;
}

ExcelValue outputs_emissions_ad225() {
  static ExcelValue result;
  if(variable_set[1972] == 1) { return result;}
  result = C127;
  variable_set[1972] = 1;
  return result;
}

ExcelValue outputs_emissions_ae225() {
  static ExcelValue result;
  if(variable_set[1973] == 1) { return result;}
  result = C128;
  variable_set[1973] = 1;
  return result;
}

ExcelValue outputs_emissions_af225() {
  static ExcelValue result;
  if(variable_set[1974] == 1) { return result;}
  result = C129;
  variable_set[1974] = 1;
  return result;
}

ExcelValue outputs_emissions_ag225() {
  static ExcelValue result;
  if(variable_set[1975] == 1) { return result;}
  result = C130;
  variable_set[1975] = 1;
  return result;
}

ExcelValue outputs_emissions_ah225() {
  static ExcelValue result;
  if(variable_set[1976] == 1) { return result;}
  result = C131;
  variable_set[1976] = 1;
  return result;
}

ExcelValue outputs_emissions_ai225() {
  static ExcelValue result;
  if(variable_set[1977] == 1) { return result;}
  result = C132;
  variable_set[1977] = 1;
  return result;
}

ExcelValue outputs_emissions_aj225() {
  static ExcelValue result;
  if(variable_set[1978] == 1) { return result;}
  result = C133;
  variable_set[1978] = 1;
  return result;
}

ExcelValue outputs_emissions_c226() {
  static ExcelValue result;
  if(variable_set[1979] == 1) { return result;}
  result = C172;
  variable_set[1979] = 1;
  return result;
}

ExcelValue outputs_emissions_d226() {
  static ExcelValue result;
  if(variable_set[1980] == 1) { return result;}
  result = NA;
  variable_set[1980] = 1;
  return result;
}

ExcelValue outputs_emissions_s226() {
  static ExcelValue result;
  if(variable_set[1981] == 1) { return result;}
  result = NA;
  variable_set[1981] = 1;
  return result;
}

ExcelValue outputs_emissions_c227() {
  static ExcelValue result;
  if(variable_set[1982] == 1) { return result;}
  result = C173;
  variable_set[1982] = 1;
  return result;
}

ExcelValue outputs_emissions_d227() {
  static ExcelValue result;
  if(variable_set[1983] == 1) { return result;}
  result = NA;
  variable_set[1983] = 1;
  return result;
}

ExcelValue outputs_emissions_s227() {
  static ExcelValue result;
  if(variable_set[1984] == 1) { return result;}
  result = NA;
  variable_set[1984] = 1;
  return result;
}

ExcelValue outputs_emissions_c228() {
  static ExcelValue result;
  if(variable_set[1985] == 1) { return result;}
  result = C174;
  variable_set[1985] = 1;
  return result;
}

ExcelValue outputs_emissions_d228() {
  static ExcelValue result;
  if(variable_set[1986] == 1) { return result;}
  result = NA;
  variable_set[1986] = 1;
  return result;
}

ExcelValue outputs_emissions_s228() {
  static ExcelValue result;
  if(variable_set[1987] == 1) { return result;}
  result = NA;
  variable_set[1987] = 1;
  return result;
}

ExcelValue outputs_emissions_c229() {
  static ExcelValue result;
  if(variable_set[1988] == 1) { return result;}
  result = C175;
  variable_set[1988] = 1;
  return result;
}

ExcelValue outputs_emissions_d229() {
  static ExcelValue result;
  if(variable_set[1989] == 1) { return result;}
  result = NA;
  variable_set[1989] = 1;
  return result;
}

ExcelValue outputs_emissions_s229() {
  static ExcelValue result;
  if(variable_set[1990] == 1) { return result;}
  result = NA;
  variable_set[1990] = 1;
  return result;
}

ExcelValue outputs_emissions_c230() {
  static ExcelValue result;
  if(variable_set[1991] == 1) { return result;}
  result = C176;
  variable_set[1991] = 1;
  return result;
}

ExcelValue outputs_emissions_d230() {
  static ExcelValue result;
  if(variable_set[1992] == 1) { return result;}
  result = NA;
  variable_set[1992] = 1;
  return result;
}

ExcelValue outputs_emissions_s230() {
  static ExcelValue result;
  if(variable_set[1993] == 1) { return result;}
  result = NA;
  variable_set[1993] = 1;
  return result;
}

ExcelValue outputs_emissions_c231() {
  static ExcelValue result;
  if(variable_set[1994] == 1) { return result;}
  result = C177;
  variable_set[1994] = 1;
  return result;
}

ExcelValue outputs_emissions_d231() {
  static ExcelValue result;
  if(variable_set[1995] == 1) { return result;}
  result = NA;
  variable_set[1995] = 1;
  return result;
}

ExcelValue outputs_emissions_s231() {
  static ExcelValue result;
  if(variable_set[1996] == 1) { return result;}
  result = NA;
  variable_set[1996] = 1;
  return result;
}

ExcelValue outputs_emissions_c232() {
  static ExcelValue result;
  if(variable_set[1997] == 1) { return result;}
  result = C178;
  variable_set[1997] = 1;
  return result;
}

ExcelValue outputs_emissions_d232() {
  static ExcelValue result;
  if(variable_set[1998] == 1) { return result;}
  result = NA;
  variable_set[1998] = 1;
  return result;
}

ExcelValue outputs_emissions_s232() {
  static ExcelValue result;
  if(variable_set[1999] == 1) { return result;}
  result = NA;
  variable_set[1999] = 1;
  return result;
}

ExcelValue outputs_emissions_c233() {
  static ExcelValue result;
  if(variable_set[2000] == 1) { return result;}
  result = C179;
  variable_set[2000] = 1;
  return result;
}

ExcelValue outputs_emissions_d233() {
  static ExcelValue result;
  if(variable_set[2001] == 1) { return result;}
  result = NA;
  variable_set[2001] = 1;
  return result;
}

ExcelValue outputs_emissions_s233() {
  static ExcelValue result;
  if(variable_set[2002] == 1) { return result;}
  result = NA;
  variable_set[2002] = 1;
  return result;
}

ExcelValue outputs_emissions_c234() {
  static ExcelValue result;
  if(variable_set[2003] == 1) { return result;}
  result = C180;
  variable_set[2003] = 1;
  return result;
}

ExcelValue outputs_emissions_d234() {
  static ExcelValue result;
  if(variable_set[2004] == 1) { return result;}
  result = NA;
  variable_set[2004] = 1;
  return result;
}

ExcelValue outputs_emissions_s234() {
  static ExcelValue result;
  if(variable_set[2005] == 1) { return result;}
  result = NA;
  variable_set[2005] = 1;
  return result;
}

ExcelValue outputs_emissions_d235() {
  static ExcelValue result;
  if(variable_set[2006] == 1) { return result;}
  result = C181;
  variable_set[2006] = 1;
  return result;
}

ExcelValue outputs_emissions_h235() {
  static ExcelValue result;
  if(variable_set[2007] == 1) { return result;}
  result = C158;
  variable_set[2007] = 1;
  return result;
}

ExcelValue outputs_emissions_i235() {
  static ExcelValue result;
  if(variable_set[2008] == 1) { return result;}
  result = C158;
  variable_set[2008] = 1;
  return result;
}

ExcelValue outputs_emissions_j235() {
  static ExcelValue result;
  if(variable_set[2009] == 1) { return result;}
  result = C158;
  variable_set[2009] = 1;
  return result;
}

ExcelValue outputs_emissions_k235() {
  static ExcelValue result;
  if(variable_set[2010] == 1) { return result;}
  result = C158;
  variable_set[2010] = 1;
  return result;
}

ExcelValue outputs_emissions_l235() {
  static ExcelValue result;
  if(variable_set[2011] == 1) { return result;}
  result = C158;
  variable_set[2011] = 1;
  return result;
}

ExcelValue outputs_emissions_m235() {
  static ExcelValue result;
  if(variable_set[2012] == 1) { return result;}
  result = C158;
  variable_set[2012] = 1;
  return result;
}

ExcelValue outputs_emissions_n235() {
  static ExcelValue result;
  if(variable_set[2013] == 1) { return result;}
  result = C158;
  variable_set[2013] = 1;
  return result;
}

ExcelValue outputs_emissions_o235() {
  static ExcelValue result;
  if(variable_set[2014] == 1) { return result;}
  result = C158;
  variable_set[2014] = 1;
  return result;
}

ExcelValue outputs_emissions_p235() {
  static ExcelValue result;
  if(variable_set[2015] == 1) { return result;}
  result = C158;
  variable_set[2015] = 1;
  return result;
}

ExcelValue outputs_emissions_r235() {
  static ExcelValue result;
  if(variable_set[2016] == 1) { return result;}
  result = C158;
  variable_set[2016] = 1;
  return result;
}

ExcelValue outputs_emissions_s235() {
  static ExcelValue result;
  if(variable_set[2017] == 1) { return result;}
  result = NA;
  variable_set[2017] = 1;
  return result;
}

ExcelValue outputs_emissions_t235() {
  static ExcelValue result;
  if(variable_set[2018] == 1) { return result;}
  result = C158;
  variable_set[2018] = 1;
  return result;
}

ExcelValue outputs_emissions_u235() {
  static ExcelValue result;
  if(variable_set[2019] == 1) { return result;}
  result = C158;
  variable_set[2019] = 1;
  return result;
}

ExcelValue outputs_emissions_v235() {
  static ExcelValue result;
  if(variable_set[2020] == 1) { return result;}
  result = C158;
  variable_set[2020] = 1;
  return result;
}

ExcelValue outputs_emissions_w235() {
  static ExcelValue result;
  if(variable_set[2021] == 1) { return result;}
  result = C158;
  variable_set[2021] = 1;
  return result;
}

ExcelValue outputs_emissions_x235() {
  static ExcelValue result;
  if(variable_set[2022] == 1) { return result;}
  result = C158;
  variable_set[2022] = 1;
  return result;
}

ExcelValue outputs_emissions_y235() {
  static ExcelValue result;
  if(variable_set[2023] == 1) { return result;}
  result = C158;
  variable_set[2023] = 1;
  return result;
}

ExcelValue outputs_emissions_z235() {
  static ExcelValue result;
  if(variable_set[2024] == 1) { return result;}
  result = C158;
  variable_set[2024] = 1;
  return result;
}

ExcelValue outputs_emissions_aa235() {
  static ExcelValue result;
  if(variable_set[2025] == 1) { return result;}
  result = C158;
  variable_set[2025] = 1;
  return result;
}

ExcelValue outputs_emissions_ab235() {
  static ExcelValue result;
  if(variable_set[2026] == 1) { return result;}
  result = C158;
  variable_set[2026] = 1;
  return result;
}

ExcelValue outputs_emissions_ac235() {
  static ExcelValue result;
  if(variable_set[2027] == 1) { return result;}
  result = C158;
  variable_set[2027] = 1;
  return result;
}

ExcelValue outputs_emissions_ad235() {
  static ExcelValue result;
  if(variable_set[2028] == 1) { return result;}
  result = C158;
  variable_set[2028] = 1;
  return result;
}

ExcelValue outputs_emissions_ae235() {
  static ExcelValue result;
  if(variable_set[2029] == 1) { return result;}
  result = C158;
  variable_set[2029] = 1;
  return result;
}

ExcelValue outputs_emissions_af235() {
  static ExcelValue result;
  if(variable_set[2030] == 1) { return result;}
  result = C158;
  variable_set[2030] = 1;
  return result;
}

ExcelValue outputs_emissions_ag235() {
  static ExcelValue result;
  if(variable_set[2031] == 1) { return result;}
  result = C158;
  variable_set[2031] = 1;
  return result;
}

ExcelValue outputs_emissions_ah235() {
  static ExcelValue result;
  if(variable_set[2032] == 1) { return result;}
  result = C158;
  variable_set[2032] = 1;
  return result;
}

ExcelValue outputs_emissions_ai235() {
  static ExcelValue result;
  if(variable_set[2033] == 1) { return result;}
  result = C158;
  variable_set[2033] = 1;
  return result;
}

ExcelValue outputs_emissions_aj235() {
  static ExcelValue result;
  if(variable_set[2034] == 1) { return result;}
  result = C158;
  variable_set[2034] = 1;
  return result;
}

ExcelValue outputs_emissions_c236() {
  static ExcelValue result;
  if(variable_set[2035] == 1) { return result;}
  result = C182;
  variable_set[2035] = 1;
  return result;
}

ExcelValue outputs_emissions_c239() {
  static ExcelValue result;
  if(variable_set[2036] == 1) { return result;}
  result = C183;
  variable_set[2036] = 1;
  return result;
}

ExcelValue outputs_emissions_d239() {
  static ExcelValue result;
  if(variable_set[2037] == 1) { return result;}
  result = C184;
  variable_set[2037] = 1;
  return result;
}

ExcelValue outputs_emissions_d240() {
  static ExcelValue result;
  if(variable_set[2038] == 1) { return result;}
  result = C185;
  variable_set[2038] = 1;
  return result;
}

// end Outputs - Emissions

// start Outputs - Energy
ExcelValue outputs_energy_b2() {
  static ExcelValue result;
  if(variable_set[2039] == 1) { return result;}
  result = C77;
  variable_set[2039] = 1;
  return result;
}

ExcelValue outputs_energy_c2() {
  static ExcelValue result;
  if(variable_set[2040] == 1) { return result;}
  result = C78;
  variable_set[2040] = 1;
  return result;
}

ExcelValue outputs_energy_e2() {
  static ExcelValue result;
  if(variable_set[2041] == 1) { return result;}
  result = C2;
  variable_set[2041] = 1;
  return result;
}

ExcelValue outputs_energy_i2() {
  static ExcelValue result;
  if(variable_set[2042] == 1) { return result;}
  result = C190;
  variable_set[2042] = 1;
  return result;
}

ExcelValue outputs_energy_b3() {
  static ExcelValue result;
  if(variable_set[2043] == 1) { return result;}
  result = C191;
  variable_set[2043] = 1;
  return result;
}

ExcelValue outputs_energy_b5() {
  static ExcelValue result;
  if(variable_set[2044] == 1) { return result;}
  result = C192;
  variable_set[2044] = 1;
  return result;
}

ExcelValue outputs_energy_c7() {
  static ExcelValue result;
  if(variable_set[2045] == 1) { return result;}
  result = C193;
  variable_set[2045] = 1;
  return result;
}

ExcelValue outputs_energy_z7() {
  static ExcelValue result;
  if(variable_set[2046] == 1) { return result;}
  result = C194;
  variable_set[2046] = 1;
  return result;
}

ExcelValue outputs_energy_h8() {
  static ExcelValue result;
  if(variable_set[2047] == 1) { return result;}
  result = C102;
  variable_set[2047] = 1;
  return result;
}

ExcelValue outputs_energy_r8() {
  static ExcelValue result;
  if(variable_set[2048] == 1) { return result;}
  result = C195;
  variable_set[2048] = 1;
  return result;
}

ExcelValue outputs_energy_c9() {
  static ExcelValue result;
  if(variable_set[2049] == 1) { return result;}
  result = C196;
  variable_set[2049] = 1;
  return result;
}

ExcelValue outputs_energy_d9() {
  static ExcelValue result;
  if(variable_set[2050] == 1) { return result;}
  result = C197;
  variable_set[2050] = 1;
  return result;
}

ExcelValue outputs_energy_g9() {
  static ExcelValue result;
  if(variable_set[2051] == 1) { return result;}
  result = C198;
  variable_set[2051] = 1;
  return result;
}

ExcelValue outputs_energy_h9() {
  static ExcelValue result;
  if(variable_set[2052] == 1) { return result;}
  result = C106;
  variable_set[2052] = 1;
  return result;
}

ExcelValue outputs_energy_i9() {
  static ExcelValue result;
  if(variable_set[2053] == 1) { return result;}
  result = C107;
  variable_set[2053] = 1;
  return result;
}

ExcelValue outputs_energy_j9() {
  static ExcelValue result;
  if(variable_set[2054] == 1) { return result;}
  result = C108;
  variable_set[2054] = 1;
  return result;
}

ExcelValue outputs_energy_k9() {
  static ExcelValue result;
  if(variable_set[2055] == 1) { return result;}
  result = C109;
  variable_set[2055] = 1;
  return result;
}

ExcelValue outputs_energy_l9() {
  static ExcelValue result;
  if(variable_set[2056] == 1) { return result;}
  result = C110;
  variable_set[2056] = 1;
  return result;
}

ExcelValue outputs_energy_m9() {
  static ExcelValue result;
  if(variable_set[2057] == 1) { return result;}
  result = C111;
  variable_set[2057] = 1;
  return result;
}

ExcelValue outputs_energy_n9() {
  static ExcelValue result;
  if(variable_set[2058] == 1) { return result;}
  result = C112;
  variable_set[2058] = 1;
  return result;
}

ExcelValue outputs_energy_o9() {
  static ExcelValue result;
  if(variable_set[2059] == 1) { return result;}
  result = C113;
  variable_set[2059] = 1;
  return result;
}

ExcelValue outputs_energy_p9() {
  static ExcelValue result;
  if(variable_set[2060] == 1) { return result;}
  result = C114;
  variable_set[2060] = 1;
  return result;
}

ExcelValue outputs_energy_r9() {
  static ExcelValue result;
  if(variable_set[2061] == 1) { return result;}
  result = C115;
  variable_set[2061] = 1;
  return result;
}

ExcelValue outputs_energy_s9() {
  static ExcelValue result;
  if(variable_set[2062] == 1) { return result;}
  result = C199;
  variable_set[2062] = 1;
  return result;
}

ExcelValue outputs_energy_t9() {
  static ExcelValue result;
  if(variable_set[2063] == 1) { return result;}
  result = C200;
  variable_set[2063] = 1;
  return result;
}

ExcelValue outputs_energy_u9() {
  static ExcelValue result;
  if(variable_set[2064] == 1) { return result;}
  result = C201;
  variable_set[2064] = 1;
  return result;
}

ExcelValue outputs_energy_v9() {
  static ExcelValue result;
  if(variable_set[2065] == 1) { return result;}
  result = C202;
  variable_set[2065] = 1;
  return result;
}

ExcelValue outputs_energy_w9() {
  static ExcelValue result;
  if(variable_set[2066] == 1) { return result;}
  result = C203;
  variable_set[2066] = 1;
  return result;
}

ExcelValue outputs_energy_x9() {
  static ExcelValue result;
  if(variable_set[2067] == 1) { return result;}
  result = C204;
  variable_set[2067] = 1;
  return result;
}

ExcelValue outputs_energy_y9() {
  static ExcelValue result;
  if(variable_set[2068] == 1) { return result;}
  result = C205;
  variable_set[2068] = 1;
  return result;
}

ExcelValue outputs_energy_z9() {
  static ExcelValue result;
  if(variable_set[2069] == 1) { return result;}
  result = C206;
  variable_set[2069] = 1;
  return result;
}

ExcelValue outputs_energy_d10() {
  static ExcelValue result;
  if(variable_set[2070] == 1) { return result;}
  result = C21;
  variable_set[2070] = 1;
  return result;
}

ExcelValue outputs_energy_h10() {
  static ExcelValue result;
  if(variable_set[2071] == 1) { return result;}
  result = C158;
  variable_set[2071] = 1;
  return result;
}

ExcelValue outputs_energy_i10() {
  static ExcelValue result;
  if(variable_set[2072] == 1) { return result;}
  result = C158;
  variable_set[2072] = 1;
  return result;
}

ExcelValue outputs_energy_j10() {
  static ExcelValue result;
  if(variable_set[2073] == 1) { return result;}
  result = C158;
  variable_set[2073] = 1;
  return result;
}

ExcelValue outputs_energy_k10() {
  static ExcelValue result;
  if(variable_set[2074] == 1) { return result;}
  result = C158;
  variable_set[2074] = 1;
  return result;
}

ExcelValue outputs_energy_l10() {
  static ExcelValue result;
  if(variable_set[2075] == 1) { return result;}
  result = C158;
  variable_set[2075] = 1;
  return result;
}

ExcelValue outputs_energy_m10() {
  static ExcelValue result;
  if(variable_set[2076] == 1) { return result;}
  result = C158;
  variable_set[2076] = 1;
  return result;
}

ExcelValue outputs_energy_n10() {
  static ExcelValue result;
  if(variable_set[2077] == 1) { return result;}
  result = C158;
  variable_set[2077] = 1;
  return result;
}

ExcelValue outputs_energy_o10() {
  static ExcelValue result;
  if(variable_set[2078] == 1) { return result;}
  result = C158;
  variable_set[2078] = 1;
  return result;
}

ExcelValue outputs_energy_p10() {
  static ExcelValue result;
  if(variable_set[2079] == 1) { return result;}
  result = C158;
  variable_set[2079] = 1;
  return result;
}

ExcelValue outputs_energy_r10() {
  static ExcelValue result;
  if(variable_set[2080] == 1) { return result;}
  result = C158;
  variable_set[2080] = 1;
  return result;
}

ExcelValue outputs_energy_s10() {
  static ExcelValue result;
  if(variable_set[2081] == 1) { return result;}
  result = C158;
  variable_set[2081] = 1;
  return result;
}

ExcelValue outputs_energy_t10() {
  static ExcelValue result;
  if(variable_set[2082] == 1) { return result;}
  result = C158;
  variable_set[2082] = 1;
  return result;
}

ExcelValue outputs_energy_u10() {
  static ExcelValue result;
  if(variable_set[2083] == 1) { return result;}
  result = C158;
  variable_set[2083] = 1;
  return result;
}

ExcelValue outputs_energy_v10() {
  static ExcelValue result;
  if(variable_set[2084] == 1) { return result;}
  result = C158;
  variable_set[2084] = 1;
  return result;
}

ExcelValue outputs_energy_w10() {
  static ExcelValue result;
  if(variable_set[2085] == 1) { return result;}
  result = C158;
  variable_set[2085] = 1;
  return result;
}

ExcelValue outputs_energy_x10() {
  static ExcelValue result;
  if(variable_set[2086] == 1) { return result;}
  result = C158;
  variable_set[2086] = 1;
  return result;
}

ExcelValue outputs_energy_y10() {
  static ExcelValue result;
  if(variable_set[2087] == 1) { return result;}
  result = C158;
  variable_set[2087] = 1;
  return result;
}

ExcelValue outputs_energy_z10() {
  static ExcelValue result;
  if(variable_set[2088] == 1) { return result;}
  result = C158;
  variable_set[2088] = 1;
  return result;
}

ExcelValue outputs_energy_c11() {
  static ExcelValue result;
  if(variable_set[2089] == 1) { return result;}
  result = C207;
  variable_set[2089] = 1;
  return result;
}

ExcelValue outputs_energy_d11() {
  static ExcelValue result;
  if(variable_set[2090] == 1) { return result;}
  result = C208;
  variable_set[2090] = 1;
  return result;
}

ExcelValue outputs_energy_s11() {
  static ExcelValue result;
  if(variable_set[2091] == 1) { return result;}
  result = C158;
  variable_set[2091] = 1;
  return result;
}

ExcelValue outputs_energy_c12() {
  static ExcelValue result;
  if(variable_set[2092] == 1) { return result;}
  result = C209;
  variable_set[2092] = 1;
  return result;
}

ExcelValue outputs_energy_d12() {
  static ExcelValue result;
  if(variable_set[2093] == 1) { return result;}
  result = C210;
  variable_set[2093] = 1;
  return result;
}

ExcelValue outputs_energy_s12() {
  static ExcelValue result;
  if(variable_set[2094] == 1) { return result;}
  result = C158;
  variable_set[2094] = 1;
  return result;
}

ExcelValue outputs_energy_c13() {
  static ExcelValue result;
  if(variable_set[2095] == 1) { return result;}
  result = C211;
  variable_set[2095] = 1;
  return result;
}

ExcelValue outputs_energy_d13() {
  static ExcelValue result;
  if(variable_set[2096] == 1) { return result;}
  result = C212;
  variable_set[2096] = 1;
  return result;
}

ExcelValue outputs_energy_s13() {
  static ExcelValue result;
  if(variable_set[2097] == 1) { return result;}
  result = C158;
  variable_set[2097] = 1;
  return result;
}

ExcelValue outputs_energy_c14() {
  static ExcelValue result;
  if(variable_set[2098] == 1) { return result;}
  result = C213;
  variable_set[2098] = 1;
  return result;
}

ExcelValue outputs_energy_d14() {
  static ExcelValue result;
  if(variable_set[2099] == 1) { return result;}
  result = C214;
  variable_set[2099] = 1;
  return result;
}

ExcelValue outputs_energy_s14() {
  static ExcelValue result;
  if(variable_set[2100] == 1) { return result;}
  result = C158;
  variable_set[2100] = 1;
  return result;
}

ExcelValue outputs_energy_d16() {
  static ExcelValue result;
  if(variable_set[2101] == 1) { return result;}
  result = C36;
  variable_set[2101] = 1;
  return result;
}

ExcelValue outputs_energy_h16() {
  static ExcelValue result;
  if(variable_set[2102] == 1) { return result;}
  result = C158;
  variable_set[2102] = 1;
  return result;
}

ExcelValue outputs_energy_i16() {
  static ExcelValue result;
  if(variable_set[2103] == 1) { return result;}
  result = C158;
  variable_set[2103] = 1;
  return result;
}

ExcelValue outputs_energy_j16() {
  static ExcelValue result;
  if(variable_set[2104] == 1) { return result;}
  result = C158;
  variable_set[2104] = 1;
  return result;
}

ExcelValue outputs_energy_k16() {
  static ExcelValue result;
  if(variable_set[2105] == 1) { return result;}
  result = C158;
  variable_set[2105] = 1;
  return result;
}

ExcelValue outputs_energy_l16() {
  static ExcelValue result;
  if(variable_set[2106] == 1) { return result;}
  result = C158;
  variable_set[2106] = 1;
  return result;
}

ExcelValue outputs_energy_m16() {
  static ExcelValue result;
  if(variable_set[2107] == 1) { return result;}
  result = C158;
  variable_set[2107] = 1;
  return result;
}

ExcelValue outputs_energy_n16() {
  static ExcelValue result;
  if(variable_set[2108] == 1) { return result;}
  result = C158;
  variable_set[2108] = 1;
  return result;
}

ExcelValue outputs_energy_o16() {
  static ExcelValue result;
  if(variable_set[2109] == 1) { return result;}
  result = C158;
  variable_set[2109] = 1;
  return result;
}

ExcelValue outputs_energy_p16() {
  static ExcelValue result;
  if(variable_set[2110] == 1) { return result;}
  result = C158;
  variable_set[2110] = 1;
  return result;
}

ExcelValue outputs_energy_r16() {
  static ExcelValue result;
  if(variable_set[2111] == 1) { return result;}
  result = C158;
  variable_set[2111] = 1;
  return result;
}

ExcelValue outputs_energy_s16() {
  static ExcelValue result;
  if(variable_set[2112] == 1) { return result;}
  result = C158;
  variable_set[2112] = 1;
  return result;
}

ExcelValue outputs_energy_t16() {
  static ExcelValue result;
  if(variable_set[2113] == 1) { return result;}
  result = C158;
  variable_set[2113] = 1;
  return result;
}

ExcelValue outputs_energy_u16() {
  static ExcelValue result;
  if(variable_set[2114] == 1) { return result;}
  result = C158;
  variable_set[2114] = 1;
  return result;
}

ExcelValue outputs_energy_v16() {
  static ExcelValue result;
  if(variable_set[2115] == 1) { return result;}
  result = C158;
  variable_set[2115] = 1;
  return result;
}

ExcelValue outputs_energy_w16() {
  static ExcelValue result;
  if(variable_set[2116] == 1) { return result;}
  result = C158;
  variable_set[2116] = 1;
  return result;
}

ExcelValue outputs_energy_x16() {
  static ExcelValue result;
  if(variable_set[2117] == 1) { return result;}
  result = C158;
  variable_set[2117] = 1;
  return result;
}

ExcelValue outputs_energy_y16() {
  static ExcelValue result;
  if(variable_set[2118] == 1) { return result;}
  result = C158;
  variable_set[2118] = 1;
  return result;
}

ExcelValue outputs_energy_z16() {
  static ExcelValue result;
  if(variable_set[2119] == 1) { return result;}
  result = C158;
  variable_set[2119] = 1;
  return result;
}

ExcelValue outputs_energy_c17() {
  static ExcelValue result;
  if(variable_set[2120] == 1) { return result;}
  result = C215;
  variable_set[2120] = 1;
  return result;
}

ExcelValue outputs_energy_d17() {
  static ExcelValue result;
  if(variable_set[2121] == 1) { return result;}
  result = C216;
  variable_set[2121] = 1;
  return result;
}

ExcelValue outputs_energy_s17() {
  static ExcelValue result;
  if(variable_set[2122] == 1) { return result;}
  result = C158;
  variable_set[2122] = 1;
  return result;
}

ExcelValue outputs_energy_c18() {
  static ExcelValue result;
  if(variable_set[2123] == 1) { return result;}
  result = C217;
  variable_set[2123] = 1;
  return result;
}

ExcelValue outputs_energy_d18() {
  static ExcelValue result;
  if(variable_set[2124] == 1) { return result;}
  result = C218;
  variable_set[2124] = 1;
  return result;
}

ExcelValue outputs_energy_s18() {
  static ExcelValue result;
  if(variable_set[2125] == 1) { return result;}
  result = C158;
  variable_set[2125] = 1;
  return result;
}

ExcelValue outputs_energy_c19() {
  static ExcelValue result;
  if(variable_set[2126] == 1) { return result;}
  result = C219;
  variable_set[2126] = 1;
  return result;
}

ExcelValue outputs_energy_d19() {
  static ExcelValue result;
  if(variable_set[2127] == 1) { return result;}
  result = C220;
  variable_set[2127] = 1;
  return result;
}

ExcelValue outputs_energy_s19() {
  static ExcelValue result;
  if(variable_set[2128] == 1) { return result;}
  result = C158;
  variable_set[2128] = 1;
  return result;
}

ExcelValue outputs_energy_d21() {
  static ExcelValue result;
  if(variable_set[2129] == 1) { return result;}
  result = C29;
  variable_set[2129] = 1;
  return result;
}

ExcelValue outputs_energy_h21() {
  static ExcelValue result;
  if(variable_set[2130] == 1) { return result;}
  result = C158;
  variable_set[2130] = 1;
  return result;
}

ExcelValue outputs_energy_i21() {
  static ExcelValue result;
  if(variable_set[2131] == 1) { return result;}
  result = C158;
  variable_set[2131] = 1;
  return result;
}

ExcelValue outputs_energy_j21() {
  static ExcelValue result;
  if(variable_set[2132] == 1) { return result;}
  result = C158;
  variable_set[2132] = 1;
  return result;
}

ExcelValue outputs_energy_k21() {
  static ExcelValue result;
  if(variable_set[2133] == 1) { return result;}
  result = C158;
  variable_set[2133] = 1;
  return result;
}

ExcelValue outputs_energy_l21() {
  static ExcelValue result;
  if(variable_set[2134] == 1) { return result;}
  result = C158;
  variable_set[2134] = 1;
  return result;
}

ExcelValue outputs_energy_m21() {
  static ExcelValue result;
  if(variable_set[2135] == 1) { return result;}
  result = C158;
  variable_set[2135] = 1;
  return result;
}

ExcelValue outputs_energy_n21() {
  static ExcelValue result;
  if(variable_set[2136] == 1) { return result;}
  result = C158;
  variable_set[2136] = 1;
  return result;
}

ExcelValue outputs_energy_o21() {
  static ExcelValue result;
  if(variable_set[2137] == 1) { return result;}
  result = C158;
  variable_set[2137] = 1;
  return result;
}

ExcelValue outputs_energy_p21() {
  static ExcelValue result;
  if(variable_set[2138] == 1) { return result;}
  result = C158;
  variable_set[2138] = 1;
  return result;
}

ExcelValue outputs_energy_r21() {
  static ExcelValue result;
  if(variable_set[2139] == 1) { return result;}
  result = C158;
  variable_set[2139] = 1;
  return result;
}

ExcelValue outputs_energy_s21() {
  static ExcelValue result;
  if(variable_set[2140] == 1) { return result;}
  result = C158;
  variable_set[2140] = 1;
  return result;
}

ExcelValue outputs_energy_t21() {
  static ExcelValue result;
  if(variable_set[2141] == 1) { return result;}
  result = C158;
  variable_set[2141] = 1;
  return result;
}

ExcelValue outputs_energy_u21() {
  static ExcelValue result;
  if(variable_set[2142] == 1) { return result;}
  result = C158;
  variable_set[2142] = 1;
  return result;
}

ExcelValue outputs_energy_v21() {
  static ExcelValue result;
  if(variable_set[2143] == 1) { return result;}
  result = C158;
  variable_set[2143] = 1;
  return result;
}

ExcelValue outputs_energy_w21() {
  static ExcelValue result;
  if(variable_set[2144] == 1) { return result;}
  result = C158;
  variable_set[2144] = 1;
  return result;
}

ExcelValue outputs_energy_x21() {
  static ExcelValue result;
  if(variable_set[2145] == 1) { return result;}
  result = C158;
  variable_set[2145] = 1;
  return result;
}

ExcelValue outputs_energy_y21() {
  static ExcelValue result;
  if(variable_set[2146] == 1) { return result;}
  result = C158;
  variable_set[2146] = 1;
  return result;
}

ExcelValue outputs_energy_z21() {
  static ExcelValue result;
  if(variable_set[2147] == 1) { return result;}
  result = C158;
  variable_set[2147] = 1;
  return result;
}

ExcelValue outputs_energy_c22() {
  static ExcelValue result;
  if(variable_set[2148] == 1) { return result;}
  result = C221;
  variable_set[2148] = 1;
  return result;
}

ExcelValue outputs_energy_d22() {
  static ExcelValue result;
  if(variable_set[2149] == 1) { return result;}
  result = C222;
  variable_set[2149] = 1;
  return result;
}

ExcelValue outputs_energy_s22() {
  static ExcelValue result;
  if(variable_set[2150] == 1) { return result;}
  result = C158;
  variable_set[2150] = 1;
  return result;
}

ExcelValue outputs_energy_c23() {
  static ExcelValue result;
  if(variable_set[2151] == 1) { return result;}
  result = C223;
  variable_set[2151] = 1;
  return result;
}

ExcelValue outputs_energy_d23() {
  static ExcelValue result;
  if(variable_set[2152] == 1) { return result;}
  result = C224;
  variable_set[2152] = 1;
  return result;
}

ExcelValue outputs_energy_s23() {
  static ExcelValue result;
  if(variable_set[2153] == 1) { return result;}
  result = C158;
  variable_set[2153] = 1;
  return result;
}

ExcelValue outputs_energy_c24() {
  static ExcelValue result;
  if(variable_set[2154] == 1) { return result;}
  result = C225;
  variable_set[2154] = 1;
  return result;
}

ExcelValue outputs_energy_d24() {
  static ExcelValue result;
  if(variable_set[2155] == 1) { return result;}
  result = C226;
  variable_set[2155] = 1;
  return result;
}

ExcelValue outputs_energy_s24() {
  static ExcelValue result;
  if(variable_set[2156] == 1) { return result;}
  result = C158;
  variable_set[2156] = 1;
  return result;
}

ExcelValue outputs_energy_d26() {
  static ExcelValue result;
  if(variable_set[2157] == 1) { return result;}
  result = C227;
  variable_set[2157] = 1;
  return result;
}

ExcelValue outputs_energy_s26() {
  static ExcelValue result;
  if(variable_set[2158] == 1) { return result;}
  result = C158;
  variable_set[2158] = 1;
  return result;
}

ExcelValue outputs_energy_c27() {
  static ExcelValue result;
  if(variable_set[2159] == 1) { return result;}
  result = C228;
  variable_set[2159] = 1;
  return result;
}

ExcelValue outputs_energy_d27() {
  static ExcelValue result;
  if(variable_set[2160] == 1) { return result;}
  result = C229;
  variable_set[2160] = 1;
  return result;
}

ExcelValue outputs_energy_s27() {
  static ExcelValue result;
  if(variable_set[2161] == 1) { return result;}
  result = C158;
  variable_set[2161] = 1;
  return result;
}

ExcelValue outputs_energy_d29() {
  static ExcelValue result;
  if(variable_set[2162] == 1) { return result;}
  result = C230;
  variable_set[2162] = 1;
  return result;
}

ExcelValue outputs_energy_s29() {
  static ExcelValue result;
  if(variable_set[2163] == 1) { return result;}
  result = C158;
  variable_set[2163] = 1;
  return result;
}

ExcelValue outputs_energy_c30() {
  static ExcelValue result;
  if(variable_set[2164] == 1) { return result;}
  result = C231;
  variable_set[2164] = 1;
  return result;
}

ExcelValue outputs_energy_d30() {
  static ExcelValue result;
  if(variable_set[2165] == 1) { return result;}
  result = C232;
  variable_set[2165] = 1;
  return result;
}

ExcelValue outputs_energy_s30() {
  static ExcelValue result;
  if(variable_set[2166] == 1) { return result;}
  result = C158;
  variable_set[2166] = 1;
  return result;
}

ExcelValue outputs_energy_h31() {
  static ExcelValue result;
  if(variable_set[2167] == 1) { return result;}
  result = C158;
  variable_set[2167] = 1;
  return result;
}

ExcelValue outputs_energy_i31() {
  static ExcelValue result;
  if(variable_set[2168] == 1) { return result;}
  result = C158;
  variable_set[2168] = 1;
  return result;
}

ExcelValue outputs_energy_j31() {
  static ExcelValue result;
  if(variable_set[2169] == 1) { return result;}
  result = C158;
  variable_set[2169] = 1;
  return result;
}

ExcelValue outputs_energy_k31() {
  static ExcelValue result;
  if(variable_set[2170] == 1) { return result;}
  result = C158;
  variable_set[2170] = 1;
  return result;
}

ExcelValue outputs_energy_l31() {
  static ExcelValue result;
  if(variable_set[2171] == 1) { return result;}
  result = C158;
  variable_set[2171] = 1;
  return result;
}

ExcelValue outputs_energy_m31() {
  static ExcelValue result;
  if(variable_set[2172] == 1) { return result;}
  result = C158;
  variable_set[2172] = 1;
  return result;
}

ExcelValue outputs_energy_n31() {
  static ExcelValue result;
  if(variable_set[2173] == 1) { return result;}
  result = C158;
  variable_set[2173] = 1;
  return result;
}

ExcelValue outputs_energy_o31() {
  static ExcelValue result;
  if(variable_set[2174] == 1) { return result;}
  result = C158;
  variable_set[2174] = 1;
  return result;
}

ExcelValue outputs_energy_r31() {
  static ExcelValue result;
  if(variable_set[2175] == 1) { return result;}
  result = C158;
  variable_set[2175] = 1;
  return result;
}

ExcelValue outputs_energy_s31() {
  static ExcelValue result;
  if(variable_set[2176] == 1) { return result;}
  result = C158;
  variable_set[2176] = 1;
  return result;
}

ExcelValue outputs_energy_t31() {
  static ExcelValue result;
  if(variable_set[2177] == 1) { return result;}
  result = C158;
  variable_set[2177] = 1;
  return result;
}

ExcelValue outputs_energy_u31() {
  static ExcelValue result;
  if(variable_set[2178] == 1) { return result;}
  result = C158;
  variable_set[2178] = 1;
  return result;
}

ExcelValue outputs_energy_v31() {
  static ExcelValue result;
  if(variable_set[2179] == 1) { return result;}
  result = C158;
  variable_set[2179] = 1;
  return result;
}

ExcelValue outputs_energy_w31() {
  static ExcelValue result;
  if(variable_set[2180] == 1) { return result;}
  result = C158;
  variable_set[2180] = 1;
  return result;
}

ExcelValue outputs_energy_x31() {
  static ExcelValue result;
  if(variable_set[2181] == 1) { return result;}
  result = C158;
  variable_set[2181] = 1;
  return result;
}

ExcelValue outputs_energy_y31() {
  static ExcelValue result;
  if(variable_set[2182] == 1) { return result;}
  result = C158;
  variable_set[2182] = 1;
  return result;
}

ExcelValue outputs_energy_z31() {
  static ExcelValue result;
  if(variable_set[2183] == 1) { return result;}
  result = C158;
  variable_set[2183] = 1;
  return result;
}

ExcelValue outputs_energy_c34() {
  static ExcelValue result;
  if(variable_set[2184] == 1) { return result;}
  result = C233;
  variable_set[2184] = 1;
  return result;
}

ExcelValue outputs_energy_z34() {
  static ExcelValue result;
  if(variable_set[2185] == 1) { return result;}
  result = C194;
  variable_set[2185] = 1;
  return result;
}

ExcelValue outputs_energy_h35() {
  static ExcelValue result;
  if(variable_set[2186] == 1) { return result;}
  result = C102;
  variable_set[2186] = 1;
  return result;
}

ExcelValue outputs_energy_r35() {
  static ExcelValue result;
  if(variable_set[2187] == 1) { return result;}
  result = C195;
  variable_set[2187] = 1;
  return result;
}

ExcelValue outputs_energy_c36() {
  static ExcelValue result;
  if(variable_set[2188] == 1) { return result;}
  result = C196;
  variable_set[2188] = 1;
  return result;
}

ExcelValue outputs_energy_d36() {
  static ExcelValue result;
  if(variable_set[2189] == 1) { return result;}
  result = C197;
  variable_set[2189] = 1;
  return result;
}

ExcelValue outputs_energy_g36() {
  static ExcelValue result;
  if(variable_set[2190] == 1) { return result;}
  result = C198;
  variable_set[2190] = 1;
  return result;
}

ExcelValue outputs_energy_h36() {
  static ExcelValue result;
  if(variable_set[2191] == 1) { return result;}
  result = C106;
  variable_set[2191] = 1;
  return result;
}

ExcelValue outputs_energy_i36() {
  static ExcelValue result;
  if(variable_set[2192] == 1) { return result;}
  result = C107;
  variable_set[2192] = 1;
  return result;
}

ExcelValue outputs_energy_j36() {
  static ExcelValue result;
  if(variable_set[2193] == 1) { return result;}
  result = C108;
  variable_set[2193] = 1;
  return result;
}

ExcelValue outputs_energy_k36() {
  static ExcelValue result;
  if(variable_set[2194] == 1) { return result;}
  result = C109;
  variable_set[2194] = 1;
  return result;
}

ExcelValue outputs_energy_l36() {
  static ExcelValue result;
  if(variable_set[2195] == 1) { return result;}
  result = C110;
  variable_set[2195] = 1;
  return result;
}

ExcelValue outputs_energy_m36() {
  static ExcelValue result;
  if(variable_set[2196] == 1) { return result;}
  result = C111;
  variable_set[2196] = 1;
  return result;
}

ExcelValue outputs_energy_n36() {
  static ExcelValue result;
  if(variable_set[2197] == 1) { return result;}
  result = C112;
  variable_set[2197] = 1;
  return result;
}

ExcelValue outputs_energy_o36() {
  static ExcelValue result;
  if(variable_set[2198] == 1) { return result;}
  result = C113;
  variable_set[2198] = 1;
  return result;
}

ExcelValue outputs_energy_p36() {
  static ExcelValue result;
  if(variable_set[2199] == 1) { return result;}
  result = C114;
  variable_set[2199] = 1;
  return result;
}

ExcelValue outputs_energy_r36() {
  static ExcelValue result;
  if(variable_set[2200] == 1) { return result;}
  result = C115;
  variable_set[2200] = 1;
  return result;
}

ExcelValue outputs_energy_s36() {
  static ExcelValue result;
  if(variable_set[2201] == 1) { return result;}
  result = C199;
  variable_set[2201] = 1;
  return result;
}

ExcelValue outputs_energy_t36() {
  static ExcelValue result;
  if(variable_set[2202] == 1) { return result;}
  result = C200;
  variable_set[2202] = 1;
  return result;
}

ExcelValue outputs_energy_u36() {
  static ExcelValue result;
  if(variable_set[2203] == 1) { return result;}
  result = C201;
  variable_set[2203] = 1;
  return result;
}

ExcelValue outputs_energy_v36() {
  static ExcelValue result;
  if(variable_set[2204] == 1) { return result;}
  result = C202;
  variable_set[2204] = 1;
  return result;
}

ExcelValue outputs_energy_w36() {
  static ExcelValue result;
  if(variable_set[2205] == 1) { return result;}
  result = C203;
  variable_set[2205] = 1;
  return result;
}

ExcelValue outputs_energy_x36() {
  static ExcelValue result;
  if(variable_set[2206] == 1) { return result;}
  result = C204;
  variable_set[2206] = 1;
  return result;
}

ExcelValue outputs_energy_y36() {
  static ExcelValue result;
  if(variable_set[2207] == 1) { return result;}
  result = C205;
  variable_set[2207] = 1;
  return result;
}

ExcelValue outputs_energy_z36() {
  static ExcelValue result;
  if(variable_set[2208] == 1) { return result;}
  result = C206;
  variable_set[2208] = 1;
  return result;
}

ExcelValue outputs_energy_d37() {
  static ExcelValue result;
  if(variable_set[2209] == 1) { return result;}
  result = C234;
  variable_set[2209] = 1;
  return result;
}

ExcelValue outputs_energy_h37() {
  static ExcelValue result;
  if(variable_set[2210] == 1) { return result;}
  result = C158;
  variable_set[2210] = 1;
  return result;
}

ExcelValue outputs_energy_i37() {
  static ExcelValue result;
  if(variable_set[2211] == 1) { return result;}
  result = C158;
  variable_set[2211] = 1;
  return result;
}

ExcelValue outputs_energy_j37() {
  static ExcelValue result;
  if(variable_set[2212] == 1) { return result;}
  result = C158;
  variable_set[2212] = 1;
  return result;
}

ExcelValue outputs_energy_k37() {
  static ExcelValue result;
  if(variable_set[2213] == 1) { return result;}
  result = C158;
  variable_set[2213] = 1;
  return result;
}

ExcelValue outputs_energy_l37() {
  static ExcelValue result;
  if(variable_set[2214] == 1) { return result;}
  result = C158;
  variable_set[2214] = 1;
  return result;
}

ExcelValue outputs_energy_m37() {
  static ExcelValue result;
  if(variable_set[2215] == 1) { return result;}
  result = C158;
  variable_set[2215] = 1;
  return result;
}

ExcelValue outputs_energy_n37() {
  static ExcelValue result;
  if(variable_set[2216] == 1) { return result;}
  result = C158;
  variable_set[2216] = 1;
  return result;
}

ExcelValue outputs_energy_o37() {
  static ExcelValue result;
  if(variable_set[2217] == 1) { return result;}
  result = C158;
  variable_set[2217] = 1;
  return result;
}

ExcelValue outputs_energy_r37() {
  static ExcelValue result;
  if(variable_set[2218] == 1) { return result;}
  result = C158;
  variable_set[2218] = 1;
  return result;
}

ExcelValue outputs_energy_s37() {
  static ExcelValue result;
  if(variable_set[2219] == 1) { return result;}
  result = C158;
  variable_set[2219] = 1;
  return result;
}

ExcelValue outputs_energy_t37() {
  static ExcelValue result;
  if(variable_set[2220] == 1) { return result;}
  result = C158;
  variable_set[2220] = 1;
  return result;
}

ExcelValue outputs_energy_u37() {
  static ExcelValue result;
  if(variable_set[2221] == 1) { return result;}
  result = C158;
  variable_set[2221] = 1;
  return result;
}

ExcelValue outputs_energy_v37() {
  static ExcelValue result;
  if(variable_set[2222] == 1) { return result;}
  result = C158;
  variable_set[2222] = 1;
  return result;
}

ExcelValue outputs_energy_w37() {
  static ExcelValue result;
  if(variable_set[2223] == 1) { return result;}
  result = C158;
  variable_set[2223] = 1;
  return result;
}

ExcelValue outputs_energy_x37() {
  static ExcelValue result;
  if(variable_set[2224] == 1) { return result;}
  result = C158;
  variable_set[2224] = 1;
  return result;
}

ExcelValue outputs_energy_y37() {
  static ExcelValue result;
  if(variable_set[2225] == 1) { return result;}
  result = C158;
  variable_set[2225] = 1;
  return result;
}

ExcelValue outputs_energy_z37() {
  static ExcelValue result;
  if(variable_set[2226] == 1) { return result;}
  result = C158;
  variable_set[2226] = 1;
  return result;
}

ExcelValue outputs_energy_c38() {
  static ExcelValue result;
  if(variable_set[2227] == 1) { return result;}
  result = C235;
  variable_set[2227] = 1;
  return result;
}

ExcelValue outputs_energy_d38() {
  static ExcelValue result;
  if(variable_set[2228] == 1) { return result;}
  result = C236;
  variable_set[2228] = 1;
  return result;
}

ExcelValue outputs_energy_s38() {
  static ExcelValue result;
  if(variable_set[2229] == 1) { return result;}
  result = C158;
  variable_set[2229] = 1;
  return result;
}

ExcelValue outputs_energy_c39() {
  static ExcelValue result;
  if(variable_set[2230] == 1) { return result;}
  result = C237;
  variable_set[2230] = 1;
  return result;
}

ExcelValue outputs_energy_d39() {
  static ExcelValue result;
  if(variable_set[2231] == 1) { return result;}
  result = C238;
  variable_set[2231] = 1;
  return result;
}

ExcelValue outputs_energy_s39() {
  static ExcelValue result;
  if(variable_set[2232] == 1) { return result;}
  result = C158;
  variable_set[2232] = 1;
  return result;
}

ExcelValue outputs_energy_c40() {
  static ExcelValue result;
  if(variable_set[2233] == 1) { return result;}
  result = C239;
  variable_set[2233] = 1;
  return result;
}

ExcelValue outputs_energy_d40() {
  static ExcelValue result;
  if(variable_set[2234] == 1) { return result;}
  result = C240;
  variable_set[2234] = 1;
  return result;
}

ExcelValue outputs_energy_s40() {
  static ExcelValue result;
  if(variable_set[2235] == 1) { return result;}
  result = C158;
  variable_set[2235] = 1;
  return result;
}

ExcelValue outputs_energy_c41() {
  static ExcelValue result;
  if(variable_set[2236] == 1) { return result;}
  result = C241;
  variable_set[2236] = 1;
  return result;
}

ExcelValue outputs_energy_d41() {
  static ExcelValue result;
  if(variable_set[2237] == 1) { return result;}
  result = C242;
  variable_set[2237] = 1;
  return result;
}

ExcelValue outputs_energy_s41() {
  static ExcelValue result;
  if(variable_set[2238] == 1) { return result;}
  result = C158;
  variable_set[2238] = 1;
  return result;
}

ExcelValue outputs_energy_c42() {
  static ExcelValue result;
  if(variable_set[2239] == 1) { return result;}
  result = C243;
  variable_set[2239] = 1;
  return result;
}

ExcelValue outputs_energy_d42() {
  static ExcelValue result;
  if(variable_set[2240] == 1) { return result;}
  result = C244;
  variable_set[2240] = 1;
  return result;
}

ExcelValue outputs_energy_s42() {
  static ExcelValue result;
  if(variable_set[2241] == 1) { return result;}
  result = C158;
  variable_set[2241] = 1;
  return result;
}

ExcelValue outputs_energy_c43() {
  static ExcelValue result;
  if(variable_set[2242] == 1) { return result;}
  result = C245;
  variable_set[2242] = 1;
  return result;
}

ExcelValue outputs_energy_d43() {
  static ExcelValue result;
  if(variable_set[2243] == 1) { return result;}
  result = C246;
  variable_set[2243] = 1;
  return result;
}

ExcelValue outputs_energy_s43() {
  static ExcelValue result;
  if(variable_set[2244] == 1) { return result;}
  result = C158;
  variable_set[2244] = 1;
  return result;
}

ExcelValue outputs_energy_c44() {
  static ExcelValue result;
  if(variable_set[2245] == 1) { return result;}
  result = C247;
  variable_set[2245] = 1;
  return result;
}

ExcelValue outputs_energy_d44() {
  static ExcelValue result;
  if(variable_set[2246] == 1) { return result;}
  result = C248;
  variable_set[2246] = 1;
  return result;
}

ExcelValue outputs_energy_s44() {
  static ExcelValue result;
  if(variable_set[2247] == 1) { return result;}
  result = C158;
  variable_set[2247] = 1;
  return result;
}

ExcelValue outputs_energy_d46() {
  static ExcelValue result;
  if(variable_set[2248] == 1) { return result;}
  result = C249;
  variable_set[2248] = 1;
  return result;
}

ExcelValue outputs_energy_h46() {
  static ExcelValue result;
  if(variable_set[2249] == 1) { return result;}
  result = C158;
  variable_set[2249] = 1;
  return result;
}

ExcelValue outputs_energy_i46() {
  static ExcelValue result;
  if(variable_set[2250] == 1) { return result;}
  result = C158;
  variable_set[2250] = 1;
  return result;
}

ExcelValue outputs_energy_j46() {
  static ExcelValue result;
  if(variable_set[2251] == 1) { return result;}
  result = C158;
  variable_set[2251] = 1;
  return result;
}

ExcelValue outputs_energy_k46() {
  static ExcelValue result;
  if(variable_set[2252] == 1) { return result;}
  result = C158;
  variable_set[2252] = 1;
  return result;
}

ExcelValue outputs_energy_l46() {
  static ExcelValue result;
  if(variable_set[2253] == 1) { return result;}
  result = C158;
  variable_set[2253] = 1;
  return result;
}

ExcelValue outputs_energy_m46() {
  static ExcelValue result;
  if(variable_set[2254] == 1) { return result;}
  result = C158;
  variable_set[2254] = 1;
  return result;
}

ExcelValue outputs_energy_n46() {
  static ExcelValue result;
  if(variable_set[2255] == 1) { return result;}
  result = C158;
  variable_set[2255] = 1;
  return result;
}

ExcelValue outputs_energy_o46() {
  static ExcelValue result;
  if(variable_set[2256] == 1) { return result;}
  result = C158;
  variable_set[2256] = 1;
  return result;
}

ExcelValue outputs_energy_r46() {
  static ExcelValue result;
  if(variable_set[2257] == 1) { return result;}
  result = C158;
  variable_set[2257] = 1;
  return result;
}

ExcelValue outputs_energy_s46() {
  static ExcelValue result;
  if(variable_set[2258] == 1) { return result;}
  result = C158;
  variable_set[2258] = 1;
  return result;
}

ExcelValue outputs_energy_t46() {
  static ExcelValue result;
  if(variable_set[2259] == 1) { return result;}
  result = C158;
  variable_set[2259] = 1;
  return result;
}

ExcelValue outputs_energy_u46() {
  static ExcelValue result;
  if(variable_set[2260] == 1) { return result;}
  result = C158;
  variable_set[2260] = 1;
  return result;
}

ExcelValue outputs_energy_v46() {
  static ExcelValue result;
  if(variable_set[2261] == 1) { return result;}
  result = C158;
  variable_set[2261] = 1;
  return result;
}

ExcelValue outputs_energy_w46() {
  static ExcelValue result;
  if(variable_set[2262] == 1) { return result;}
  result = C158;
  variable_set[2262] = 1;
  return result;
}

ExcelValue outputs_energy_x46() {
  static ExcelValue result;
  if(variable_set[2263] == 1) { return result;}
  result = C158;
  variable_set[2263] = 1;
  return result;
}

ExcelValue outputs_energy_y46() {
  static ExcelValue result;
  if(variable_set[2264] == 1) { return result;}
  result = C158;
  variable_set[2264] = 1;
  return result;
}

ExcelValue outputs_energy_z46() {
  static ExcelValue result;
  if(variable_set[2265] == 1) { return result;}
  result = C158;
  variable_set[2265] = 1;
  return result;
}

ExcelValue outputs_energy_c47() {
  static ExcelValue result;
  if(variable_set[2266] == 1) { return result;}
  result = C250;
  variable_set[2266] = 1;
  return result;
}

ExcelValue outputs_energy_d47() {
  static ExcelValue result;
  if(variable_set[2267] == 1) { return result;}
  result = C251;
  variable_set[2267] = 1;
  return result;
}

ExcelValue outputs_energy_s47() {
  static ExcelValue result;
  if(variable_set[2268] == 1) { return result;}
  result = C158;
  variable_set[2268] = 1;
  return result;
}

ExcelValue outputs_energy_d49() {
  static ExcelValue result;
  if(variable_set[2269] == 1) { return result;}
  result = C252;
  variable_set[2269] = 1;
  return result;
}

ExcelValue outputs_energy_h49() {
  static ExcelValue result;
  if(variable_set[2270] == 1) { return result;}
  result = C158;
  variable_set[2270] = 1;
  return result;
}

ExcelValue outputs_energy_i49() {
  static ExcelValue result;
  if(variable_set[2271] == 1) { return result;}
  result = C158;
  variable_set[2271] = 1;
  return result;
}

ExcelValue outputs_energy_j49() {
  static ExcelValue result;
  if(variable_set[2272] == 1) { return result;}
  result = C158;
  variable_set[2272] = 1;
  return result;
}

ExcelValue outputs_energy_k49() {
  static ExcelValue result;
  if(variable_set[2273] == 1) { return result;}
  result = C158;
  variable_set[2273] = 1;
  return result;
}

ExcelValue outputs_energy_l49() {
  static ExcelValue result;
  if(variable_set[2274] == 1) { return result;}
  result = C158;
  variable_set[2274] = 1;
  return result;
}

ExcelValue outputs_energy_m49() {
  static ExcelValue result;
  if(variable_set[2275] == 1) { return result;}
  result = C158;
  variable_set[2275] = 1;
  return result;
}

ExcelValue outputs_energy_n49() {
  static ExcelValue result;
  if(variable_set[2276] == 1) { return result;}
  result = C158;
  variable_set[2276] = 1;
  return result;
}

ExcelValue outputs_energy_o49() {
  static ExcelValue result;
  if(variable_set[2277] == 1) { return result;}
  result = C158;
  variable_set[2277] = 1;
  return result;
}

ExcelValue outputs_energy_r49() {
  static ExcelValue result;
  if(variable_set[2278] == 1) { return result;}
  result = C158;
  variable_set[2278] = 1;
  return result;
}

ExcelValue outputs_energy_s49() {
  static ExcelValue result;
  if(variable_set[2279] == 1) { return result;}
  result = NA;
  variable_set[2279] = 1;
  return result;
}

ExcelValue outputs_energy_t49() {
  static ExcelValue result;
  if(variable_set[2280] == 1) { return result;}
  result = C158;
  variable_set[2280] = 1;
  return result;
}

ExcelValue outputs_energy_u49() {
  static ExcelValue result;
  if(variable_set[2281] == 1) { return result;}
  result = C158;
  variable_set[2281] = 1;
  return result;
}

ExcelValue outputs_energy_v49() {
  static ExcelValue result;
  if(variable_set[2282] == 1) { return result;}
  result = C158;
  variable_set[2282] = 1;
  return result;
}

ExcelValue outputs_energy_w49() {
  static ExcelValue result;
  if(variable_set[2283] == 1) { return result;}
  result = C158;
  variable_set[2283] = 1;
  return result;
}

ExcelValue outputs_energy_x49() {
  static ExcelValue result;
  if(variable_set[2284] == 1) { return result;}
  result = C158;
  variable_set[2284] = 1;
  return result;
}

ExcelValue outputs_energy_y49() {
  static ExcelValue result;
  if(variable_set[2285] == 1) { return result;}
  result = C158;
  variable_set[2285] = 1;
  return result;
}

ExcelValue outputs_energy_z49() {
  static ExcelValue result;
  if(variable_set[2286] == 1) { return result;}
  result = C158;
  variable_set[2286] = 1;
  return result;
}

ExcelValue outputs_energy_c50() {
  static ExcelValue result;
  if(variable_set[2287] == 1) { return result;}
  result = C253;
  variable_set[2287] = 1;
  return result;
}

ExcelValue outputs_energy_d50() {
  static ExcelValue result;
  if(variable_set[2288] == 1) { return result;}
  result = NA;
  variable_set[2288] = 1;
  return result;
}

ExcelValue outputs_energy_s50() {
  static ExcelValue result;
  if(variable_set[2289] == 1) { return result;}
  result = NA;
  variable_set[2289] = 1;
  return result;
}

ExcelValue outputs_energy_c51() {
  static ExcelValue result;
  if(variable_set[2290] == 1) { return result;}
  result = C254;
  variable_set[2290] = 1;
  return result;
}

ExcelValue outputs_energy_d51() {
  static ExcelValue result;
  if(variable_set[2291] == 1) { return result;}
  result = C255;
  variable_set[2291] = 1;
  return result;
}

ExcelValue outputs_energy_s51() {
  static ExcelValue result;
  if(variable_set[2292] == 1) { return result;}
  result = C158;
  variable_set[2292] = 1;
  return result;
}

ExcelValue outputs_energy_d54() {
  static ExcelValue result;
  if(variable_set[2293] == 1) { return result;}
  result = C256;
  variable_set[2293] = 1;
  return result;
}

ExcelValue outputs_energy_h54() {
  static ExcelValue result;
  if(variable_set[2294] == 1) { return result;}
  result = C158;
  variable_set[2294] = 1;
  return result;
}

ExcelValue outputs_energy_i54() {
  static ExcelValue result;
  if(variable_set[2295] == 1) { return result;}
  result = C158;
  variable_set[2295] = 1;
  return result;
}

ExcelValue outputs_energy_j54() {
  static ExcelValue result;
  if(variable_set[2296] == 1) { return result;}
  result = C158;
  variable_set[2296] = 1;
  return result;
}

ExcelValue outputs_energy_k54() {
  static ExcelValue result;
  if(variable_set[2297] == 1) { return result;}
  result = C158;
  variable_set[2297] = 1;
  return result;
}

ExcelValue outputs_energy_l54() {
  static ExcelValue result;
  if(variable_set[2298] == 1) { return result;}
  result = C158;
  variable_set[2298] = 1;
  return result;
}

ExcelValue outputs_energy_m54() {
  static ExcelValue result;
  if(variable_set[2299] == 1) { return result;}
  result = C158;
  variable_set[2299] = 1;
  return result;
}

ExcelValue outputs_energy_n54() {
  static ExcelValue result;
  if(variable_set[2300] == 1) { return result;}
  result = C158;
  variable_set[2300] = 1;
  return result;
}

ExcelValue outputs_energy_o54() {
  static ExcelValue result;
  if(variable_set[2301] == 1) { return result;}
  result = C158;
  variable_set[2301] = 1;
  return result;
}

ExcelValue outputs_energy_r54() {
  static ExcelValue result;
  if(variable_set[2302] == 1) { return result;}
  result = C158;
  variable_set[2302] = 1;
  return result;
}

ExcelValue outputs_energy_s54() {
  static ExcelValue result;
  if(variable_set[2303] == 1) { return result;}
  result = C158;
  variable_set[2303] = 1;
  return result;
}

ExcelValue outputs_energy_t54() {
  static ExcelValue result;
  if(variable_set[2304] == 1) { return result;}
  result = C158;
  variable_set[2304] = 1;
  return result;
}

ExcelValue outputs_energy_u54() {
  static ExcelValue result;
  if(variable_set[2305] == 1) { return result;}
  result = C158;
  variable_set[2305] = 1;
  return result;
}

ExcelValue outputs_energy_v54() {
  static ExcelValue result;
  if(variable_set[2306] == 1) { return result;}
  result = C158;
  variable_set[2306] = 1;
  return result;
}

ExcelValue outputs_energy_w54() {
  static ExcelValue result;
  if(variable_set[2307] == 1) { return result;}
  result = C158;
  variable_set[2307] = 1;
  return result;
}

ExcelValue outputs_energy_x54() {
  static ExcelValue result;
  if(variable_set[2308] == 1) { return result;}
  result = C158;
  variable_set[2308] = 1;
  return result;
}

ExcelValue outputs_energy_y54() {
  static ExcelValue result;
  if(variable_set[2309] == 1) { return result;}
  result = C158;
  variable_set[2309] = 1;
  return result;
}

ExcelValue outputs_energy_z54() {
  static ExcelValue result;
  if(variable_set[2310] == 1) { return result;}
  result = C158;
  variable_set[2310] = 1;
  return result;
}

ExcelValue outputs_energy_c55() {
  static ExcelValue result;
  if(variable_set[2311] == 1) { return result;}
  result = C257;
  variable_set[2311] = 1;
  return result;
}

ExcelValue outputs_energy_d55() {
  static ExcelValue result;
  if(variable_set[2312] == 1) { return result;}
  result = C258;
  variable_set[2312] = 1;
  return result;
}

ExcelValue outputs_energy_s55() {
  static ExcelValue result;
  if(variable_set[2313] == 1) { return result;}
  result = C158;
  variable_set[2313] = 1;
  return result;
}

ExcelValue outputs_energy_c56() {
  static ExcelValue result;
  if(variable_set[2314] == 1) { return result;}
  result = C259;
  variable_set[2314] = 1;
  return result;
}

ExcelValue outputs_energy_d56() {
  static ExcelValue result;
  if(variable_set[2315] == 1) { return result;}
  result = C260;
  variable_set[2315] = 1;
  return result;
}

ExcelValue outputs_energy_s56() {
  static ExcelValue result;
  if(variable_set[2316] == 1) { return result;}
  result = C158;
  variable_set[2316] = 1;
  return result;
}

ExcelValue outputs_energy_c57() {
  static ExcelValue result;
  if(variable_set[2317] == 1) { return result;}
  result = C261;
  variable_set[2317] = 1;
  return result;
}

ExcelValue outputs_energy_d57() {
  static ExcelValue result;
  if(variable_set[2318] == 1) { return result;}
  result = C262;
  variable_set[2318] = 1;
  return result;
}

ExcelValue outputs_energy_s57() {
  static ExcelValue result;
  if(variable_set[2319] == 1) { return result;}
  result = C158;
  variable_set[2319] = 1;
  return result;
}

ExcelValue outputs_energy_h58() {
  static ExcelValue result;
  if(variable_set[2320] == 1) { return result;}
  result = C158;
  variable_set[2320] = 1;
  return result;
}

ExcelValue outputs_energy_i58() {
  static ExcelValue result;
  if(variable_set[2321] == 1) { return result;}
  result = C158;
  variable_set[2321] = 1;
  return result;
}

ExcelValue outputs_energy_j58() {
  static ExcelValue result;
  if(variable_set[2322] == 1) { return result;}
  result = C158;
  variable_set[2322] = 1;
  return result;
}

ExcelValue outputs_energy_k58() {
  static ExcelValue result;
  if(variable_set[2323] == 1) { return result;}
  result = C158;
  variable_set[2323] = 1;
  return result;
}

ExcelValue outputs_energy_l58() {
  static ExcelValue result;
  if(variable_set[2324] == 1) { return result;}
  result = C158;
  variable_set[2324] = 1;
  return result;
}

ExcelValue outputs_energy_m58() {
  static ExcelValue result;
  if(variable_set[2325] == 1) { return result;}
  result = C158;
  variable_set[2325] = 1;
  return result;
}

ExcelValue outputs_energy_n58() {
  static ExcelValue result;
  if(variable_set[2326] == 1) { return result;}
  result = C158;
  variable_set[2326] = 1;
  return result;
}

ExcelValue outputs_energy_o58() {
  static ExcelValue result;
  if(variable_set[2327] == 1) { return result;}
  result = C158;
  variable_set[2327] = 1;
  return result;
}

ExcelValue outputs_energy_r58() {
  static ExcelValue result;
  if(variable_set[2328] == 1) { return result;}
  result = C158;
  variable_set[2328] = 1;
  return result;
}

ExcelValue outputs_energy_s58() {
  static ExcelValue result;
  if(variable_set[2329] == 1) { return result;}
  result = NA;
  variable_set[2329] = 1;
  return result;
}

ExcelValue outputs_energy_t58() {
  static ExcelValue result;
  if(variable_set[2330] == 1) { return result;}
  result = C158;
  variable_set[2330] = 1;
  return result;
}

ExcelValue outputs_energy_u58() {
  static ExcelValue result;
  if(variable_set[2331] == 1) { return result;}
  result = C158;
  variable_set[2331] = 1;
  return result;
}

ExcelValue outputs_energy_v58() {
  static ExcelValue result;
  if(variable_set[2332] == 1) { return result;}
  result = C158;
  variable_set[2332] = 1;
  return result;
}

ExcelValue outputs_energy_w58() {
  static ExcelValue result;
  if(variable_set[2333] == 1) { return result;}
  result = C158;
  variable_set[2333] = 1;
  return result;
}

ExcelValue outputs_energy_x58() {
  static ExcelValue result;
  if(variable_set[2334] == 1) { return result;}
  result = C158;
  variable_set[2334] = 1;
  return result;
}

ExcelValue outputs_energy_y58() {
  static ExcelValue result;
  if(variable_set[2335] == 1) { return result;}
  result = C158;
  variable_set[2335] = 1;
  return result;
}

ExcelValue outputs_energy_z58() {
  static ExcelValue result;
  if(variable_set[2336] == 1) { return result;}
  result = C158;
  variable_set[2336] = 1;
  return result;
}

ExcelValue outputs_energy_d60() {
  static ExcelValue result;
  if(variable_set[2337] == 1) { return result;}
  result = C263;
  variable_set[2337] = 1;
  return result;
}

ExcelValue outputs_energy_h60() {
  static ExcelValue result;
  if(variable_set[2338] == 1) { return result;}
  result = C158;
  variable_set[2338] = 1;
  return result;
}

ExcelValue outputs_energy_i60() {
  static ExcelValue result;
  if(variable_set[2339] == 1) { return result;}
  result = C158;
  variable_set[2339] = 1;
  return result;
}

ExcelValue outputs_energy_j60() {
  static ExcelValue result;
  if(variable_set[2340] == 1) { return result;}
  result = C158;
  variable_set[2340] = 1;
  return result;
}

ExcelValue outputs_energy_k60() {
  static ExcelValue result;
  if(variable_set[2341] == 1) { return result;}
  result = C158;
  variable_set[2341] = 1;
  return result;
}

ExcelValue outputs_energy_l60() {
  static ExcelValue result;
  if(variable_set[2342] == 1) { return result;}
  result = C158;
  variable_set[2342] = 1;
  return result;
}

ExcelValue outputs_energy_m60() {
  static ExcelValue result;
  if(variable_set[2343] == 1) { return result;}
  result = C158;
  variable_set[2343] = 1;
  return result;
}

ExcelValue outputs_energy_n60() {
  static ExcelValue result;
  if(variable_set[2344] == 1) { return result;}
  result = C158;
  variable_set[2344] = 1;
  return result;
}

ExcelValue outputs_energy_c62() {
  static ExcelValue result;
  if(variable_set[2345] == 1) { return result;}
  result = C264;
  variable_set[2345] = 1;
  return result;
}

ExcelValue outputs_energy_h63() {
  static ExcelValue result;
  if(variable_set[2346] == 1) { return result;}
  result = C102;
  variable_set[2346] = 1;
  return result;
}

ExcelValue outputs_energy_r63() {
  static ExcelValue result;
  if(variable_set[2347] == 1) { return result;}
  result = C195;
  variable_set[2347] = 1;
  return result;
}

ExcelValue outputs_energy_c64() {
  static ExcelValue result;
  if(variable_set[2348] == 1) { return result;}
  result = C196;
  variable_set[2348] = 1;
  return result;
}

ExcelValue outputs_energy_d64() {
  static ExcelValue result;
  if(variable_set[2349] == 1) { return result;}
  result = C10;
  variable_set[2349] = 1;
  return result;
}

ExcelValue outputs_energy_g64() {
  static ExcelValue result;
  if(variable_set[2350] == 1) { return result;}
  result = C198;
  variable_set[2350] = 1;
  return result;
}

ExcelValue outputs_energy_h64() {
  static ExcelValue result;
  if(variable_set[2351] == 1) { return result;}
  result = C106;
  variable_set[2351] = 1;
  return result;
}

ExcelValue outputs_energy_i64() {
  static ExcelValue result;
  if(variable_set[2352] == 1) { return result;}
  result = C107;
  variable_set[2352] = 1;
  return result;
}

ExcelValue outputs_energy_j64() {
  static ExcelValue result;
  if(variable_set[2353] == 1) { return result;}
  result = C108;
  variable_set[2353] = 1;
  return result;
}

ExcelValue outputs_energy_k64() {
  static ExcelValue result;
  if(variable_set[2354] == 1) { return result;}
  result = C109;
  variable_set[2354] = 1;
  return result;
}

ExcelValue outputs_energy_l64() {
  static ExcelValue result;
  if(variable_set[2355] == 1) { return result;}
  result = C110;
  variable_set[2355] = 1;
  return result;
}

ExcelValue outputs_energy_m64() {
  static ExcelValue result;
  if(variable_set[2356] == 1) { return result;}
  result = C111;
  variable_set[2356] = 1;
  return result;
}

ExcelValue outputs_energy_n64() {
  static ExcelValue result;
  if(variable_set[2357] == 1) { return result;}
  result = C112;
  variable_set[2357] = 1;
  return result;
}

ExcelValue outputs_energy_o64() {
  static ExcelValue result;
  if(variable_set[2358] == 1) { return result;}
  result = C113;
  variable_set[2358] = 1;
  return result;
}

ExcelValue outputs_energy_p64() {
  static ExcelValue result;
  if(variable_set[2359] == 1) { return result;}
  result = C114;
  variable_set[2359] = 1;
  return result;
}

ExcelValue outputs_energy_r64() {
  static ExcelValue result;
  if(variable_set[2360] == 1) { return result;}
  result = C115;
  variable_set[2360] = 1;
  return result;
}

ExcelValue outputs_energy_s64() {
  static ExcelValue result;
  if(variable_set[2361] == 1) { return result;}
  result = C199;
  variable_set[2361] = 1;
  return result;
}

ExcelValue outputs_energy_t64() {
  static ExcelValue result;
  if(variable_set[2362] == 1) { return result;}
  result = C200;
  variable_set[2362] = 1;
  return result;
}

ExcelValue outputs_energy_u64() {
  static ExcelValue result;
  if(variable_set[2363] == 1) { return result;}
  result = C201;
  variable_set[2363] = 1;
  return result;
}

ExcelValue outputs_energy_v64() {
  static ExcelValue result;
  if(variable_set[2364] == 1) { return result;}
  result = C202;
  variable_set[2364] = 1;
  return result;
}

ExcelValue outputs_energy_w64() {
  static ExcelValue result;
  if(variable_set[2365] == 1) { return result;}
  result = C203;
  variable_set[2365] = 1;
  return result;
}

ExcelValue outputs_energy_x64() {
  static ExcelValue result;
  if(variable_set[2366] == 1) { return result;}
  result = C204;
  variable_set[2366] = 1;
  return result;
}

ExcelValue outputs_energy_y64() {
  static ExcelValue result;
  if(variable_set[2367] == 1) { return result;}
  result = C205;
  variable_set[2367] = 1;
  return result;
}

ExcelValue outputs_energy_z64() {
  static ExcelValue result;
  if(variable_set[2368] == 1) { return result;}
  result = C206;
  variable_set[2368] = 1;
  return result;
}

ExcelValue outputs_energy_c65() {
  static ExcelValue result;
  if(variable_set[2369] == 1) { return result;}
  result = C265;
  variable_set[2369] = 1;
  return result;
}

ExcelValue outputs_energy_d65() {
  static ExcelValue result;
  if(variable_set[2370] == 1) { return result;}
  result = C266;
  variable_set[2370] = 1;
  return result;
}

ExcelValue outputs_energy_s65() {
  static ExcelValue result;
  if(variable_set[2371] == 1) { return result;}
  result = C158;
  variable_set[2371] = 1;
  return result;
}

ExcelValue outputs_energy_c66() {
  static ExcelValue result;
  if(variable_set[2372] == 1) { return result;}
  result = C267;
  variable_set[2372] = 1;
  return result;
}

ExcelValue outputs_energy_d66() {
  static ExcelValue result;
  if(variable_set[2373] == 1) { return result;}
  result = C268;
  variable_set[2373] = 1;
  return result;
}

ExcelValue outputs_energy_s66() {
  static ExcelValue result;
  if(variable_set[2374] == 1) { return result;}
  result = C158;
  variable_set[2374] = 1;
  return result;
}

ExcelValue outputs_energy_d67() {
  static ExcelValue result;
  if(variable_set[2375] == 1) { return result;}
  result = C269;
  variable_set[2375] = 1;
  return result;
}

ExcelValue outputs_energy_s67() {
  static ExcelValue result;
  if(variable_set[2376] == 1) { return result;}
  result = C158;
  variable_set[2376] = 1;
  return result;
}

ExcelValue outputs_energy_d69() {
  static ExcelValue result;
  if(variable_set[2377] == 1) { return result;}
  result = C270;
  variable_set[2377] = 1;
  return result;
}

ExcelValue outputs_energy_h69() {
  static ExcelValue result;
  if(variable_set[2378] == 1) { return result;}
  result = C158;
  variable_set[2378] = 1;
  return result;
}

ExcelValue outputs_energy_i69() {
  static ExcelValue result;
  if(variable_set[2379] == 1) { return result;}
  result = C158;
  variable_set[2379] = 1;
  return result;
}

ExcelValue outputs_energy_j69() {
  static ExcelValue result;
  if(variable_set[2380] == 1) { return result;}
  result = C158;
  variable_set[2380] = 1;
  return result;
}

ExcelValue outputs_energy_k69() {
  static ExcelValue result;
  if(variable_set[2381] == 1) { return result;}
  result = C158;
  variable_set[2381] = 1;
  return result;
}

ExcelValue outputs_energy_l69() {
  static ExcelValue result;
  if(variable_set[2382] == 1) { return result;}
  result = C158;
  variable_set[2382] = 1;
  return result;
}

ExcelValue outputs_energy_m69() {
  static ExcelValue result;
  if(variable_set[2383] == 1) { return result;}
  result = C158;
  variable_set[2383] = 1;
  return result;
}

ExcelValue outputs_energy_n69() {
  static ExcelValue result;
  if(variable_set[2384] == 1) { return result;}
  result = C158;
  variable_set[2384] = 1;
  return result;
}

ExcelValue outputs_energy_o69() {
  static ExcelValue result;
  if(variable_set[2385] == 1) { return result;}
  result = C158;
  variable_set[2385] = 1;
  return result;
}

ExcelValue outputs_energy_r69() {
  static ExcelValue result;
  if(variable_set[2386] == 1) { return result;}
  result = C158;
  variable_set[2386] = 1;
  return result;
}

ExcelValue outputs_energy_s69() {
  static ExcelValue result;
  if(variable_set[2387] == 1) { return result;}
  result = NA;
  variable_set[2387] = 1;
  return result;
}

ExcelValue outputs_energy_t69() {
  static ExcelValue result;
  if(variable_set[2388] == 1) { return result;}
  result = C158;
  variable_set[2388] = 1;
  return result;
}

ExcelValue outputs_energy_u69() {
  static ExcelValue result;
  if(variable_set[2389] == 1) { return result;}
  result = C158;
  variable_set[2389] = 1;
  return result;
}

ExcelValue outputs_energy_v69() {
  static ExcelValue result;
  if(variable_set[2390] == 1) { return result;}
  result = C158;
  variable_set[2390] = 1;
  return result;
}

ExcelValue outputs_energy_w69() {
  static ExcelValue result;
  if(variable_set[2391] == 1) { return result;}
  result = C158;
  variable_set[2391] = 1;
  return result;
}

ExcelValue outputs_energy_x69() {
  static ExcelValue result;
  if(variable_set[2392] == 1) { return result;}
  result = C158;
  variable_set[2392] = 1;
  return result;
}

ExcelValue outputs_energy_y69() {
  static ExcelValue result;
  if(variable_set[2393] == 1) { return result;}
  result = C158;
  variable_set[2393] = 1;
  return result;
}

ExcelValue outputs_energy_z69() {
  static ExcelValue result;
  if(variable_set[2394] == 1) { return result;}
  result = C158;
  variable_set[2394] = 1;
  return result;
}

ExcelValue outputs_energy_c72() {
  static ExcelValue result;
  if(variable_set[2395] == 1) { return result;}
  result = C271;
  variable_set[2395] = 1;
  return result;
}

ExcelValue outputs_energy_c74() {
  static ExcelValue result;
  if(variable_set[2396] == 1) { return result;}
  result = C272;
  variable_set[2396] = 1;
  return result;
}

ExcelValue outputs_energy_g76() {
  static ExcelValue result;
  if(variable_set[2397] == 1) { return result;}
  result = C198;
  variable_set[2397] = 1;
  return result;
}

ExcelValue outputs_energy_r76() {
  static ExcelValue result;
  if(variable_set[2398] == 1) { return result;}
  result = C115;
  variable_set[2398] = 1;
  return result;
}

ExcelValue outputs_energy_s76() {
  static ExcelValue result;
  if(variable_set[2399] == 1) { return result;}
  result = C199;
  variable_set[2399] = 1;
  return result;
}

ExcelValue outputs_energy_t76() {
  static ExcelValue result;
  if(variable_set[2400] == 1) { return result;}
  result = C200;
  variable_set[2400] = 1;
  return result;
}

ExcelValue outputs_energy_u76() {
  static ExcelValue result;
  if(variable_set[2401] == 1) { return result;}
  result = C201;
  variable_set[2401] = 1;
  return result;
}

ExcelValue outputs_energy_v76() {
  static ExcelValue result;
  if(variable_set[2402] == 1) { return result;}
  result = C202;
  variable_set[2402] = 1;
  return result;
}

ExcelValue outputs_energy_w76() {
  static ExcelValue result;
  if(variable_set[2403] == 1) { return result;}
  result = C203;
  variable_set[2403] = 1;
  return result;
}

ExcelValue outputs_energy_x76() {
  static ExcelValue result;
  if(variable_set[2404] == 1) { return result;}
  result = C204;
  variable_set[2404] = 1;
  return result;
}

ExcelValue outputs_energy_y76() {
  static ExcelValue result;
  if(variable_set[2405] == 1) { return result;}
  result = C205;
  variable_set[2405] = 1;
  return result;
}

ExcelValue outputs_energy_z76() {
  static ExcelValue result;
  if(variable_set[2406] == 1) { return result;}
  result = C206;
  variable_set[2406] = 1;
  return result;
}

ExcelValue outputs_energy_c77() {
  static ExcelValue result;
  if(variable_set[2407] == 1) { return result;}
  result = C257;
  variable_set[2407] = 1;
  return result;
}

ExcelValue outputs_energy_d77() {
  static ExcelValue result;
  if(variable_set[2408] == 1) { return result;}
  result = C258;
  variable_set[2408] = 1;
  return result;
}

ExcelValue outputs_energy_g77() {
  static ExcelValue result;
  if(variable_set[2409] == 1) { return result;}
  result = C273;
  variable_set[2409] = 1;
  return result;
}

ExcelValue outputs_energy_r77() {
  static ExcelValue result;
  if(variable_set[2410] == 1) { return result;}
  result = C274;
  variable_set[2410] = 1;
  return result;
}

ExcelValue outputs_energy_s77() {
  static ExcelValue result;
  if(variable_set[2411] == 1) { return result;}
  result = C274;
  variable_set[2411] = 1;
  return result;
}

ExcelValue outputs_energy_t77() {
  static ExcelValue result;
  if(variable_set[2412] == 1) { return result;}
  result = C274;
  variable_set[2412] = 1;
  return result;
}

ExcelValue outputs_energy_u77() {
  static ExcelValue result;
  if(variable_set[2413] == 1) { return result;}
  result = C274;
  variable_set[2413] = 1;
  return result;
}

ExcelValue outputs_energy_v77() {
  static ExcelValue result;
  if(variable_set[2414] == 1) { return result;}
  result = C274;
  variable_set[2414] = 1;
  return result;
}

ExcelValue outputs_energy_w77() {
  static ExcelValue result;
  if(variable_set[2415] == 1) { return result;}
  result = C274;
  variable_set[2415] = 1;
  return result;
}

ExcelValue outputs_energy_x77() {
  static ExcelValue result;
  if(variable_set[2416] == 1) { return result;}
  result = C274;
  variable_set[2416] = 1;
  return result;
}

ExcelValue outputs_energy_y77() {
  static ExcelValue result;
  if(variable_set[2417] == 1) { return result;}
  result = C274;
  variable_set[2417] = 1;
  return result;
}

ExcelValue outputs_energy_z77() {
  static ExcelValue result;
  if(variable_set[2418] == 1) { return result;}
  result = C274;
  variable_set[2418] = 1;
  return result;
}

ExcelValue outputs_energy_c78() {
  static ExcelValue result;
  if(variable_set[2419] == 1) { return result;}
  result = C259;
  variable_set[2419] = 1;
  return result;
}

ExcelValue outputs_energy_d78() {
  static ExcelValue result;
  if(variable_set[2420] == 1) { return result;}
  result = C260;
  variable_set[2420] = 1;
  return result;
}

ExcelValue outputs_energy_g78() {
  static ExcelValue result;
  if(variable_set[2421] == 1) { return result;}
  result = C275;
  variable_set[2421] = 1;
  return result;
}

ExcelValue outputs_energy_r78() {
  static ExcelValue result;
  if(variable_set[2422] == 1) { return result;}
  result = C274;
  variable_set[2422] = 1;
  return result;
}

ExcelValue outputs_energy_s78() {
  static ExcelValue result;
  if(variable_set[2423] == 1) { return result;}
  result = C274;
  variable_set[2423] = 1;
  return result;
}

ExcelValue outputs_energy_t78() {
  static ExcelValue result;
  if(variable_set[2424] == 1) { return result;}
  result = C274;
  variable_set[2424] = 1;
  return result;
}

ExcelValue outputs_energy_u78() {
  static ExcelValue result;
  if(variable_set[2425] == 1) { return result;}
  result = C274;
  variable_set[2425] = 1;
  return result;
}

ExcelValue outputs_energy_v78() {
  static ExcelValue result;
  if(variable_set[2426] == 1) { return result;}
  result = C274;
  variable_set[2426] = 1;
  return result;
}

ExcelValue outputs_energy_w78() {
  static ExcelValue result;
  if(variable_set[2427] == 1) { return result;}
  result = C274;
  variable_set[2427] = 1;
  return result;
}

ExcelValue outputs_energy_x78() {
  static ExcelValue result;
  if(variable_set[2428] == 1) { return result;}
  result = C274;
  variable_set[2428] = 1;
  return result;
}

ExcelValue outputs_energy_y78() {
  static ExcelValue result;
  if(variable_set[2429] == 1) { return result;}
  result = C274;
  variable_set[2429] = 1;
  return result;
}

ExcelValue outputs_energy_z78() {
  static ExcelValue result;
  if(variable_set[2430] == 1) { return result;}
  result = C274;
  variable_set[2430] = 1;
  return result;
}

ExcelValue outputs_energy_c79() {
  static ExcelValue result;
  if(variable_set[2431] == 1) { return result;}
  result = C261;
  variable_set[2431] = 1;
  return result;
}

ExcelValue outputs_energy_d79() {
  static ExcelValue result;
  if(variable_set[2432] == 1) { return result;}
  result = C262;
  variable_set[2432] = 1;
  return result;
}

ExcelValue outputs_energy_g79() {
  static ExcelValue result;
  if(variable_set[2433] == 1) { return result;}
  result = C276;
  variable_set[2433] = 1;
  return result;
}

ExcelValue outputs_energy_r79() {
  static ExcelValue result;
  if(variable_set[2434] == 1) { return result;}
  result = C274;
  variable_set[2434] = 1;
  return result;
}

ExcelValue outputs_energy_s79() {
  static ExcelValue result;
  if(variable_set[2435] == 1) { return result;}
  result = C274;
  variable_set[2435] = 1;
  return result;
}

ExcelValue outputs_energy_t79() {
  static ExcelValue result;
  if(variable_set[2436] == 1) { return result;}
  result = C274;
  variable_set[2436] = 1;
  return result;
}

ExcelValue outputs_energy_u79() {
  static ExcelValue result;
  if(variable_set[2437] == 1) { return result;}
  result = C274;
  variable_set[2437] = 1;
  return result;
}

ExcelValue outputs_energy_v79() {
  static ExcelValue result;
  if(variable_set[2438] == 1) { return result;}
  result = C274;
  variable_set[2438] = 1;
  return result;
}

ExcelValue outputs_energy_w79() {
  static ExcelValue result;
  if(variable_set[2439] == 1) { return result;}
  result = C274;
  variable_set[2439] = 1;
  return result;
}

ExcelValue outputs_energy_x79() {
  static ExcelValue result;
  if(variable_set[2440] == 1) { return result;}
  result = C274;
  variable_set[2440] = 1;
  return result;
}

ExcelValue outputs_energy_y79() {
  static ExcelValue result;
  if(variable_set[2441] == 1) { return result;}
  result = C274;
  variable_set[2441] = 1;
  return result;
}

ExcelValue outputs_energy_z79() {
  static ExcelValue result;
  if(variable_set[2442] == 1) { return result;}
  result = C274;
  variable_set[2442] = 1;
  return result;
}

ExcelValue outputs_energy_c82() {
  static ExcelValue result;
  if(variable_set[2443] == 1) { return result;}
  result = C277;
  variable_set[2443] = 1;
  return result;
}

ExcelValue outputs_energy_c84() {
  static ExcelValue result;
  if(variable_set[2444] == 1) { return result;}
  result = C278;
  variable_set[2444] = 1;
  return result;
}

ExcelValue outputs_energy_c86() {
  static ExcelValue result;
  if(variable_set[2445] == 1) { return result;}
  result = C279;
  variable_set[2445] = 1;
  return result;
}

ExcelValue outputs_energy_d86() {
  static ExcelValue result;
  if(variable_set[2446] == 1) { return result;}
  result = C280;
  variable_set[2446] = 1;
  return result;
}

ExcelValue outputs_energy_e86() {
  static ExcelValue result;
  if(variable_set[2447] == 1) { return result;}
  result = C281;
  variable_set[2447] = 1;
  return result;
}

ExcelValue outputs_energy_f86() {
  static ExcelValue result;
  if(variable_set[2448] == 1) { return result;}
  result = C282;
  variable_set[2448] = 1;
  return result;
}

ExcelValue outputs_energy_h86() {
  static ExcelValue result;
  if(variable_set[2449] == 1) { return result;}
  result = C283;
  variable_set[2449] = 1;
  return result;
}

ExcelValue outputs_energy_c87() {
  static ExcelValue result;
  if(variable_set[2450] == 1) { return result;}
  result = C17;
  variable_set[2450] = 1;
  return result;
}

ExcelValue outputs_energy_d87() {
  static ExcelValue result;
  if(variable_set[2451] == 1) { return result;}
  result = C284;
  variable_set[2451] = 1;
  return result;
}

ExcelValue outputs_energy_e87() {
  static ExcelValue result;
  if(variable_set[2452] == 1) { return result;}
  result = C274;
  variable_set[2452] = 1;
  return result;
}

ExcelValue outputs_energy_f87() {
  static ExcelValue result;
  if(variable_set[2453] == 1) { return result;}
  result = C274;
  variable_set[2453] = 1;
  return result;
}

ExcelValue outputs_energy_h87() {
  static ExcelValue result;
  if(variable_set[2454] == 1) { return result;}
  result = C285;
  variable_set[2454] = 1;
  return result;
}

ExcelValue outputs_energy_c88() {
  static ExcelValue result;
  if(variable_set[2455] == 1) { return result;}
  result = C26;
  variable_set[2455] = 1;
  return result;
}

ExcelValue outputs_energy_d88() {
  static ExcelValue result;
  if(variable_set[2456] == 1) { return result;}
  result = C286;
  variable_set[2456] = 1;
  return result;
}

ExcelValue outputs_energy_e88() {
  static ExcelValue result;
  if(variable_set[2457] == 1) { return result;}
  result = C274;
  variable_set[2457] = 1;
  return result;
}

ExcelValue outputs_energy_f88() {
  static ExcelValue result;
  if(variable_set[2458] == 1) { return result;}
  result = C274;
  variable_set[2458] = 1;
  return result;
}

ExcelValue outputs_energy_h88() {
  static ExcelValue result;
  if(variable_set[2459] == 1) { return result;}
  result = C285;
  variable_set[2459] = 1;
  return result;
}

ExcelValue outputs_energy_c89() {
  static ExcelValue result;
  if(variable_set[2460] == 1) { return result;}
  result = C20;
  variable_set[2460] = 1;
  return result;
}

ExcelValue outputs_energy_d89() {
  static ExcelValue result;
  if(variable_set[2461] == 1) { return result;}
  result = C287;
  variable_set[2461] = 1;
  return result;
}

ExcelValue outputs_energy_e89() {
  static ExcelValue result;
  if(variable_set[2462] == 1) { return result;}
  result = C274;
  variable_set[2462] = 1;
  return result;
}

ExcelValue outputs_energy_f89() {
  static ExcelValue result;
  if(variable_set[2463] == 1) { return result;}
  result = C274;
  variable_set[2463] = 1;
  return result;
}

ExcelValue outputs_energy_h89() {
  static ExcelValue result;
  if(variable_set[2464] == 1) { return result;}
  result = C285;
  variable_set[2464] = 1;
  return result;
}

ExcelValue outputs_energy_c91() {
  static ExcelValue result;
  if(variable_set[2465] == 1) { return result;}
  result = C288;
  variable_set[2465] = 1;
  return result;
}

ExcelValue outputs_energy_c93() {
  static ExcelValue result;
  if(variable_set[2466] == 1) { return result;}
  result = C279;
  variable_set[2466] = 1;
  return result;
}

ExcelValue outputs_energy_d93() {
  static ExcelValue result;
  if(variable_set[2467] == 1) { return result;}
  result = C289;
  variable_set[2467] = 1;
  return result;
}

ExcelValue outputs_energy_e93() {
  static ExcelValue result;
  if(variable_set[2468] == 1) { return result;}
  result = C281;
  variable_set[2468] = 1;
  return result;
}

ExcelValue outputs_energy_f93() {
  static ExcelValue result;
  if(variable_set[2469] == 1) { return result;}
  result = C282;
  variable_set[2469] = 1;
  return result;
}

ExcelValue outputs_energy_h93() {
  static ExcelValue result;
  if(variable_set[2470] == 1) { return result;}
  result = C283;
  variable_set[2470] = 1;
  return result;
}

ExcelValue outputs_energy_c94() {
  static ExcelValue result;
  if(variable_set[2471] == 1) { return result;}
  result = C17;
  variable_set[2471] = 1;
  return result;
}

ExcelValue outputs_energy_e94() {
  static ExcelValue result;
  if(variable_set[2472] == 1) { return result;}
  result = C274;
  variable_set[2472] = 1;
  return result;
}

ExcelValue outputs_energy_f94() {
  static ExcelValue result;
  if(variable_set[2473] == 1) { return result;}
  result = DIV0;
  variable_set[2473] = 1;
  return result;
}

ExcelValue outputs_energy_c95() {
  static ExcelValue result;
  if(variable_set[2474] == 1) { return result;}
  result = C26;
  variable_set[2474] = 1;
  return result;
}

ExcelValue outputs_energy_e95() {
  static ExcelValue result;
  if(variable_set[2475] == 1) { return result;}
  result = C274;
  variable_set[2475] = 1;
  return result;
}

ExcelValue outputs_energy_f95() {
  static ExcelValue result;
  if(variable_set[2476] == 1) { return result;}
  result = DIV0;
  variable_set[2476] = 1;
  return result;
}

ExcelValue outputs_energy_c96() {
  static ExcelValue result;
  if(variable_set[2477] == 1) { return result;}
  result = C20;
  variable_set[2477] = 1;
  return result;
}

ExcelValue outputs_energy_e96() {
  static ExcelValue result;
  if(variable_set[2478] == 1) { return result;}
  result = C274;
  variable_set[2478] = 1;
  return result;
}

ExcelValue outputs_energy_f96() {
  static ExcelValue result;
  if(variable_set[2479] == 1) { return result;}
  result = DIV0;
  variable_set[2479] = 1;
  return result;
}

ExcelValue outputs_energy_c98() {
  static ExcelValue result;
  if(variable_set[2480] == 1) { return result;}
  result = C290;
  variable_set[2480] = 1;
  return result;
}

ExcelValue outputs_energy_c100() {
  static ExcelValue result;
  if(variable_set[2481] == 1) { return result;}
  result = C279;
  variable_set[2481] = 1;
  return result;
}

ExcelValue outputs_energy_d100() {
  static ExcelValue result;
  if(variable_set[2482] == 1) { return result;}
  result = C291;
  variable_set[2482] = 1;
  return result;
}

ExcelValue outputs_energy_e100() {
  static ExcelValue result;
  if(variable_set[2483] == 1) { return result;}
  result = C281;
  variable_set[2483] = 1;
  return result;
}

ExcelValue outputs_energy_f100() {
  static ExcelValue result;
  if(variable_set[2484] == 1) { return result;}
  result = C282;
  variable_set[2484] = 1;
  return result;
}

ExcelValue outputs_energy_h100() {
  static ExcelValue result;
  if(variable_set[2485] == 1) { return result;}
  result = C283;
  variable_set[2485] = 1;
  return result;
}

ExcelValue outputs_energy_c101() {
  static ExcelValue result;
  if(variable_set[2486] == 1) { return result;}
  result = C17;
  variable_set[2486] = 1;
  return result;
}

ExcelValue outputs_energy_e101() {
  static ExcelValue result;
  if(variable_set[2487] == 1) { return result;}
  result = C274;
  variable_set[2487] = 1;
  return result;
}

ExcelValue outputs_energy_f101() {
  static ExcelValue result;
  if(variable_set[2488] == 1) { return result;}
  result = DIV0;
  variable_set[2488] = 1;
  return result;
}

ExcelValue outputs_energy_c102() {
  static ExcelValue result;
  if(variable_set[2489] == 1) { return result;}
  result = C26;
  variable_set[2489] = 1;
  return result;
}

ExcelValue outputs_energy_e102() {
  static ExcelValue result;
  if(variable_set[2490] == 1) { return result;}
  result = C274;
  variable_set[2490] = 1;
  return result;
}

ExcelValue outputs_energy_f102() {
  static ExcelValue result;
  if(variable_set[2491] == 1) { return result;}
  result = DIV0;
  variable_set[2491] = 1;
  return result;
}

ExcelValue outputs_energy_c103() {
  static ExcelValue result;
  if(variable_set[2492] == 1) { return result;}
  result = C20;
  variable_set[2492] = 1;
  return result;
}

ExcelValue outputs_energy_e103() {
  static ExcelValue result;
  if(variable_set[2493] == 1) { return result;}
  result = C274;
  variable_set[2493] = 1;
  return result;
}

ExcelValue outputs_energy_f103() {
  static ExcelValue result;
  if(variable_set[2494] == 1) { return result;}
  result = DIV0;
  variable_set[2494] = 1;
  return result;
}

ExcelValue outputs_energy_b107() {
  static ExcelValue result;
  if(variable_set[2495] == 1) { return result;}
  result = C292;
  variable_set[2495] = 1;
  return result;
}

ExcelValue outputs_energy_h109() {
  static ExcelValue result;
  if(variable_set[2496] == 1) { return result;}
  result = C102;
  variable_set[2496] = 1;
  return result;
}

ExcelValue outputs_energy_r109() {
  static ExcelValue result;
  if(variable_set[2497] == 1) { return result;}
  result = C195;
  variable_set[2497] = 1;
  return result;
}

ExcelValue outputs_energy_c110() {
  static ExcelValue result;
  if(variable_set[2498] == 1) { return result;}
  result = C196;
  variable_set[2498] = 1;
  return result;
}

ExcelValue outputs_energy_d110() {
  static ExcelValue result;
  if(variable_set[2499] == 1) { return result;}
  result = C293;
  variable_set[2499] = 1;
  return result;
}

ExcelValue outputs_energy_g110() {
  static ExcelValue result;
  if(variable_set[2500] == 1) { return result;}
  result = C198;
  variable_set[2500] = 1;
  return result;
}

ExcelValue outputs_energy_h110() {
  static ExcelValue result;
  if(variable_set[2501] == 1) { return result;}
  result = C106;
  variable_set[2501] = 1;
  return result;
}

ExcelValue outputs_energy_i110() {
  static ExcelValue result;
  if(variable_set[2502] == 1) { return result;}
  result = C107;
  variable_set[2502] = 1;
  return result;
}

ExcelValue outputs_energy_j110() {
  static ExcelValue result;
  if(variable_set[2503] == 1) { return result;}
  result = C108;
  variable_set[2503] = 1;
  return result;
}

ExcelValue outputs_energy_k110() {
  static ExcelValue result;
  if(variable_set[2504] == 1) { return result;}
  result = C109;
  variable_set[2504] = 1;
  return result;
}

ExcelValue outputs_energy_l110() {
  static ExcelValue result;
  if(variable_set[2505] == 1) { return result;}
  result = C110;
  variable_set[2505] = 1;
  return result;
}

ExcelValue outputs_energy_m110() {
  static ExcelValue result;
  if(variable_set[2506] == 1) { return result;}
  result = C111;
  variable_set[2506] = 1;
  return result;
}

ExcelValue outputs_energy_n110() {
  static ExcelValue result;
  if(variable_set[2507] == 1) { return result;}
  result = C112;
  variable_set[2507] = 1;
  return result;
}

ExcelValue outputs_energy_o110() {
  static ExcelValue result;
  if(variable_set[2508] == 1) { return result;}
  result = C113;
  variable_set[2508] = 1;
  return result;
}

ExcelValue outputs_energy_p110() {
  static ExcelValue result;
  if(variable_set[2509] == 1) { return result;}
  result = C114;
  variable_set[2509] = 1;
  return result;
}

ExcelValue outputs_energy_r110() {
  static ExcelValue result;
  if(variable_set[2510] == 1) { return result;}
  result = C115;
  variable_set[2510] = 1;
  return result;
}

ExcelValue outputs_energy_s110() {
  static ExcelValue result;
  if(variable_set[2511] == 1) { return result;}
  result = C199;
  variable_set[2511] = 1;
  return result;
}

ExcelValue outputs_energy_t110() {
  static ExcelValue result;
  if(variable_set[2512] == 1) { return result;}
  result = C200;
  variable_set[2512] = 1;
  return result;
}

ExcelValue outputs_energy_u110() {
  static ExcelValue result;
  if(variable_set[2513] == 1) { return result;}
  result = C201;
  variable_set[2513] = 1;
  return result;
}

ExcelValue outputs_energy_v110() {
  static ExcelValue result;
  if(variable_set[2514] == 1) { return result;}
  result = C202;
  variable_set[2514] = 1;
  return result;
}

ExcelValue outputs_energy_w110() {
  static ExcelValue result;
  if(variable_set[2515] == 1) { return result;}
  result = C203;
  variable_set[2515] = 1;
  return result;
}

ExcelValue outputs_energy_x110() {
  static ExcelValue result;
  if(variable_set[2516] == 1) { return result;}
  result = C204;
  variable_set[2516] = 1;
  return result;
}

ExcelValue outputs_energy_y110() {
  static ExcelValue result;
  if(variable_set[2517] == 1) { return result;}
  result = C205;
  variable_set[2517] = 1;
  return result;
}

ExcelValue outputs_energy_z110() {
  static ExcelValue result;
  if(variable_set[2518] == 1) { return result;}
  result = C206;
  variable_set[2518] = 1;
  return result;
}

ExcelValue outputs_energy_c111() {
  static ExcelValue result;
  if(variable_set[2519] == 1) { return result;}
  result = C294;
  variable_set[2519] = 1;
  return result;
}

ExcelValue outputs_energy_d111() {
  static ExcelValue result;
  if(variable_set[2520] == 1) { return result;}
  result = C295;
  variable_set[2520] = 1;
  return result;
}

ExcelValue outputs_energy_s111() {
  static ExcelValue result;
  if(variable_set[2521] == 1) { return result;}
  result = C158;
  variable_set[2521] = 1;
  return result;
}

ExcelValue outputs_energy_c112() {
  static ExcelValue result;
  if(variable_set[2522] == 1) { return result;}
  result = C267;
  variable_set[2522] = 1;
  return result;
}

ExcelValue outputs_energy_d112() {
  static ExcelValue result;
  if(variable_set[2523] == 1) { return result;}
  result = C268;
  variable_set[2523] = 1;
  return result;
}

ExcelValue outputs_energy_s112() {
  static ExcelValue result;
  if(variable_set[2524] == 1) { return result;}
  result = C158;
  variable_set[2524] = 1;
  return result;
}

ExcelValue outputs_energy_c114() {
  static ExcelValue result;
  if(variable_set[2525] == 1) { return result;}
  result = C270;
  variable_set[2525] = 1;
  return result;
}

ExcelValue outputs_energy_c115() {
  static ExcelValue result;
  if(variable_set[2526] == 1) { return result;}
  result = C296;
  variable_set[2526] = 1;
  return result;
}

ExcelValue outputs_energy_d115() {
  static ExcelValue result;
  if(variable_set[2527] == 1) { return result;}
  result = C297;
  variable_set[2527] = 1;
  return result;
}

ExcelValue outputs_energy_s115() {
  static ExcelValue result;
  if(variable_set[2528] == 1) { return result;}
  result = C158;
  variable_set[2528] = 1;
  return result;
}

ExcelValue outputs_energy_d116() {
  static ExcelValue result;
  if(variable_set[2529] == 1) { return result;}
  result = C298;
  variable_set[2529] = 1;
  return result;
}

ExcelValue outputs_energy_s116() {
  static ExcelValue result;
  if(variable_set[2530] == 1) { return result;}
  result = C158;
  variable_set[2530] = 1;
  return result;
}

ExcelValue outputs_energy_b120() {
  static ExcelValue result;
  if(variable_set[2531] == 1) { return result;}
  result = C299;
  variable_set[2531] = 1;
  return result;
}

ExcelValue outputs_energy_f120() {
  static ExcelValue result;
  if(variable_set[2532] == 1) { return result;}
  result = C294;
  variable_set[2532] = 1;
  return result;
}

ExcelValue outputs_energy_h122() {
  static ExcelValue result;
  if(variable_set[2533] == 1) { return result;}
  result = C102;
  variable_set[2533] = 1;
  return result;
}

ExcelValue outputs_energy_r122() {
  static ExcelValue result;
  if(variable_set[2534] == 1) { return result;}
  result = C195;
  variable_set[2534] = 1;
  return result;
}

ExcelValue outputs_energy_c123() {
  static ExcelValue result;
  if(variable_set[2535] == 1) { return result;}
  result = C196;
  variable_set[2535] = 1;
  return result;
}

ExcelValue outputs_energy_d123() {
  static ExcelValue result;
  if(variable_set[2536] == 1) { return result;}
  result = C293;
  variable_set[2536] = 1;
  return result;
}

ExcelValue outputs_energy_f123() {
  static ExcelValue result;
  if(variable_set[2537] == 1) { return result;}
  result = C300;
  variable_set[2537] = 1;
  return result;
}

ExcelValue outputs_energy_g123() {
  static ExcelValue result;
  if(variable_set[2538] == 1) { return result;}
  result = C198;
  variable_set[2538] = 1;
  return result;
}

ExcelValue outputs_energy_h123() {
  static ExcelValue result;
  if(variable_set[2539] == 1) { return result;}
  result = C106;
  variable_set[2539] = 1;
  return result;
}

ExcelValue outputs_energy_i123() {
  static ExcelValue result;
  if(variable_set[2540] == 1) { return result;}
  result = C107;
  variable_set[2540] = 1;
  return result;
}

ExcelValue outputs_energy_j123() {
  static ExcelValue result;
  if(variable_set[2541] == 1) { return result;}
  result = C108;
  variable_set[2541] = 1;
  return result;
}

ExcelValue outputs_energy_k123() {
  static ExcelValue result;
  if(variable_set[2542] == 1) { return result;}
  result = C109;
  variable_set[2542] = 1;
  return result;
}

ExcelValue outputs_energy_l123() {
  static ExcelValue result;
  if(variable_set[2543] == 1) { return result;}
  result = C110;
  variable_set[2543] = 1;
  return result;
}

ExcelValue outputs_energy_m123() {
  static ExcelValue result;
  if(variable_set[2544] == 1) { return result;}
  result = C111;
  variable_set[2544] = 1;
  return result;
}

ExcelValue outputs_energy_n123() {
  static ExcelValue result;
  if(variable_set[2545] == 1) { return result;}
  result = C112;
  variable_set[2545] = 1;
  return result;
}

ExcelValue outputs_energy_o123() {
  static ExcelValue result;
  if(variable_set[2546] == 1) { return result;}
  result = C113;
  variable_set[2546] = 1;
  return result;
}

ExcelValue outputs_energy_p123() {
  static ExcelValue result;
  if(variable_set[2547] == 1) { return result;}
  result = C114;
  variable_set[2547] = 1;
  return result;
}

ExcelValue outputs_energy_r123() {
  static ExcelValue result;
  if(variable_set[2548] == 1) { return result;}
  result = C115;
  variable_set[2548] = 1;
  return result;
}

ExcelValue outputs_energy_s123() {
  static ExcelValue result;
  if(variable_set[2549] == 1) { return result;}
  result = C199;
  variable_set[2549] = 1;
  return result;
}

ExcelValue outputs_energy_t123() {
  static ExcelValue result;
  if(variable_set[2550] == 1) { return result;}
  result = C200;
  variable_set[2550] = 1;
  return result;
}

ExcelValue outputs_energy_u123() {
  static ExcelValue result;
  if(variable_set[2551] == 1) { return result;}
  result = C201;
  variable_set[2551] = 1;
  return result;
}

ExcelValue outputs_energy_v123() {
  static ExcelValue result;
  if(variable_set[2552] == 1) { return result;}
  result = C202;
  variable_set[2552] = 1;
  return result;
}

ExcelValue outputs_energy_w123() {
  static ExcelValue result;
  if(variable_set[2553] == 1) { return result;}
  result = C203;
  variable_set[2553] = 1;
  return result;
}

ExcelValue outputs_energy_x123() {
  static ExcelValue result;
  if(variable_set[2554] == 1) { return result;}
  result = C204;
  variable_set[2554] = 1;
  return result;
}

ExcelValue outputs_energy_y123() {
  static ExcelValue result;
  if(variable_set[2555] == 1) { return result;}
  result = C205;
  variable_set[2555] = 1;
  return result;
}

ExcelValue outputs_energy_z123() {
  static ExcelValue result;
  if(variable_set[2556] == 1) { return result;}
  result = C206;
  variable_set[2556] = 1;
  return result;
}

ExcelValue outputs_energy_c124() {
  static ExcelValue result;
  if(variable_set[2557] == 1) { return result;}
  result = C301;
  variable_set[2557] = 1;
  return result;
}

ExcelValue outputs_energy_d124() {
  static ExcelValue result;
  if(variable_set[2558] == 1) { return result;}
  result = C302;
  variable_set[2558] = 1;
  return result;
}

ExcelValue outputs_energy_s124() {
  static ExcelValue result;
  if(variable_set[2559] == 1) { return result;}
  result = C158;
  variable_set[2559] = 1;
  return result;
}

ExcelValue outputs_energy_c125() {
  static ExcelValue result;
  if(variable_set[2560] == 1) { return result;}
  result = C301;
  variable_set[2560] = 1;
  return result;
}

ExcelValue outputs_energy_d125() {
  static ExcelValue result;
  if(variable_set[2561] == 1) { return result;}
  result = C303;
  variable_set[2561] = 1;
  return result;
}

ExcelValue outputs_energy_s125() {
  static ExcelValue result;
  if(variable_set[2562] == 1) { return result;}
  result = C158;
  variable_set[2562] = 1;
  return result;
}

ExcelValue outputs_energy_c126() {
  static ExcelValue result;
  if(variable_set[2563] == 1) { return result;}
  result = C301;
  variable_set[2563] = 1;
  return result;
}

ExcelValue outputs_energy_d126() {
  static ExcelValue result;
  if(variable_set[2564] == 1) { return result;}
  result = C304;
  variable_set[2564] = 1;
  return result;
}

ExcelValue outputs_energy_s126() {
  static ExcelValue result;
  if(variable_set[2565] == 1) { return result;}
  result = C158;
  variable_set[2565] = 1;
  return result;
}

ExcelValue outputs_energy_c127() {
  static ExcelValue result;
  if(variable_set[2566] == 1) { return result;}
  result = C301;
  variable_set[2566] = 1;
  return result;
}

ExcelValue outputs_energy_d127() {
  static ExcelValue result;
  if(variable_set[2567] == 1) { return result;}
  result = C305;
  variable_set[2567] = 1;
  return result;
}

ExcelValue outputs_energy_s127() {
  static ExcelValue result;
  if(variable_set[2568] == 1) { return result;}
  result = C158;
  variable_set[2568] = 1;
  return result;
}

ExcelValue outputs_energy_c128() {
  static ExcelValue result;
  if(variable_set[2569] == 1) { return result;}
  result = C301;
  variable_set[2569] = 1;
  return result;
}

ExcelValue outputs_energy_d128() {
  static ExcelValue result;
  if(variable_set[2570] == 1) { return result;}
  result = C306;
  variable_set[2570] = 1;
  return result;
}

ExcelValue outputs_energy_s128() {
  static ExcelValue result;
  if(variable_set[2571] == 1) { return result;}
  result = C158;
  variable_set[2571] = 1;
  return result;
}

ExcelValue outputs_energy_c129() {
  static ExcelValue result;
  if(variable_set[2572] == 1) { return result;}
  result = C301;
  variable_set[2572] = 1;
  return result;
}

ExcelValue outputs_energy_d129() {
  static ExcelValue result;
  if(variable_set[2573] == 1) { return result;}
  result = C307;
  variable_set[2573] = 1;
  return result;
}

ExcelValue outputs_energy_s129() {
  static ExcelValue result;
  if(variable_set[2574] == 1) { return result;}
  result = C158;
  variable_set[2574] = 1;
  return result;
}

ExcelValue outputs_energy_c130() {
  static ExcelValue result;
  if(variable_set[2575] == 1) { return result;}
  result = C301;
  variable_set[2575] = 1;
  return result;
}

ExcelValue outputs_energy_d130() {
  static ExcelValue result;
  if(variable_set[2576] == 1) { return result;}
  result = C308;
  variable_set[2576] = 1;
  return result;
}

ExcelValue outputs_energy_s130() {
  static ExcelValue result;
  if(variable_set[2577] == 1) { return result;}
  result = C158;
  variable_set[2577] = 1;
  return result;
}

ExcelValue outputs_energy_c131() {
  static ExcelValue result;
  if(variable_set[2578] == 1) { return result;}
  result = C301;
  variable_set[2578] = 1;
  return result;
}

ExcelValue outputs_energy_d131() {
  static ExcelValue result;
  if(variable_set[2579] == 1) { return result;}
  result = C309;
  variable_set[2579] = 1;
  return result;
}

ExcelValue outputs_energy_s131() {
  static ExcelValue result;
  if(variable_set[2580] == 1) { return result;}
  result = C158;
  variable_set[2580] = 1;
  return result;
}

ExcelValue outputs_energy_c132() {
  static ExcelValue result;
  if(variable_set[2581] == 1) { return result;}
  result = C301;
  variable_set[2581] = 1;
  return result;
}

ExcelValue outputs_energy_d132() {
  static ExcelValue result;
  if(variable_set[2582] == 1) { return result;}
  result = C310;
  variable_set[2582] = 1;
  return result;
}

ExcelValue outputs_energy_s132() {
  static ExcelValue result;
  if(variable_set[2583] == 1) { return result;}
  result = C158;
  variable_set[2583] = 1;
  return result;
}

ExcelValue outputs_energy_d133() {
  static ExcelValue result;
  if(variable_set[2584] == 1) { return result;}
  result = C155;
  variable_set[2584] = 1;
  return result;
}

ExcelValue outputs_energy_h133() {
  static ExcelValue result;
  if(variable_set[2585] == 1) { return result;}
  result = C158;
  variable_set[2585] = 1;
  return result;
}

ExcelValue outputs_energy_i133() {
  static ExcelValue result;
  if(variable_set[2586] == 1) { return result;}
  result = C158;
  variable_set[2586] = 1;
  return result;
}

ExcelValue outputs_energy_j133() {
  static ExcelValue result;
  if(variable_set[2587] == 1) { return result;}
  result = C158;
  variable_set[2587] = 1;
  return result;
}

ExcelValue outputs_energy_k133() {
  static ExcelValue result;
  if(variable_set[2588] == 1) { return result;}
  result = C158;
  variable_set[2588] = 1;
  return result;
}

ExcelValue outputs_energy_l133() {
  static ExcelValue result;
  if(variable_set[2589] == 1) { return result;}
  result = C158;
  variable_set[2589] = 1;
  return result;
}

ExcelValue outputs_energy_m133() {
  static ExcelValue result;
  if(variable_set[2590] == 1) { return result;}
  result = C158;
  variable_set[2590] = 1;
  return result;
}

ExcelValue outputs_energy_n133() {
  static ExcelValue result;
  if(variable_set[2591] == 1) { return result;}
  result = C158;
  variable_set[2591] = 1;
  return result;
}

ExcelValue outputs_energy_o133() {
  static ExcelValue result;
  if(variable_set[2592] == 1) { return result;}
  result = C158;
  variable_set[2592] = 1;
  return result;
}

ExcelValue outputs_energy_r133() {
  static ExcelValue result;
  if(variable_set[2593] == 1) { return result;}
  result = C158;
  variable_set[2593] = 1;
  return result;
}

ExcelValue outputs_energy_s133() {
  static ExcelValue result;
  if(variable_set[2594] == 1) { return result;}
  result = C158;
  variable_set[2594] = 1;
  return result;
}

ExcelValue outputs_energy_t133() {
  static ExcelValue result;
  if(variable_set[2595] == 1) { return result;}
  result = C158;
  variable_set[2595] = 1;
  return result;
}

ExcelValue outputs_energy_u133() {
  static ExcelValue result;
  if(variable_set[2596] == 1) { return result;}
  result = C158;
  variable_set[2596] = 1;
  return result;
}

ExcelValue outputs_energy_v133() {
  static ExcelValue result;
  if(variable_set[2597] == 1) { return result;}
  result = C158;
  variable_set[2597] = 1;
  return result;
}

ExcelValue outputs_energy_w133() {
  static ExcelValue result;
  if(variable_set[2598] == 1) { return result;}
  result = C158;
  variable_set[2598] = 1;
  return result;
}

ExcelValue outputs_energy_x133() {
  static ExcelValue result;
  if(variable_set[2599] == 1) { return result;}
  result = C158;
  variable_set[2599] = 1;
  return result;
}

ExcelValue outputs_energy_y133() {
  static ExcelValue result;
  if(variable_set[2600] == 1) { return result;}
  result = C158;
  variable_set[2600] = 1;
  return result;
}

ExcelValue outputs_energy_z133() {
  static ExcelValue result;
  if(variable_set[2601] == 1) { return result;}
  result = C158;
  variable_set[2601] = 1;
  return result;
}

ExcelValue outputs_energy_d135() {
  static ExcelValue result;
  if(variable_set[2602] == 1) { return result;}
  result = C270;
  variable_set[2602] = 1;
  return result;
}

ExcelValue outputs_energy_h135() {
  static ExcelValue result;
  if(variable_set[2603] == 1) { return result;}
  result = C158;
  variable_set[2603] = 1;
  return result;
}

ExcelValue outputs_energy_i135() {
  static ExcelValue result;
  if(variable_set[2604] == 1) { return result;}
  result = C158;
  variable_set[2604] = 1;
  return result;
}

ExcelValue outputs_energy_j135() {
  static ExcelValue result;
  if(variable_set[2605] == 1) { return result;}
  result = C158;
  variable_set[2605] = 1;
  return result;
}

ExcelValue outputs_energy_k135() {
  static ExcelValue result;
  if(variable_set[2606] == 1) { return result;}
  result = C158;
  variable_set[2606] = 1;
  return result;
}

ExcelValue outputs_energy_l135() {
  static ExcelValue result;
  if(variable_set[2607] == 1) { return result;}
  result = C158;
  variable_set[2607] = 1;
  return result;
}

ExcelValue outputs_energy_m135() {
  static ExcelValue result;
  if(variable_set[2608] == 1) { return result;}
  result = C158;
  variable_set[2608] = 1;
  return result;
}

ExcelValue outputs_energy_n135() {
  static ExcelValue result;
  if(variable_set[2609] == 1) { return result;}
  result = C158;
  variable_set[2609] = 1;
  return result;
}

ExcelValue outputs_energy_o135() {
  static ExcelValue result;
  if(variable_set[2610] == 1) { return result;}
  result = C158;
  variable_set[2610] = 1;
  return result;
}

ExcelValue outputs_energy_r135() {
  static ExcelValue result;
  if(variable_set[2611] == 1) { return result;}
  result = C158;
  variable_set[2611] = 1;
  return result;
}

ExcelValue outputs_energy_s135() {
  static ExcelValue result;
  if(variable_set[2612] == 1) { return result;}
  result = C158;
  variable_set[2612] = 1;
  return result;
}

ExcelValue outputs_energy_t135() {
  static ExcelValue result;
  if(variable_set[2613] == 1) { return result;}
  result = C158;
  variable_set[2613] = 1;
  return result;
}

ExcelValue outputs_energy_u135() {
  static ExcelValue result;
  if(variable_set[2614] == 1) { return result;}
  result = C158;
  variable_set[2614] = 1;
  return result;
}

ExcelValue outputs_energy_v135() {
  static ExcelValue result;
  if(variable_set[2615] == 1) { return result;}
  result = C158;
  variable_set[2615] = 1;
  return result;
}

ExcelValue outputs_energy_w135() {
  static ExcelValue result;
  if(variable_set[2616] == 1) { return result;}
  result = C158;
  variable_set[2616] = 1;
  return result;
}

ExcelValue outputs_energy_x135() {
  static ExcelValue result;
  if(variable_set[2617] == 1) { return result;}
  result = C158;
  variable_set[2617] = 1;
  return result;
}

ExcelValue outputs_energy_y135() {
  static ExcelValue result;
  if(variable_set[2618] == 1) { return result;}
  result = C158;
  variable_set[2618] = 1;
  return result;
}

ExcelValue outputs_energy_z135() {
  static ExcelValue result;
  if(variable_set[2619] == 1) { return result;}
  result = C158;
  variable_set[2619] = 1;
  return result;
}

ExcelValue outputs_energy_ab135() {
  static ExcelValue result;
  if(variable_set[2620] == 1) { return result;}
  result = C311;
  variable_set[2620] = 1;
  return result;
}

ExcelValue outputs_energy_b139() {
  static ExcelValue result;
  if(variable_set[2621] == 1) { return result;}
  result = C312;
  variable_set[2621] = 1;
  return result;
}

ExcelValue outputs_energy_h141() {
  static ExcelValue result;
  if(variable_set[2622] == 1) { return result;}
  result = C102;
  variable_set[2622] = 1;
  return result;
}

ExcelValue outputs_energy_r141() {
  static ExcelValue result;
  if(variable_set[2623] == 1) { return result;}
  result = C195;
  variable_set[2623] = 1;
  return result;
}

ExcelValue outputs_energy_c142() {
  static ExcelValue result;
  if(variable_set[2624] == 1) { return result;}
  result = C293;
  variable_set[2624] = 1;
  return result;
}

ExcelValue outputs_energy_h142() {
  static ExcelValue result;
  if(variable_set[2625] == 1) { return result;}
  result = C106;
  variable_set[2625] = 1;
  return result;
}

ExcelValue outputs_energy_i142() {
  static ExcelValue result;
  if(variable_set[2626] == 1) { return result;}
  result = C107;
  variable_set[2626] = 1;
  return result;
}

ExcelValue outputs_energy_j142() {
  static ExcelValue result;
  if(variable_set[2627] == 1) { return result;}
  result = C108;
  variable_set[2627] = 1;
  return result;
}

ExcelValue outputs_energy_k142() {
  static ExcelValue result;
  if(variable_set[2628] == 1) { return result;}
  result = C109;
  variable_set[2628] = 1;
  return result;
}

ExcelValue outputs_energy_l142() {
  static ExcelValue result;
  if(variable_set[2629] == 1) { return result;}
  result = C110;
  variable_set[2629] = 1;
  return result;
}

ExcelValue outputs_energy_m142() {
  static ExcelValue result;
  if(variable_set[2630] == 1) { return result;}
  result = C111;
  variable_set[2630] = 1;
  return result;
}

ExcelValue outputs_energy_n142() {
  static ExcelValue result;
  if(variable_set[2631] == 1) { return result;}
  result = C112;
  variable_set[2631] = 1;
  return result;
}

ExcelValue outputs_energy_o142() {
  static ExcelValue result;
  if(variable_set[2632] == 1) { return result;}
  result = C113;
  variable_set[2632] = 1;
  return result;
}

ExcelValue outputs_energy_p142() {
  static ExcelValue result;
  if(variable_set[2633] == 1) { return result;}
  result = C114;
  variable_set[2633] = 1;
  return result;
}

ExcelValue outputs_energy_r142() {
  static ExcelValue result;
  if(variable_set[2634] == 1) { return result;}
  result = C115;
  variable_set[2634] = 1;
  return result;
}

ExcelValue outputs_energy_s142() {
  static ExcelValue result;
  if(variable_set[2635] == 1) { return result;}
  result = C199;
  variable_set[2635] = 1;
  return result;
}

ExcelValue outputs_energy_t142() {
  static ExcelValue result;
  if(variable_set[2636] == 1) { return result;}
  result = C200;
  variable_set[2636] = 1;
  return result;
}

ExcelValue outputs_energy_u142() {
  static ExcelValue result;
  if(variable_set[2637] == 1) { return result;}
  result = C201;
  variable_set[2637] = 1;
  return result;
}

ExcelValue outputs_energy_v142() {
  static ExcelValue result;
  if(variable_set[2638] == 1) { return result;}
  result = C202;
  variable_set[2638] = 1;
  return result;
}

ExcelValue outputs_energy_w142() {
  static ExcelValue result;
  if(variable_set[2639] == 1) { return result;}
  result = C203;
  variable_set[2639] = 1;
  return result;
}

ExcelValue outputs_energy_x142() {
  static ExcelValue result;
  if(variable_set[2640] == 1) { return result;}
  result = C204;
  variable_set[2640] = 1;
  return result;
}

ExcelValue outputs_energy_y142() {
  static ExcelValue result;
  if(variable_set[2641] == 1) { return result;}
  result = C205;
  variable_set[2641] = 1;
  return result;
}

ExcelValue outputs_energy_z142() {
  static ExcelValue result;
  if(variable_set[2642] == 1) { return result;}
  result = C206;
  variable_set[2642] = 1;
  return result;
}

ExcelValue outputs_energy_c143() {
  static ExcelValue result;
  if(variable_set[2643] == 1) { return result;}
  result = C313;
  variable_set[2643] = 1;
  return result;
}

ExcelValue outputs_energy_d143() {
  static ExcelValue result;
  if(variable_set[2644] == 1) { return result;}
  result = C314;
  variable_set[2644] = 1;
  return result;
}

ExcelValue outputs_energy_c144() {
  static ExcelValue result;
  if(variable_set[2645] == 1) { return result;}
  result = C315;
  variable_set[2645] = 1;
  return result;
}

ExcelValue outputs_energy_d144() {
  static ExcelValue result;
  if(variable_set[2646] == 1) { return result;}
  result = C316;
  variable_set[2646] = 1;
  return result;
}

ExcelValue outputs_energy_c145() {
  static ExcelValue result;
  if(variable_set[2647] == 1) { return result;}
  result = C317;
  variable_set[2647] = 1;
  return result;
}

ExcelValue outputs_energy_d145() {
  static ExcelValue result;
  if(variable_set[2648] == 1) { return result;}
  result = C318;
  variable_set[2648] = 1;
  return result;
}

ExcelValue outputs_energy_c146() {
  static ExcelValue result;
  if(variable_set[2649] == 1) { return result;}
  result = C155;
  variable_set[2649] = 1;
  return result;
}

// end Outputs - Energy

// start Outputs - Land use, technology
ExcelValue outputs_land_use_technology_b2() {
  static ExcelValue result;
  if(variable_set[2650] == 1) { return result;}
  result = C77;
  variable_set[2650] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c2() {
  static ExcelValue result;
  if(variable_set[2651] == 1) { return result;}
  result = C78;
  variable_set[2651] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_e2() {
  static ExcelValue result;
  if(variable_set[2652] == 1) { return result;}
  result = C2;
  variable_set[2652] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_b3() {
  static ExcelValue result;
  if(variable_set[2653] == 1) { return result;}
  result = C319;
  variable_set[2653] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_e3() {
  static ExcelValue result;
  if(variable_set[2654] == 1) { return result;}
  result = C190;
  variable_set[2654] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_b5() {
  static ExcelValue result;
  if(variable_set[2655] == 1) { return result;}
  result = C320;
  variable_set[2655] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w5() {
  static ExcelValue result;
  if(variable_set[2656] == 1) { return result;}
  result = C321;
  variable_set[2656] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f7() {
  static ExcelValue result;
  if(variable_set[2657] == 1) { return result;}
  result = C102;
  variable_set[2657] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q7() {
  static ExcelValue result;
  if(variable_set[2658] == 1) { return result;}
  result = C195;
  variable_set[2658] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c8() {
  static ExcelValue result;
  if(variable_set[2659] == 1) { return result;}
  result = C322;
  variable_set[2659] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d8() {
  static ExcelValue result;
  if(variable_set[2660] == 1) { return result;}
  result = C197;
  variable_set[2660] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f8() {
  static ExcelValue result;
  if(variable_set[2661] == 1) { return result;}
  result = C106;
  variable_set[2661] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g8() {
  static ExcelValue result;
  if(variable_set[2662] == 1) { return result;}
  result = C107;
  variable_set[2662] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h8() {
  static ExcelValue result;
  if(variable_set[2663] == 1) { return result;}
  result = C108;
  variable_set[2663] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i8() {
  static ExcelValue result;
  if(variable_set[2664] == 1) { return result;}
  result = C109;
  variable_set[2664] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j8() {
  static ExcelValue result;
  if(variable_set[2665] == 1) { return result;}
  result = C110;
  variable_set[2665] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k8() {
  static ExcelValue result;
  if(variable_set[2666] == 1) { return result;}
  result = C111;
  variable_set[2666] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l8() {
  static ExcelValue result;
  if(variable_set[2667] == 1) { return result;}
  result = C112;
  variable_set[2667] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m8() {
  static ExcelValue result;
  if(variable_set[2668] == 1) { return result;}
  result = C113;
  variable_set[2668] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n8() {
  static ExcelValue result;
  if(variable_set[2669] == 1) { return result;}
  result = C114;
  variable_set[2669] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q8() {
  static ExcelValue result;
  if(variable_set[2670] == 1) { return result;}
  result = C115;
  variable_set[2670] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r8() {
  static ExcelValue result;
  if(variable_set[2671] == 1) { return result;}
  result = C199;
  variable_set[2671] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s8() {
  static ExcelValue result;
  if(variable_set[2672] == 1) { return result;}
  result = C200;
  variable_set[2672] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t8() {
  static ExcelValue result;
  if(variable_set[2673] == 1) { return result;}
  result = C201;
  variable_set[2673] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u8() {
  static ExcelValue result;
  if(variable_set[2674] == 1) { return result;}
  result = C202;
  variable_set[2674] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v8() {
  static ExcelValue result;
  if(variable_set[2675] == 1) { return result;}
  result = C203;
  variable_set[2675] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w8() {
  static ExcelValue result;
  if(variable_set[2676] == 1) { return result;}
  result = C204;
  variable_set[2676] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x8() {
  static ExcelValue result;
  if(variable_set[2677] == 1) { return result;}
  result = C205;
  variable_set[2677] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y8() {
  static ExcelValue result;
  if(variable_set[2678] == 1) { return result;}
  result = C206;
  variable_set[2678] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c9() {
  static ExcelValue result;
  if(variable_set[2679] == 1) { return result;}
  result = C323;
  variable_set[2679] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d9() {
  static ExcelValue result;
  if(variable_set[2680] == 1) { return result;}
  result = C324;
  variable_set[2680] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c10() {
  static ExcelValue result;
  if(variable_set[2681] == 1) { return result;}
  result = C325;
  variable_set[2681] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d10() {
  static ExcelValue result;
  if(variable_set[2682] == 1) { return result;}
  result = C326;
  variable_set[2682] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c11() {
  static ExcelValue result;
  if(variable_set[2683] == 1) { return result;}
  result = C327;
  variable_set[2683] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d11() {
  static ExcelValue result;
  if(variable_set[2684] == 1) { return result;}
  result = C328;
  variable_set[2684] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c12() {
  static ExcelValue result;
  if(variable_set[2685] == 1) { return result;}
  result = C329;
  variable_set[2685] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d12() {
  static ExcelValue result;
  if(variable_set[2686] == 1) { return result;}
  result = C330;
  variable_set[2686] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c13() {
  static ExcelValue result;
  if(variable_set[2687] == 1) { return result;}
  result = C331;
  variable_set[2687] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d13() {
  static ExcelValue result;
  if(variable_set[2688] == 1) { return result;}
  result = C332;
  variable_set[2688] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c14() {
  static ExcelValue result;
  if(variable_set[2689] == 1) { return result;}
  result = C333;
  variable_set[2689] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d14() {
  static ExcelValue result;
  if(variable_set[2690] == 1) { return result;}
  result = C334;
  variable_set[2690] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c15() {
  static ExcelValue result;
  if(variable_set[2691] == 1) { return result;}
  result = C335;
  variable_set[2691] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d15() {
  static ExcelValue result;
  if(variable_set[2692] == 1) { return result;}
  result = C336;
  variable_set[2692] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c16() {
  static ExcelValue result;
  if(variable_set[2693] == 1) { return result;}
  result = C337;
  variable_set[2693] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f19() {
  static ExcelValue result;
  if(variable_set[2694] == 1) { return result;}
  result = C102;
  variable_set[2694] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q19() {
  static ExcelValue result;
  if(variable_set[2695] == 1) { return result;}
  result = C195;
  variable_set[2695] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c20() {
  static ExcelValue result;
  if(variable_set[2696] == 1) { return result;}
  result = C322;
  variable_set[2696] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f20() {
  static ExcelValue result;
  if(variable_set[2697] == 1) { return result;}
  result = C106;
  variable_set[2697] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g20() {
  static ExcelValue result;
  if(variable_set[2698] == 1) { return result;}
  result = C107;
  variable_set[2698] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h20() {
  static ExcelValue result;
  if(variable_set[2699] == 1) { return result;}
  result = C108;
  variable_set[2699] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i20() {
  static ExcelValue result;
  if(variable_set[2700] == 1) { return result;}
  result = C109;
  variable_set[2700] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j20() {
  static ExcelValue result;
  if(variable_set[2701] == 1) { return result;}
  result = C110;
  variable_set[2701] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k20() {
  static ExcelValue result;
  if(variable_set[2702] == 1) { return result;}
  result = C111;
  variable_set[2702] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l20() {
  static ExcelValue result;
  if(variable_set[2703] == 1) { return result;}
  result = C112;
  variable_set[2703] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m20() {
  static ExcelValue result;
  if(variable_set[2704] == 1) { return result;}
  result = C113;
  variable_set[2704] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n20() {
  static ExcelValue result;
  if(variable_set[2705] == 1) { return result;}
  result = C114;
  variable_set[2705] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q20() {
  static ExcelValue result;
  if(variable_set[2706] == 1) { return result;}
  result = C115;
  variable_set[2706] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r20() {
  static ExcelValue result;
  if(variable_set[2707] == 1) { return result;}
  result = C199;
  variable_set[2707] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s20() {
  static ExcelValue result;
  if(variable_set[2708] == 1) { return result;}
  result = C200;
  variable_set[2708] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t20() {
  static ExcelValue result;
  if(variable_set[2709] == 1) { return result;}
  result = C201;
  variable_set[2709] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u20() {
  static ExcelValue result;
  if(variable_set[2710] == 1) { return result;}
  result = C202;
  variable_set[2710] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v20() {
  static ExcelValue result;
  if(variable_set[2711] == 1) { return result;}
  result = C203;
  variable_set[2711] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w20() {
  static ExcelValue result;
  if(variable_set[2712] == 1) { return result;}
  result = C204;
  variable_set[2712] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x20() {
  static ExcelValue result;
  if(variable_set[2713] == 1) { return result;}
  result = C205;
  variable_set[2713] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y20() {
  static ExcelValue result;
  if(variable_set[2714] == 1) { return result;}
  result = C206;
  variable_set[2714] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c21() {
  static ExcelValue result;
  if(variable_set[2715] == 1) { return result;}
  result = C323;
  variable_set[2715] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d21() {
  static ExcelValue result;
  if(variable_set[2716] == 1) { return result;}
  result = C324;
  variable_set[2716] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f21() {
  static ExcelValue result;
  if(variable_set[2717] == 1) { return result;}
  result = DIV0;
  variable_set[2717] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g21() {
  static ExcelValue result;
  if(variable_set[2718] == 1) { return result;}
  result = DIV0;
  variable_set[2718] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h21() {
  static ExcelValue result;
  if(variable_set[2719] == 1) { return result;}
  result = DIV0;
  variable_set[2719] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i21() {
  static ExcelValue result;
  if(variable_set[2720] == 1) { return result;}
  result = DIV0;
  variable_set[2720] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j21() {
  static ExcelValue result;
  if(variable_set[2721] == 1) { return result;}
  result = DIV0;
  variable_set[2721] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k21() {
  static ExcelValue result;
  if(variable_set[2722] == 1) { return result;}
  result = DIV0;
  variable_set[2722] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l21() {
  static ExcelValue result;
  if(variable_set[2723] == 1) { return result;}
  result = DIV0;
  variable_set[2723] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m21() {
  static ExcelValue result;
  if(variable_set[2724] == 1) { return result;}
  result = DIV0;
  variable_set[2724] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n21() {
  static ExcelValue result;
  if(variable_set[2725] == 1) { return result;}
  result = DIV0;
  variable_set[2725] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q21() {
  static ExcelValue result;
  if(variable_set[2726] == 1) { return result;}
  result = DIV0;
  variable_set[2726] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r21() {
  static ExcelValue result;
  if(variable_set[2727] == 1) { return result;}
  result = DIV0;
  variable_set[2727] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s21() {
  static ExcelValue result;
  if(variable_set[2728] == 1) { return result;}
  result = DIV0;
  variable_set[2728] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t21() {
  static ExcelValue result;
  if(variable_set[2729] == 1) { return result;}
  result = DIV0;
  variable_set[2729] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u21() {
  static ExcelValue result;
  if(variable_set[2730] == 1) { return result;}
  result = DIV0;
  variable_set[2730] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v21() {
  static ExcelValue result;
  if(variable_set[2731] == 1) { return result;}
  result = DIV0;
  variable_set[2731] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w21() {
  static ExcelValue result;
  if(variable_set[2732] == 1) { return result;}
  result = DIV0;
  variable_set[2732] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x21() {
  static ExcelValue result;
  if(variable_set[2733] == 1) { return result;}
  result = DIV0;
  variable_set[2733] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y21() {
  static ExcelValue result;
  if(variable_set[2734] == 1) { return result;}
  result = DIV0;
  variable_set[2734] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c22() {
  static ExcelValue result;
  if(variable_set[2735] == 1) { return result;}
  result = C325;
  variable_set[2735] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d22() {
  static ExcelValue result;
  if(variable_set[2736] == 1) { return result;}
  result = C326;
  variable_set[2736] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f22() {
  static ExcelValue result;
  if(variable_set[2737] == 1) { return result;}
  result = DIV0;
  variable_set[2737] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g22() {
  static ExcelValue result;
  if(variable_set[2738] == 1) { return result;}
  result = DIV0;
  variable_set[2738] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h22() {
  static ExcelValue result;
  if(variable_set[2739] == 1) { return result;}
  result = DIV0;
  variable_set[2739] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i22() {
  static ExcelValue result;
  if(variable_set[2740] == 1) { return result;}
  result = DIV0;
  variable_set[2740] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j22() {
  static ExcelValue result;
  if(variable_set[2741] == 1) { return result;}
  result = DIV0;
  variable_set[2741] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k22() {
  static ExcelValue result;
  if(variable_set[2742] == 1) { return result;}
  result = DIV0;
  variable_set[2742] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l22() {
  static ExcelValue result;
  if(variable_set[2743] == 1) { return result;}
  result = DIV0;
  variable_set[2743] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m22() {
  static ExcelValue result;
  if(variable_set[2744] == 1) { return result;}
  result = DIV0;
  variable_set[2744] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n22() {
  static ExcelValue result;
  if(variable_set[2745] == 1) { return result;}
  result = DIV0;
  variable_set[2745] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q22() {
  static ExcelValue result;
  if(variable_set[2746] == 1) { return result;}
  result = DIV0;
  variable_set[2746] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r22() {
  static ExcelValue result;
  if(variable_set[2747] == 1) { return result;}
  result = DIV0;
  variable_set[2747] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s22() {
  static ExcelValue result;
  if(variable_set[2748] == 1) { return result;}
  result = DIV0;
  variable_set[2748] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t22() {
  static ExcelValue result;
  if(variable_set[2749] == 1) { return result;}
  result = DIV0;
  variable_set[2749] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u22() {
  static ExcelValue result;
  if(variable_set[2750] == 1) { return result;}
  result = DIV0;
  variable_set[2750] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v22() {
  static ExcelValue result;
  if(variable_set[2751] == 1) { return result;}
  result = DIV0;
  variable_set[2751] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w22() {
  static ExcelValue result;
  if(variable_set[2752] == 1) { return result;}
  result = DIV0;
  variable_set[2752] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x22() {
  static ExcelValue result;
  if(variable_set[2753] == 1) { return result;}
  result = DIV0;
  variable_set[2753] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y22() {
  static ExcelValue result;
  if(variable_set[2754] == 1) { return result;}
  result = DIV0;
  variable_set[2754] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c23() {
  static ExcelValue result;
  if(variable_set[2755] == 1) { return result;}
  result = C327;
  variable_set[2755] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d23() {
  static ExcelValue result;
  if(variable_set[2756] == 1) { return result;}
  result = C328;
  variable_set[2756] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f23() {
  static ExcelValue result;
  if(variable_set[2757] == 1) { return result;}
  result = DIV0;
  variable_set[2757] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g23() {
  static ExcelValue result;
  if(variable_set[2758] == 1) { return result;}
  result = DIV0;
  variable_set[2758] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h23() {
  static ExcelValue result;
  if(variable_set[2759] == 1) { return result;}
  result = DIV0;
  variable_set[2759] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i23() {
  static ExcelValue result;
  if(variable_set[2760] == 1) { return result;}
  result = DIV0;
  variable_set[2760] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j23() {
  static ExcelValue result;
  if(variable_set[2761] == 1) { return result;}
  result = DIV0;
  variable_set[2761] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k23() {
  static ExcelValue result;
  if(variable_set[2762] == 1) { return result;}
  result = DIV0;
  variable_set[2762] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l23() {
  static ExcelValue result;
  if(variable_set[2763] == 1) { return result;}
  result = DIV0;
  variable_set[2763] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m23() {
  static ExcelValue result;
  if(variable_set[2764] == 1) { return result;}
  result = DIV0;
  variable_set[2764] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n23() {
  static ExcelValue result;
  if(variable_set[2765] == 1) { return result;}
  result = DIV0;
  variable_set[2765] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q23() {
  static ExcelValue result;
  if(variable_set[2766] == 1) { return result;}
  result = DIV0;
  variable_set[2766] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r23() {
  static ExcelValue result;
  if(variable_set[2767] == 1) { return result;}
  result = DIV0;
  variable_set[2767] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s23() {
  static ExcelValue result;
  if(variable_set[2768] == 1) { return result;}
  result = DIV0;
  variable_set[2768] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t23() {
  static ExcelValue result;
  if(variable_set[2769] == 1) { return result;}
  result = DIV0;
  variable_set[2769] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u23() {
  static ExcelValue result;
  if(variable_set[2770] == 1) { return result;}
  result = DIV0;
  variable_set[2770] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v23() {
  static ExcelValue result;
  if(variable_set[2771] == 1) { return result;}
  result = DIV0;
  variable_set[2771] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w23() {
  static ExcelValue result;
  if(variable_set[2772] == 1) { return result;}
  result = DIV0;
  variable_set[2772] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x23() {
  static ExcelValue result;
  if(variable_set[2773] == 1) { return result;}
  result = DIV0;
  variable_set[2773] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y23() {
  static ExcelValue result;
  if(variable_set[2774] == 1) { return result;}
  result = DIV0;
  variable_set[2774] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c24() {
  static ExcelValue result;
  if(variable_set[2775] == 1) { return result;}
  result = C329;
  variable_set[2775] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d24() {
  static ExcelValue result;
  if(variable_set[2776] == 1) { return result;}
  result = C330;
  variable_set[2776] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f24() {
  static ExcelValue result;
  if(variable_set[2777] == 1) { return result;}
  result = DIV0;
  variable_set[2777] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g24() {
  static ExcelValue result;
  if(variable_set[2778] == 1) { return result;}
  result = DIV0;
  variable_set[2778] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h24() {
  static ExcelValue result;
  if(variable_set[2779] == 1) { return result;}
  result = DIV0;
  variable_set[2779] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i24() {
  static ExcelValue result;
  if(variable_set[2780] == 1) { return result;}
  result = DIV0;
  variable_set[2780] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j24() {
  static ExcelValue result;
  if(variable_set[2781] == 1) { return result;}
  result = DIV0;
  variable_set[2781] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k24() {
  static ExcelValue result;
  if(variable_set[2782] == 1) { return result;}
  result = DIV0;
  variable_set[2782] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l24() {
  static ExcelValue result;
  if(variable_set[2783] == 1) { return result;}
  result = DIV0;
  variable_set[2783] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m24() {
  static ExcelValue result;
  if(variable_set[2784] == 1) { return result;}
  result = DIV0;
  variable_set[2784] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n24() {
  static ExcelValue result;
  if(variable_set[2785] == 1) { return result;}
  result = DIV0;
  variable_set[2785] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q24() {
  static ExcelValue result;
  if(variable_set[2786] == 1) { return result;}
  result = DIV0;
  variable_set[2786] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r24() {
  static ExcelValue result;
  if(variable_set[2787] == 1) { return result;}
  result = DIV0;
  variable_set[2787] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s24() {
  static ExcelValue result;
  if(variable_set[2788] == 1) { return result;}
  result = DIV0;
  variable_set[2788] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t24() {
  static ExcelValue result;
  if(variable_set[2789] == 1) { return result;}
  result = DIV0;
  variable_set[2789] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u24() {
  static ExcelValue result;
  if(variable_set[2790] == 1) { return result;}
  result = DIV0;
  variable_set[2790] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v24() {
  static ExcelValue result;
  if(variable_set[2791] == 1) { return result;}
  result = DIV0;
  variable_set[2791] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w24() {
  static ExcelValue result;
  if(variable_set[2792] == 1) { return result;}
  result = DIV0;
  variable_set[2792] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x24() {
  static ExcelValue result;
  if(variable_set[2793] == 1) { return result;}
  result = DIV0;
  variable_set[2793] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y24() {
  static ExcelValue result;
  if(variable_set[2794] == 1) { return result;}
  result = DIV0;
  variable_set[2794] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c25() {
  static ExcelValue result;
  if(variable_set[2795] == 1) { return result;}
  result = C331;
  variable_set[2795] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d25() {
  static ExcelValue result;
  if(variable_set[2796] == 1) { return result;}
  result = C332;
  variable_set[2796] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f25() {
  static ExcelValue result;
  if(variable_set[2797] == 1) { return result;}
  result = DIV0;
  variable_set[2797] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g25() {
  static ExcelValue result;
  if(variable_set[2798] == 1) { return result;}
  result = DIV0;
  variable_set[2798] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h25() {
  static ExcelValue result;
  if(variable_set[2799] == 1) { return result;}
  result = DIV0;
  variable_set[2799] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i25() {
  static ExcelValue result;
  if(variable_set[2800] == 1) { return result;}
  result = DIV0;
  variable_set[2800] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j25() {
  static ExcelValue result;
  if(variable_set[2801] == 1) { return result;}
  result = DIV0;
  variable_set[2801] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k25() {
  static ExcelValue result;
  if(variable_set[2802] == 1) { return result;}
  result = DIV0;
  variable_set[2802] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l25() {
  static ExcelValue result;
  if(variable_set[2803] == 1) { return result;}
  result = DIV0;
  variable_set[2803] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m25() {
  static ExcelValue result;
  if(variable_set[2804] == 1) { return result;}
  result = DIV0;
  variable_set[2804] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n25() {
  static ExcelValue result;
  if(variable_set[2805] == 1) { return result;}
  result = DIV0;
  variable_set[2805] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q25() {
  static ExcelValue result;
  if(variable_set[2806] == 1) { return result;}
  result = DIV0;
  variable_set[2806] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r25() {
  static ExcelValue result;
  if(variable_set[2807] == 1) { return result;}
  result = DIV0;
  variable_set[2807] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s25() {
  static ExcelValue result;
  if(variable_set[2808] == 1) { return result;}
  result = DIV0;
  variable_set[2808] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t25() {
  static ExcelValue result;
  if(variable_set[2809] == 1) { return result;}
  result = DIV0;
  variable_set[2809] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u25() {
  static ExcelValue result;
  if(variable_set[2810] == 1) { return result;}
  result = DIV0;
  variable_set[2810] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v25() {
  static ExcelValue result;
  if(variable_set[2811] == 1) { return result;}
  result = DIV0;
  variable_set[2811] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w25() {
  static ExcelValue result;
  if(variable_set[2812] == 1) { return result;}
  result = DIV0;
  variable_set[2812] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x25() {
  static ExcelValue result;
  if(variable_set[2813] == 1) { return result;}
  result = DIV0;
  variable_set[2813] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y25() {
  static ExcelValue result;
  if(variable_set[2814] == 1) { return result;}
  result = DIV0;
  variable_set[2814] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c26() {
  static ExcelValue result;
  if(variable_set[2815] == 1) { return result;}
  result = C333;
  variable_set[2815] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d26() {
  static ExcelValue result;
  if(variable_set[2816] == 1) { return result;}
  result = C334;
  variable_set[2816] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f26() {
  static ExcelValue result;
  if(variable_set[2817] == 1) { return result;}
  result = DIV0;
  variable_set[2817] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g26() {
  static ExcelValue result;
  if(variable_set[2818] == 1) { return result;}
  result = DIV0;
  variable_set[2818] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h26() {
  static ExcelValue result;
  if(variable_set[2819] == 1) { return result;}
  result = DIV0;
  variable_set[2819] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i26() {
  static ExcelValue result;
  if(variable_set[2820] == 1) { return result;}
  result = DIV0;
  variable_set[2820] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j26() {
  static ExcelValue result;
  if(variable_set[2821] == 1) { return result;}
  result = DIV0;
  variable_set[2821] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k26() {
  static ExcelValue result;
  if(variable_set[2822] == 1) { return result;}
  result = DIV0;
  variable_set[2822] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l26() {
  static ExcelValue result;
  if(variable_set[2823] == 1) { return result;}
  result = DIV0;
  variable_set[2823] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m26() {
  static ExcelValue result;
  if(variable_set[2824] == 1) { return result;}
  result = DIV0;
  variable_set[2824] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n26() {
  static ExcelValue result;
  if(variable_set[2825] == 1) { return result;}
  result = DIV0;
  variable_set[2825] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q26() {
  static ExcelValue result;
  if(variable_set[2826] == 1) { return result;}
  result = DIV0;
  variable_set[2826] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r26() {
  static ExcelValue result;
  if(variable_set[2827] == 1) { return result;}
  result = DIV0;
  variable_set[2827] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s26() {
  static ExcelValue result;
  if(variable_set[2828] == 1) { return result;}
  result = DIV0;
  variable_set[2828] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t26() {
  static ExcelValue result;
  if(variable_set[2829] == 1) { return result;}
  result = DIV0;
  variable_set[2829] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u26() {
  static ExcelValue result;
  if(variable_set[2830] == 1) { return result;}
  result = DIV0;
  variable_set[2830] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v26() {
  static ExcelValue result;
  if(variable_set[2831] == 1) { return result;}
  result = DIV0;
  variable_set[2831] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w26() {
  static ExcelValue result;
  if(variable_set[2832] == 1) { return result;}
  result = DIV0;
  variable_set[2832] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x26() {
  static ExcelValue result;
  if(variable_set[2833] == 1) { return result;}
  result = DIV0;
  variable_set[2833] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y26() {
  static ExcelValue result;
  if(variable_set[2834] == 1) { return result;}
  result = DIV0;
  variable_set[2834] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c27() {
  static ExcelValue result;
  if(variable_set[2835] == 1) { return result;}
  result = C335;
  variable_set[2835] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d27() {
  static ExcelValue result;
  if(variable_set[2836] == 1) { return result;}
  result = C336;
  variable_set[2836] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f27() {
  static ExcelValue result;
  if(variable_set[2837] == 1) { return result;}
  result = DIV0;
  variable_set[2837] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g27() {
  static ExcelValue result;
  if(variable_set[2838] == 1) { return result;}
  result = DIV0;
  variable_set[2838] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h27() {
  static ExcelValue result;
  if(variable_set[2839] == 1) { return result;}
  result = DIV0;
  variable_set[2839] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i27() {
  static ExcelValue result;
  if(variable_set[2840] == 1) { return result;}
  result = DIV0;
  variable_set[2840] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j27() {
  static ExcelValue result;
  if(variable_set[2841] == 1) { return result;}
  result = DIV0;
  variable_set[2841] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k27() {
  static ExcelValue result;
  if(variable_set[2842] == 1) { return result;}
  result = DIV0;
  variable_set[2842] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l27() {
  static ExcelValue result;
  if(variable_set[2843] == 1) { return result;}
  result = DIV0;
  variable_set[2843] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m27() {
  static ExcelValue result;
  if(variable_set[2844] == 1) { return result;}
  result = DIV0;
  variable_set[2844] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n27() {
  static ExcelValue result;
  if(variable_set[2845] == 1) { return result;}
  result = DIV0;
  variable_set[2845] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q27() {
  static ExcelValue result;
  if(variable_set[2846] == 1) { return result;}
  result = DIV0;
  variable_set[2846] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r27() {
  static ExcelValue result;
  if(variable_set[2847] == 1) { return result;}
  result = DIV0;
  variable_set[2847] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s27() {
  static ExcelValue result;
  if(variable_set[2848] == 1) { return result;}
  result = DIV0;
  variable_set[2848] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t27() {
  static ExcelValue result;
  if(variable_set[2849] == 1) { return result;}
  result = DIV0;
  variable_set[2849] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u27() {
  static ExcelValue result;
  if(variable_set[2850] == 1) { return result;}
  result = DIV0;
  variable_set[2850] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v27() {
  static ExcelValue result;
  if(variable_set[2851] == 1) { return result;}
  result = DIV0;
  variable_set[2851] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w27() {
  static ExcelValue result;
  if(variable_set[2852] == 1) { return result;}
  result = DIV0;
  variable_set[2852] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x27() {
  static ExcelValue result;
  if(variable_set[2853] == 1) { return result;}
  result = DIV0;
  variable_set[2853] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y27() {
  static ExcelValue result;
  if(variable_set[2854] == 1) { return result;}
  result = DIV0;
  variable_set[2854] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c28() {
  static ExcelValue result;
  if(variable_set[2855] == 1) { return result;}
  result = C337;
  variable_set[2855] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_b33() {
  static ExcelValue result;
  if(variable_set[2856] == 1) { return result;}
  result = C338;
  variable_set[2856] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f35() {
  static ExcelValue result;
  if(variable_set[2857] == 1) { return result;}
  result = C102;
  variable_set[2857] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q35() {
  static ExcelValue result;
  if(variable_set[2858] == 1) { return result;}
  result = C195;
  variable_set[2858] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c36() {
  static ExcelValue result;
  if(variable_set[2859] == 1) { return result;}
  result = C197;
  variable_set[2859] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f36() {
  static ExcelValue result;
  if(variable_set[2860] == 1) { return result;}
  result = C106;
  variable_set[2860] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g36() {
  static ExcelValue result;
  if(variable_set[2861] == 1) { return result;}
  result = C107;
  variable_set[2861] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h36() {
  static ExcelValue result;
  if(variable_set[2862] == 1) { return result;}
  result = C108;
  variable_set[2862] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i36() {
  static ExcelValue result;
  if(variable_set[2863] == 1) { return result;}
  result = C109;
  variable_set[2863] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j36() {
  static ExcelValue result;
  if(variable_set[2864] == 1) { return result;}
  result = C110;
  variable_set[2864] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k36() {
  static ExcelValue result;
  if(variable_set[2865] == 1) { return result;}
  result = C111;
  variable_set[2865] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l36() {
  static ExcelValue result;
  if(variable_set[2866] == 1) { return result;}
  result = C112;
  variable_set[2866] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m36() {
  static ExcelValue result;
  if(variable_set[2867] == 1) { return result;}
  result = C113;
  variable_set[2867] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n36() {
  static ExcelValue result;
  if(variable_set[2868] == 1) { return result;}
  result = C114;
  variable_set[2868] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q36() {
  static ExcelValue result;
  if(variable_set[2869] == 1) { return result;}
  result = C115;
  variable_set[2869] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r36() {
  static ExcelValue result;
  if(variable_set[2870] == 1) { return result;}
  result = C199;
  variable_set[2870] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s36() {
  static ExcelValue result;
  if(variable_set[2871] == 1) { return result;}
  result = C200;
  variable_set[2871] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t36() {
  static ExcelValue result;
  if(variable_set[2872] == 1) { return result;}
  result = C201;
  variable_set[2872] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u36() {
  static ExcelValue result;
  if(variable_set[2873] == 1) { return result;}
  result = C202;
  variable_set[2873] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v36() {
  static ExcelValue result;
  if(variable_set[2874] == 1) { return result;}
  result = C203;
  variable_set[2874] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w36() {
  static ExcelValue result;
  if(variable_set[2875] == 1) { return result;}
  result = C204;
  variable_set[2875] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x36() {
  static ExcelValue result;
  if(variable_set[2876] == 1) { return result;}
  result = C205;
  variable_set[2876] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y36() {
  static ExcelValue result;
  if(variable_set[2877] == 1) { return result;}
  result = C206;
  variable_set[2877] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c37() {
  static ExcelValue result;
  if(variable_set[2878] == 1) { return result;}
  result = C339;
  variable_set[2878] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c38() {
  static ExcelValue result;
  if(variable_set[2879] == 1) { return result;}
  result = C340;
  variable_set[2879] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c39() {
  static ExcelValue result;
  if(variable_set[2880] == 1) { return result;}
  result = C341;
  variable_set[2880] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c40() {
  static ExcelValue result;
  if(variable_set[2881] == 1) { return result;}
  result = C342;
  variable_set[2881] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c41() {
  static ExcelValue result;
  if(variable_set[2882] == 1) { return result;}
  result = C343;
  variable_set[2882] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c42() {
  static ExcelValue result;
  if(variable_set[2883] == 1) { return result;}
  result = C344;
  variable_set[2883] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_b47() {
  static ExcelValue result;
  if(variable_set[2884] == 1) { return result;}
  result = C345;
  variable_set[2884] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab47() {
  static ExcelValue result;
  if(variable_set[2885] == 1) { return result;}
  result = C346;
  variable_set[2885] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab48() {
  static ExcelValue result;
  if(variable_set[2886] == 1) { return result;}
  result = C279;
  variable_set[2886] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ac48() {
  static ExcelValue result;
  if(variable_set[2887] == 1) { return result;}
  result = C347;
  variable_set[2887] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ad48() {
  static ExcelValue result;
  if(variable_set[2888] == 1) { return result;}
  result = C348;
  variable_set[2888] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ae48() {
  static ExcelValue result;
  if(variable_set[2889] == 1) { return result;}
  result = C349;
  variable_set[2889] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_af48() {
  static ExcelValue result;
  if(variable_set[2890] == 1) { return result;}
  result = C350;
  variable_set[2890] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c49() {
  static ExcelValue result;
  if(variable_set[2891] == 1) { return result;}
  result = C351;
  variable_set[2891] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y49() {
  static ExcelValue result;
  if(variable_set[2892] == 1) { return result;}
  result = C86;
  variable_set[2892] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f50() {
  static ExcelValue result;
  if(variable_set[2893] == 1) { return result;}
  result = C102;
  variable_set[2893] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q50() {
  static ExcelValue result;
  if(variable_set[2894] == 1) { return result;}
  result = C195;
  variable_set[2894] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c51() {
  static ExcelValue result;
  if(variable_set[2895] == 1) { return result;}
  result = C352;
  variable_set[2895] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d51() {
  static ExcelValue result;
  if(variable_set[2896] == 1) { return result;}
  result = C197;
  variable_set[2896] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f51() {
  static ExcelValue result;
  if(variable_set[2897] == 1) { return result;}
  result = C106;
  variable_set[2897] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g51() {
  static ExcelValue result;
  if(variable_set[2898] == 1) { return result;}
  result = C107;
  variable_set[2898] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h51() {
  static ExcelValue result;
  if(variable_set[2899] == 1) { return result;}
  result = C108;
  variable_set[2899] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i51() {
  static ExcelValue result;
  if(variable_set[2900] == 1) { return result;}
  result = C109;
  variable_set[2900] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j51() {
  static ExcelValue result;
  if(variable_set[2901] == 1) { return result;}
  result = C110;
  variable_set[2901] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k51() {
  static ExcelValue result;
  if(variable_set[2902] == 1) { return result;}
  result = C111;
  variable_set[2902] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l51() {
  static ExcelValue result;
  if(variable_set[2903] == 1) { return result;}
  result = C112;
  variable_set[2903] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m51() {
  static ExcelValue result;
  if(variable_set[2904] == 1) { return result;}
  result = C113;
  variable_set[2904] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n51() {
  static ExcelValue result;
  if(variable_set[2905] == 1) { return result;}
  result = C114;
  variable_set[2905] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q51() {
  static ExcelValue result;
  if(variable_set[2906] == 1) { return result;}
  result = C115;
  variable_set[2906] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r51() {
  static ExcelValue result;
  if(variable_set[2907] == 1) { return result;}
  result = C199;
  variable_set[2907] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s51() {
  static ExcelValue result;
  if(variable_set[2908] == 1) { return result;}
  result = C200;
  variable_set[2908] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t51() {
  static ExcelValue result;
  if(variable_set[2909] == 1) { return result;}
  result = C201;
  variable_set[2909] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u51() {
  static ExcelValue result;
  if(variable_set[2910] == 1) { return result;}
  result = C202;
  variable_set[2910] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v51() {
  static ExcelValue result;
  if(variable_set[2911] == 1) { return result;}
  result = C203;
  variable_set[2911] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w51() {
  static ExcelValue result;
  if(variable_set[2912] == 1) { return result;}
  result = C204;
  variable_set[2912] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x51() {
  static ExcelValue result;
  if(variable_set[2913] == 1) { return result;}
  result = C205;
  variable_set[2913] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y51() {
  static ExcelValue result;
  if(variable_set[2914] == 1) { return result;}
  result = C206;
  variable_set[2914] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c52() {
  static ExcelValue result;
  if(variable_set[2915] == 1) { return result;}
  result = C353;
  variable_set[2915] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d52() {
  static ExcelValue result;
  if(variable_set[2916] == 1) { return result;}
  result = C354;
  variable_set[2916] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c53() {
  static ExcelValue result;
  if(variable_set[2917] == 1) { return result;}
  result = C355;
  variable_set[2917] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d53() {
  static ExcelValue result;
  if(variable_set[2918] == 1) { return result;}
  result = C356;
  variable_set[2918] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c54() {
  static ExcelValue result;
  if(variable_set[2919] == 1) { return result;}
  result = C357;
  variable_set[2919] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d54() {
  static ExcelValue result;
  if(variable_set[2920] == 1) { return result;}
  result = C358;
  variable_set[2920] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c55() {
  static ExcelValue result;
  if(variable_set[2921] == 1) { return result;}
  result = C359;
  variable_set[2921] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d55() {
  static ExcelValue result;
  if(variable_set[2922] == 1) { return result;}
  result = C360;
  variable_set[2922] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c56() {
  static ExcelValue result;
  if(variable_set[2923] == 1) { return result;}
  result = C361;
  variable_set[2923] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d56() {
  static ExcelValue result;
  if(variable_set[2924] == 1) { return result;}
  result = C362;
  variable_set[2924] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c57() {
  static ExcelValue result;
  if(variable_set[2925] == 1) { return result;}
  result = C363;
  variable_set[2925] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d57() {
  static ExcelValue result;
  if(variable_set[2926] == 1) { return result;}
  result = C364;
  variable_set[2926] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c58() {
  static ExcelValue result;
  if(variable_set[2927] == 1) { return result;}
  result = C365;
  variable_set[2927] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d58() {
  static ExcelValue result;
  if(variable_set[2928] == 1) { return result;}
  result = C366;
  variable_set[2928] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c59() {
  static ExcelValue result;
  if(variable_set[2929] == 1) { return result;}
  result = C367;
  variable_set[2929] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d59() {
  static ExcelValue result;
  if(variable_set[2930] == 1) { return result;}
  result = C368;
  variable_set[2930] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c60() {
  static ExcelValue result;
  if(variable_set[2931] == 1) { return result;}
  result = C369;
  variable_set[2931] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d60() {
  static ExcelValue result;
  if(variable_set[2932] == 1) { return result;}
  result = C370;
  variable_set[2932] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c61() {
  static ExcelValue result;
  if(variable_set[2933] == 1) { return result;}
  result = C371;
  variable_set[2933] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d61() {
  static ExcelValue result;
  if(variable_set[2934] == 1) { return result;}
  result = C372;
  variable_set[2934] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c62() {
  static ExcelValue result;
  if(variable_set[2935] == 1) { return result;}
  result = C373;
  variable_set[2935] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d62() {
  static ExcelValue result;
  if(variable_set[2936] == 1) { return result;}
  result = C374;
  variable_set[2936] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c63() {
  static ExcelValue result;
  if(variable_set[2937] == 1) { return result;}
  result = C375;
  variable_set[2937] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d63() {
  static ExcelValue result;
  if(variable_set[2938] == 1) { return result;}
  result = C376;
  variable_set[2938] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c64() {
  static ExcelValue result;
  if(variable_set[2939] == 1) { return result;}
  result = C377;
  variable_set[2939] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d64() {
  static ExcelValue result;
  if(variable_set[2940] == 1) { return result;}
  result = C378;
  variable_set[2940] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c65() {
  static ExcelValue result;
  if(variable_set[2941] == 1) { return result;}
  result = C379;
  variable_set[2941] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d65() {
  static ExcelValue result;
  if(variable_set[2942] == 1) { return result;}
  result = C380;
  variable_set[2942] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c66() {
  static ExcelValue result;
  if(variable_set[2943] == 1) { return result;}
  result = C381;
  variable_set[2943] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d66() {
  static ExcelValue result;
  if(variable_set[2944] == 1) { return result;}
  result = C382;
  variable_set[2944] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c67() {
  static ExcelValue result;
  if(variable_set[2945] == 1) { return result;}
  result = C383;
  variable_set[2945] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d67() {
  static ExcelValue result;
  if(variable_set[2946] == 1) { return result;}
  result = C384;
  variable_set[2946] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c68() {
  static ExcelValue result;
  if(variable_set[2947] == 1) { return result;}
  result = C385;
  variable_set[2947] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d68() {
  static ExcelValue result;
  if(variable_set[2948] == 1) { return result;}
  result = C386;
  variable_set[2948] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c69() {
  static ExcelValue result;
  if(variable_set[2949] == 1) { return result;}
  result = C387;
  variable_set[2949] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d69() {
  static ExcelValue result;
  if(variable_set[2950] == 1) { return result;}
  result = C388;
  variable_set[2950] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c70() {
  static ExcelValue result;
  if(variable_set[2951] == 1) { return result;}
  result = C389;
  variable_set[2951] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d70() {
  static ExcelValue result;
  if(variable_set[2952] == 1) { return result;}
  result = C390;
  variable_set[2952] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c71() {
  static ExcelValue result;
  if(variable_set[2953] == 1) { return result;}
  result = C391;
  variable_set[2953] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d71() {
  static ExcelValue result;
  if(variable_set[2954] == 1) { return result;}
  result = C392;
  variable_set[2954] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c72() {
  static ExcelValue result;
  if(variable_set[2955] == 1) { return result;}
  result = C393;
  variable_set[2955] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d72() {
  static ExcelValue result;
  if(variable_set[2956] == 1) { return result;}
  result = C394;
  variable_set[2956] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c73() {
  static ExcelValue result;
  if(variable_set[2957] == 1) { return result;}
  result = C395;
  variable_set[2957] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d73() {
  static ExcelValue result;
  if(variable_set[2958] == 1) { return result;}
  result = C396;
  variable_set[2958] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c74() {
  static ExcelValue result;
  if(variable_set[2959] == 1) { return result;}
  result = C397;
  variable_set[2959] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d74() {
  static ExcelValue result;
  if(variable_set[2960] == 1) { return result;}
  result = C398;
  variable_set[2960] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c75() {
  static ExcelValue result;
  if(variable_set[2961] == 1) { return result;}
  result = C399;
  variable_set[2961] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d75() {
  static ExcelValue result;
  if(variable_set[2962] == 1) { return result;}
  result = C400;
  variable_set[2962] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c76() {
  static ExcelValue result;
  if(variable_set[2963] == 1) { return result;}
  result = C401;
  variable_set[2963] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d76() {
  static ExcelValue result;
  if(variable_set[2964] == 1) { return result;}
  result = C402;
  variable_set[2964] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c77() {
  static ExcelValue result;
  if(variable_set[2965] == 1) { return result;}
  result = C403;
  variable_set[2965] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d77() {
  static ExcelValue result;
  if(variable_set[2966] == 1) { return result;}
  result = C404;
  variable_set[2966] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c78() {
  static ExcelValue result;
  if(variable_set[2967] == 1) { return result;}
  result = NAME;
  variable_set[2967] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d78() {
  static ExcelValue result;
  if(variable_set[2968] == 1) { return result;}
  result = NAME;
  variable_set[2968] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c79() {
  static ExcelValue result;
  if(variable_set[2969] == 1) { return result;}
  result = NAME;
  variable_set[2969] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d79() {
  static ExcelValue result;
  if(variable_set[2970] == 1) { return result;}
  result = NAME;
  variable_set[2970] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c80() {
  static ExcelValue result;
  if(variable_set[2971] == 1) { return result;}
  result = NAME;
  variable_set[2971] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d80() {
  static ExcelValue result;
  if(variable_set[2972] == 1) { return result;}
  result = NAME;
  variable_set[2972] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c81() {
  static ExcelValue result;
  if(variable_set[2973] == 1) { return result;}
  result = C405;
  variable_set[2973] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d81() {
  static ExcelValue result;
  if(variable_set[2974] == 1) { return result;}
  result = C406;
  variable_set[2974] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c82() {
  static ExcelValue result;
  if(variable_set[2975] == 1) { return result;}
  result = C407;
  variable_set[2975] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d82() {
  static ExcelValue result;
  if(variable_set[2976] == 1) { return result;}
  result = C408;
  variable_set[2976] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c83() {
  static ExcelValue result;
  if(variable_set[2977] == 1) { return result;}
  result = C409;
  variable_set[2977] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d83() {
  static ExcelValue result;
  if(variable_set[2978] == 1) { return result;}
  result = C410;
  variable_set[2978] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c84() {
  static ExcelValue result;
  if(variable_set[2979] == 1) { return result;}
  result = C411;
  variable_set[2979] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d84() {
  static ExcelValue result;
  if(variable_set[2980] == 1) { return result;}
  result = C412;
  variable_set[2980] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c85() {
  static ExcelValue result;
  if(variable_set[2981] == 1) { return result;}
  result = C413;
  variable_set[2981] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d85() {
  static ExcelValue result;
  if(variable_set[2982] == 1) { return result;}
  result = C242;
  variable_set[2982] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c86() {
  static ExcelValue result;
  if(variable_set[2983] == 1) { return result;}
  result = C414;
  variable_set[2983] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d86() {
  static ExcelValue result;
  if(variable_set[2984] == 1) { return result;}
  result = C244;
  variable_set[2984] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c87() {
  static ExcelValue result;
  if(variable_set[2985] == 1) { return result;}
  result = C415;
  variable_set[2985] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d87() {
  static ExcelValue result;
  if(variable_set[2986] == 1) { return result;}
  result = C416;
  variable_set[2986] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c88() {
  static ExcelValue result;
  if(variable_set[2987] == 1) { return result;}
  result = C417;
  variable_set[2987] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d88() {
  static ExcelValue result;
  if(variable_set[2988] == 1) { return result;}
  result = C418;
  variable_set[2988] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c89() {
  static ExcelValue result;
  if(variable_set[2989] == 1) { return result;}
  result = C419;
  variable_set[2989] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d89() {
  static ExcelValue result;
  if(variable_set[2990] == 1) { return result;}
  result = C246;
  variable_set[2990] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c90() {
  static ExcelValue result;
  if(variable_set[2991] == 1) { return result;}
  result = C420;
  variable_set[2991] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d90() {
  static ExcelValue result;
  if(variable_set[2992] == 1) { return result;}
  result = C421;
  variable_set[2992] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c91() {
  static ExcelValue result;
  if(variable_set[2993] == 1) { return result;}
  result = C422;
  variable_set[2993] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d91() {
  static ExcelValue result;
  if(variable_set[2994] == 1) { return result;}
  result = C423;
  variable_set[2994] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c92() {
  static ExcelValue result;
  if(variable_set[2995] == 1) { return result;}
  result = C424;
  variable_set[2995] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d92() {
  static ExcelValue result;
  if(variable_set[2996] == 1) { return result;}
  result = C425;
  variable_set[2996] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c93() {
  static ExcelValue result;
  if(variable_set[2997] == 1) { return result;}
  result = C426;
  variable_set[2997] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d93() {
  static ExcelValue result;
  if(variable_set[2998] == 1) { return result;}
  result = C427;
  variable_set[2998] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c94() {
  static ExcelValue result;
  if(variable_set[2999] == 1) { return result;}
  result = C428;
  variable_set[2999] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d94() {
  static ExcelValue result;
  if(variable_set[3000] == 1) { return result;}
  result = C429;
  variable_set[3000] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c95() {
  static ExcelValue result;
  if(variable_set[3001] == 1) { return result;}
  result = C430;
  variable_set[3001] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d95() {
  static ExcelValue result;
  if(variable_set[3002] == 1) { return result;}
  result = C431;
  variable_set[3002] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c96() {
  static ExcelValue result;
  if(variable_set[3003] == 1) { return result;}
  result = C432;
  variable_set[3003] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d96() {
  static ExcelValue result;
  if(variable_set[3004] == 1) { return result;}
  result = C433;
  variable_set[3004] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c97() {
  static ExcelValue result;
  if(variable_set[3005] == 1) { return result;}
  result = C434;
  variable_set[3005] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f97() {
  static ExcelValue result;
  if(variable_set[3006] == 1) { return result;}
  result = C435;
  variable_set[3006] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g97() {
  static ExcelValue result;
  if(variable_set[3007] == 1) { return result;}
  result = C436;
  variable_set[3007] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h97() {
  static ExcelValue result;
  if(variable_set[3008] == 1) { return result;}
  result = C437;
  variable_set[3008] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i97() {
  static ExcelValue result;
  if(variable_set[3009] == 1) { return result;}
  result = C438;
  variable_set[3009] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j97() {
  static ExcelValue result;
  if(variable_set[3010] == 1) { return result;}
  result = C439;
  variable_set[3010] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k97() {
  static ExcelValue result;
  if(variable_set[3011] == 1) { return result;}
  result = C440;
  variable_set[3011] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l97() {
  static ExcelValue result;
  if(variable_set[3012] == 1) { return result;}
  result = C441;
  variable_set[3012] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m97() {
  static ExcelValue result;
  if(variable_set[3013] == 1) { return result;}
  result = C442;
  variable_set[3013] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n97() {
  static ExcelValue result;
  if(variable_set[3014] == 1) { return result;}
  result = C443;
  variable_set[3014] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab97() {
  static ExcelValue result;
  if(variable_set[3015] == 1) { return result;}
  result = C444;
  variable_set[3015] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ac97() {
  static ExcelValue result;
  if(variable_set[3016] == 1) { return result;}
  result = C445;
  variable_set[3016] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ad97() {
  static ExcelValue result;
  if(variable_set[3017] == 1) { return result;}
  result = C446;
  variable_set[3017] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ae97() {
  static ExcelValue result;
  if(variable_set[3018] == 1) { return result;}
  result = C447;
  variable_set[3018] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_af97() {
  static ExcelValue result;
  if(variable_set[3019] == 1) { return result;}
  result = C448;
  variable_set[3019] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_b103() {
  static ExcelValue result;
  if(variable_set[3020] == 1) { return result;}
  result = C449;
  variable_set[3020] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab103() {
  static ExcelValue result;
  if(variable_set[3021] == 1) { return result;}
  result = C346;
  variable_set[3021] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab104() {
  static ExcelValue result;
  if(variable_set[3022] == 1) { return result;}
  result = C279;
  variable_set[3022] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ac104() {
  static ExcelValue result;
  if(variable_set[3023] == 1) { return result;}
  result = C347;
  variable_set[3023] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ad104() {
  static ExcelValue result;
  if(variable_set[3024] == 1) { return result;}
  result = C348;
  variable_set[3024] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ae104() {
  static ExcelValue result;
  if(variable_set[3025] == 1) { return result;}
  result = C349;
  variable_set[3025] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_af104() {
  static ExcelValue result;
  if(variable_set[3026] == 1) { return result;}
  result = C350;
  variable_set[3026] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c105() {
  static ExcelValue result;
  if(variable_set[3027] == 1) { return result;}
  result = C351;
  variable_set[3027] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y105() {
  static ExcelValue result;
  if(variable_set[3028] == 1) { return result;}
  result = C86;
  variable_set[3028] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f106() {
  static ExcelValue result;
  if(variable_set[3029] == 1) { return result;}
  result = C102;
  variable_set[3029] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q106() {
  static ExcelValue result;
  if(variable_set[3030] == 1) { return result;}
  result = C195;
  variable_set[3030] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c107() {
  static ExcelValue result;
  if(variable_set[3031] == 1) { return result;}
  result = C352;
  variable_set[3031] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d107() {
  static ExcelValue result;
  if(variable_set[3032] == 1) { return result;}
  result = C197;
  variable_set[3032] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f107() {
  static ExcelValue result;
  if(variable_set[3033] == 1) { return result;}
  result = C106;
  variable_set[3033] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g107() {
  static ExcelValue result;
  if(variable_set[3034] == 1) { return result;}
  result = C107;
  variable_set[3034] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h107() {
  static ExcelValue result;
  if(variable_set[3035] == 1) { return result;}
  result = C108;
  variable_set[3035] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i107() {
  static ExcelValue result;
  if(variable_set[3036] == 1) { return result;}
  result = C109;
  variable_set[3036] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j107() {
  static ExcelValue result;
  if(variable_set[3037] == 1) { return result;}
  result = C110;
  variable_set[3037] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k107() {
  static ExcelValue result;
  if(variable_set[3038] == 1) { return result;}
  result = C111;
  variable_set[3038] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l107() {
  static ExcelValue result;
  if(variable_set[3039] == 1) { return result;}
  result = C112;
  variable_set[3039] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m107() {
  static ExcelValue result;
  if(variable_set[3040] == 1) { return result;}
  result = C113;
  variable_set[3040] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n107() {
  static ExcelValue result;
  if(variable_set[3041] == 1) { return result;}
  result = C114;
  variable_set[3041] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q107() {
  static ExcelValue result;
  if(variable_set[3042] == 1) { return result;}
  result = C115;
  variable_set[3042] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r107() {
  static ExcelValue result;
  if(variable_set[3043] == 1) { return result;}
  result = C199;
  variable_set[3043] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s107() {
  static ExcelValue result;
  if(variable_set[3044] == 1) { return result;}
  result = C200;
  variable_set[3044] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t107() {
  static ExcelValue result;
  if(variable_set[3045] == 1) { return result;}
  result = C201;
  variable_set[3045] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u107() {
  static ExcelValue result;
  if(variable_set[3046] == 1) { return result;}
  result = C202;
  variable_set[3046] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v107() {
  static ExcelValue result;
  if(variable_set[3047] == 1) { return result;}
  result = C203;
  variable_set[3047] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w107() {
  static ExcelValue result;
  if(variable_set[3048] == 1) { return result;}
  result = C204;
  variable_set[3048] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x107() {
  static ExcelValue result;
  if(variable_set[3049] == 1) { return result;}
  result = C205;
  variable_set[3049] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y107() {
  static ExcelValue result;
  if(variable_set[3050] == 1) { return result;}
  result = C206;
  variable_set[3050] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c108() {
  static ExcelValue result;
  if(variable_set[3051] == 1) { return result;}
  result = C450;
  variable_set[3051] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d108() {
  static ExcelValue result;
  if(variable_set[3052] == 1) { return result;}
  result = C451;
  variable_set[3052] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c109() {
  static ExcelValue result;
  if(variable_set[3053] == 1) { return result;}
  result = C452;
  variable_set[3053] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d109() {
  static ExcelValue result;
  if(variable_set[3054] == 1) { return result;}
  result = C451;
  variable_set[3054] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c110() {
  static ExcelValue result;
  if(variable_set[3055] == 1) { return result;}
  result = C453;
  variable_set[3055] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d110() {
  static ExcelValue result;
  if(variable_set[3056] == 1) { return result;}
  result = C451;
  variable_set[3056] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c111() {
  static ExcelValue result;
  if(variable_set[3057] == 1) { return result;}
  result = C454;
  variable_set[3057] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d111() {
  static ExcelValue result;
  if(variable_set[3058] == 1) { return result;}
  result = C451;
  variable_set[3058] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c112() {
  static ExcelValue result;
  if(variable_set[3059] == 1) { return result;}
  result = C455;
  variable_set[3059] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d112() {
  static ExcelValue result;
  if(variable_set[3060] == 1) { return result;}
  result = C451;
  variable_set[3060] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c113() {
  static ExcelValue result;
  if(variable_set[3061] == 1) { return result;}
  result = C456;
  variable_set[3061] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d113() {
  static ExcelValue result;
  if(variable_set[3062] == 1) { return result;}
  result = C457;
  variable_set[3062] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c114() {
  static ExcelValue result;
  if(variable_set[3063] == 1) { return result;}
  result = C458;
  variable_set[3063] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d114() {
  static ExcelValue result;
  if(variable_set[3064] == 1) { return result;}
  result = C457;
  variable_set[3064] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c115() {
  static ExcelValue result;
  if(variable_set[3065] == 1) { return result;}
  result = C459;
  variable_set[3065] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d115() {
  static ExcelValue result;
  if(variable_set[3066] == 1) { return result;}
  result = C457;
  variable_set[3066] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c116() {
  static ExcelValue result;
  if(variable_set[3067] == 1) { return result;}
  result = C460;
  variable_set[3067] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d116() {
  static ExcelValue result;
  if(variable_set[3068] == 1) { return result;}
  result = C457;
  variable_set[3068] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c117() {
  static ExcelValue result;
  if(variable_set[3069] == 1) { return result;}
  result = C461;
  variable_set[3069] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d117() {
  static ExcelValue result;
  if(variable_set[3070] == 1) { return result;}
  result = C457;
  variable_set[3070] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c118() {
  static ExcelValue result;
  if(variable_set[3071] == 1) { return result;}
  result = C462;
  variable_set[3071] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d118() {
  static ExcelValue result;
  if(variable_set[3072] == 1) { return result;}
  result = C463;
  variable_set[3072] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c119() {
  static ExcelValue result;
  if(variable_set[3073] == 1) { return result;}
  result = C464;
  variable_set[3073] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d119() {
  static ExcelValue result;
  if(variable_set[3074] == 1) { return result;}
  result = C463;
  variable_set[3074] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c120() {
  static ExcelValue result;
  if(variable_set[3075] == 1) { return result;}
  result = C465;
  variable_set[3075] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d120() {
  static ExcelValue result;
  if(variable_set[3076] == 1) { return result;}
  result = C463;
  variable_set[3076] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c121() {
  static ExcelValue result;
  if(variable_set[3077] == 1) { return result;}
  result = C466;
  variable_set[3077] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d121() {
  static ExcelValue result;
  if(variable_set[3078] == 1) { return result;}
  result = C463;
  variable_set[3078] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c122() {
  static ExcelValue result;
  if(variable_set[3079] == 1) { return result;}
  result = C467;
  variable_set[3079] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d122() {
  static ExcelValue result;
  if(variable_set[3080] == 1) { return result;}
  result = C463;
  variable_set[3080] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c123() {
  static ExcelValue result;
  if(variable_set[3081] == 1) { return result;}
  result = C468;
  variable_set[3081] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d123() {
  static ExcelValue result;
  if(variable_set[3082] == 1) { return result;}
  result = C469;
  variable_set[3082] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c124() {
  static ExcelValue result;
  if(variable_set[3083] == 1) { return result;}
  result = C470;
  variable_set[3083] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d124() {
  static ExcelValue result;
  if(variable_set[3084] == 1) { return result;}
  result = C469;
  variable_set[3084] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c125() {
  static ExcelValue result;
  if(variable_set[3085] == 1) { return result;}
  result = C471;
  variable_set[3085] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d125() {
  static ExcelValue result;
  if(variable_set[3086] == 1) { return result;}
  result = C469;
  variable_set[3086] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c126() {
  static ExcelValue result;
  if(variable_set[3087] == 1) { return result;}
  result = C472;
  variable_set[3087] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d126() {
  static ExcelValue result;
  if(variable_set[3088] == 1) { return result;}
  result = C469;
  variable_set[3088] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c127() {
  static ExcelValue result;
  if(variable_set[3089] == 1) { return result;}
  result = C473;
  variable_set[3089] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d127() {
  static ExcelValue result;
  if(variable_set[3090] == 1) { return result;}
  result = C469;
  variable_set[3090] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c128() {
  static ExcelValue result;
  if(variable_set[3091] == 1) { return result;}
  result = C474;
  variable_set[3091] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d128() {
  static ExcelValue result;
  if(variable_set[3092] == 1) { return result;}
  result = C475;
  variable_set[3092] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c129() {
  static ExcelValue result;
  if(variable_set[3093] == 1) { return result;}
  result = C476;
  variable_set[3093] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d129() {
  static ExcelValue result;
  if(variable_set[3094] == 1) { return result;}
  result = C475;
  variable_set[3094] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c130() {
  static ExcelValue result;
  if(variable_set[3095] == 1) { return result;}
  result = C477;
  variable_set[3095] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d130() {
  static ExcelValue result;
  if(variable_set[3096] == 1) { return result;}
  result = C475;
  variable_set[3096] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c131() {
  static ExcelValue result;
  if(variable_set[3097] == 1) { return result;}
  result = C478;
  variable_set[3097] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d131() {
  static ExcelValue result;
  if(variable_set[3098] == 1) { return result;}
  result = C475;
  variable_set[3098] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c132() {
  static ExcelValue result;
  if(variable_set[3099] == 1) { return result;}
  result = C479;
  variable_set[3099] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d132() {
  static ExcelValue result;
  if(variable_set[3100] == 1) { return result;}
  result = C475;
  variable_set[3100] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c133() {
  static ExcelValue result;
  if(variable_set[3101] == 1) { return result;}
  result = C480;
  variable_set[3101] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d133() {
  static ExcelValue result;
  if(variable_set[3102] == 1) { return result;}
  result = C481;
  variable_set[3102] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c134() {
  static ExcelValue result;
  if(variable_set[3103] == 1) { return result;}
  result = C482;
  variable_set[3103] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d134() {
  static ExcelValue result;
  if(variable_set[3104] == 1) { return result;}
  result = C481;
  variable_set[3104] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c135() {
  static ExcelValue result;
  if(variable_set[3105] == 1) { return result;}
  result = C483;
  variable_set[3105] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d135() {
  static ExcelValue result;
  if(variable_set[3106] == 1) { return result;}
  result = C481;
  variable_set[3106] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c136() {
  static ExcelValue result;
  if(variable_set[3107] == 1) { return result;}
  result = C484;
  variable_set[3107] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d136() {
  static ExcelValue result;
  if(variable_set[3108] == 1) { return result;}
  result = C481;
  variable_set[3108] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c137() {
  static ExcelValue result;
  if(variable_set[3109] == 1) { return result;}
  result = C485;
  variable_set[3109] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d137() {
  static ExcelValue result;
  if(variable_set[3110] == 1) { return result;}
  result = C481;
  variable_set[3110] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c138() {
  static ExcelValue result;
  if(variable_set[3111] == 1) { return result;}
  result = C486;
  variable_set[3111] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d138() {
  static ExcelValue result;
  if(variable_set[3112] == 1) { return result;}
  result = C487;
  variable_set[3112] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c139() {
  static ExcelValue result;
  if(variable_set[3113] == 1) { return result;}
  result = C488;
  variable_set[3113] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d139() {
  static ExcelValue result;
  if(variable_set[3114] == 1) { return result;}
  result = C487;
  variable_set[3114] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c140() {
  static ExcelValue result;
  if(variable_set[3115] == 1) { return result;}
  result = C489;
  variable_set[3115] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d140() {
  static ExcelValue result;
  if(variable_set[3116] == 1) { return result;}
  result = C487;
  variable_set[3116] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c141() {
  static ExcelValue result;
  if(variable_set[3117] == 1) { return result;}
  result = C490;
  variable_set[3117] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d141() {
  static ExcelValue result;
  if(variable_set[3118] == 1) { return result;}
  result = C487;
  variable_set[3118] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c142() {
  static ExcelValue result;
  if(variable_set[3119] == 1) { return result;}
  result = C491;
  variable_set[3119] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d142() {
  static ExcelValue result;
  if(variable_set[3120] == 1) { return result;}
  result = C487;
  variable_set[3120] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c143() {
  static ExcelValue result;
  if(variable_set[3121] == 1) { return result;}
  result = C492;
  variable_set[3121] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d143() {
  static ExcelValue result;
  if(variable_set[3122] == 1) { return result;}
  result = C493;
  variable_set[3122] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c144() {
  static ExcelValue result;
  if(variable_set[3123] == 1) { return result;}
  result = C494;
  variable_set[3123] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d144() {
  static ExcelValue result;
  if(variable_set[3124] == 1) { return result;}
  result = C493;
  variable_set[3124] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c145() {
  static ExcelValue result;
  if(variable_set[3125] == 1) { return result;}
  result = C495;
  variable_set[3125] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d145() {
  static ExcelValue result;
  if(variable_set[3126] == 1) { return result;}
  result = C493;
  variable_set[3126] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c146() {
  static ExcelValue result;
  if(variable_set[3127] == 1) { return result;}
  result = C496;
  variable_set[3127] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d146() {
  static ExcelValue result;
  if(variable_set[3128] == 1) { return result;}
  result = C493;
  variable_set[3128] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c147() {
  static ExcelValue result;
  if(variable_set[3129] == 1) { return result;}
  result = C497;
  variable_set[3129] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d147() {
  static ExcelValue result;
  if(variable_set[3130] == 1) { return result;}
  result = C493;
  variable_set[3130] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c148() {
  static ExcelValue result;
  if(variable_set[3131] == 1) { return result;}
  result = C498;
  variable_set[3131] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d148() {
  static ExcelValue result;
  if(variable_set[3132] == 1) { return result;}
  result = NA;
  variable_set[3132] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c149() {
  static ExcelValue result;
  if(variable_set[3133] == 1) { return result;}
  result = C498;
  variable_set[3133] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d149() {
  static ExcelValue result;
  if(variable_set[3134] == 1) { return result;}
  result = NA;
  variable_set[3134] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c150() {
  static ExcelValue result;
  if(variable_set[3135] == 1) { return result;}
  result = C498;
  variable_set[3135] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d150() {
  static ExcelValue result;
  if(variable_set[3136] == 1) { return result;}
  result = NA;
  variable_set[3136] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c151() {
  static ExcelValue result;
  if(variable_set[3137] == 1) { return result;}
  result = C498;
  variable_set[3137] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d151() {
  static ExcelValue result;
  if(variable_set[3138] == 1) { return result;}
  result = NA;
  variable_set[3138] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c152() {
  static ExcelValue result;
  if(variable_set[3139] == 1) { return result;}
  result = C498;
  variable_set[3139] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d152() {
  static ExcelValue result;
  if(variable_set[3140] == 1) { return result;}
  result = NA;
  variable_set[3140] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c153() {
  static ExcelValue result;
  if(variable_set[3141] == 1) { return result;}
  result = C498;
  variable_set[3141] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f153() {
  static ExcelValue result;
  if(variable_set[3142] == 1) { return result;}
  result = C435;
  variable_set[3142] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g153() {
  static ExcelValue result;
  if(variable_set[3143] == 1) { return result;}
  result = C436;
  variable_set[3143] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h153() {
  static ExcelValue result;
  if(variable_set[3144] == 1) { return result;}
  result = C437;
  variable_set[3144] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i153() {
  static ExcelValue result;
  if(variable_set[3145] == 1) { return result;}
  result = C438;
  variable_set[3145] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j153() {
  static ExcelValue result;
  if(variable_set[3146] == 1) { return result;}
  result = C439;
  variable_set[3146] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k153() {
  static ExcelValue result;
  if(variable_set[3147] == 1) { return result;}
  result = C440;
  variable_set[3147] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l153() {
  static ExcelValue result;
  if(variable_set[3148] == 1) { return result;}
  result = C441;
  variable_set[3148] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m153() {
  static ExcelValue result;
  if(variable_set[3149] == 1) { return result;}
  result = C442;
  variable_set[3149] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n153() {
  static ExcelValue result;
  if(variable_set[3150] == 1) { return result;}
  result = C443;
  variable_set[3150] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab153() {
  static ExcelValue result;
  if(variable_set[3151] == 1) { return result;}
  result = C444;
  variable_set[3151] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ac153() {
  static ExcelValue result;
  if(variable_set[3152] == 1) { return result;}
  result = C445;
  variable_set[3152] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ad153() {
  static ExcelValue result;
  if(variable_set[3153] == 1) { return result;}
  result = C446;
  variable_set[3153] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ae153() {
  static ExcelValue result;
  if(variable_set[3154] == 1) { return result;}
  result = C447;
  variable_set[3154] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_af153() {
  static ExcelValue result;
  if(variable_set[3155] == 1) { return result;}
  result = C448;
  variable_set[3155] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_b158() {
  static ExcelValue result;
  if(variable_set[3156] == 1) { return result;}
  result = C499;
  variable_set[3156] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab158() {
  static ExcelValue result;
  if(variable_set[3157] == 1) { return result;}
  result = C346;
  variable_set[3157] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab159() {
  static ExcelValue result;
  if(variable_set[3158] == 1) { return result;}
  result = C279;
  variable_set[3158] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ac159() {
  static ExcelValue result;
  if(variable_set[3159] == 1) { return result;}
  result = C347;
  variable_set[3159] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ad159() {
  static ExcelValue result;
  if(variable_set[3160] == 1) { return result;}
  result = C348;
  variable_set[3160] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ae159() {
  static ExcelValue result;
  if(variable_set[3161] == 1) { return result;}
  result = C349;
  variable_set[3161] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_af159() {
  static ExcelValue result;
  if(variable_set[3162] == 1) { return result;}
  result = C350;
  variable_set[3162] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c160() {
  static ExcelValue result;
  if(variable_set[3163] == 1) { return result;}
  result = C351;
  variable_set[3163] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y160() {
  static ExcelValue result;
  if(variable_set[3164] == 1) { return result;}
  result = C86;
  variable_set[3164] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f161() {
  static ExcelValue result;
  if(variable_set[3165] == 1) { return result;}
  result = C102;
  variable_set[3165] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q161() {
  static ExcelValue result;
  if(variable_set[3166] == 1) { return result;}
  result = C195;
  variable_set[3166] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c162() {
  static ExcelValue result;
  if(variable_set[3167] == 1) { return result;}
  result = C352;
  variable_set[3167] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d162() {
  static ExcelValue result;
  if(variable_set[3168] == 1) { return result;}
  result = C197;
  variable_set[3168] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f162() {
  static ExcelValue result;
  if(variable_set[3169] == 1) { return result;}
  result = C106;
  variable_set[3169] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g162() {
  static ExcelValue result;
  if(variable_set[3170] == 1) { return result;}
  result = C107;
  variable_set[3170] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h162() {
  static ExcelValue result;
  if(variable_set[3171] == 1) { return result;}
  result = C108;
  variable_set[3171] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i162() {
  static ExcelValue result;
  if(variable_set[3172] == 1) { return result;}
  result = C109;
  variable_set[3172] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j162() {
  static ExcelValue result;
  if(variable_set[3173] == 1) { return result;}
  result = C110;
  variable_set[3173] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k162() {
  static ExcelValue result;
  if(variable_set[3174] == 1) { return result;}
  result = C111;
  variable_set[3174] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l162() {
  static ExcelValue result;
  if(variable_set[3175] == 1) { return result;}
  result = C112;
  variable_set[3175] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m162() {
  static ExcelValue result;
  if(variable_set[3176] == 1) { return result;}
  result = C113;
  variable_set[3176] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n162() {
  static ExcelValue result;
  if(variable_set[3177] == 1) { return result;}
  result = C114;
  variable_set[3177] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_q162() {
  static ExcelValue result;
  if(variable_set[3178] == 1) { return result;}
  result = C115;
  variable_set[3178] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_r162() {
  static ExcelValue result;
  if(variable_set[3179] == 1) { return result;}
  result = C199;
  variable_set[3179] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_s162() {
  static ExcelValue result;
  if(variable_set[3180] == 1) { return result;}
  result = C200;
  variable_set[3180] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_t162() {
  static ExcelValue result;
  if(variable_set[3181] == 1) { return result;}
  result = C201;
  variable_set[3181] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_u162() {
  static ExcelValue result;
  if(variable_set[3182] == 1) { return result;}
  result = C202;
  variable_set[3182] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_v162() {
  static ExcelValue result;
  if(variable_set[3183] == 1) { return result;}
  result = C203;
  variable_set[3183] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_w162() {
  static ExcelValue result;
  if(variable_set[3184] == 1) { return result;}
  result = C204;
  variable_set[3184] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_x162() {
  static ExcelValue result;
  if(variable_set[3185] == 1) { return result;}
  result = C205;
  variable_set[3185] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_y162() {
  static ExcelValue result;
  if(variable_set[3186] == 1) { return result;}
  result = C206;
  variable_set[3186] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c163() {
  static ExcelValue result;
  if(variable_set[3187] == 1) { return result;}
  result = C498;
  variable_set[3187] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d163() {
  static ExcelValue result;
  if(variable_set[3188] == 1) { return result;}
  result = NA;
  variable_set[3188] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c164() {
  static ExcelValue result;
  if(variable_set[3189] == 1) { return result;}
  result = C498;
  variable_set[3189] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d164() {
  static ExcelValue result;
  if(variable_set[3190] == 1) { return result;}
  result = NA;
  variable_set[3190] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c165() {
  static ExcelValue result;
  if(variable_set[3191] == 1) { return result;}
  result = C498;
  variable_set[3191] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d165() {
  static ExcelValue result;
  if(variable_set[3192] == 1) { return result;}
  result = NA;
  variable_set[3192] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c166() {
  static ExcelValue result;
  if(variable_set[3193] == 1) { return result;}
  result = C498;
  variable_set[3193] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d166() {
  static ExcelValue result;
  if(variable_set[3194] == 1) { return result;}
  result = NA;
  variable_set[3194] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c167() {
  static ExcelValue result;
  if(variable_set[3195] == 1) { return result;}
  result = C498;
  variable_set[3195] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d167() {
  static ExcelValue result;
  if(variable_set[3196] == 1) { return result;}
  result = NA;
  variable_set[3196] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c168() {
  static ExcelValue result;
  if(variable_set[3197] == 1) { return result;}
  result = C498;
  variable_set[3197] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d168() {
  static ExcelValue result;
  if(variable_set[3198] == 1) { return result;}
  result = NA;
  variable_set[3198] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c169() {
  static ExcelValue result;
  if(variable_set[3199] == 1) { return result;}
  result = C498;
  variable_set[3199] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d169() {
  static ExcelValue result;
  if(variable_set[3200] == 1) { return result;}
  result = NA;
  variable_set[3200] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c170() {
  static ExcelValue result;
  if(variable_set[3201] == 1) { return result;}
  result = C498;
  variable_set[3201] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d170() {
  static ExcelValue result;
  if(variable_set[3202] == 1) { return result;}
  result = NA;
  variable_set[3202] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c171() {
  static ExcelValue result;
  if(variable_set[3203] == 1) { return result;}
  result = C498;
  variable_set[3203] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d171() {
  static ExcelValue result;
  if(variable_set[3204] == 1) { return result;}
  result = NA;
  variable_set[3204] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c172() {
  static ExcelValue result;
  if(variable_set[3205] == 1) { return result;}
  result = C498;
  variable_set[3205] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d172() {
  static ExcelValue result;
  if(variable_set[3206] == 1) { return result;}
  result = NA;
  variable_set[3206] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c173() {
  static ExcelValue result;
  if(variable_set[3207] == 1) { return result;}
  result = C498;
  variable_set[3207] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d173() {
  static ExcelValue result;
  if(variable_set[3208] == 1) { return result;}
  result = NA;
  variable_set[3208] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c174() {
  static ExcelValue result;
  if(variable_set[3209] == 1) { return result;}
  result = C498;
  variable_set[3209] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d174() {
  static ExcelValue result;
  if(variable_set[3210] == 1) { return result;}
  result = NA;
  variable_set[3210] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c175() {
  static ExcelValue result;
  if(variable_set[3211] == 1) { return result;}
  result = C498;
  variable_set[3211] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d175() {
  static ExcelValue result;
  if(variable_set[3212] == 1) { return result;}
  result = NA;
  variable_set[3212] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c176() {
  static ExcelValue result;
  if(variable_set[3213] == 1) { return result;}
  result = C498;
  variable_set[3213] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d176() {
  static ExcelValue result;
  if(variable_set[3214] == 1) { return result;}
  result = NA;
  variable_set[3214] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c177() {
  static ExcelValue result;
  if(variable_set[3215] == 1) { return result;}
  result = C498;
  variable_set[3215] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d177() {
  static ExcelValue result;
  if(variable_set[3216] == 1) { return result;}
  result = NA;
  variable_set[3216] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c178() {
  static ExcelValue result;
  if(variable_set[3217] == 1) { return result;}
  result = C498;
  variable_set[3217] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d178() {
  static ExcelValue result;
  if(variable_set[3218] == 1) { return result;}
  result = NA;
  variable_set[3218] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c179() {
  static ExcelValue result;
  if(variable_set[3219] == 1) { return result;}
  result = C498;
  variable_set[3219] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d179() {
  static ExcelValue result;
  if(variable_set[3220] == 1) { return result;}
  result = NA;
  variable_set[3220] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c180() {
  static ExcelValue result;
  if(variable_set[3221] == 1) { return result;}
  result = C498;
  variable_set[3221] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d180() {
  static ExcelValue result;
  if(variable_set[3222] == 1) { return result;}
  result = NA;
  variable_set[3222] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c181() {
  static ExcelValue result;
  if(variable_set[3223] == 1) { return result;}
  result = C498;
  variable_set[3223] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d181() {
  static ExcelValue result;
  if(variable_set[3224] == 1) { return result;}
  result = NA;
  variable_set[3224] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c182() {
  static ExcelValue result;
  if(variable_set[3225] == 1) { return result;}
  result = C498;
  variable_set[3225] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d182() {
  static ExcelValue result;
  if(variable_set[3226] == 1) { return result;}
  result = NA;
  variable_set[3226] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c183() {
  static ExcelValue result;
  if(variable_set[3227] == 1) { return result;}
  result = C498;
  variable_set[3227] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d183() {
  static ExcelValue result;
  if(variable_set[3228] == 1) { return result;}
  result = NA;
  variable_set[3228] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c184() {
  static ExcelValue result;
  if(variable_set[3229] == 1) { return result;}
  result = C498;
  variable_set[3229] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d184() {
  static ExcelValue result;
  if(variable_set[3230] == 1) { return result;}
  result = NA;
  variable_set[3230] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c185() {
  static ExcelValue result;
  if(variable_set[3231] == 1) { return result;}
  result = C498;
  variable_set[3231] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d185() {
  static ExcelValue result;
  if(variable_set[3232] == 1) { return result;}
  result = NA;
  variable_set[3232] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c186() {
  static ExcelValue result;
  if(variable_set[3233] == 1) { return result;}
  result = C498;
  variable_set[3233] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d186() {
  static ExcelValue result;
  if(variable_set[3234] == 1) { return result;}
  result = NA;
  variable_set[3234] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c187() {
  static ExcelValue result;
  if(variable_set[3235] == 1) { return result;}
  result = C498;
  variable_set[3235] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d187() {
  static ExcelValue result;
  if(variable_set[3236] == 1) { return result;}
  result = NA;
  variable_set[3236] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c188() {
  static ExcelValue result;
  if(variable_set[3237] == 1) { return result;}
  result = C498;
  variable_set[3237] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d188() {
  static ExcelValue result;
  if(variable_set[3238] == 1) { return result;}
  result = NA;
  variable_set[3238] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c189() {
  static ExcelValue result;
  if(variable_set[3239] == 1) { return result;}
  result = C498;
  variable_set[3239] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d189() {
  static ExcelValue result;
  if(variable_set[3240] == 1) { return result;}
  result = NA;
  variable_set[3240] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c190() {
  static ExcelValue result;
  if(variable_set[3241] == 1) { return result;}
  result = C498;
  variable_set[3241] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d190() {
  static ExcelValue result;
  if(variable_set[3242] == 1) { return result;}
  result = NA;
  variable_set[3242] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c191() {
  static ExcelValue result;
  if(variable_set[3243] == 1) { return result;}
  result = C498;
  variable_set[3243] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d191() {
  static ExcelValue result;
  if(variable_set[3244] == 1) { return result;}
  result = NA;
  variable_set[3244] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c192() {
  static ExcelValue result;
  if(variable_set[3245] == 1) { return result;}
  result = C498;
  variable_set[3245] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d192() {
  static ExcelValue result;
  if(variable_set[3246] == 1) { return result;}
  result = NA;
  variable_set[3246] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c193() {
  static ExcelValue result;
  if(variable_set[3247] == 1) { return result;}
  result = C498;
  variable_set[3247] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d193() {
  static ExcelValue result;
  if(variable_set[3248] == 1) { return result;}
  result = NA;
  variable_set[3248] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c194() {
  static ExcelValue result;
  if(variable_set[3249] == 1) { return result;}
  result = C498;
  variable_set[3249] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d194() {
  static ExcelValue result;
  if(variable_set[3250] == 1) { return result;}
  result = NA;
  variable_set[3250] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c195() {
  static ExcelValue result;
  if(variable_set[3251] == 1) { return result;}
  result = C498;
  variable_set[3251] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d195() {
  static ExcelValue result;
  if(variable_set[3252] == 1) { return result;}
  result = NA;
  variable_set[3252] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c196() {
  static ExcelValue result;
  if(variable_set[3253] == 1) { return result;}
  result = C498;
  variable_set[3253] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d196() {
  static ExcelValue result;
  if(variable_set[3254] == 1) { return result;}
  result = NA;
  variable_set[3254] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c197() {
  static ExcelValue result;
  if(variable_set[3255] == 1) { return result;}
  result = C498;
  variable_set[3255] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d197() {
  static ExcelValue result;
  if(variable_set[3256] == 1) { return result;}
  result = NA;
  variable_set[3256] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c198() {
  static ExcelValue result;
  if(variable_set[3257] == 1) { return result;}
  result = C498;
  variable_set[3257] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d198() {
  static ExcelValue result;
  if(variable_set[3258] == 1) { return result;}
  result = NA;
  variable_set[3258] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c199() {
  static ExcelValue result;
  if(variable_set[3259] == 1) { return result;}
  result = C498;
  variable_set[3259] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d199() {
  static ExcelValue result;
  if(variable_set[3260] == 1) { return result;}
  result = NA;
  variable_set[3260] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c200() {
  static ExcelValue result;
  if(variable_set[3261] == 1) { return result;}
  result = C498;
  variable_set[3261] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d200() {
  static ExcelValue result;
  if(variable_set[3262] == 1) { return result;}
  result = NA;
  variable_set[3262] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c201() {
  static ExcelValue result;
  if(variable_set[3263] == 1) { return result;}
  result = C498;
  variable_set[3263] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d201() {
  static ExcelValue result;
  if(variable_set[3264] == 1) { return result;}
  result = NA;
  variable_set[3264] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c202() {
  static ExcelValue result;
  if(variable_set[3265] == 1) { return result;}
  result = C498;
  variable_set[3265] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d202() {
  static ExcelValue result;
  if(variable_set[3266] == 1) { return result;}
  result = NA;
  variable_set[3266] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c203() {
  static ExcelValue result;
  if(variable_set[3267] == 1) { return result;}
  result = C498;
  variable_set[3267] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d203() {
  static ExcelValue result;
  if(variable_set[3268] == 1) { return result;}
  result = NA;
  variable_set[3268] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c204() {
  static ExcelValue result;
  if(variable_set[3269] == 1) { return result;}
  result = C498;
  variable_set[3269] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d204() {
  static ExcelValue result;
  if(variable_set[3270] == 1) { return result;}
  result = NA;
  variable_set[3270] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c205() {
  static ExcelValue result;
  if(variable_set[3271] == 1) { return result;}
  result = C498;
  variable_set[3271] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d205() {
  static ExcelValue result;
  if(variable_set[3272] == 1) { return result;}
  result = NA;
  variable_set[3272] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c206() {
  static ExcelValue result;
  if(variable_set[3273] == 1) { return result;}
  result = C498;
  variable_set[3273] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d206() {
  static ExcelValue result;
  if(variable_set[3274] == 1) { return result;}
  result = NA;
  variable_set[3274] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c207() {
  static ExcelValue result;
  if(variable_set[3275] == 1) { return result;}
  result = C498;
  variable_set[3275] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_d207() {
  static ExcelValue result;
  if(variable_set[3276] == 1) { return result;}
  result = NA;
  variable_set[3276] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_c208() {
  static ExcelValue result;
  if(variable_set[3277] == 1) { return result;}
  result = C498;
  variable_set[3277] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_f208() {
  static ExcelValue result;
  if(variable_set[3278] == 1) { return result;}
  result = C435;
  variable_set[3278] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_g208() {
  static ExcelValue result;
  if(variable_set[3279] == 1) { return result;}
  result = C436;
  variable_set[3279] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_h208() {
  static ExcelValue result;
  if(variable_set[3280] == 1) { return result;}
  result = C437;
  variable_set[3280] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_i208() {
  static ExcelValue result;
  if(variable_set[3281] == 1) { return result;}
  result = C438;
  variable_set[3281] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_j208() {
  static ExcelValue result;
  if(variable_set[3282] == 1) { return result;}
  result = C439;
  variable_set[3282] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_k208() {
  static ExcelValue result;
  if(variable_set[3283] == 1) { return result;}
  result = C440;
  variable_set[3283] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_l208() {
  static ExcelValue result;
  if(variable_set[3284] == 1) { return result;}
  result = C441;
  variable_set[3284] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_m208() {
  static ExcelValue result;
  if(variable_set[3285] == 1) { return result;}
  result = C442;
  variable_set[3285] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_n208() {
  static ExcelValue result;
  if(variable_set[3286] == 1) { return result;}
  result = C443;
  variable_set[3286] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ab208() {
  static ExcelValue result;
  if(variable_set[3287] == 1) { return result;}
  result = C444;
  variable_set[3287] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ac208() {
  static ExcelValue result;
  if(variable_set[3288] == 1) { return result;}
  result = C445;
  variable_set[3288] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ad208() {
  static ExcelValue result;
  if(variable_set[3289] == 1) { return result;}
  result = C446;
  variable_set[3289] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_ae208() {
  static ExcelValue result;
  if(variable_set[3290] == 1) { return result;}
  result = C447;
  variable_set[3290] = 1;
  return result;
}

ExcelValue outputs_land_use_technology_af208() {
  static ExcelValue result;
  if(variable_set[3291] == 1) { return result;}
  result = C448;
  variable_set[3291] = 1;
  return result;
}

// end Outputs - Land use, technology

// start Outputs - Costs
ExcelValue outputs_costs_b2() {
  static ExcelValue result;
  if(variable_set[3292] == 1) { return result;}
  result = C77;
  variable_set[3292] = 1;
  return result;
}

ExcelValue outputs_costs_c2() {
  static ExcelValue result;
  if(variable_set[3293] == 1) { return result;}
  result = C78;
  variable_set[3293] = 1;
  return result;
}

ExcelValue outputs_costs_e2() {
  static ExcelValue result;
  if(variable_set[3294] == 1) { return result;}
  result = C2;
  variable_set[3294] = 1;
  return result;
}

ExcelValue outputs_costs_j2() {
  static ExcelValue result;
  if(variable_set[3295] == 1) { return result;}
  result = C190;
  variable_set[3295] = 1;
  return result;
}

ExcelValue outputs_costs_b3() {
  static ExcelValue result;
  if(variable_set[3296] == 1) { return result;}
  result = C500;
  variable_set[3296] = 1;
  return result;
}

// end Outputs - Costs

// start Outputs - Energy flows
ExcelValue outputs_energy_flows_b2() {
  static ExcelValue result;
  if(variable_set[3297] == 1) { return result;}
  result = C77;
  variable_set[3297] = 1;
  return result;
}

ExcelValue outputs_energy_flows_c2() {
  static ExcelValue result;
  if(variable_set[3298] == 1) { return result;}
  result = C78;
  variable_set[3298] = 1;
  return result;
}

ExcelValue outputs_energy_flows_e2() {
  static ExcelValue result;
  if(variable_set[3299] == 1) { return result;}
  result = C2;
  variable_set[3299] = 1;
  return result;
}

ExcelValue outputs_energy_flows_j2() {
  static ExcelValue result;
  if(variable_set[3300] == 1) { return result;}
  result = C501;
  variable_set[3300] = 1;
  return result;
}

ExcelValue outputs_energy_flows_b3() {
  static ExcelValue result;
  if(variable_set[3301] == 1) { return result;}
  result = C502;
  variable_set[3301] = 1;
  return result;
}

// end Outputs - Energy flows

// start Structure of the model
// end Structure of the model

// start Constants
// end Constants

// start Conversion
// end Conversion

// start Translation
// end Translation

// start G.Universal data
// end G.Universal data

// start G.10 (data)
// end G.10 (data)

// start G.20 (data)
// end G.20 (data)

// start G.30 (data)
// end G.30 (data)

// start G.40 (data)
static ExcelValue g_40_data__q225() {
  static ExcelValue result;
  if(variable_set[3302] == 1) { return result;}
  ExcelValue array0[] = {_common1(),C406,_common2(),multiply(rounddown(user_inputs_d27(),C158),subtract(C17,_common3()))};
  ExcelValue array1[] = {_common1(),C406,_common2(),roundup(user_inputs_d27(),C158)};
  result = add(sumifs(_common0(), 4, array0),multiply(sumifs(_common0(), 4, array1),_common3()));
  variable_set[3302] = 1;
  return result;
}

// end G.40 (data)

// start G.50 (data)
// end G.50 (data)

// start G.60 (data)
// end G.60 (data)

// start Climate (data)
// end Climate (data)

// start G.10
// end G.10

// start G.20
// end G.20

// start G.30
// end G.30

// start G.40
// end G.40

// start G.50
// end G.50

// start G.60
// end G.60

// start Climate impacts
// end Climate impacts

// start G.2015.energy
// end G.2015.energy

// start G.2015.emissions
// end G.2015.emissions

// start G.2015.costs
// end G.2015.costs

// start Developer's notes
// end Developer's notes

// start Version control
// end Version control

// start Glossary
// end Glossary

// Start of named references
// End of named references
