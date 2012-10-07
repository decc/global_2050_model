require_relative '../global_2050_model'

class Global2050ModelResult < Global2050ModelUtilities  
  attr_accessor :excel, :pathway
  
  def initialize
    @excel = Global2050Model
  end
  
  def self.calculate_pathway(code)
    new.calculate_pathway(code)
  end
  
  def calculate_pathway(code)
    Thread.exclusive do 
      reset
      @pathway = { _id: code, choices: set_choices(code) }
      primary_energy_tables
    end
    return pathway
  end
      
  def primary_energy_tables
    pathway[:ghg] = table 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151
    pathway[:final_energy_demand, ] = table 13, 14, 15, 16
    pathway[:primary_energy_supply] = table 23, 24, 25, 26, 27, 28, 29, 30, 32, 36, 39, 43, 46
    pathway[:temperature] = r("intermediate_output_t334")
  end
  
  
  # Helper methods
  
  def table(*row_numbers)
    t = {}
    row_numbers.each do |row|
      t[label("intermediate_output",row)] = annual_data("intermediate_output",row)
    end
    t
  end
  
  def label(sheet,row)
    r("#{sheet}_d#{row}").to_s
  end
  
  def annual_data(sheet,row)
    ('i'..'q').to_a.map { |c| r("#{sheet}_#{c}#{row}") }
  end
  
  def sum(hash_a,hash_b)
    return nil unless hash_a && hash_b
    summed_hash = {}
    hash_a.each do |key,value|
      summed_hash[key] = value + hash_b[key]
    end
    return summed_hash
  end
  
end

if __FILE__ == $0
  g = Global2050ModelResult.new

  tests = 100
  t = Time.now
  a = []
  tests.times do
    a << g.calculate_pathway(Global2050ModelResult::CONTROL.map { rand(4)+1 }.join)
  end
  te = Time.now - t
  puts "#{te/tests} seconds per run"
  puts "#{tests/te} runs per second"
end
