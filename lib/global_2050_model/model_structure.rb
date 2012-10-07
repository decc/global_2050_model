require_relative 'global_2050_model'
require 'singleton'

class ModelStructure < Global2050ModelUtilities
  include Singleton
  
  attr_accessor :excel, :choices
    
  def initialize
    @excel = Global2050Model
    @choices = []
    types.each_with_index do |choice_type,i|
      case choice_type
      when 0.0; next
      when /[abcd]/i; choices << ModelAlternative.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      else; choices << ModelChoice.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      end
    end
  end
  
  def reported_calculator_version
    r("control_t1")
  end
  
  def types
    @types ||= (5..58).to_a.map { |row| r("control_f#{row}") }
  end
  
  def names
    @names ||= (5..58).to_a.map { |row| r("control_d#{row}") }
  end

  def descriptions
    @descriptions ||= (5..58).to_a.map { |row| [r("control_h#{row}"),r("control_i#{row}"),r("control_j#{row}"),r("control_k#{row}")] }
  end

  def long_descriptions
    @long_descriptions ||=  (5..58).to_a.map  { |row| [r("control_be#{row}"),r("control_bf#{row}"),r("control_bg#{row}"),r("control_bh#{row}")] }
  end
    
  def demand_choices
    choices[21..39]
  end
  
  def supply_choices
    choices[2..12] + choices.values_at(17,18,19)
  end

  def other_choices
    choices.values_at(0,1,13,14,15,16,20,40)
  end
  
  def example_pathways
    @example_pathways ||= generate_example_pathways
  end
  
  def generate_example_pathways
    pathways = {}
    rows = (5..57).to_a
    ('m'..'z').to_a.push("aa").each do |column|
      name = r("control_#{column}4")
      next unless name.is_a?(String) && name.length > 0
      choices = rows.map { |row| r("control_#{column}#{row}") }
      pathways[name] = convert_float_to_letters(choices).join
    end
    pathways
  end
  
end
