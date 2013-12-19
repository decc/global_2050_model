require 'bundler'
Bundler.setup
require 'excel_to_code'

command = ExcelToC.new

command.excel_file = "spreadsheet/2050Model.xlsx"
command.output_directory = 'ext'
command.output_name = 'global_2050_model'

# Superceeded by named_references_that_can_be_set_at_runtime below
command.cells_that_can_be_set_at_runtime = { "User inputs" => (7.upto(46).to_a.map { |r| "E#{r}" }) }

command.cells_to_keep = {
  "User inputs" => :all,
  "Detailed lever guids" => :all,
  "Outputs - Climate impacts" => :all,
  "Outputs - Emissions" => :all,
  "Outputs - Energy" => :all,
  "Outputs - Land use, technology" => :all,
  "Outputs - Costs" => :all,
  "Outputs - Energy flows" => :all,
  "Outputs - Misc" => :all
}

#command.named_references_to_keep = [
#  'webtool.1990.to.2050.demand',
#  'webtool.1990.to.2050.supply',
#  'webtool.bio.2011',
#  'webtool.bio.2050',
#  'webtool.buildings.2011.to.2050',
#  'webtool.buildings.historic',
#  'webtool.C02e.timeseries',
#  'Webtool.CO2.50.percent.2C',
#  'webtool.CO2e.total.emissions',
#  'webtool.cumulative.CO2e.2011',
#  'webtool.cumulative.CO2e.2100',
#  'webtool.demand.2011.actual',
#  'webtool.demand.2050',
#  'webtool.diet.2050',
#  'webtool.electricity',
#  'webtool.electricity.2011',
#  'webtool.electricity.2050',
#  'webtool.land.use',
#  'webtool.remaining.coal',
#  'webtool.remaining.gas',
#  'webtool.remaining.oil',
#  'webtool.supply.2011.actual',
#  'webtool.supply.2050',
#  'webtool.transport.2011.to.2050',
#  'webtool.transport.historic',
#  'webtool.vehicles.2011',
#  'webtool.vehicles.2050',
#  'webtool.warming.2100',
#  'webtool.user.choices.description',
#  'webtool.user.choices.limit',
#  'webtool.user.choices.names'
#]
#
#command.named_references_that_can_be_set_at_runtime = [
#  'webtool.user.choices',
#]

command.actually_compile_code = true
command.actually_run_tests = true

command.go!
