task :default => :generate_new_mode_from_excel

desc "Update all the code, based on the spreadsheet in spreadsheet/2050Model.xlsx"
task :generate_new_mode_from_excel => [:clean,'ext/global_2050_model.c',:put_generated_files_in_right_place,:fix_test_require]

desc "Generates c version of 2050 pathways model"
file 'ext/global_2050_model.c' do
  require 'excel_to_code'
  command = ExcelToC.new

  command.excel_file = "spreadsheet/2050Model.xlsx"
  command.output_directory = 'ext'
  command.output_name = 'global_2050_model'

  command.cells_that_can_be_set_at_runtime = { "Control" => (5.upto(58).to_a.map { |r| "e#{r}" }) }

  command.cells_to_keep = {
    # The names, limits, 10 worders, example pathways, long descriptions
    "Control" => (5.upto(58).to_a.map { |r| ["d#{r}","f#{r}","h#{r}","i#{r}","j#{r}","k#{r}","be#{r}","bf#{r}","bg#{r}","bh#{r}"] }).flatten, 
    "Intermediate output" => :all, 
    "CostPerCapita" => :all, 
    "Land Use" => :all, 
    "Flows" => :all, 
    "AQ Outputs" => :all, 
    'IX.a' => (0.upto(12).to_a.map { |i| "f#{595+i}" }),
    'IX.c' => (0.upto(12).to_a.map { |i| "n#{317+i}" }),
    'VI.a' => (1086.upto(1091).to_a.map { |row| ('c'..'o').to_a.map { |column| "#{column}#{row}" } }).flatten
  }
  
  # Add the version number
  command.cells_to_keep["Control"] << "m1"
  
  # Add the example pathways
  rows = (4..57).to_a
  ('m'..'z').to_a.push("aa").each do |column|
    rows.each do |row|
      command.cells_to_keep["Control"].push("#{column}#{row}")
    end
  end

  command.actually_compile_code = true
  command.actually_run_tests = true

  # command.run_in_memory = true

  command.go!
end

# Put things in their place
task :put_generated_files_in_right_place do
  mv 'ext/global_2050_model.rb', 'lib/global_2050_model/global_2050_model.rb'
  mv 'ext/test_global_2050_model.rb', 'test/test_global_2050_model.rb'
  rm 'ext/Makefile'
end

task :fix_test_require do
  test = IO.readlines('test/test_global_2050_model.rb').join
  test.gsub!("require_relative 'global_2050_model'","require_relative '../lib/global_2050_model'")
  File.open('test/test_global_2050_model.rb','w') { |f| f.puts test }
end

desc "This updates the Decc2050Model.last_modified_date attribute to the current time"
task :change_last_modified_date do
  File.open('lib/global_2050_model/global_2050_model_version.rb','w') do |f|
    f.puts "def Global2050Model.last_modified_date() @last_modified_date ||= Time.utc(*#{Time.now.to_a}); end"
  end
end

desc "Remove all the spreadsheet code, ready to be regenerated"
task :clean do
  rm 'lib/global_2050_model/global_2050_model.rb', :force => true
  rm 'test/test_global_2050_model.rb', :force => true
  rm 'ext/global_2050_model.c', :force => true
end
