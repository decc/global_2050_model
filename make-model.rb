require 'bundler'
Bundler.setup
require 'excel_to_code'

command = ExcelToC.new

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

command.go!
