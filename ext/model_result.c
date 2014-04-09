#include "global_2050_model.c"

int main() {
  int i;
  for(i=0; i<10; i++) {
    reset();
    inspect_excel_value(outputs_emissions_p54());
    inspect_excel_value(outputs_emissions_q54());
    inspect_excel_value(outputs_emissions_r54());
    inspect_excel_value(outputs_emissions_s54());
    inspect_excel_value(outputs_emissions_t54());
    inspect_excel_value(outputs_emissions_u54());
    inspect_excel_value(outputs_emissions_w54());
    inspect_excel_value(outputs_emissions_x54());
  }
  return 0;
}
