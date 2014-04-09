class Global2050ModelUtilities
  # Set the 9 decimal points between 1.1 and 3.9
  FLOAT_TO_LETTER_MAP = Hash["abcdefghijklmnopqrstuvwxyzABCD".split('').map.with_index { |l,i| [(i/10.0)+1,l] }]
  FLOAT_TO_LETTER_MAP[0.0] = '0'
  FLOAT_TO_LETTER_MAP[1.0] = '1'
  FLOAT_TO_LETTER_MAP[2.0] = '2'
  FLOAT_TO_LETTER_MAP[3.0] = '3'
  FLOAT_TO_LETTER_MAP[4.0] = '4'
  FLOAT_TO_LETTER_MAP[5.0] = '5'
  FLOAT_TO_LETTER_MAP[6.0] = '6'
  
  LETTER_TO_FLOAT_MAP = FLOAT_TO_LETTER_MAP.invert
  
  def convert_float_to_letters(array)
    array.map do |entry|
      entry.is_a?(Float) ? FLOAT_TO_LETTER_MAP[entry] || entry : entry
    end
  end
  
  def convert_letters_to_float(array)
    array.map do |entry|
      LETTER_TO_FLOAT_MAP[entry].to_f || entry.to_f
    end
  end

  COUNTRY_TO_NUMBER_MAP = {
    "US" => 1.0,
    "India" => 2.0,
    "China" => 3.0,
    "Central and South America / Former Soviet Union" => 4.0,
    "Western Europe" => 5.0,
    "Africa" => 6.0
  }

  NUMBER_TO_COUNTRY_MAP = COUNTRY_TO_NUMBER_MAP.invert

  ABCD_TO_NUMBER_MAP = { 'A' => 1.0, 'B' => 2.0, 'C' => 3.0, 'D' => 4.0 }
  NUMBER_TO_ABCD_MAP = ABCD_TO_NUMBER_MAP.invert

  def decode(code)
    choices = code.to_s.split('')
    choices.concat(['1']*(48-choices.length)) if choices.length < 48
    choices.map! do |entry|
      LETTER_TO_FLOAT_MAP[entry].to_f
    end
    # Countries expect a country name
    choices[-1] = NUMBER_TO_COUNTRY_MAP[choices[-1]]
    choices[-2] = NUMBER_TO_COUNTRY_MAP[choices[-2]]
    choices[-3] = NUMBER_TO_COUNTRY_MAP[choices[-3]]
    # Some choices that expect a letter
    choices[-4] = NUMBER_TO_ABCD_MAP[choices[-4]] 
    choices[-6] = NUMBER_TO_ABCD_MAP[choices[-6]] 
    choices
  end

  def encode(choices)
    choices = choices.flatten
    # Some choices use a letter
    choices[-4] = ABCD_TO_NUMBER_MAP[choices[-4]] 
    choices[-6] = ABCD_TO_NUMBER_MAP[choices[-6]] 
    # Some choices use a country name
    choices[-1] = COUNTRY_TO_NUMBER_MAP[choices[-1]]
    choices[-2] = COUNTRY_TO_NUMBER_MAP[choices[-2]]
    choices[-3] = COUNTRY_TO_NUMBER_MAP[choices[-3]]
    choices.map! do |entry|
      FLOAT_TO_LETTER_MAP[entry.to_f]
    end
    code = choices.join('')
    code
  end
  
  def set_choices(code)
    return @excel.webtool_user_choices.flatten unless code
    choices = decode(code)
    @excel.webtool_user_choices = choices
    choices
  end
  
  def get_array(references)
    references.map do |reference|
      r(reference)
    end
  end
  
  def r(reference)
    excel.send(reference)
  end
  
  def set_array(references, values)
    values.each_with_index do |v,i|
      ref = "#{references[i]}="
      excel.send(ref,v)
    end
  end
  
  def reset
    excel.reset
  end
end
