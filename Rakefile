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

  command.cells_that_can_be_set_at_runtime = { "User inputs" => (7.upto(45).to_a.map { |r| "d#{r}" }) }

  command.cells_to_keep = {
    "User inputs" => :all,
    "Detailed lever guides" => :all,
    "Outputs - Climate impacts" => :all,
    "Outputs - Emissions" => :all,
    "Outputs - Energy" => :all,
    "Outputs - Land use, technology" => :all,
    "Outputs - Costs" => :all,
    "Outputs - Energy flows" => :all,
  }

  command.extract_repeated_parts_of_formulae = false
  command.isolate = "G.30 (data)"
  
  command.actually_compile_code = true
  command.actually_run_tests = true

  command.run_in_memory = true

  command.go!
end

# Put things in their place
task :put_generated_files_in_right_place do
  require 'ffi'
  libfile = FFI.map_library_name('global_2050_model')
  if File.exists?(File.join('ext',libfile))
    mv File.join('ext',libfile), File.join('lib','global_2050_model',libfile)
  end
  
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
