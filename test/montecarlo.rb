require_relative '../lib/global_2050_model'

class Pathway < Global2050ModelUtilities

  attr_accessor :excel
  attr_accessor :code
  attr_accessor :choices
  attr_accessor :cost
  attr_accessor :emissions
  attr_accessor :baseline
  attr_accessor :name
  attr_accessor :lever
  attr_accessor :level

  def Pathway.random_code
    code = Array.new(48, 1)
    ModelStructure.instance.choices.each do |lever|
      i = lever.number
      possible_levels = lever.levels.to_a.length
      possible_levels = 1.upto(possible_levels).to_a
      code[i] = possible_levels.sample
    end
    code.join('')
  end

  def Pathway.random
    new(random_code)
  end

  def initialize(code = '1')
    @code = code
    @baseline = baseline
    @name = name
    @lever = lever
    @level = level
    @excel = Global2050ModelShim.new
    @choices = set_choices(code)
    @cost = @excel.outputs_costs_g7
    @emissions = @excel.outputs_emissions_x54
  end

  def header
    names = Array.new(48) { |d| "blank#{rand}" }
    ModelStructure.instance.choices.each do |lever|
      i = lever.number
      names[i] = lever.name
    end
    puts "code\tcost\temissions\t#{names.join("\t")}"
  end

  def to_tsv
    [@code, @cost, @emissions,  *@choices].join("\t")
  end

end

number_of_runs = ARGV[0] ? ARGV[0].to_i : 500

puts Pathway.random.header

number_of_runs.times do
  puts Pathway.random.to_tsv
end
