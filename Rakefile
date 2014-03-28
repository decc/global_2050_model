task :default => :generate_new_mode_from_excel

desc "Update all the code, based on the spreadsheet in spreadsheet/2050Model.xlsx"
task :generate_new_mode_from_excel => [:clean,'ext/global_2050_model.c',:put_generated_files_in_right_place,:fix_test_require]

def setup(command)
  command.excel_file = "spreadsheet/2050Model.xlsx"
  command.output_directory = 'ext'
  command.output_name = 'global_2050_model'

  # Superceeded by named_references_that_can_be_set_at_runtime below
  # command.cells_that_can_be_set_at_runtime = { "User inputs" => (7.upto(46).to_a.map { |r| "E#{r}" }) }

  command.cells_to_keep = {
    "User inputs" => :all,
    "Detailed lever guides" => :all,
    "Outputs - Climate impacts" => :all,
    "Outputs - Emissions" => :all,
    "Outputs - Energy" => :all,
    "Outputs - Land use, technology" => :all,
    "Outputs - Costs" => :all,
    "Outputs - Energy flows" => :all,
    "Outputs - food flows" => :all,
  }

  command.named_references_to_keep = lambda do |named_reference|
    named_reference =~ /^webtool\./i
  end

  command.named_references_that_can_be_set_at_runtime = [
    'webtool.user.choices',
  ]

  #command.isolate = ["G.30", "Outputs - Energy", "G.2011.energy", "G.30 (data)"]
  #command.isolate = ["G.30 (data)"]
  #command.isolate = ["G.30", ]

  command.actually_compile_code = true
  command.actually_run_tests = true

end

desc "Generates c version of 2050 pathways model"
file 'ext/global_2050_model.c' do
  require 'excel_to_code'
  command = ExcelToC.new
  setup(command)
  command.go!
end

desc "Creates just a set of tests against the current spreadsheet/model.xlsx, but doesn't actually generate the code"
task :generate_new_tests do
  require 'excel_to_code'
  command = ExcelToTest.new
  setup(command)
  command.actually_run_tests = false
  command.go!
  mv "ext/#{command.test_name}", "test/"
  test = IO.readlines("test/#{command.test_name}").join
  test.gsub!("require_relative 'global_2050_model'","require_relative '../lib/global_2050_model'")
  File.open("test/#{command.test_name}",'w') { |f| f.puts test }
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
