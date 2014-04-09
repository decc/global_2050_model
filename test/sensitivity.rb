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

  def initialize(code = nil, baseline = self, name = "baseline", lever = nil, level = nil)
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

  def incremental_cost
    cost - baseline.cost
  end

  def incremental_emissions
    emissions - baseline.emissions
  end

  def sensitivity(parameter = :incremental_cost)
    puts "Lever name\t1\t2\t3\t4"
    sensitivities = ModelStructure.instance.choices.map do |lever|
      sensitivity_on(lever, parameter )
    end
    sensitivities.sort_by { |s| s.last }.each do |s|
      puts s.join("\t")
    end
  end

  def sensitivity_on(lever, parameter)

    i = lever.number
    possible_levels = lever.levels.to_a.length

    s = 1.upto(possible_levels).to_a.map do |new_level|
      new_choice = choices.dup
      new_choice[i] = new_level
      new_code = encode(new_choice)
      new_pathway = Pathway.new(new_code, self, "#{lever.name} #{new_level}", i, new_level)
      new_pathway.send(parameter)
    end

    [lever.name, *s]
  end

end


start = ARGV[0] || '111111111111111111111111111111111111111111111'

puts "Starting from #{start}"
puts

baseline = Pathway.new(start)

puts "Incremental total systems cost (point, real, undiscounted, with finance)"
baseline.sensitivity(:incremental_cost)

puts

puts "Incremental 2050 emissions (GtCO2e)"
baseline.sensitivity(:incremental_emissions)



