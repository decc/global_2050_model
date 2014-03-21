require_relative '../global_2050_model'

class Global2050ModelResult < Global2050ModelUtilities  
  attr_accessor :excel, :pathway
  
  def initialize
    @excel = Global2050ModelShim.new
  end
  
  def self.calculate_pathway(code)
    new.calculate_pathway(code)
  end
  
  def calculate_pathway(code)
    Thread.exclusive do 
      reset
      @pathway = { _id: code, choices: set_choices(code) }
      test_results
    end
    return pathway
  end
      
  def test_results
    @pathway[:ghg] = ('p'..'x').map { |c| r("outputs_emissions_#{c}54") }
  end

end

if __FILE__ == $0
  g = Global2050ModelResult.new

  tests = 500
  t = Time.now
  a = []
  tests.times do
    a << g.calculate_pathway(Global2050ModelResult::CONTROL.map { rand(4)+1 }.join)
  end
  te = Time.now - t
  puts "#{te/tests} seconds per run"
  puts "#{tests/te} runs per second"
  p a.map { |h| h[:ghg].last }
end
