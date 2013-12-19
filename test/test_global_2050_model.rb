# coding: utf-8
# Test for global_2050_model
require 'rubygems'
gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/global_2050_model'

class TestGlobal2050Model < Minitest::Test
  def self.runnable_methods
    puts 'Overriding minitest to run tests in a defined order'
    methods = methods_matching(/^test_/)
  end
  def worksheet; @worksheet ||= init_spreadsheet; end
  def init_spreadsheet; Global2050ModelShim.new end
  def test_user_inputs_e7; assert_in_epsilon(2.0, worksheet.user_inputs_e7, 0.002); end
  def test_user_inputs_e8; assert_in_epsilon(2.0, worksheet.user_inputs_e8, 0.002); end
  def test_user_inputs_e9; assert_in_delta(1.0, worksheet.user_inputs_e9, 0.002); end
  def test_user_inputs_e10; assert_in_delta(1.0, worksheet.user_inputs_e10, 0.002); end
  def test_user_inputs_e11; assert_in_epsilon(2.0, worksheet.user_inputs_e11, 0.002); end
  def test_user_inputs_e12; assert_in_epsilon(2.0, worksheet.user_inputs_e12, 0.002); end
  def test_user_inputs_e13; assert_in_epsilon(2.0, worksheet.user_inputs_e13, 0.002); end
  def test_user_inputs_e14; assert_in_epsilon(2.0, worksheet.user_inputs_e14, 0.002); end
  def test_user_inputs_e15; assert_in_epsilon(2.0, worksheet.user_inputs_e15, 0.002); end
  def test_user_inputs_e16; assert_in_epsilon(2.0, worksheet.user_inputs_e16, 0.002); end
  def test_user_inputs_e17; assert_in_epsilon(2.0, worksheet.user_inputs_e17, 0.002); end
  def test_user_inputs_e18; assert_in_epsilon(2.0, worksheet.user_inputs_e18, 0.002); end
  def test_user_inputs_e19; assert_in_epsilon(2.0, worksheet.user_inputs_e19, 0.002); end
  def test_user_inputs_e20; assert_in_delta(1.0, worksheet.user_inputs_e20, 0.002); end
  def test_user_inputs_e21; assert_in_delta(1.0, worksheet.user_inputs_e21, 0.002); end
  def test_user_inputs_e22; assert_in_delta(1.0, worksheet.user_inputs_e22, 0.002); end
  def test_user_inputs_e23; assert_in_delta(1.0, worksheet.user_inputs_e23, 0.002); end
  def test_user_inputs_e24; assert_in_epsilon(2.0, worksheet.user_inputs_e24, 0.002); end
  def test_user_inputs_e25; assert_in_epsilon(2.0, worksheet.user_inputs_e25, 0.002); end
  def test_user_inputs_e26; assert_in_delta(1.0, worksheet.user_inputs_e26, 0.002); end
  def test_user_inputs_e27; assert_in_epsilon(4.0, worksheet.user_inputs_e27, 0.002); end
  def test_user_inputs_e28; assert_in_epsilon(4.0, worksheet.user_inputs_e28, 0.002); end
  def test_user_inputs_e29; assert_in_epsilon(4.0, worksheet.user_inputs_e29, 0.002); end
  def test_user_inputs_e30; assert_in_epsilon(4.0, worksheet.user_inputs_e30, 0.002); end
  def test_user_inputs_e31; assert_in_epsilon(4.0, worksheet.user_inputs_e31, 0.002); end
  def test_user_inputs_e32; assert_in_epsilon(4.0, worksheet.user_inputs_e32, 0.002); end
  def test_user_inputs_e33; assert_in_epsilon(2.0, worksheet.user_inputs_e33, 0.002); end
  def test_user_inputs_e34; assert_in_delta(1.0, worksheet.user_inputs_e34, 0.002); end
  def test_user_inputs_e35; assert_in_delta(1.0, worksheet.user_inputs_e35, 0.002); end
  def test_user_inputs_e36; assert_in_delta(1.0, worksheet.user_inputs_e36, 0.002); end
  def test_user_inputs_e37; assert_in_delta(1.0, worksheet.user_inputs_e37, 0.002); end
  def test_user_inputs_e38; assert_in_epsilon(2.0, worksheet.user_inputs_e38, 0.002); end
  def test_user_inputs_e39; assert_in_epsilon(3.0, worksheet.user_inputs_e39, 0.002); end
  def test_user_inputs_e40; assert_in_epsilon(2.0, worksheet.user_inputs_e40, 0.002); end
  def test_user_inputs_e41; assert_in_epsilon(2.0, worksheet.user_inputs_e41, 0.002); end
  def test_user_inputs_e42; assert_in_delta(1.0, worksheet.user_inputs_e42, 0.002); end
  def test_user_inputs_e43; assert_in_epsilon(2.0, worksheet.user_inputs_e43, 0.002); end
  def test_user_inputs_e44; assert_equal("A", worksheet.user_inputs_e44); end
  def test_user_inputs_e45; assert_in_epsilon(2.0, worksheet.user_inputs_e45, 0.002); end
  def test_user_inputs_e46; assert_in_epsilon(2.0, worksheet.user_inputs_e46, 0.002); end
  def test_user_inputs_c2; assert_equal("User inputs", worksheet.user_inputs_c2); end
  def test_user_inputs_d2; assert_equal("Click here to return to the \"contents\" page", worksheet.user_inputs_d2); end
  def test_user_inputs_h2; assert_equal("Annual emissions rise relative to 1990 levels", worksheet.user_inputs_h2); end
  def test_user_inputs_m2; assert_equal("Y", worksheet.user_inputs_m2); end
  def test_user_inputs_h3; assert_equal("Temperature rise relative to pre-industrial (1850)", worksheet.user_inputs_h3); end
  def test_user_inputs_m3; assert_equal("X", worksheet.user_inputs_m3); end
  def test_user_inputs_c5; assert_equal("Trajectory choices", worksheet.user_inputs_c5); end
  def test_user_inputs_g5; assert_equal("Trajectory description", worksheet.user_inputs_g5); end
  def test_user_inputs_h5; assert_equal("Example pathways", worksheet.user_inputs_h5); end
  def test_user_inputs_c6; assert_equal("Sector", worksheet.user_inputs_c6); end
  def test_user_inputs_d6; assert_equal("Lever", worksheet.user_inputs_d6); end
  def test_user_inputs_e6; assert_equal("Level", worksheet.user_inputs_e6); end
  def test_user_inputs_f6; assert_equal("Limit", worksheet.user_inputs_f6); end
  def test_user_inputs_g6; assert_equal("Description for the user's level choice", worksheet.user_inputs_g6); end
  def test_user_inputs_b7; assert_in_delta(1.0, worksheet.user_inputs_b7, 0.002); end
  def test_user_inputs_c7; assert_equal("Population", worksheet.user_inputs_c7); end
  def test_user_inputs_d7; assert_equal("Global population", worksheet.user_inputs_d7); end
  def test_user_inputs_f7; assert_in_epsilon(3.0, worksheet.user_inputs_f7, 0.002); end
  def test_user_inputs_g7; assert_in_delta(0.0, (worksheet.user_inputs_g7||0), 0.002); end
  def test_user_inputs_b8; assert_in_epsilon(2.0, worksheet.user_inputs_b8, 0.002); end
  def test_user_inputs_d8; assert_equal("Urbanisation and access to electricity", worksheet.user_inputs_d8); end
  def test_user_inputs_f8; assert_in_epsilon(3.0, worksheet.user_inputs_f8, 0.002); end
  def test_user_inputs_g8; assert_in_delta(0.0, (worksheet.user_inputs_g8||0), 0.002); end
  def test_user_inputs_b9; assert_in_epsilon(3.0, worksheet.user_inputs_b9, 0.002); end
  def test_user_inputs_c9; assert_equal("Transport", worksheet.user_inputs_c9); end
  def test_user_inputs_d9; assert_equal("Passenger distance", worksheet.user_inputs_d9); end
  def test_user_inputs_f9; assert_in_epsilon(4.0, worksheet.user_inputs_f9, 0.002); end
  def test_user_inputs_g9; assert_in_delta(0.0, (worksheet.user_inputs_g9||0), 0.002); end
  def test_user_inputs_b10; assert_in_epsilon(4.0, worksheet.user_inputs_b10, 0.002); end
  def test_user_inputs_d10; assert_equal("Freight demand", worksheet.user_inputs_d10); end
  def test_user_inputs_f10; assert_in_epsilon(4.0, worksheet.user_inputs_f10, 0.002); end
  def test_user_inputs_g10; assert_in_delta(0.0, (worksheet.user_inputs_g10||0), 0.002); end
  def test_user_inputs_b11; assert_in_epsilon(5.0, worksheet.user_inputs_b11, 0.002); end
  def test_user_inputs_d11; assert_equal("Passenger and freight mode and occupancy", worksheet.user_inputs_d11); end
  def test_user_inputs_f11; assert_in_epsilon(4.0, worksheet.user_inputs_f11, 0.002); end
  def test_user_inputs_g11; assert_in_delta(0.0, (worksheet.user_inputs_g11||0), 0.002); end
  def test_user_inputs_b12; assert_in_epsilon(6.0, worksheet.user_inputs_b12, 0.002); end
  def test_user_inputs_d12; assert_equal("Passenger and freight efficiency", worksheet.user_inputs_d12); end
  def test_user_inputs_f12; assert_in_epsilon(4.0, worksheet.user_inputs_f12, 0.002); end
  def test_user_inputs_g12; assert_in_delta(0.0, (worksheet.user_inputs_g12||0), 0.002); end
  def test_user_inputs_b13; assert_in_epsilon(7.0, worksheet.user_inputs_b13, 0.002); end
  def test_user_inputs_d13; assert_equal("Electrification of passenger and freight (electricity and hydrogen)", worksheet.user_inputs_d13); end
  def test_user_inputs_f13; assert_in_epsilon(4.0, worksheet.user_inputs_f13, 0.002); end
  def test_user_inputs_g13; assert_in_delta(0.0, (worksheet.user_inputs_g13||0), 0.002); end
  def test_user_inputs_b14; assert_in_epsilon(8.0, worksheet.user_inputs_b14, 0.002); end
  def test_user_inputs_c14; assert_equal("Buildings", worksheet.user_inputs_c14); end
  def test_user_inputs_d14; assert_equal("Building size (m2)", worksheet.user_inputs_d14); end
  def test_user_inputs_f14; assert_in_epsilon(4.0, worksheet.user_inputs_f14, 0.002); end
  def test_user_inputs_g14; assert_in_delta(0.0, (worksheet.user_inputs_g14||0), 0.002); end
  def test_user_inputs_b15; assert_in_epsilon(9.0, worksheet.user_inputs_b15, 0.002); end
  def test_user_inputs_d15; assert_equal("Heating / cooling per m2", worksheet.user_inputs_d15); end
  def test_user_inputs_f15; assert_in_epsilon(4.0, worksheet.user_inputs_f15, 0.002); end
  def test_user_inputs_g15; assert_in_delta(0.0, (worksheet.user_inputs_g15||0), 0.002); end
  def test_user_inputs_b16; assert_in_epsilon(10.0, worksheet.user_inputs_b16, 0.002); end
  def test_user_inputs_d16; assert_equal("Heating / cooling technology ", worksheet.user_inputs_d16); end
  def test_user_inputs_f16; assert_in_epsilon(4.0, worksheet.user_inputs_f16, 0.002); end
  def test_user_inputs_g16; assert_in_delta(0.0, (worksheet.user_inputs_g16||0), 0.002); end
  def test_user_inputs_b17; assert_in_epsilon(11.0, worksheet.user_inputs_b17, 0.002); end
  def test_user_inputs_d17; assert_equal("Lighting, appliances and cooking demand", worksheet.user_inputs_d17); end
  def test_user_inputs_f17; assert_in_epsilon(4.0, worksheet.user_inputs_f17, 0.002); end
  def test_user_inputs_g17; assert_in_delta(0.0, (worksheet.user_inputs_g17||0), 0.002); end
  def test_user_inputs_b18; assert_in_epsilon(12.0, worksheet.user_inputs_b18, 0.002); end
  def test_user_inputs_d18; assert_equal("Lighting, appliances and cooking efficiency", worksheet.user_inputs_d18); end
  def test_user_inputs_f18; assert_in_epsilon(4.0, worksheet.user_inputs_f18, 0.002); end
  def test_user_inputs_g18; assert_in_delta(0.0, (worksheet.user_inputs_g18||0), 0.002); end
  def test_user_inputs_b19; assert_in_epsilon(13.0, worksheet.user_inputs_b19, 0.002); end
  def test_user_inputs_d19; assert_equal("Energy intensity of non-residential buildings", worksheet.user_inputs_d19); end
  def test_user_inputs_f19; assert_in_epsilon(4.0, worksheet.user_inputs_f19, 0.002); end
  def test_user_inputs_g19; assert_in_delta(0.0, (worksheet.user_inputs_g19||0), 0.002); end
  def test_user_inputs_b20; assert_in_epsilon(14.0, worksheet.user_inputs_b20, 0.002); end
  def test_user_inputs_c20; assert_equal("Materials", worksheet.user_inputs_c20); end
  def test_user_inputs_d20; assert_equal("Demand for products", worksheet.user_inputs_d20); end
  def test_user_inputs_f20; assert_in_epsilon(4.0, worksheet.user_inputs_f20, 0.002); end
  def test_user_inputs_g20; assert_in_delta(0.0, (worksheet.user_inputs_g20||0), 0.002); end
  def test_user_inputs_b21; assert_in_epsilon(15.0, worksheet.user_inputs_b21, 0.002); end
  def test_user_inputs_d21; assert_equal("Efficiency of product manufacturing", worksheet.user_inputs_d21); end
  def test_user_inputs_f21; assert_in_epsilon(4.0, worksheet.user_inputs_f21, 0.002); end
  def test_user_inputs_g21; assert_in_delta(0.0, (worksheet.user_inputs_g21||0), 0.002); end
  def test_user_inputs_b22; assert_in_epsilon(16.0, worksheet.user_inputs_b22, 0.002); end
  def test_user_inputs_d22; assert_equal("Carbon intensity of production (excl. CCS)", worksheet.user_inputs_d22); end
  def test_user_inputs_f22; assert_in_epsilon(4.0, worksheet.user_inputs_f22, 0.002); end
  def test_user_inputs_g22; assert_in_delta(0.0, (worksheet.user_inputs_g22||0), 0.002); end
  def test_user_inputs_b23; assert_in_epsilon(17.0, worksheet.user_inputs_b23, 0.002); end
  def test_user_inputs_d23; assert_equal("Carbon Capture & Storage in industry", worksheet.user_inputs_d23); end
  def test_user_inputs_f23; assert_in_epsilon(4.0, worksheet.user_inputs_f23, 0.002); end
  def test_user_inputs_g23; assert_in_delta(0.0, (worksheet.user_inputs_g23||0), 0.002); end
  def test_user_inputs_b24; assert_in_epsilon(18.0, worksheet.user_inputs_b24, 0.002); end
  def test_user_inputs_c24; assert_equal("Electricity", worksheet.user_inputs_c24); end
  def test_user_inputs_d24; assert_equal("Power from solid vs  liquid vs gas and biomass conversion (solid/liquid/gas)", worksheet.user_inputs_d24); end
  def test_user_inputs_f24; assert_in_epsilon(4.0, worksheet.user_inputs_f24, 0.002); end
  def test_user_inputs_g24; assert_equal("In 2050 out of total fossil energy supplied it is 40% of solid, 19% of liquid and 41% of gas power", worksheet.user_inputs_g24); end
  def test_user_inputs_b25; assert_in_epsilon(19.0, worksheet.user_inputs_b25, 0.002); end
  def test_user_inputs_d25; assert_equal("Technology of powerplant deployed", worksheet.user_inputs_d25); end
  def test_user_inputs_f25; assert_in_epsilon(4.0, worksheet.user_inputs_f25, 0.002); end
  def test_user_inputs_g25; assert_equal("In 2050 out of fossil energy supplied it is 18% by solid USC, 27% by solid SC, 55% by solid Sub-C, 47% by eff. liquid, 53% by ineff. liquid, 47.5% by OCGT and 52.5% by CCGT plant", worksheet.user_inputs_g25); end
  def test_user_inputs_b26; assert_in_epsilon(20.0, worksheet.user_inputs_b26, 0.002); end
  def test_user_inputs_d26; assert_equal("Power with Carbon Capture Storage", worksheet.user_inputs_d26); end
  def test_user_inputs_f26; assert_in_epsilon(4.0, worksheet.user_inputs_f26, 0.002); end
  def test_user_inputs_g26; assert_equal("In 2050 there is 16 GW of CCS installed power capacity", worksheet.user_inputs_g26); end
  def test_user_inputs_b27; assert_in_epsilon(21.0, worksheet.user_inputs_b27, 0.002); end
  def test_user_inputs_d27; assert_equal("Nuclear power stations", worksheet.user_inputs_d27); end
  def test_user_inputs_f27; assert_in_epsilon(4.0, worksheet.user_inputs_f27, 0.002); end
  def test_user_inputs_g27; assert_equal("In 2050 there is 1080 GW of installed nuclear power capacity", worksheet.user_inputs_g27); end
  def test_user_inputs_b28; assert_in_epsilon(22.0, worksheet.user_inputs_b28, 0.002); end
  def test_user_inputs_d28; assert_equal("Wind power", worksheet.user_inputs_d28); end
  def test_user_inputs_f28; assert_in_epsilon(4.0, worksheet.user_inputs_f28, 0.002); end
  def test_user_inputs_g28; assert_equal("In 2050 there is 6466 GW of installed wind power capacity", worksheet.user_inputs_g28); end
  def test_user_inputs_b29; assert_in_epsilon(23.0, worksheet.user_inputs_b29, 0.002); end
  def test_user_inputs_d29; assert_equal("Hydroelectric power", worksheet.user_inputs_d29); end
  def test_user_inputs_f29; assert_in_epsilon(4.0, worksheet.user_inputs_f29, 0.002); end
  def test_user_inputs_g29; assert_equal("In 2050 there is 3053 GW of installed hydro power capacity", worksheet.user_inputs_g29); end
  def test_user_inputs_b30; assert_in_epsilon(24.0, worksheet.user_inputs_b30, 0.002); end
  def test_user_inputs_d30; assert_equal("Marine power", worksheet.user_inputs_d30); end
  def test_user_inputs_f30; assert_in_epsilon(4.0, worksheet.user_inputs_f30, 0.002); end
  def test_user_inputs_g30; assert_equal("In 2050 there is 207 GW of installed marine power capacity", worksheet.user_inputs_g30); end
  def test_user_inputs_b31; assert_in_epsilon(25.0, worksheet.user_inputs_b31, 0.002); end
  def test_user_inputs_d31; assert_equal("Solar power", worksheet.user_inputs_d31); end
  def test_user_inputs_f31; assert_in_epsilon(4.0, worksheet.user_inputs_f31, 0.002); end
  def test_user_inputs_g31; assert_equal("In 2050 there is 4817.41 GW of installed solar power capacity", worksheet.user_inputs_g31); end
  def test_user_inputs_b32; assert_in_epsilon(26.0, worksheet.user_inputs_b32, 0.002); end
  def test_user_inputs_d32; assert_equal("Geothermal power", worksheet.user_inputs_d32); end
  def test_user_inputs_f32; assert_in_epsilon(4.0, worksheet.user_inputs_f32, 0.002); end
  def test_user_inputs_g32; assert_equal("In 2050 there is 404 GW of installed geothermal power capacity", worksheet.user_inputs_g32); end
  def test_user_inputs_b33; assert_in_epsilon(27.0, worksheet.user_inputs_b33, 0.002); end
  def test_user_inputs_d33; assert_equal("Storage, demand shifting & interconnection", worksheet.user_inputs_d33); end
  def test_user_inputs_f33; assert_in_epsilon(4.0, worksheet.user_inputs_f33, 0.002); end
  def test_user_inputs_g33; assert_equal("In 2050 there is 600 GW of electricity storage capacity", worksheet.user_inputs_g33); end
  def test_user_inputs_b34; assert_in_epsilon(28.0, worksheet.user_inputs_b34, 0.002); end
  def test_user_inputs_c34; assert_equal("Land / food / bioenergy / sequestration", worksheet.user_inputs_c34); end
  def test_user_inputs_d34; assert_equal("Calories consumed", worksheet.user_inputs_d34); end
  def test_user_inputs_f34; assert_in_epsilon(4.0, worksheet.user_inputs_f34, 0.002); end
  def test_user_inputs_g34; assert_in_delta(0.0, (worksheet.user_inputs_g34||0), 0.002); end
  def test_user_inputs_b35; assert_in_epsilon(29.0, worksheet.user_inputs_b35, 0.002); end
  def test_user_inputs_d35; assert_equal("Type of diet", worksheet.user_inputs_d35); end
  def test_user_inputs_f35; assert_in_epsilon(4.0, worksheet.user_inputs_f35, 0.002); end
  def test_user_inputs_g35; assert_in_delta(0.0, (worksheet.user_inputs_g35||0), 0.002); end
  def test_user_inputs_b36; assert_in_epsilon(30.0, worksheet.user_inputs_b36, 0.002); end
  def test_user_inputs_d36; assert_equal("Crop yields", worksheet.user_inputs_d36); end
  def test_user_inputs_f36; assert_in_epsilon(4.0, worksheet.user_inputs_f36, 0.002); end
  def test_user_inputs_g36; assert_in_delta(0.0, (worksheet.user_inputs_g36||0), 0.002); end
  def test_user_inputs_b37; assert_in_epsilon(31.0, worksheet.user_inputs_b37, 0.002); end
  def test_user_inputs_d37; assert_equal("Livestock yields", worksheet.user_inputs_d37); end
  def test_user_inputs_f37; assert_in_epsilon(4.0, worksheet.user_inputs_f37, 0.002); end
  def test_user_inputs_g37; assert_in_delta(0.0, (worksheet.user_inputs_g37||0), 0.002); end
  def test_user_inputs_b38; assert_in_epsilon(32.0, worksheet.user_inputs_b38, 0.002); end
  def test_user_inputs_d38; assert_equal("Bioenergy yields", worksheet.user_inputs_d38); end
  def test_user_inputs_f38; assert_in_epsilon(4.0, worksheet.user_inputs_f38, 0.002); end
  def test_user_inputs_g38; assert_in_delta(0.0, (worksheet.user_inputs_g38||0), 0.002); end
  def test_user_inputs_b39; assert_in_epsilon(33.0, worksheet.user_inputs_b39, 0.002); end
  def test_user_inputs_d39; assert_equal("Bioenergy production", worksheet.user_inputs_d39); end
  def test_user_inputs_f39; assert_in_epsilon(4.0, worksheet.user_inputs_f39, 0.002); end
  def test_user_inputs_g39; assert_in_delta(0.0, (worksheet.user_inputs_g39||0), 0.002); end
  def test_user_inputs_b40; assert_in_epsilon(34.0, worksheet.user_inputs_b40, 0.002); end
  def test_user_inputs_d40; assert_equal("Conservation areas", worksheet.user_inputs_d40); end
  def test_user_inputs_f40; assert_in_epsilon(4.0, worksheet.user_inputs_f40, 0.002); end
  def test_user_inputs_g40; assert_in_delta(0.0, (worksheet.user_inputs_g40||0), 0.002); end
  def test_user_inputs_b41; assert_in_epsilon(35.0, worksheet.user_inputs_b41, 0.002); end
  def test_user_inputs_d41; assert_equal("Land multiuse and synergies", worksheet.user_inputs_d41); end
  def test_user_inputs_f41; assert_in_epsilon(4.0, worksheet.user_inputs_f41, 0.002); end
  def test_user_inputs_g41; assert_in_delta(0.0, (worksheet.user_inputs_g41||0), 0.002); end
  def test_user_inputs_b42; assert_in_epsilon(36.0, worksheet.user_inputs_b42, 0.002); end
  def test_user_inputs_d42; assert_equal("Speculative greenhouse gas removal technologies", worksheet.user_inputs_d42); end
  def test_user_inputs_f42; assert_in_epsilon(4.0, worksheet.user_inputs_f42, 0.002); end
  def test_user_inputs_g42; assert_in_delta(0.0, (worksheet.user_inputs_g42||0), 0.002); end
  def test_user_inputs_b43; assert_in_epsilon(37.0, worksheet.user_inputs_b43, 0.002); end
  def test_user_inputs_d43; assert_equal("Waste production and collection", worksheet.user_inputs_d43); end
  def test_user_inputs_f43; assert_in_epsilon(4.0, worksheet.user_inputs_f43, 0.002); end
  def test_user_inputs_g43; assert_in_delta(0.0, (worksheet.user_inputs_g43||0), 0.002); end
  def test_user_inputs_b44; assert_in_epsilon(38.0, worksheet.user_inputs_b44, 0.002); end
  def test_user_inputs_c44; assert_equal("Action post 2050", worksheet.user_inputs_c44); end
  def test_user_inputs_d44; assert_equal("Emissions trajectory", worksheet.user_inputs_d44); end
  def test_user_inputs_f44; assert_equal("C", worksheet.user_inputs_f44); end
  def test_user_inputs_g44; assert_in_delta(0.0, (worksheet.user_inputs_g44||0), 0.002); end
  def test_user_inputs_b45; assert_in_epsilon(39.0, worksheet.user_inputs_b45, 0.002); end
  def test_user_inputs_c45; assert_equal("Climate uncertainty", worksheet.user_inputs_c45); end
  def test_user_inputs_d45; assert_equal("Atmospheric CO2 fraction", worksheet.user_inputs_d45); end
  def test_user_inputs_f45; assert_in_epsilon(4.0, worksheet.user_inputs_f45, 0.002); end
  def test_user_inputs_g45; assert_in_delta(0.0, (worksheet.user_inputs_g45||0), 0.002); end
  def test_user_inputs_b46; assert_in_epsilon(40.0, worksheet.user_inputs_b46, 0.002); end
  def test_user_inputs_d46; assert_equal("Model uncertainty assumption", worksheet.user_inputs_d46); end
  def test_user_inputs_f46; assert_in_epsilon(3.0, worksheet.user_inputs_f46, 0.002); end
  def test_user_inputs_g46; assert_in_delta(0.0, (worksheet.user_inputs_g46||0), 0.002); end
  def test_outputs_energy_b2; assert_equal("G", worksheet.outputs_energy_b2); end
  def test_outputs_energy_c2; assert_equal("Global", worksheet.outputs_energy_c2); end
  def test_outputs_energy_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_energy_e2); end
  def test_outputs_energy_b3; assert_equal("Energy output", worksheet.outputs_energy_b3); end
  def test_outputs_energy_b5; assert_equal("ENERGY DEMAND", worksheet.outputs_energy_b5); end
  def test_outputs_energy_c7; assert_equal("DEMAND (split by model conventions)", worksheet.outputs_energy_c7); end
  def test_outputs_energy_z7; assert_equal("EJ / year", worksheet.outputs_energy_z7); end
  def test_outputs_energy_r8; assert_equal("Calculated by the model", worksheet.outputs_energy_r8); end
  def test_outputs_energy_c9; assert_equal("Code", worksheet.outputs_energy_c9); end
  def test_outputs_energy_d9; assert_equal("Description", worksheet.outputs_energy_d9); end
  def test_outputs_energy_h9; assert_equal("1975", worksheet.outputs_energy_h9); end
  def test_outputs_energy_i9; assert_equal("1980", worksheet.outputs_energy_i9); end
  def test_outputs_energy_j9; assert_equal("1985", worksheet.outputs_energy_j9); end
  def test_outputs_energy_k9; assert_equal("1990", worksheet.outputs_energy_k9); end
  def test_outputs_energy_l9; assert_equal("1995", worksheet.outputs_energy_l9); end
  def test_outputs_energy_m9; assert_equal("2000", worksheet.outputs_energy_m9); end
  def test_outputs_energy_n9; assert_equal("2005", worksheet.outputs_energy_n9); end
  def test_outputs_energy_o9; assert_in_epsilon(2010.0, worksheet.outputs_energy_o9, 0.002); end
  def test_outputs_energy_p9; assert_in_epsilon(2011.0, worksheet.outputs_energy_p9, 0.002); end
  def test_outputs_energy_r9; assert_in_epsilon(2011.0, worksheet.outputs_energy_r9, 0.002); end
  def test_outputs_energy_s9; assert_equal("2015", worksheet.outputs_energy_s9); end
  def test_outputs_energy_t9; assert_equal("2020", worksheet.outputs_energy_t9); end
  def test_outputs_energy_u9; assert_equal("2025", worksheet.outputs_energy_u9); end
  def test_outputs_energy_v9; assert_equal("2030", worksheet.outputs_energy_v9); end
  def test_outputs_energy_w9; assert_equal("2035", worksheet.outputs_energy_w9); end
  def test_outputs_energy_x9; assert_equal("2040", worksheet.outputs_energy_x9); end
  def test_outputs_energy_y9; assert_equal("2045", worksheet.outputs_energy_y9); end
  def test_outputs_energy_z9; assert_equal("2050", worksheet.outputs_energy_z9); end
  def test_outputs_energy_c10; assert_equal("G.T.01", worksheet.outputs_energy_c10); end
  def test_outputs_energy_d10; assert_equal("Global Road transport", worksheet.outputs_energy_d10); end
  def test_outputs_energy_r10; assert_in_epsilon(73.83860984552977, worksheet.outputs_energy_r10, 0.002); end
  def test_outputs_energy_s10; assert_in_epsilon(88.1077678992704, worksheet.outputs_energy_s10, 0.002); end
  def test_outputs_energy_t10; assert_in_epsilon(99.8208842013308, worksheet.outputs_energy_t10, 0.002); end
  def test_outputs_energy_u10; assert_in_epsilon(125.75737120956549, worksheet.outputs_energy_u10, 0.002); end
  def test_outputs_energy_v10; assert_in_epsilon(140.84480172802762, worksheet.outputs_energy_v10, 0.002); end
  def test_outputs_energy_w10; assert_in_epsilon(174.85711266408077, worksheet.outputs_energy_w10, 0.002); end
  def test_outputs_energy_x10; assert_in_epsilon(194.03967543528307, worksheet.outputs_energy_x10, 0.002); end
  def test_outputs_energy_y10; assert_in_epsilon(238.39561272974117, worksheet.outputs_energy_y10, 0.002); end
  def test_outputs_energy_z10; assert_in_epsilon(262.4842987101663, worksheet.outputs_energy_z10, 0.002); end
  def test_outputs_energy_c11; assert_equal("G.T.02", worksheet.outputs_energy_c11); end
  def test_outputs_energy_d11; assert_equal("Global Rail transport", worksheet.outputs_energy_d11); end
  def test_outputs_energy_r11; assert_in_epsilon(1.669487562701444, worksheet.outputs_energy_r11, 0.002); end
  def test_outputs_energy_s11; assert_in_epsilon(1.9330887868064615, worksheet.outputs_energy_s11, 0.002); end
  def test_outputs_energy_t11; assert_in_epsilon(1.9963717532369936, worksheet.outputs_energy_t11, 0.002); end
  def test_outputs_energy_u11; assert_in_epsilon(2.4725639034452223, worksheet.outputs_energy_u11, 0.002); end
  def test_outputs_energy_v11; assert_in_epsilon(2.570420427859708, worksheet.outputs_energy_v11, 0.002); end
  def test_outputs_energy_w11; assert_in_epsilon(3.2282991774607854, worksheet.outputs_energy_w11, 0.002); end
  def test_outputs_energy_x11; assert_in_epsilon(3.3854194451037602, worksheet.outputs_energy_x11, 0.002); end
  def test_outputs_energy_y11; assert_in_epsilon(4.304530321135214, worksheet.outputs_energy_y11, 0.002); end
  def test_outputs_energy_z11; assert_in_epsilon(4.562011257441154, worksheet.outputs_energy_z11, 0.002); end
  def test_outputs_energy_c12; assert_equal("G.T.03", worksheet.outputs_energy_c12); end
  def test_outputs_energy_d12; assert_equal("Global Aviation transport", worksheet.outputs_energy_d12); end
  def test_outputs_energy_r12; assert_in_epsilon(3.3280108626433007, worksheet.outputs_energy_r12, 0.002); end
  def test_outputs_energy_s12; assert_in_epsilon(4.782841868392269, worksheet.outputs_energy_s12, 0.002); end
  def test_outputs_energy_t12; assert_in_epsilon(4.7828418683990055, worksheet.outputs_energy_t12, 0.002); end
  def test_outputs_energy_u12; assert_in_epsilon(7.264358297126969, worksheet.outputs_energy_u12, 0.002); end
  def test_outputs_energy_v12; assert_in_epsilon(7.264358297135988, worksheet.outputs_energy_v12, 0.002); end
  def test_outputs_energy_w12; assert_in_epsilon(10.792925359600105, worksheet.outputs_energy_w12, 0.002); end
  def test_outputs_energy_x12; assert_in_epsilon(10.792925359612129, worksheet.outputs_energy_x12, 0.002); end
  def test_outputs_energy_y12; assert_in_epsilon(15.770108342678364, worksheet.outputs_energy_y12, 0.002); end
  def test_outputs_energy_z12; assert_in_epsilon(15.770108342694321, worksheet.outputs_energy_z12, 0.002); end
  def test_outputs_energy_c13; assert_equal("G.T.04", worksheet.outputs_energy_c13); end
  def test_outputs_energy_d13; assert_equal("Global Water transport", worksheet.outputs_energy_d13); end
  def test_outputs_energy_r13; assert_in_epsilon(19.905861627150568, worksheet.outputs_energy_r13, 0.002); end
  def test_outputs_energy_s13; assert_in_epsilon(24.31099947102338, worksheet.outputs_energy_s13, 0.002); end
  def test_outputs_energy_t13; assert_in_epsilon(24.31099947102338, worksheet.outputs_energy_t13, 0.002); end
  def test_outputs_energy_u13; assert_in_epsilon(30.933958727416268, worksheet.outputs_energy_u13, 0.002); end
  def test_outputs_energy_v13; assert_in_epsilon(30.933958727416268, worksheet.outputs_energy_v13, 0.002); end
  def test_outputs_energy_w13; assert_in_epsilon(39.346059733006875, worksheet.outputs_energy_w13, 0.002); end
  def test_outputs_energy_x13; assert_in_epsilon(39.346059733006875, worksheet.outputs_energy_x13, 0.002); end
  def test_outputs_energy_y13; assert_in_epsilon(50.02661029238869, worksheet.outputs_energy_y13, 0.002); end
  def test_outputs_energy_z13; assert_in_epsilon(50.02661029238869, worksheet.outputs_energy_z13, 0.002); end
  def test_outputs_energy_c15; assert_equal("G.M.01", worksheet.outputs_energy_c15); end
  def test_outputs_energy_d15; assert_equal("Global Products", worksheet.outputs_energy_d15); end
  def test_outputs_energy_r15; assert_in_delta(0.0, (worksheet.outputs_energy_r15||0), 0.002); end
  def test_outputs_energy_s15; assert_in_delta(0.0, (worksheet.outputs_energy_s15||0), 0.002); end
  def test_outputs_energy_t15; assert_in_delta(0.0, (worksheet.outputs_energy_t15||0), 0.002); end
  def test_outputs_energy_u15; assert_in_delta(0.0, (worksheet.outputs_energy_u15||0), 0.002); end
  def test_outputs_energy_v15; assert_in_delta(0.0, (worksheet.outputs_energy_v15||0), 0.002); end
  def test_outputs_energy_w15; assert_in_delta(0.0, (worksheet.outputs_energy_w15||0), 0.002); end
  def test_outputs_energy_x15; assert_in_delta(0.0, (worksheet.outputs_energy_x15||0), 0.002); end
  def test_outputs_energy_y15; assert_in_delta(0.0, (worksheet.outputs_energy_y15||0), 0.002); end
  def test_outputs_energy_z15; assert_in_delta(0.0, (worksheet.outputs_energy_z15||0), 0.002); end
  def test_outputs_energy_c16; assert_equal("G.M.02", worksheet.outputs_energy_c16); end
  def test_outputs_energy_d16; assert_equal("Global Materials", worksheet.outputs_energy_d16); end
  def test_outputs_energy_r16; assert_in_epsilon(142.9745768838775, worksheet.outputs_energy_r16, 0.002); end
  def test_outputs_energy_s16; assert_in_epsilon(143.2261963938102, worksheet.outputs_energy_s16, 0.002); end
  def test_outputs_energy_t16; assert_in_epsilon(143.5060346217939, worksheet.outputs_energy_t16, 0.002); end
  def test_outputs_energy_u16; assert_in_epsilon(143.7473326723135, worksheet.outputs_energy_u16, 0.002); end
  def test_outputs_energy_v16; assert_in_epsilon(143.95009054452555, worksheet.outputs_energy_v16, 0.002); end
  def test_outputs_energy_w16; assert_in_epsilon(144.11430823854033, worksheet.outputs_energy_w16, 0.002); end
  def test_outputs_energy_x16; assert_in_epsilon(144.23998575538914, worksheet.outputs_energy_x16, 0.002); end
  def test_outputs_energy_y16; assert_in_epsilon(144.32712309423965, worksheet.outputs_energy_y16, 0.002); end
  def test_outputs_energy_z16; assert_in_epsilon(144.37572025496627, worksheet.outputs_energy_z16, 0.002); end
  def test_outputs_energy_c17; assert_equal("G.M.03", worksheet.outputs_energy_c17); end
  def test_outputs_energy_d17; assert_equal("Global Raw resources", worksheet.outputs_energy_d17); end
  def test_outputs_energy_r17; assert_in_delta(0.0, (worksheet.outputs_energy_r17||0), 0.002); end
  def test_outputs_energy_s17; assert_in_delta(0.0, (worksheet.outputs_energy_s17||0), 0.002); end
  def test_outputs_energy_t17; assert_in_delta(0.0, (worksheet.outputs_energy_t17||0), 0.002); end
  def test_outputs_energy_u17; assert_in_delta(0.0, (worksheet.outputs_energy_u17||0), 0.002); end
  def test_outputs_energy_v17; assert_in_delta(0.0, (worksheet.outputs_energy_v17||0), 0.002); end
  def test_outputs_energy_w17; assert_in_delta(0.0, (worksheet.outputs_energy_w17||0), 0.002); end
  def test_outputs_energy_x17; assert_in_delta(0.0, (worksheet.outputs_energy_x17||0), 0.002); end
  def test_outputs_energy_y17; assert_in_delta(0.0, (worksheet.outputs_energy_y17||0), 0.002); end
  def test_outputs_energy_z17; assert_in_delta(0.0, (worksheet.outputs_energy_z17||0), 0.002); end
  def test_outputs_energy_c19; assert_equal("G.B.01", worksheet.outputs_energy_c19); end
  def test_outputs_energy_d19; assert_equal("Global Heating and cooling", worksheet.outputs_energy_d19); end
  def test_outputs_energy_r19; assert_in_epsilon(33.78500873399708, worksheet.outputs_energy_r19, 0.002); end
  def test_outputs_energy_s19; assert_in_epsilon(38.156231122959085, worksheet.outputs_energy_s19, 0.002); end
  def test_outputs_energy_t19; assert_in_epsilon(43.921852204700166, worksheet.outputs_energy_t19, 0.002); end
  def test_outputs_energy_u19; assert_in_epsilon(50.07317738190481, worksheet.outputs_energy_u19, 0.002); end
  def test_outputs_energy_v19; assert_in_epsilon(56.406887098369566, worksheet.outputs_energy_v19, 0.002); end
  def test_outputs_energy_w19; assert_in_epsilon(63.05854799747952, worksheet.outputs_energy_w19, 0.002); end
  def test_outputs_energy_x19; assert_in_epsilon(69.96949318349527, worksheet.outputs_energy_x19, 0.002); end
  def test_outputs_energy_y19; assert_in_epsilon(77.19446985026528, worksheet.outputs_energy_y19, 0.002); end
  def test_outputs_energy_z19; assert_in_epsilon(84.76850921014079, worksheet.outputs_energy_z19, 0.002); end
  def test_outputs_energy_c20; assert_equal("G.B.02", worksheet.outputs_energy_c20); end
  def test_outputs_energy_d20; assert_equal("Global Lighting & appliances", worksheet.outputs_energy_d20); end
  def test_outputs_energy_r20; assert_in_epsilon(8.804413807609672, worksheet.outputs_energy_r20, 0.002); end
  def test_outputs_energy_s20; assert_in_epsilon(10.295923123263883, worksheet.outputs_energy_s20, 0.002); end
  def test_outputs_energy_t20; assert_in_epsilon(12.27310802598077, worksheet.outputs_energy_t20, 0.002); end
  def test_outputs_energy_u20; assert_in_epsilon(14.447948187174763, worksheet.outputs_energy_u20, 0.002); end
  def test_outputs_energy_v20; assert_in_epsilon(16.5737143798529, worksheet.outputs_energy_v20, 0.002); end
  def test_outputs_energy_w20; assert_in_epsilon(18.832056065837307, worksheet.outputs_energy_w20, 0.002); end
  def test_outputs_energy_x20; assert_in_epsilon(20.90911716361839, worksheet.outputs_energy_x20, 0.002); end
  def test_outputs_energy_y20; assert_in_epsilon(23.0413765913127, worksheet.outputs_energy_y20, 0.002); end
  def test_outputs_energy_z20; assert_in_epsilon(25.224273297937376, worksheet.outputs_energy_z20, 0.002); end
  def test_outputs_energy_c21; assert_equal("G.B.03", worksheet.outputs_energy_c21); end
  def test_outputs_energy_d21; assert_equal("Global Cooking", worksheet.outputs_energy_d21); end
  def test_outputs_energy_r21; assert_in_epsilon(10.6975270057544, worksheet.outputs_energy_r21, 0.002); end
  def test_outputs_energy_s21; assert_in_epsilon(11.431002050974692, worksheet.outputs_energy_s21, 0.002); end
  def test_outputs_energy_t21; assert_in_epsilon(12.342881783602547, worksheet.outputs_energy_t21, 0.002); end
  def test_outputs_energy_u21; assert_in_epsilon(13.242796971219148, worksheet.outputs_energy_u21, 0.002); end
  def test_outputs_energy_v21; assert_in_epsilon(14.12747538613868, worksheet.outputs_energy_v21, 0.002); end
  def test_outputs_energy_w21; assert_in_epsilon(14.996985764529283, worksheet.outputs_energy_w21, 0.002); end
  def test_outputs_energy_x21; assert_in_epsilon(15.856122164503745, worksheet.outputs_energy_x21, 0.002); end
  def test_outputs_energy_y21; assert_in_epsilon(16.698766967467066, worksheet.outputs_energy_y21, 0.002); end
  def test_outputs_energy_z21; assert_in_epsilon(17.5286583396, worksheet.outputs_energy_z21, 0.002); end
  def test_outputs_energy_c22; assert_equal("G.B.04", worksheet.outputs_energy_c22); end
  def test_outputs_energy_d22; assert_equal("Global Non-residential", worksheet.outputs_energy_d22); end
  def test_outputs_energy_r22; assert_in_epsilon(29.068244157710808, worksheet.outputs_energy_r22, 0.002); end
  def test_outputs_energy_s22; assert_in_epsilon(32.685337867025304, worksheet.outputs_energy_s22, 0.002); end
  def test_outputs_energy_t22; assert_in_epsilon(37.49278580995054, worksheet.outputs_energy_t22, 0.002); end
  def test_outputs_energy_u22; assert_in_epsilon(42.57473424943155, worksheet.outputs_energy_u22, 0.002); end
  def test_outputs_energy_v22; assert_in_epsilon(47.914285006568065, worksheet.outputs_energy_v22, 0.002); end
  def test_outputs_energy_w22; assert_in_epsilon(53.505016704357296, worksheet.outputs_energy_w22, 0.002); end
  def test_outputs_energy_x22; assert_in_epsilon(59.32684516426595, worksheet.outputs_energy_x22, 0.002); end
  def test_outputs_energy_y22; assert_in_epsilon(65.34378604833448, worksheet.outputs_energy_y22, 0.002); end
  def test_outputs_energy_z22; assert_in_epsilon(71.51750262017626, worksheet.outputs_energy_z22, 0.002); end
  def test_outputs_energy_c24; assert_equal("G.F.01", worksheet.outputs_energy_c24); end
  def test_outputs_energy_d24; assert_equal("Global Energy for agricultural production", worksheet.outputs_energy_d24); end
  def test_outputs_energy_r24; assert_in_delta(0.040150627487999996, worksheet.outputs_energy_r24, 0.002); end
  def test_outputs_energy_s24; assert_in_delta(0.043971049715004776, worksheet.outputs_energy_s24, 0.002); end
  def test_outputs_energy_t24; assert_in_delta(0.04795113002112218, worksheet.outputs_energy_t24, 0.002); end
  def test_outputs_energy_u24; assert_in_delta(0.05091658880501761, worksheet.outputs_energy_u24, 0.002); end
  def test_outputs_energy_v24; assert_in_delta(0.05319244508370181, worksheet.outputs_energy_v24, 0.002); end
  def test_outputs_energy_w24; assert_in_delta(0.054864314341399184, worksheet.outputs_energy_w24, 0.002); end
  def test_outputs_energy_x24; assert_in_delta(0.05600657184261917, worksheet.outputs_energy_x24, 0.002); end
  def test_outputs_energy_y24; assert_in_delta(0.05668408861327123, worksheet.outputs_energy_y24, 0.002); end
  def test_outputs_energy_z24; assert_in_delta(0.056955681311071094, worksheet.outputs_energy_z24, 0.002); end
  def test_outputs_energy_c26; assert_equal("G.G.01", worksheet.outputs_energy_c26); end
  def test_outputs_energy_d26; assert_equal("Global Geosequestration and storage of CO2", worksheet.outputs_energy_d26); end
  def test_outputs_energy_r26; assert_in_delta(0.0, (worksheet.outputs_energy_r26||0), 0.002); end
  def test_outputs_energy_s26; assert_in_delta(0.0, (worksheet.outputs_energy_s26||0), 0.002); end
  def test_outputs_energy_t26; assert_in_delta(0.0, (worksheet.outputs_energy_t26||0), 0.002); end
  def test_outputs_energy_u26; assert_in_delta(0.0, (worksheet.outputs_energy_u26||0), 0.002); end
  def test_outputs_energy_v26; assert_in_delta(0.0, (worksheet.outputs_energy_v26||0), 0.002); end
  def test_outputs_energy_w26; assert_in_delta(0.0, (worksheet.outputs_energy_w26||0), 0.002); end
  def test_outputs_energy_x26; assert_in_delta(0.0, (worksheet.outputs_energy_x26||0), 0.002); end
  def test_outputs_energy_y26; assert_in_delta(0.0, (worksheet.outputs_energy_y26||0), 0.002); end
  def test_outputs_energy_z26; assert_in_delta(0.0, (worksheet.outputs_energy_z26||0), 0.002); end
  def test_outputs_energy_r27; assert_in_epsilon(324.11189111446254, worksheet.outputs_energy_r27, 0.002); end
  def test_outputs_energy_s27; assert_in_epsilon(354.9733596332407, worksheet.outputs_energy_s27, 0.002); end
  def test_outputs_energy_t27; assert_in_epsilon(380.4957108700392, worksheet.outputs_energy_t27, 0.002); end
  def test_outputs_energy_u27; assert_in_epsilon(430.5651581884028, worksheet.outputs_energy_u27, 0.002); end
  def test_outputs_energy_v27; assert_in_epsilon(460.6391840409781, worksheet.outputs_energy_v27, 0.002); end
  def test_outputs_energy_w27; assert_in_epsilon(522.7861760192337, worksheet.outputs_energy_w27, 0.002); end
  def test_outputs_energy_x27; assert_in_epsilon(557.921649976121, worksheet.outputs_energy_x27, 0.002); end
  def test_outputs_energy_y27; assert_in_epsilon(635.1590683261757, worksheet.outputs_energy_y27, 0.002); end
  def test_outputs_energy_z27; assert_in_epsilon(676.3146480068223, worksheet.outputs_energy_z27, 0.002); end
  def test_outputs_energy_c30; assert_equal("DEMAND (consistent with IEA categories)", worksheet.outputs_energy_c30); end
  def test_outputs_energy_z30; assert_equal("EJ / year", worksheet.outputs_energy_z30); end
  def test_outputs_energy_h31; assert_equal("Historic actuals", worksheet.outputs_energy_h31); end
  def test_outputs_energy_r31; assert_equal("Calculated by the model", worksheet.outputs_energy_r31); end
  def test_outputs_energy_d32; assert_equal("Description", worksheet.outputs_energy_d32); end
  def test_outputs_energy_h32; assert_equal("1975", worksheet.outputs_energy_h32); end
  def test_outputs_energy_i32; assert_equal("1980", worksheet.outputs_energy_i32); end
  def test_outputs_energy_j32; assert_equal("1985", worksheet.outputs_energy_j32); end
  def test_outputs_energy_k32; assert_equal("1990", worksheet.outputs_energy_k32); end
  def test_outputs_energy_l32; assert_equal("1995", worksheet.outputs_energy_l32); end
  def test_outputs_energy_m32; assert_equal("2000", worksheet.outputs_energy_m32); end
  def test_outputs_energy_n32; assert_equal("2005", worksheet.outputs_energy_n32); end
  def test_outputs_energy_o32; assert_in_epsilon(2010.0, worksheet.outputs_energy_o32, 0.002); end
  def test_outputs_energy_p32; assert_in_epsilon(2011.0, worksheet.outputs_energy_p32, 0.002); end
  def test_outputs_energy_r32; assert_in_epsilon(2011.0, worksheet.outputs_energy_r32, 0.002); end
  def test_outputs_energy_s32; assert_equal("2015", worksheet.outputs_energy_s32); end
  def test_outputs_energy_t32; assert_equal("2020", worksheet.outputs_energy_t32); end
  def test_outputs_energy_u32; assert_equal("2025", worksheet.outputs_energy_u32); end
  def test_outputs_energy_v32; assert_equal("2030", worksheet.outputs_energy_v32); end
  def test_outputs_energy_w32; assert_equal("2035", worksheet.outputs_energy_w32); end
  def test_outputs_energy_x32; assert_equal("2040", worksheet.outputs_energy_x32); end
  def test_outputs_energy_y32; assert_equal("2045", worksheet.outputs_energy_y32); end
  def test_outputs_energy_z32; assert_equal("2050", worksheet.outputs_energy_z32); end
  def test_outputs_energy_d33; assert_equal("Global transport", worksheet.outputs_energy_d33); end
  def test_outputs_energy_h33; assert_in_epsilon(46.088076, worksheet.outputs_energy_h33, 0.002); end
  def test_outputs_energy_i33; assert_in_epsilon(52.216692, worksheet.outputs_energy_i33, 0.002); end
  def test_outputs_energy_j33; assert_in_epsilon(55.017578, worksheet.outputs_energy_j33, 0.002); end
  def test_outputs_energy_k33; assert_in_epsilon(66.176648, worksheet.outputs_energy_k33, 0.002); end
  def test_outputs_energy_l33; assert_in_epsilon(72.28669599999999, worksheet.outputs_energy_l33, 0.002); end
  def test_outputs_energy_m33; assert_in_epsilon(82.00573200000001, worksheet.outputs_energy_m33, 0.002); end
  def test_outputs_energy_n33; assert_in_epsilon(92.09042600000001, worksheet.outputs_energy_n33, 0.002); end
  def test_outputs_energy_o33; assert_in_epsilon(100.922599, worksheet.outputs_energy_o33, 0.002); end
  def test_outputs_energy_p33; assert_in_epsilon(102.364571, worksheet.outputs_energy_p33, 0.002); end
  def test_outputs_energy_r33; assert_in_epsilon(98.74196989802509, worksheet.outputs_energy_r33, 0.002); end
  def test_outputs_energy_s33; assert_in_epsilon(119.13469802549251, worksheet.outputs_energy_s33, 0.002); end
  def test_outputs_energy_t33; assert_in_epsilon(130.91109729399017, worksheet.outputs_energy_t33, 0.002); end
  def test_outputs_energy_u33; assert_in_epsilon(166.42825213755395, worksheet.outputs_energy_u33, 0.002); end
  def test_outputs_energy_v33; assert_in_epsilon(181.6135391804396, worksheet.outputs_energy_v33, 0.002); end
  def test_outputs_energy_w33; assert_in_epsilon(228.22439693414856, worksheet.outputs_energy_w33, 0.002); end
  def test_outputs_energy_x33; assert_in_epsilon(247.56407997300585, worksheet.outputs_energy_x33, 0.002); end
  def test_outputs_energy_y33; assert_in_epsilon(308.49686168594343, worksheet.outputs_energy_y33, 0.002); end
  def test_outputs_energy_z33; assert_in_epsilon(332.8430286026904, worksheet.outputs_energy_z33, 0.002); end
  def test_outputs_energy_d34; assert_equal("Global buildings", worksheet.outputs_energy_d34); end
  def test_outputs_energy_h34; assert_in_epsilon(64.751263, worksheet.outputs_energy_h34, 0.002); end
  def test_outputs_energy_i34; assert_in_epsilon(71.065102, worksheet.outputs_energy_i34, 0.002); end
  def test_outputs_energy_j34; assert_in_epsilon(78.65053599999999, worksheet.outputs_energy_j34, 0.002); end
  def test_outputs_energy_k34; assert_in_epsilon(83.372944, worksheet.outputs_energy_k34, 0.002); end
  def test_outputs_energy_l34; assert_in_epsilon(93.688429, worksheet.outputs_energy_l34, 0.002); end
  def test_outputs_energy_m34; assert_in_epsilon(99.817678, worksheet.outputs_energy_m34, 0.002); end
  def test_outputs_energy_n34; assert_in_epsilon(108.462211, worksheet.outputs_energy_n34, 0.002); end
  def test_outputs_energy_o34; assert_in_epsilon(116.897329, worksheet.outputs_energy_o34, 0.002); end
  def test_outputs_energy_p34; assert_in_epsilon(116.729656, worksheet.outputs_energy_p34, 0.002); end
  def test_outputs_energy_r34; assert_in_epsilon(82.35519370507197, worksheet.outputs_energy_r34, 0.002); end
  def test_outputs_energy_s34; assert_in_epsilon(92.56849416422295, worksheet.outputs_energy_s34, 0.002); end
  def test_outputs_energy_t34; assert_in_epsilon(106.03062782423402, worksheet.outputs_energy_t34, 0.002); end
  def test_outputs_energy_u34; assert_in_epsilon(120.33865678973027, worksheet.outputs_energy_u34, 0.002); end
  def test_outputs_energy_v34; assert_in_epsilon(135.02236187092922, worksheet.outputs_energy_v34, 0.002); end
  def test_outputs_energy_w34; assert_in_epsilon(150.39260653220342, worksheet.outputs_energy_w34, 0.002); end
  def test_outputs_energy_x34; assert_in_epsilon(166.06157767588337, worksheet.outputs_energy_x34, 0.002); end
  def test_outputs_energy_y34; assert_in_epsilon(182.27839945737952, worksheet.outputs_energy_y34, 0.002); end
  def test_outputs_energy_z34; assert_in_epsilon(199.03894346785444, worksheet.outputs_energy_z34, 0.002); end
  def test_outputs_energy_d35; assert_equal("Global industry", worksheet.outputs_energy_d35); end
  def test_outputs_energy_h35; assert_in_epsilon(63.56465600000001, worksheet.outputs_energy_h35, 0.002); end
  def test_outputs_energy_i35; assert_in_epsilon(74.592409, worksheet.outputs_energy_i35, 0.002); end
  def test_outputs_energy_j35; assert_in_epsilon(73.204273, worksheet.outputs_energy_j35, 0.002); end
  def test_outputs_energy_k35; assert_in_epsilon(75.948859, worksheet.outputs_energy_k35, 0.002); end
  def test_outputs_energy_l35; assert_in_epsilon(75.240911, worksheet.outputs_energy_l35, 0.002); end
  def test_outputs_energy_m35; assert_in_epsilon(79.763228, worksheet.outputs_energy_m35, 0.002); end
  def test_outputs_energy_n35; assert_in_epsilon(90.429951, worksheet.outputs_energy_n35, 0.002); end
  def test_outputs_energy_o35; assert_in_epsilon(103.74512, worksheet.outputs_energy_o35, 0.002); end
  def test_outputs_energy_p35; assert_in_epsilon(107.045773, worksheet.outputs_energy_p35, 0.002); end
  def test_outputs_energy_r35; assert_in_epsilon(142.9745768838775, worksheet.outputs_energy_r35, 0.002); end
  def test_outputs_energy_s35; assert_in_epsilon(143.2261963938102, worksheet.outputs_energy_s35, 0.002); end
  def test_outputs_energy_t35; assert_in_epsilon(143.5060346217939, worksheet.outputs_energy_t35, 0.002); end
  def test_outputs_energy_u35; assert_in_epsilon(143.7473326723135, worksheet.outputs_energy_u35, 0.002); end
  def test_outputs_energy_v35; assert_in_epsilon(143.95009054452555, worksheet.outputs_energy_v35, 0.002); end
  def test_outputs_energy_w35; assert_in_epsilon(144.11430823854033, worksheet.outputs_energy_w35, 0.002); end
  def test_outputs_energy_x35; assert_in_epsilon(144.23998575538914, worksheet.outputs_energy_x35, 0.002); end
  def test_outputs_energy_y35; assert_in_epsilon(144.32712309423965, worksheet.outputs_energy_y35, 0.002); end
  def test_outputs_energy_z35; assert_in_epsilon(144.37572025496627, worksheet.outputs_energy_z35, 0.002); end
  def test_outputs_energy_d36; assert_equal("total", worksheet.outputs_energy_d36); end
  def test_outputs_energy_h36; assert_in_epsilon(174.403995, worksheet.outputs_energy_h36, 0.002); end
  def test_outputs_energy_i36; assert_in_epsilon(197.874203, worksheet.outputs_energy_i36, 0.002); end
  def test_outputs_energy_j36; assert_in_epsilon(206.872387, worksheet.outputs_energy_j36, 0.002); end
  def test_outputs_energy_k36; assert_in_epsilon(225.49845100000002, worksheet.outputs_energy_k36, 0.002); end
  def test_outputs_energy_l36; assert_in_epsilon(241.21603599999997, worksheet.outputs_energy_l36, 0.002); end
  def test_outputs_energy_m36; assert_in_epsilon(261.586638, worksheet.outputs_energy_m36, 0.002); end
  def test_outputs_energy_n36; assert_in_epsilon(290.982588, worksheet.outputs_energy_n36, 0.002); end
  def test_outputs_energy_o36; assert_in_epsilon(321.565048, worksheet.outputs_energy_o36, 0.002); end
  def test_outputs_energy_p36; assert_in_epsilon(326.14, worksheet.outputs_energy_p36, 0.002); end
  def test_outputs_energy_r36; assert_in_epsilon(324.07174048697453, worksheet.outputs_energy_r36, 0.002); end
  def test_outputs_energy_s36; assert_in_epsilon(354.9293885835257, worksheet.outputs_energy_s36, 0.002); end
  def test_outputs_energy_t36; assert_in_epsilon(380.4477597400181, worksheet.outputs_energy_t36, 0.002); end
  def test_outputs_energy_u36; assert_in_epsilon(430.51424159959777, worksheet.outputs_energy_u36, 0.002); end
  def test_outputs_energy_v36; assert_in_epsilon(460.58599159589437, worksheet.outputs_energy_v36, 0.002); end
  def test_outputs_energy_w36; assert_in_epsilon(522.7313117048923, worksheet.outputs_energy_w36, 0.002); end
  def test_outputs_energy_x36; assert_in_epsilon(557.8656434042783, worksheet.outputs_energy_x36, 0.002); end
  def test_outputs_energy_y36; assert_in_epsilon(635.1023842375625, worksheet.outputs_energy_y36, 0.002); end
  def test_outputs_energy_z36; assert_in_epsilon(676.2576923255111, worksheet.outputs_energy_z36, 0.002); end
  def test_outputs_energy_b39; assert_equal("ENERGY SUPPLY", worksheet.outputs_energy_b39); end
  def test_outputs_energy_c41; assert_equal("SUPPLY (split by model conventions)", worksheet.outputs_energy_c41); end
  def test_outputs_energy_z41; assert_equal("EJ / year", worksheet.outputs_energy_z41); end
  def test_outputs_energy_h42; assert_equal("Historic actuals", worksheet.outputs_energy_h42); end
  def test_outputs_energy_r42; assert_equal("Calculated by the model", worksheet.outputs_energy_r42); end
  def test_outputs_energy_c43; assert_equal("Code", worksheet.outputs_energy_c43); end
  def test_outputs_energy_d43; assert_equal("Description", worksheet.outputs_energy_d43); end
  def test_outputs_energy_e43; assert_equal("For lookups", worksheet.outputs_energy_e43); end
  def test_outputs_energy_h43; assert_equal("1975", worksheet.outputs_energy_h43); end
  def test_outputs_energy_i43; assert_equal("1980", worksheet.outputs_energy_i43); end
  def test_outputs_energy_j43; assert_equal("1985", worksheet.outputs_energy_j43); end
  def test_outputs_energy_k43; assert_equal("1990", worksheet.outputs_energy_k43); end
  def test_outputs_energy_l43; assert_equal("1995", worksheet.outputs_energy_l43); end
  def test_outputs_energy_m43; assert_equal("2000", worksheet.outputs_energy_m43); end
  def test_outputs_energy_n43; assert_equal("2005", worksheet.outputs_energy_n43); end
  def test_outputs_energy_o43; assert_in_epsilon(2010.0, worksheet.outputs_energy_o43, 0.002); end
  def test_outputs_energy_p43; assert_in_epsilon(2011.0, worksheet.outputs_energy_p43, 0.002); end
  def test_outputs_energy_r43; assert_in_epsilon(2011.0, worksheet.outputs_energy_r43, 0.002); end
  def test_outputs_energy_s43; assert_equal("2015", worksheet.outputs_energy_s43); end
  def test_outputs_energy_t43; assert_equal("2020", worksheet.outputs_energy_t43); end
  def test_outputs_energy_u43; assert_equal("2025", worksheet.outputs_energy_u43); end
  def test_outputs_energy_v43; assert_equal("2030", worksheet.outputs_energy_v43); end
  def test_outputs_energy_w43; assert_equal("2035", worksheet.outputs_energy_w43); end
  def test_outputs_energy_x43; assert_equal("2040", worksheet.outputs_energy_x43); end
  def test_outputs_energy_y43; assert_equal("2045", worksheet.outputs_energy_y43); end
  def test_outputs_energy_z43; assert_equal("2050", worksheet.outputs_energy_z43); end
  def test_outputs_energy_c44; assert_equal("G.N.01", worksheet.outputs_energy_c44); end
  def test_outputs_energy_d44; assert_equal("Global Nuclear fission", worksheet.outputs_energy_d44); end
  def test_outputs_energy_e44; assert_equal("Nuclear", worksheet.outputs_energy_e44); end
  def test_outputs_energy_r44; assert_in_epsilon(29.367795273719306, worksheet.outputs_energy_r44, 0.002); end
  def test_outputs_energy_s44; assert_in_epsilon(31.947120493686867, worksheet.outputs_energy_s44, 0.002); end
  def test_outputs_energy_t44; assert_in_epsilon(34.154566988311615, worksheet.outputs_energy_t44, 0.002); end
  def test_outputs_energy_u44; assert_in_epsilon(38.759968396574656, worksheet.outputs_energy_u44, 0.002); end
  def test_outputs_energy_v44; assert_in_epsilon(44.14976883357653, worksheet.outputs_energy_v44, 0.002); end
  def test_outputs_energy_w44; assert_in_epsilon(50.207549807609716, worksheet.outputs_energy_w44, 0.002); end
  def test_outputs_energy_x44; assert_in_epsilon(57.10991701410598, worksheet.outputs_energy_x44, 0.002); end
  def test_outputs_energy_y44; assert_in_epsilon(65.02075229215902, worksheet.outputs_energy_y44, 0.002); end
  def test_outputs_energy_z44; assert_in_epsilon(74.09233924002172, worksheet.outputs_energy_z44, 0.002); end
  def test_outputs_energy_c46; assert_equal("G.R.01", worksheet.outputs_energy_c46); end
  def test_outputs_energy_d46; assert_equal("Global Solar", worksheet.outputs_energy_d46); end
  def test_outputs_energy_e46; assert_equal("Solar", worksheet.outputs_energy_e46); end
  def test_outputs_energy_r46; assert_in_delta(0.23247432, worksheet.outputs_energy_r46, 0.002); end
  def test_outputs_energy_s46; assert_in_epsilon(1.0353780784968665, worksheet.outputs_energy_s46, 0.002); end
  def test_outputs_energy_t46; assert_in_epsilon(6.644579173386575, worksheet.outputs_energy_t46, 0.002); end
  def test_outputs_energy_u46; assert_in_epsilon(10.44136786180346, worksheet.outputs_energy_u46, 0.002); end
  def test_outputs_energy_v46; assert_in_epsilon(16.784217079186863, worksheet.outputs_energy_v46, 0.002); end
  def test_outputs_energy_w46; assert_in_epsilon(23.306387268442393, worksheet.outputs_energy_w46, 0.002); end
  def test_outputs_energy_x46; assert_in_epsilon(32.52059351712266, worksheet.outputs_energy_x46, 0.002); end
  def test_outputs_energy_y46; assert_in_epsilon(43.18619472498516, worksheet.outputs_energy_y46, 0.002); end
  def test_outputs_energy_z46; assert_in_epsilon(57.355709165582, worksheet.outputs_energy_z46, 0.002); end
  def test_outputs_energy_c47; assert_equal("G.R.02", worksheet.outputs_energy_c47); end
  def test_outputs_energy_d47; assert_equal("Global Wind", worksheet.outputs_energy_d47); end
  def test_outputs_energy_e47; assert_equal("Wind", worksheet.outputs_energy_e47); end
  def test_outputs_energy_r47; assert_in_epsilon(1.62541521288, worksheet.outputs_energy_r47, 0.002); end
  def test_outputs_energy_s47; assert_in_epsilon(3.601037736, worksheet.outputs_energy_s47, 0.002); end
  def test_outputs_energy_t47; assert_in_epsilon(8.007109847999999, worksheet.outputs_energy_t47, 0.002); end
  def test_outputs_energy_u47; assert_in_epsilon(12.678581375999999, worksheet.outputs_energy_u47, 0.002); end
  def test_outputs_energy_v47; assert_in_epsilon(20.902491935999997, worksheet.outputs_energy_v47, 0.002); end
  def test_outputs_energy_w47; assert_in_epsilon(28.711104479999996, worksheet.outputs_energy_w47, 0.002); end
  def test_outputs_energy_x47; assert_in_epsilon(39.500332344, worksheet.outputs_energy_x47, 0.002); end
  def test_outputs_energy_y47; assert_in_epsilon(44.963584056, worksheet.outputs_energy_y47, 0.002); end
  def test_outputs_energy_z47; assert_in_epsilon(51.293091888000006, worksheet.outputs_energy_z47, 0.002); end
  def test_outputs_energy_c48; assert_equal("G.R.03", worksheet.outputs_energy_c48); end
  def test_outputs_energy_d48; assert_equal("Global Tidal", worksheet.outputs_energy_d48); end
  def test_outputs_energy_e48; assert_equal("Marine", worksheet.outputs_energy_e48); end
  def test_outputs_energy_r48; assert_in_delta(0.0078894, worksheet.outputs_energy_r48, 0.002); end
  def test_outputs_energy_s48; assert_in_delta(0.0078894, worksheet.outputs_energy_s48, 0.002); end
  def test_outputs_energy_t48; assert_in_delta(0.0236682, worksheet.outputs_energy_t48, 0.002); end
  def test_outputs_energy_u48; assert_in_delta(0.07889399999999999, worksheet.outputs_energy_u48, 0.002); end
  def test_outputs_energy_v48; assert_in_delta(0.14200919999999997, worksheet.outputs_energy_v48, 0.002); end
  def test_outputs_energy_w48; assert_in_delta(0.2445714, worksheet.outputs_energy_w48, 0.002); end
  def test_outputs_energy_x48; assert_in_delta(0.3313548, worksheet.outputs_energy_x48, 0.002); end
  def test_outputs_energy_y48; assert_in_delta(0.4023594, worksheet.outputs_energy_y48, 0.002); end
  def test_outputs_energy_z48; assert_in_delta(0.5049216, worksheet.outputs_energy_z48, 0.002); end
  def test_outputs_energy_c49; assert_equal("G.R.04", worksheet.outputs_energy_c49); end
  def test_outputs_energy_d49; assert_equal("Global Wave", worksheet.outputs_energy_d49); end
  def test_outputs_energy_e49; assert_equal("Marine", worksheet.outputs_energy_e49); end
  def test_outputs_energy_r49; assert_in_delta(9.467279999999999e-05, worksheet.outputs_energy_r49, 0.002); end
  def test_outputs_energy_s49; assert_in_delta(0.00946728, worksheet.outputs_energy_s49, 0.002); end
  def test_outputs_energy_t49; assert_in_delta(0.03786912, worksheet.outputs_energy_t49, 0.002); end
  def test_outputs_energy_u49; assert_in_delta(0.13254192, worksheet.outputs_energy_u49, 0.002); end
  def test_outputs_energy_v49; assert_in_delta(0.28401839999999995, worksheet.outputs_energy_v49, 0.002); end
  def test_outputs_energy_w49; assert_in_delta(0.54910224, worksheet.outputs_energy_w49, 0.002); end
  def test_outputs_energy_x49; assert_in_delta(0.8047188, worksheet.outputs_energy_x49, 0.002); end
  def test_outputs_energy_y49; assert_in_epsilon(1.1076717600000001, worksheet.outputs_energy_y49, 0.002); end
  def test_outputs_energy_z49; assert_in_epsilon(1.35382104, worksheet.outputs_energy_z49, 0.002); end
  def test_outputs_energy_c50; assert_equal("G.R.05", worksheet.outputs_energy_c50); end
  def test_outputs_energy_d50; assert_equal("Global Geothermal", worksheet.outputs_energy_d50); end
  def test_outputs_energy_e50; assert_equal("Geothermal", worksheet.outputs_energy_e50); end
  def test_outputs_energy_r50; assert_in_epsilon(2.9184468480000003, worksheet.outputs_energy_r50, 0.002); end
  def test_outputs_energy_s50; assert_in_epsilon(4.111224664435656, worksheet.outputs_energy_s50, 0.002); end
  def test_outputs_energy_t50; assert_in_epsilon(6.240040249006225, worksheet.outputs_energy_t50, 0.002); end
  def test_outputs_energy_u50; assert_in_epsilon(10.631628910785619, worksheet.outputs_energy_u50, 0.002); end
  def test_outputs_energy_v50; assert_in_epsilon(18.114057794059693, worksheet.outputs_energy_v50, 0.002); end
  def test_outputs_energy_w50; assert_in_epsilon(30.87264011059907, worksheet.outputs_energy_w50, 0.002); end
  def test_outputs_energy_x50; assert_in_epsilon(52.705878661266254, worksheet.outputs_energy_x50, 0.002); end
  def test_outputs_energy_y50; assert_in_epsilon(69.516138364427, worksheet.outputs_energy_y50, 0.002); end
  def test_outputs_energy_z50; assert_in_epsilon(91.80392727272728, worksheet.outputs_energy_z50, 0.002); end
  def test_outputs_energy_c51; assert_equal("G.R.06", worksheet.outputs_energy_c51); end
  def test_outputs_energy_d51; assert_equal("Global Hydro", worksheet.outputs_energy_d51); end
  def test_outputs_energy_e51; assert_equal("Hydro", worksheet.outputs_energy_e51); end
  def test_outputs_energy_r51; assert_in_epsilon(13.7748924, worksheet.outputs_energy_r51, 0.002); end
  def test_outputs_energy_s51; assert_in_epsilon(15.4079982, worksheet.outputs_energy_s51, 0.002); end
  def test_outputs_energy_t51; assert_in_epsilon(17.864757360000002, worksheet.outputs_energy_t51, 0.002); end
  def test_outputs_energy_u51; assert_in_epsilon(20.704941360000003, worksheet.outputs_energy_u51, 0.002); end
  def test_outputs_energy_v51; assert_in_epsilon(23.9995548, worksheet.outputs_energy_v51, 0.002); end
  def test_outputs_energy_w51; assert_in_epsilon(27.819602280000005, worksheet.outputs_energy_w51, 0.002); end
  def test_outputs_energy_x51; assert_in_epsilon(32.25028932, worksheet.outputs_energy_x51, 0.002); end
  def test_outputs_energy_y51; assert_in_epsilon(37.39102236000001, worksheet.outputs_energy_y51, 0.002); end
  def test_outputs_energy_z51; assert_in_epsilon(43.35540876000001, worksheet.outputs_energy_z51, 0.002); end
  def test_outputs_energy_c52; assert_equal("G.R.06", worksheet.outputs_energy_c52); end
  def test_outputs_energy_d52; assert_equal("Global Hydro", worksheet.outputs_energy_d52); end
  def test_outputs_energy_e52; assert_equal("Storage", worksheet.outputs_energy_e52); end
  def test_outputs_energy_r52; assert_in_epsilon(4.808777142857143, worksheet.outputs_energy_r52, 0.002); end
  def test_outputs_energy_s52; assert_in_epsilon(5.836180401416765, worksheet.outputs_energy_s52, 0.002); end
  def test_outputs_energy_t52; assert_in_epsilon(7.073810011838688, worksheet.outputs_energy_t52, 0.002); end
  def test_outputs_energy_u52; assert_in_epsilon(8.574950277340125, worksheet.outputs_energy_u52, 0.002); end
  def test_outputs_energy_v52; assert_in_epsilon(10.393210074950943, worksheet.outputs_energy_v52, 0.002); end
  def test_outputs_energy_w52; assert_in_epsilon(12.600265734742583, worksheet.outputs_energy_w52, 0.002); end
  def test_outputs_energy_x52; assert_in_epsilon(15.273709263004099, worksheet.outputs_energy_x52, 0.002); end
  def test_outputs_energy_y52; assert_in_epsilon(18.516046815226314, worksheet.outputs_energy_y52, 0.002); end
  def test_outputs_energy_z52; assert_in_epsilon(22.87715101264102, worksheet.outputs_energy_z52, 0.002); end
  def test_outputs_energy_c54; assert_equal("G.R.07", worksheet.outputs_energy_c54); end
  def test_outputs_energy_d54; assert_equal("Global Environmental heat", worksheet.outputs_energy_d54); end
  def test_outputs_energy_r54; assert_in_epsilon(3.840427113578294, worksheet.outputs_energy_r54, 0.002); end
  def test_outputs_energy_s54; assert_in_epsilon(4.405494094329242, worksheet.outputs_energy_s54, 0.002); end
  def test_outputs_energy_t54; assert_in_epsilon(5.128384889772622, worksheet.outputs_energy_t54, 0.002); end
  def test_outputs_energy_u54; assert_in_epsilon(5.9057288226703175, worksheet.outputs_energy_u54, 0.002); end
  def test_outputs_energy_v54; assert_in_epsilon(6.619960820553207, worksheet.outputs_energy_v54, 0.002); end
  def test_outputs_energy_w54; assert_in_epsilon(7.360159409836676, worksheet.outputs_energy_w54, 0.002); end
  def test_outputs_energy_x54; assert_in_epsilon(8.062773925158885, worksheet.outputs_energy_x54, 0.002); end
  def test_outputs_energy_y54; assert_in_epsilon(8.784071498265545, worksheet.outputs_energy_y54, 0.002); end
  def test_outputs_energy_z54; assert_in_epsilon(9.528289455510446, worksheet.outputs_energy_z54, 0.002); end
  def test_outputs_energy_c55; assert_equal("G.H.01", worksheet.outputs_energy_c55); end
  def test_outputs_energy_d55; assert_equal("Global Heat transport", worksheet.outputs_energy_d55); end
  def test_outputs_energy_r55; assert_in_epsilon(12.145002945792594, worksheet.outputs_energy_r55, 0.002); end
  def test_outputs_energy_s55; assert_in_epsilon(13.195969938169057, worksheet.outputs_energy_s55, 0.002); end
  def test_outputs_energy_t55; assert_in_epsilon(14.541563701526364, worksheet.outputs_energy_t55, 0.002); end
  def test_outputs_energy_u55; assert_in_epsilon(15.995592560153128, worksheet.outputs_energy_u55, 0.002); end
  def test_outputs_energy_v55; assert_in_epsilon(17.31987016460406, worksheet.outputs_energy_v55, 0.002); end
  def test_outputs_energy_w55; assert_in_epsilon(18.689281573340967, worksheet.outputs_energy_w55, 0.002); end
  def test_outputs_energy_x55; assert_in_epsilon(20.110334341098014, worksheet.outputs_energy_x55, 0.002); end
  def test_outputs_energy_y55; assert_in_epsilon(21.575195113439705, worksheet.outputs_energy_y55, 0.002); end
  def test_outputs_energy_z55; assert_in_epsilon(23.09743999891543, worksheet.outputs_energy_z55, 0.002); end
  def test_outputs_energy_c57; assert_equal("G.BM.05", worksheet.outputs_energy_c57); end
  def test_outputs_energy_d57; assert_equal("Global Dry biomass and waste", worksheet.outputs_energy_d57); end
  def test_outputs_energy_r57; assert_in_epsilon(62.96667474335968, worksheet.outputs_energy_r57, 0.002); end
  def test_outputs_energy_s57; assert_in_epsilon(80.90725331469295, worksheet.outputs_energy_s57, 0.002); end
  def test_outputs_energy_t57; assert_in_epsilon(101.89417808596738, worksheet.outputs_energy_t57, 0.002); end
  def test_outputs_energy_u57; assert_in_epsilon(98.67119320332155, worksheet.outputs_energy_u57, 0.002); end
  def test_outputs_energy_v57; assert_in_epsilon(95.43714349158347, worksheet.outputs_energy_v57, 0.002); end
  def test_outputs_energy_w57; assert_in_epsilon(92.19237870157879, worksheet.outputs_energy_w57, 0.002); end
  def test_outputs_energy_x57; assert_in_epsilon(88.9362112445397, worksheet.outputs_energy_x57, 0.002); end
  def test_outputs_energy_y57; assert_in_epsilon(85.66711621920523, worksheet.outputs_energy_y57, 0.002); end
  def test_outputs_energy_z57; assert_in_epsilon(82.38385911305326, worksheet.outputs_energy_z57, 0.002); end
  def test_outputs_energy_c58; assert_equal("G.BM.06", worksheet.outputs_energy_c58); end
  def test_outputs_energy_d58; assert_equal("Global Wet biomass and waste", worksheet.outputs_energy_d58); end
  def test_outputs_energy_r58; assert_in_delta(0.0, (worksheet.outputs_energy_r58||0), 0.002); end
  def test_outputs_energy_s58; assert_in_delta(0.0, (worksheet.outputs_energy_s58||0), 0.002); end
  def test_outputs_energy_t58; assert_in_delta(0.0, (worksheet.outputs_energy_t58||0), 0.002); end
  def test_outputs_energy_u58; assert_in_delta(0.0, (worksheet.outputs_energy_u58||0), 0.002); end
  def test_outputs_energy_v58; assert_in_delta(0.0, (worksheet.outputs_energy_v58||0), 0.002); end
  def test_outputs_energy_w58; assert_in_delta(0.0, (worksheet.outputs_energy_w58||0), 0.002); end
  def test_outputs_energy_x58; assert_in_delta(0.0, (worksheet.outputs_energy_x58||0), 0.002); end
  def test_outputs_energy_y58; assert_in_delta(0.0, (worksheet.outputs_energy_y58||0), 0.002); end
  def test_outputs_energy_z58; assert_in_delta(0.0, (worksheet.outputs_energy_z58||0), 0.002); end
  def test_outputs_energy_c59; assert_equal("G.BM.07", worksheet.outputs_energy_c59); end
  def test_outputs_energy_d59; assert_equal("Global Gaseous waste", worksheet.outputs_energy_d59); end
  def test_outputs_energy_r59; assert_in_delta(0.0, (worksheet.outputs_energy_r59||0), 0.002); end
  def test_outputs_energy_s59; assert_in_delta(0.0, (worksheet.outputs_energy_s59||0), 0.002); end
  def test_outputs_energy_t59; assert_in_delta(0.0, (worksheet.outputs_energy_t59||0), 0.002); end
  def test_outputs_energy_u59; assert_in_delta(0.0, (worksheet.outputs_energy_u59||0), 0.002); end
  def test_outputs_energy_v59; assert_in_delta(0.0, (worksheet.outputs_energy_v59||0), 0.002); end
  def test_outputs_energy_w59; assert_in_delta(0.0, (worksheet.outputs_energy_w59||0), 0.002); end
  def test_outputs_energy_x59; assert_in_delta(0.0, (worksheet.outputs_energy_x59||0), 0.002); end
  def test_outputs_energy_y59; assert_in_delta(0.0, (worksheet.outputs_energy_y59||0), 0.002); end
  def test_outputs_energy_z59; assert_in_delta(0.0, (worksheet.outputs_energy_z59||0), 0.002); end
  def test_outputs_energy_c61; assert_equal("G.Q.01", worksheet.outputs_energy_c61); end
  def test_outputs_energy_d61; assert_equal("Global Coal reserves ", worksheet.outputs_energy_d61); end
  def test_outputs_energy_r61; assert_in_epsilon(207.02916515884877, worksheet.outputs_energy_r61, 0.002); end
  def test_outputs_energy_s61; assert_in_epsilon(190.4115899955473, worksheet.outputs_energy_s61, 0.002); end
  def test_outputs_energy_t61; assert_in_epsilon(170.58100822478505, worksheet.outputs_energy_t61, 0.002); end
  def test_outputs_energy_u61; assert_in_epsilon(173.48540480589978, worksheet.outputs_energy_u61, 0.002); end
  def test_outputs_energy_v61; assert_in_epsilon(156.87183314304033, worksheet.outputs_energy_v61, 0.002); end
  def test_outputs_energy_w61; assert_in_epsilon(146.92673398548965, worksheet.outputs_energy_w61, 0.002); end
  def test_outputs_energy_x61; assert_in_epsilon(118.4491483712263, worksheet.outputs_energy_x61, 0.002); end
  def test_outputs_energy_y61; assert_in_epsilon(109.61688288555307, worksheet.outputs_energy_y61, 0.002); end
  def test_outputs_energy_z61; assert_in_epsilon(87.72477707295698, worksheet.outputs_energy_z61, 0.002); end
  def test_outputs_energy_c62; assert_equal("G.Q.02", worksheet.outputs_energy_c62); end
  def test_outputs_energy_d62; assert_equal("Global Oil reserves ", worksheet.outputs_energy_d62); end
  def test_outputs_energy_r62; assert_in_epsilon(156.64060920953676, worksheet.outputs_energy_r62, 0.002); end
  def test_outputs_energy_s62; assert_in_epsilon(180.95685773720973, worksheet.outputs_energy_s62, 0.002); end
  def test_outputs_energy_t62; assert_in_epsilon(189.28384507016628, worksheet.outputs_energy_t62, 0.002); end
  def test_outputs_energy_u62; assert_in_epsilon(222.28776016130945, worksheet.outputs_energy_u62, 0.002); end
  def test_outputs_energy_v62; assert_in_epsilon(232.15783034871737, worksheet.outputs_energy_v62, 0.002); end
  def test_outputs_energy_w62; assert_in_epsilon(273.1792984022851, worksheet.outputs_energy_w62, 0.002); end
  def test_outputs_energy_x62; assert_in_epsilon(281.81833339864795, worksheet.outputs_energy_x62, 0.002); end
  def test_outputs_energy_y62; assert_in_epsilon(335.2035892210011, worksheet.outputs_energy_y62, 0.002); end
  def test_outputs_energy_z62; assert_in_epsilon(346.2815964111619, worksheet.outputs_energy_z62, 0.002); end
  def test_outputs_energy_c63; assert_equal("G.Q.03", worksheet.outputs_energy_c63); end
  def test_outputs_energy_d63; assert_equal("Global Gas reserves ", worksheet.outputs_energy_d63); end
  def test_outputs_energy_r63; assert_in_epsilon(112.93791671328607, worksheet.outputs_energy_r63, 0.002); end
  def test_outputs_energy_s63; assert_in_epsilon(118.94659778960705, worksheet.outputs_energy_s63, 0.002); end
  def test_outputs_energy_t63; assert_in_epsilon(122.67385002513096, worksheet.outputs_energy_t63, 0.002); end
  def test_outputs_energy_u63; assert_in_epsilon(131.8584698353442, worksheet.outputs_energy_u63, 0.002); end
  def test_outputs_energy_v63; assert_in_epsilon(135.05379999274126, worksheet.outputs_energy_v63, 0.002); end
  def test_outputs_energy_w63; assert_in_epsilon(142.2865174519904, worksheet.outputs_energy_w63, 0.002); end
  def test_outputs_energy_x63; assert_in_epsilon(140.69182178288517, worksheet.outputs_energy_x63, 0.002); end
  def test_outputs_energy_y63; assert_in_epsilon(151.51789448533336, worksheet.outputs_energy_y63, 0.002); end
  def test_outputs_energy_z63; assert_in_epsilon(151.91779302041272, worksheet.outputs_energy_z63, 0.002); end
  def test_outputs_energy_r64; assert_in_epsilon(608.2955811546586, worksheet.outputs_energy_r64, 0.002); end
  def test_outputs_energy_s64; assert_in_epsilon(650.7800591235915, worksheet.outputs_energy_s64, 0.002); end
  def test_outputs_energy_t64; assert_in_epsilon(684.1492309478917, worksheet.outputs_energy_t64, 0.002); end
  def test_outputs_energy_u64; assert_in_epsilon(750.2070234912022, worksheet.outputs_energy_u64, 0.002); end
  def test_outputs_energy_v64; assert_in_epsilon(778.2297660790136, worksheet.outputs_energy_v64, 0.002); end
  def test_outputs_energy_w64; assert_in_epsilon(854.9455928459154, worksheet.outputs_energy_w64, 0.002); end
  def test_outputs_energy_x64; assert_in_epsilon(888.5654167830551, worksheet.outputs_energy_x64, 0.002); end
  def test_outputs_energy_y64; assert_in_epsilon(992.4685191955955, worksheet.outputs_energy_y64, 0.002); end
  def test_outputs_energy_z64; assert_in_epsilon(1043.5701250509828, worksheet.outputs_energy_z64, 0.002); end
  def test_outputs_energy_c67; assert_equal("SUPPLY (consistent with IEA categories)", worksheet.outputs_energy_c67); end
  def test_outputs_energy_z67; assert_equal("EJ / year", worksheet.outputs_energy_z67); end
  def test_outputs_energy_h68; assert_equal("Historic actuals", worksheet.outputs_energy_h68); end
  def test_outputs_energy_d69; assert_equal("Description", worksheet.outputs_energy_d69); end
  def test_outputs_energy_h69; assert_equal("1975", worksheet.outputs_energy_h69); end
  def test_outputs_energy_i69; assert_equal("1980", worksheet.outputs_energy_i69); end
  def test_outputs_energy_j69; assert_equal("1985", worksheet.outputs_energy_j69); end
  def test_outputs_energy_k69; assert_equal("1990", worksheet.outputs_energy_k69); end
  def test_outputs_energy_l69; assert_equal("1995", worksheet.outputs_energy_l69); end
  def test_outputs_energy_m69; assert_equal("2000", worksheet.outputs_energy_m69); end
  def test_outputs_energy_n69; assert_equal("2005", worksheet.outputs_energy_n69); end
  def test_outputs_energy_o69; assert_in_epsilon(2010.0, worksheet.outputs_energy_o69, 0.002); end
  def test_outputs_energy_p69; assert_in_epsilon(2011.0, worksheet.outputs_energy_p69, 0.002); end
  def test_outputs_energy_r69; assert_in_epsilon(2011.0, worksheet.outputs_energy_r69, 0.002); end
  def test_outputs_energy_s69; assert_equal("2015", worksheet.outputs_energy_s69); end
  def test_outputs_energy_t69; assert_equal("2020", worksheet.outputs_energy_t69); end
  def test_outputs_energy_u69; assert_equal("2025", worksheet.outputs_energy_u69); end
  def test_outputs_energy_v69; assert_equal("2030", worksheet.outputs_energy_v69); end
  def test_outputs_energy_w69; assert_equal("2035", worksheet.outputs_energy_w69); end
  def test_outputs_energy_x69; assert_equal("2040", worksheet.outputs_energy_x69); end
  def test_outputs_energy_y69; assert_equal("2045", worksheet.outputs_energy_y69); end
  def test_outputs_energy_z69; assert_equal("2050", worksheet.outputs_energy_z69); end
  def test_outputs_energy_d70; assert_equal("Global nuclear fission", worksheet.outputs_energy_d70); end
  def test_outputs_energy_h70; assert_in_epsilon(4.19362582, worksheet.outputs_energy_h70, 0.002); end
  def test_outputs_energy_i70; assert_in_epsilon(7.8046283700000005, worksheet.outputs_energy_i70, 0.002); end
  def test_outputs_energy_j70; assert_in_epsilon(16.30822419, worksheet.outputs_energy_j70, 0.002); end
  def test_outputs_energy_k70; assert_in_epsilon(22.00642022, worksheet.outputs_energy_k70, 0.002); end
  def test_outputs_energy_l70; assert_in_epsilon(25.464435710000004, worksheet.outputs_energy_l70, 0.002); end
  def test_outputs_energy_m70; assert_in_epsilon(28.28553115, worksheet.outputs_energy_m70, 0.002); end
  def test_outputs_energy_n70; assert_in_epsilon(30.221805240000002, worksheet.outputs_energy_n70, 0.002); end
  def test_outputs_energy_o70; assert_in_epsilon(30.10136047, worksheet.outputs_energy_o70, 0.002); end
  def test_outputs_energy_p70; assert_in_epsilon(28.219279020000002, worksheet.outputs_energy_p70, 0.002); end
  def test_outputs_energy_r70; assert_in_epsilon(29.367795273719306, worksheet.outputs_energy_r70, 0.002); end
  def test_outputs_energy_s70; assert_in_epsilon(31.947120493686867, worksheet.outputs_energy_s70, 0.002); end
  def test_outputs_energy_t70; assert_in_epsilon(34.154566988311615, worksheet.outputs_energy_t70, 0.002); end
  def test_outputs_energy_u70; assert_in_epsilon(38.759968396574656, worksheet.outputs_energy_u70, 0.002); end
  def test_outputs_energy_v70; assert_in_epsilon(44.14976883357653, worksheet.outputs_energy_v70, 0.002); end
  def test_outputs_energy_w70; assert_in_epsilon(50.207549807609716, worksheet.outputs_energy_w70, 0.002); end
  def test_outputs_energy_x70; assert_in_epsilon(57.10991701410598, worksheet.outputs_energy_x70, 0.002); end
  def test_outputs_energy_y70; assert_in_epsilon(65.02075229215902, worksheet.outputs_energy_y70, 0.002); end
  def test_outputs_energy_z70; assert_in_epsilon(74.09233924002172, worksheet.outputs_energy_z70, 0.002); end
  def test_outputs_energy_d71; assert_equal("Global solar, wind, wave and tidal", worksheet.outputs_energy_d71); end
  def test_outputs_energy_h71; assert_in_delta(0.0020015000000000002, worksheet.outputs_energy_h71, 0.002); end
  def test_outputs_energy_i71; assert_in_delta(0.00299071, worksheet.outputs_energy_i71, 0.002); end
  def test_outputs_energy_j71; assert_in_delta(0.01511665, worksheet.outputs_energy_j71, 0.002); end
  def test_outputs_energy_k71; assert_in_delta(0.09888171, worksheet.outputs_energy_k71, 0.002); end
  def test_outputs_energy_l71; assert_in_delta(0.13671401, worksheet.outputs_energy_l71, 0.002); end
  def test_outputs_energy_m71; assert_in_delta(0.33011757999999997, worksheet.outputs_energy_m71, 0.002); end
  def test_outputs_energy_n71; assert_in_delta(0.6894200899999999, worksheet.outputs_energy_n71, 0.002); end
  def test_outputs_energy_o71; assert_in_epsilon(1.98106908, worksheet.outputs_energy_o71, 0.002); end
  def test_outputs_energy_p71; assert_in_epsilon(2.55947734, worksheet.outputs_energy_p71, 0.002); end
  def test_outputs_energy_r71; assert_in_epsilon(1.8658736056799998, worksheet.outputs_energy_r71, 0.002); end
  def test_outputs_energy_s71; assert_in_epsilon(4.653772494496866, worksheet.outputs_energy_s71, 0.002); end
  def test_outputs_energy_t71; assert_in_epsilon(14.713226341386573, worksheet.outputs_energy_t71, 0.002); end
  def test_outputs_energy_u71; assert_in_epsilon(23.33138515780346, worksheet.outputs_energy_u71, 0.002); end
  def test_outputs_energy_v71; assert_in_epsilon(38.11273661518686, worksheet.outputs_energy_v71, 0.002); end
  def test_outputs_energy_w71; assert_in_epsilon(52.81116538844239, worksheet.outputs_energy_w71, 0.002); end
  def test_outputs_energy_x71; assert_in_epsilon(73.15699946112267, worksheet.outputs_energy_x71, 0.002); end
  def test_outputs_energy_y71; assert_in_epsilon(89.65980994098516, worksheet.outputs_energy_y71, 0.002); end
  def test_outputs_energy_z71; assert_in_epsilon(110.50754369358201, worksheet.outputs_energy_z71, 0.002); end
  def test_outputs_energy_d72; assert_equal("Global geothermal", worksheet.outputs_energy_d72); end
  def test_outputs_energy_h72; assert_in_delta(0.30633308, worksheet.outputs_energy_h72, 0.002); end
  def test_outputs_energy_i72; assert_in_delta(0.51899125, worksheet.outputs_energy_i72, 0.002); end
  def test_outputs_energy_j72; assert_in_delta(0.87833525, worksheet.outputs_energy_j72, 0.002); end
  def test_outputs_energy_k72; assert_in_epsilon(1.42030705, worksheet.outputs_energy_k72, 0.002); end
  def test_outputs_energy_l72; assert_in_epsilon(1.64006674, worksheet.outputs_energy_l72, 0.002); end
  def test_outputs_energy_m72; assert_in_epsilon(2.1821505699999997, worksheet.outputs_energy_m72, 0.002); end
  def test_outputs_energy_n72; assert_in_epsilon(2.25915872, worksheet.outputs_energy_n72, 0.002); end
  def test_outputs_energy_o72; assert_in_epsilon(2.70416419, worksheet.outputs_energy_o72, 0.002); end
  def test_outputs_energy_p72; assert_in_epsilon(2.75792299, worksheet.outputs_energy_p72, 0.002); end
  def test_outputs_energy_r72; assert_in_epsilon(2.9184468480000003, worksheet.outputs_energy_r72, 0.002); end
  def test_outputs_energy_s72; assert_in_epsilon(4.111224664435656, worksheet.outputs_energy_s72, 0.002); end
  def test_outputs_energy_t72; assert_in_epsilon(6.240040249006225, worksheet.outputs_energy_t72, 0.002); end
  def test_outputs_energy_u72; assert_in_epsilon(10.631628910785619, worksheet.outputs_energy_u72, 0.002); end
  def test_outputs_energy_v72; assert_in_epsilon(18.114057794059693, worksheet.outputs_energy_v72, 0.002); end
  def test_outputs_energy_w72; assert_in_epsilon(30.87264011059907, worksheet.outputs_energy_w72, 0.002); end
  def test_outputs_energy_x72; assert_in_epsilon(52.705878661266254, worksheet.outputs_energy_x72, 0.002); end
  def test_outputs_energy_y72; assert_in_epsilon(69.516138364427, worksheet.outputs_energy_y72, 0.002); end
  def test_outputs_energy_z72; assert_in_epsilon(91.80392727272728, worksheet.outputs_energy_z72, 0.002); end
  def test_outputs_energy_d73; assert_equal("Global hydro", worksheet.outputs_energy_d73); end
  def test_outputs_energy_h73; assert_in_epsilon(5.19828432, worksheet.outputs_energy_h73, 0.002); end
  def test_outputs_energy_i73; assert_in_epsilon(6.1818085300000005, worksheet.outputs_energy_i73, 0.002); end
  def test_outputs_energy_j73; assert_in_epsilon(7.10472662, worksheet.outputs_energy_j73, 0.002); end
  def test_outputs_energy_k73; assert_in_epsilon(7.721542830000001, worksheet.outputs_energy_k73, 0.002); end
  def test_outputs_energy_l73; assert_in_epsilon(8.93036678, worksheet.outputs_energy_l73, 0.002); end
  def test_outputs_energy_m73; assert_in_epsilon(9.43535406, worksheet.outputs_energy_m73, 0.002); end
  def test_outputs_energy_n73; assert_in_epsilon(10.548209940000001, worksheet.outputs_energy_n73, 0.002); end
  def test_outputs_energy_o73; assert_in_epsilon(12.39218819, worksheet.outputs_energy_o73, 0.002); end
  def test_outputs_energy_p73; assert_in_epsilon(12.56761896, worksheet.outputs_energy_p73, 0.002); end
  def test_outputs_energy_r73; assert_in_epsilon(13.7748924, worksheet.outputs_energy_r73, 0.002); end
  def test_outputs_energy_s73; assert_in_epsilon(15.4079982, worksheet.outputs_energy_s73, 0.002); end
  def test_outputs_energy_t73; assert_in_epsilon(17.864757360000002, worksheet.outputs_energy_t73, 0.002); end
  def test_outputs_energy_u73; assert_in_epsilon(20.704941360000003, worksheet.outputs_energy_u73, 0.002); end
  def test_outputs_energy_v73; assert_in_epsilon(23.9995548, worksheet.outputs_energy_v73, 0.002); end
  def test_outputs_energy_w73; assert_in_epsilon(27.819602280000005, worksheet.outputs_energy_w73, 0.002); end
  def test_outputs_energy_x73; assert_in_epsilon(32.25028932, worksheet.outputs_energy_x73, 0.002); end
  def test_outputs_energy_y73; assert_in_epsilon(37.39102236000001, worksheet.outputs_energy_y73, 0.002); end
  def test_outputs_energy_z73; assert_in_epsilon(43.35540876000001, worksheet.outputs_energy_z73, 0.002); end
  def test_outputs_energy_d74; assert_equal("Global bioenergy, peat and waste", worksheet.outputs_energy_d74); end
  def test_outputs_energy_h74; assert_in_epsilon(27.987673660000002, worksheet.outputs_energy_h74, 0.002); end
  def test_outputs_energy_i74; assert_in_epsilon(31.29700324, worksheet.outputs_energy_i74, 0.002); end
  def test_outputs_energy_j74; assert_in_epsilon(34.98284341, worksheet.outputs_energy_j74, 0.002); end
  def test_outputs_energy_k74; assert_in_epsilon(37.99397958, worksheet.outputs_energy_k74, 0.002); end
  def test_outputs_energy_l74; assert_in_epsilon(40.58990687, worksheet.outputs_energy_l74, 0.002); end
  def test_outputs_energy_m74; assert_in_epsilon(43.28778674, worksheet.outputs_energy_m74, 0.002); end
  def test_outputs_energy_n74; assert_in_epsilon(47.243933340000005, worksheet.outputs_energy_n74, 0.002); end
  def test_outputs_energy_o74; assert_in_epsilon(54.273813510000004, worksheet.outputs_energy_o74, 0.002); end
  def test_outputs_energy_p74; assert_in_epsilon(54.98367129, worksheet.outputs_energy_p74, 0.002); end
  def test_outputs_energy_r74; assert_in_epsilon(62.96667474335968, worksheet.outputs_energy_r74, 0.002); end
  def test_outputs_energy_s74; assert_in_epsilon(80.90725331469295, worksheet.outputs_energy_s74, 0.002); end
  def test_outputs_energy_t74; assert_in_epsilon(101.89417808596738, worksheet.outputs_energy_t74, 0.002); end
  def test_outputs_energy_u74; assert_in_epsilon(98.67119320332155, worksheet.outputs_energy_u74, 0.002); end
  def test_outputs_energy_v74; assert_in_epsilon(95.43714349158347, worksheet.outputs_energy_v74, 0.002); end
  def test_outputs_energy_w74; assert_in_epsilon(92.19237870157879, worksheet.outputs_energy_w74, 0.002); end
  def test_outputs_energy_x74; assert_in_epsilon(88.9362112445397, worksheet.outputs_energy_x74, 0.002); end
  def test_outputs_energy_y74; assert_in_epsilon(85.66711621920523, worksheet.outputs_energy_y74, 0.002); end
  def test_outputs_energy_z74; assert_in_epsilon(82.38385911305326, worksheet.outputs_energy_z74, 0.002); end
  def test_outputs_energy_d75; assert_equal("Global heat", worksheet.outputs_energy_d75); end
  def test_outputs_energy_h75; assert_in_delta(0.0, (worksheet.outputs_energy_h75||0), 0.002); end
  def test_outputs_energy_i75; assert_in_delta(0.0, (worksheet.outputs_energy_i75||0), 0.002); end
  def test_outputs_energy_j75; assert_in_delta(0.0, (worksheet.outputs_energy_j75||0), 0.002); end
  def test_outputs_energy_k75; assert_in_epsilon(15.852849, worksheet.outputs_energy_k75, 0.002); end
  def test_outputs_energy_l75; assert_in_epsilon(13.865063000000001, worksheet.outputs_energy_l75, 0.002); end
  def test_outputs_energy_m75; assert_in_epsilon(12.209281, worksheet.outputs_energy_m75, 0.002); end
  def test_outputs_energy_n75; assert_in_epsilon(13.649919, worksheet.outputs_energy_n75, 0.002); end
  def test_outputs_energy_o75; assert_in_epsilon(14.033254000000001, worksheet.outputs_energy_o75, 0.002); end
  def test_outputs_energy_p75; assert_in_epsilon(14.398794, worksheet.outputs_energy_p75, 0.002); end
  def test_outputs_energy_r75; assert_in_epsilon(15.985430059370888, worksheet.outputs_energy_r75, 0.002); end
  def test_outputs_energy_s75; assert_in_epsilon(17.6014640324983, worksheet.outputs_energy_s75, 0.002); end
  def test_outputs_energy_t75; assert_in_epsilon(19.669948591298986, worksheet.outputs_energy_t75, 0.002); end
  def test_outputs_energy_u75; assert_in_epsilon(21.901321382823447, worksheet.outputs_energy_u75, 0.002); end
  def test_outputs_energy_v75; assert_in_epsilon(23.939830985157265, worksheet.outputs_energy_v75, 0.002); end
  def test_outputs_energy_w75; assert_in_epsilon(26.049440983177643, worksheet.outputs_energy_w75, 0.002); end
  def test_outputs_energy_x75; assert_in_epsilon(28.173108266256897, worksheet.outputs_energy_x75, 0.002); end
  def test_outputs_energy_y75; assert_in_epsilon(30.35926661170525, worksheet.outputs_energy_y75, 0.002); end
  def test_outputs_energy_z75; assert_in_epsilon(32.62572945442588, worksheet.outputs_energy_z75, 0.002); end
  def test_outputs_energy_d76; assert_equal("Global coal ", worksheet.outputs_energy_d76); end
  def test_outputs_energy_h76; assert_in_epsilon(63.810017740000006, worksheet.outputs_energy_h76, 0.002); end
  def test_outputs_energy_i76; assert_in_epsilon(74.53204012, worksheet.outputs_energy_i76, 0.002); end
  def test_outputs_energy_j76; assert_in_epsilon(84.02636781, worksheet.outputs_energy_j76, 0.002); end
  def test_outputs_energy_k76; assert_in_epsilon(93.08624324, worksheet.outputs_energy_k76, 0.002); end
  def test_outputs_energy_l76; assert_in_epsilon(92.82075926, worksheet.outputs_energy_l76, 0.002); end
  def test_outputs_energy_m76; assert_in_epsilon(98.5549433, worksheet.outputs_energy_m76, 0.002); end
  def test_outputs_energy_n76; assert_in_epsilon(124.34195718, worksheet.outputs_energy_n76, 0.002); end
  def test_outputs_energy_o76; assert_in_epsilon(150.35198765, worksheet.outputs_energy_o76, 0.002); end
  def test_outputs_energy_p76; assert_in_epsilon(157.91544657999998, worksheet.outputs_energy_p76, 0.002); end
  def test_outputs_energy_r76; assert_in_epsilon(207.02916515884877, worksheet.outputs_energy_r76, 0.002); end
  def test_outputs_energy_s76; assert_in_epsilon(190.4115899955473, worksheet.outputs_energy_s76, 0.002); end
  def test_outputs_energy_t76; assert_in_epsilon(170.58100822478505, worksheet.outputs_energy_t76, 0.002); end
  def test_outputs_energy_u76; assert_in_epsilon(173.48540480589978, worksheet.outputs_energy_u76, 0.002); end
  def test_outputs_energy_v76; assert_in_epsilon(156.87183314304033, worksheet.outputs_energy_v76, 0.002); end
  def test_outputs_energy_w76; assert_in_epsilon(146.92673398548965, worksheet.outputs_energy_w76, 0.002); end
  def test_outputs_energy_x76; assert_in_epsilon(118.4491483712263, worksheet.outputs_energy_x76, 0.002); end
  def test_outputs_energy_y76; assert_in_epsilon(109.61688288555307, worksheet.outputs_energy_y76, 0.002); end
  def test_outputs_energy_z76; assert_in_epsilon(87.72477707295698, worksheet.outputs_energy_z76, 0.002); end
  def test_outputs_energy_d77; assert_equal("Global oil ", worksheet.outputs_energy_d77); end
  def test_outputs_energy_h77; assert_in_epsilon(116.5233284, worksheet.outputs_energy_h77, 0.002); end
  def test_outputs_energy_i77; assert_in_epsilon(131.85643926000003, worksheet.outputs_energy_i77, 0.002); end
  def test_outputs_energy_j77; assert_in_epsilon(122.84000791, worksheet.outputs_energy_j77, 0.002); end
  def test_outputs_energy_k77; assert_in_epsilon(137.87919456, worksheet.outputs_energy_k77, 0.002); end
  def test_outputs_energy_l77; assert_in_epsilon(143.51359745, worksheet.outputs_energy_l77, 0.002); end
  def test_outputs_energy_m77; assert_in_epsilon(156.74377747, worksheet.outputs_energy_m77, 0.002); end
  def test_outputs_energy_n77; assert_in_epsilon(171.78327319000002, worksheet.outputs_energy_n77, 0.002); end
  def test_outputs_energy_o77; assert_in_epsilon(175.91941010000002, worksheet.outputs_energy_o77, 0.002); end
  def test_outputs_energy_p77; assert_in_epsilon(176.66494085000002, worksheet.outputs_energy_p77, 0.002); end
  def test_outputs_energy_r77; assert_in_epsilon(156.64060920953676, worksheet.outputs_energy_r77, 0.002); end
  def test_outputs_energy_s77; assert_in_epsilon(180.95685773720973, worksheet.outputs_energy_s77, 0.002); end
  def test_outputs_energy_t77; assert_in_epsilon(189.28384507016628, worksheet.outputs_energy_t77, 0.002); end
  def test_outputs_energy_u77; assert_in_epsilon(222.28776016130945, worksheet.outputs_energy_u77, 0.002); end
  def test_outputs_energy_v77; assert_in_epsilon(232.15783034871737, worksheet.outputs_energy_v77, 0.002); end
  def test_outputs_energy_w77; assert_in_epsilon(273.1792984022851, worksheet.outputs_energy_w77, 0.002); end
  def test_outputs_energy_x77; assert_in_epsilon(281.81833339864795, worksheet.outputs_energy_x77, 0.002); end
  def test_outputs_energy_y77; assert_in_epsilon(335.2035892210011, worksheet.outputs_energy_y77, 0.002); end
  def test_outputs_energy_z77; assert_in_epsilon(346.2815964111619, worksheet.outputs_energy_z77, 0.002); end
  def test_outputs_energy_d78; assert_equal("Global gas ", worksheet.outputs_energy_d78); end
  def test_outputs_energy_h78; assert_in_epsilon(41.88575614, worksheet.outputs_energy_h78, 0.002); end
  def test_outputs_energy_i78; assert_in_epsilon(51.657453589999996, worksheet.outputs_energy_i78, 0.002); end
  def test_outputs_energy_j78; assert_in_epsilon(59.13014466, worksheet.outputs_energy_j78, 0.002); end
  def test_outputs_energy_k78; assert_in_epsilon(69.82757047999999, worksheet.outputs_energy_k78, 0.002); end
  def test_outputs_energy_l78; assert_in_epsilon(75.88166314, worksheet.outputs_energy_l78, 0.002); end
  def test_outputs_energy_m78; assert_in_epsilon(86.75456712, worksheet.outputs_energy_m78, 0.002); end
  def test_outputs_energy_n78; assert_in_epsilon(99.02950624, worksheet.outputs_energy_n78, 0.002); end
  def test_outputs_energy_o78; assert_in_epsilon(114.72290836, worksheet.outputs_energy_o78, 0.002); end
  def test_outputs_energy_p78; assert_in_epsilon(116.68415746000001, worksheet.outputs_energy_p78, 0.002); end
  def test_outputs_energy_r78; assert_in_epsilon(112.93791671328607, worksheet.outputs_energy_r78, 0.002); end
  def test_outputs_energy_s78; assert_in_epsilon(118.94659778960705, worksheet.outputs_energy_s78, 0.002); end
  def test_outputs_energy_t78; assert_in_epsilon(122.67385002513096, worksheet.outputs_energy_t78, 0.002); end
  def test_outputs_energy_u78; assert_in_epsilon(131.8584698353442, worksheet.outputs_energy_u78, 0.002); end
  def test_outputs_energy_v78; assert_in_epsilon(135.05379999274126, worksheet.outputs_energy_v78, 0.002); end
  def test_outputs_energy_w78; assert_in_epsilon(142.2865174519904, worksheet.outputs_energy_w78, 0.002); end
  def test_outputs_energy_x78; assert_in_epsilon(140.69182178288517, worksheet.outputs_energy_x78, 0.002); end
  def test_outputs_energy_y78; assert_in_epsilon(151.51789448533336, worksheet.outputs_energy_y78, 0.002); end
  def test_outputs_energy_z78; assert_in_epsilon(151.91779302041272, worksheet.outputs_energy_z78, 0.002); end
  def test_outputs_energy_h79; assert_in_epsilon(259.90702066, worksheet.outputs_energy_h79, 0.002); end
  def test_outputs_energy_i79; assert_in_epsilon(303.85135507, worksheet.outputs_energy_i79, 0.002); end
  def test_outputs_energy_j79; assert_in_epsilon(325.28576649999997, worksheet.outputs_energy_j79, 0.002); end
  def test_outputs_energy_k79; assert_in_epsilon(385.88698866999994, worksheet.outputs_energy_k79, 0.002); end
  def test_outputs_energy_l79; assert_in_epsilon(402.84257296, worksheet.outputs_energy_l79, 0.002); end
  def test_outputs_energy_m79; assert_in_epsilon(437.78350899000003, worksheet.outputs_energy_m79, 0.002); end
  def test_outputs_energy_n79; assert_in_epsilon(499.76718294, worksheet.outputs_energy_n79, 0.002); end
  def test_outputs_energy_o79; assert_in_epsilon(556.4801555500001, worksheet.outputs_energy_o79, 0.002); end
  def test_outputs_energy_p79; assert_in_epsilon(566.75130849, worksheet.outputs_energy_p79, 0.002); end
  def test_outputs_energy_r79; assert_in_epsilon(603.4868040118015, worksheet.outputs_energy_r79, 0.002); end
  def test_outputs_energy_s79; assert_in_epsilon(644.9438787221746, worksheet.outputs_energy_s79, 0.002); end
  def test_outputs_energy_t79; assert_in_epsilon(677.0754209360531, worksheet.outputs_energy_t79, 0.002); end
  def test_outputs_energy_u79; assert_in_epsilon(741.6320732138621, worksheet.outputs_energy_u79, 0.002); end
  def test_outputs_energy_v79; assert_in_epsilon(767.8365560040627, worksheet.outputs_energy_v79, 0.002); end
  def test_outputs_energy_w79; assert_in_epsilon(842.3453271111728, worksheet.outputs_energy_w79, 0.002); end
  def test_outputs_energy_x79; assert_in_epsilon(873.291707520051, worksheet.outputs_energy_x79, 0.002); end
  def test_outputs_energy_y79; assert_in_epsilon(973.9524723803693, worksheet.outputs_energy_y79, 0.002); end
  def test_outputs_energy_z79; assert_in_epsilon(1020.6929740383418, worksheet.outputs_energy_z79, 0.002); end
  def test_outputs_energy_b83; assert_equal("CONVERSION LOSSES, DISTRIBUTION AND OWN USES", worksheet.outputs_energy_b83); end
  def test_outputs_energy_h84; assert_equal("Historic actuals", worksheet.outputs_energy_h84); end
  def test_outputs_energy_r84; assert_equal("Calculated by the model", worksheet.outputs_energy_r84); end
  def test_outputs_energy_c85; assert_equal("Code", worksheet.outputs_energy_c85); end
  def test_outputs_energy_d85; assert_equal("Sector", worksheet.outputs_energy_d85); end
  def test_outputs_energy_h85; assert_equal("1975", worksheet.outputs_energy_h85); end
  def test_outputs_energy_i85; assert_equal("1980", worksheet.outputs_energy_i85); end
  def test_outputs_energy_j85; assert_equal("1985", worksheet.outputs_energy_j85); end
  def test_outputs_energy_k85; assert_equal("1990", worksheet.outputs_energy_k85); end
  def test_outputs_energy_l85; assert_equal("1995", worksheet.outputs_energy_l85); end
  def test_outputs_energy_m85; assert_equal("2000", worksheet.outputs_energy_m85); end
  def test_outputs_energy_n85; assert_equal("2005", worksheet.outputs_energy_n85); end
  def test_outputs_energy_o85; assert_in_epsilon(2010.0, worksheet.outputs_energy_o85, 0.002); end
  def test_outputs_energy_p85; assert_in_epsilon(2011.0, worksheet.outputs_energy_p85, 0.002); end
  def test_outputs_energy_r85; assert_in_epsilon(2011.0, worksheet.outputs_energy_r85, 0.002); end
  def test_outputs_energy_s85; assert_equal("2015", worksheet.outputs_energy_s85); end
  def test_outputs_energy_t85; assert_equal("2020", worksheet.outputs_energy_t85); end
  def test_outputs_energy_u85; assert_equal("2025", worksheet.outputs_energy_u85); end
  def test_outputs_energy_v85; assert_equal("2030", worksheet.outputs_energy_v85); end
  def test_outputs_energy_w85; assert_equal("2035", worksheet.outputs_energy_w85); end
  def test_outputs_energy_x85; assert_equal("2040", worksheet.outputs_energy_x85); end
  def test_outputs_energy_y85; assert_equal("2045", worksheet.outputs_energy_y85); end
  def test_outputs_energy_z85; assert_equal("2050", worksheet.outputs_energy_z85); end
  def test_outputs_energy_c86; assert_equal("G.L.01", worksheet.outputs_energy_c86); end
  def test_outputs_energy_d86; assert_equal("Global Conversion losses", worksheet.outputs_energy_d86); end
  def test_outputs_energy_r86; assert_in_epsilon(272.0962711950543, worksheet.outputs_energy_r86, 0.002); end
  def test_outputs_energy_s86; assert_in_epsilon(282.418846891582, worksheet.outputs_energy_s86, 0.002); end
  def test_outputs_energy_t86; assert_in_epsilon(289.0430015927885, worksheet.outputs_energy_t86, 0.002); end
  def test_outputs_energy_u86; assert_in_epsilon(303.2676420273937, worksheet.outputs_energy_u86, 0.002); end
  def test_outputs_energy_v86; assert_in_epsilon(300.2697874563857, worksheet.outputs_energy_v86, 0.002); end
  def test_outputs_energy_w86; assert_in_epsilon(313.0580160247128, worksheet.outputs_energy_w86, 0.002); end
  def test_outputs_energy_x86; assert_in_epsilon(310.8171039064464, worksheet.outputs_energy_x86, 0.002); end
  def test_outputs_energy_y86; assert_in_epsilon(335.25970074397776, worksheet.outputs_energy_y86, 0.002); end
  def test_outputs_energy_z86; assert_in_epsilon(343.75153676130526, worksheet.outputs_energy_z86, 0.002); end
  def test_outputs_energy_c87; assert_equal("G.L.02", worksheet.outputs_energy_c87); end
  def test_outputs_energy_d87; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_d87); end
  def test_outputs_energy_r87; assert_in_epsilon(12.952554154644265, worksheet.outputs_energy_r87, 0.002); end
  def test_outputs_energy_s87; assert_in_epsilon(14.682143234130049, worksheet.outputs_energy_s87, 0.002); end
  def test_outputs_energy_t87; assert_in_epsilon(16.10386492353967, worksheet.outputs_energy_t87, 0.002); end
  def test_outputs_energy_u87; assert_in_epsilon(18.60399049655946, worksheet.outputs_energy_u87, 0.002); end
  def test_outputs_energy_v87; assert_in_epsilon(19.88168525992359, worksheet.outputs_energy_v87, 0.002); end
  def test_outputs_energy_w87; assert_in_epsilon(22.555046896042597, worksheet.outputs_energy_w87, 0.002); end
  def test_outputs_energy_x87; assert_in_epsilon(23.669594903016716, worksheet.outputs_energy_x87, 0.002); end
  def test_outputs_energy_y87; assert_in_epsilon(27.09440150876947, worksheet.outputs_energy_y87, 0.002); end
  def test_outputs_energy_z87; assert_in_epsilon(28.76303644919348, worksheet.outputs_energy_z87, 0.002); end
  def test_outputs_energy_d88; assert_equal("Supply net of losses", worksheet.outputs_energy_d88); end
  def test_outputs_energy_r88; assert_in_epsilon(285.0488253496986, worksheet.outputs_energy_r88, 0.002); end
  def test_outputs_energy_s88; assert_in_epsilon(297.10099012571203, worksheet.outputs_energy_s88, 0.002); end
  def test_outputs_energy_t88; assert_in_epsilon(305.1468665163282, worksheet.outputs_energy_t88, 0.002); end
  def test_outputs_energy_u88; assert_in_epsilon(321.87163252395317, worksheet.outputs_energy_u88, 0.002); end
  def test_outputs_energy_v88; assert_in_epsilon(320.1514727163093, worksheet.outputs_energy_v88, 0.002); end
  def test_outputs_energy_w88; assert_in_epsilon(335.6130629207554, worksheet.outputs_energy_w88, 0.002); end
  def test_outputs_energy_x88; assert_in_epsilon(334.4866988094631, worksheet.outputs_energy_x88, 0.002); end
  def test_outputs_energy_y88; assert_in_epsilon(362.3541022527472, worksheet.outputs_energy_y88, 0.002); end
  def test_outputs_energy_z88; assert_in_epsilon(372.5145732104987, worksheet.outputs_energy_z88, 0.002); end
  def test_outputs_energy_d90; assert_equal("check", worksheet.outputs_energy_d90); end
  def test_outputs_energy_h90; assert_in_delta(0.0, (worksheet.outputs_energy_h90||0), 0.002); end
  def test_outputs_energy_i90; assert_in_delta(0.0, (worksheet.outputs_energy_i90||0), 0.002); end
  def test_outputs_energy_j90; assert_in_delta(0.0, (worksheet.outputs_energy_j90||0), 0.002); end
  def test_outputs_energy_k90; assert_in_delta(0.0, (worksheet.outputs_energy_k90||0), 0.002); end
  def test_outputs_energy_l90; assert_in_delta(0.0, (worksheet.outputs_energy_l90||0), 0.002); end
  def test_outputs_energy_m90; assert_in_delta(0.0, (worksheet.outputs_energy_m90||0), 0.002); end
  def test_outputs_energy_n90; assert_in_delta(0.0, (worksheet.outputs_energy_n90||0), 0.002); end
  def test_outputs_energy_r90; assert_in_epsilon(-569.2325153898946, worksheet.outputs_energy_r90, 0.002); end
  def test_outputs_energy_s90; assert_in_epsilon(-592.9076896160628, worksheet.outputs_energy_s90, 0.002); end
  def test_outputs_energy_t90; assert_in_epsilon(-608.8003865941807, worksheet.outputs_energy_t90, 0.002); end
  def test_outputs_energy_u90; assert_in_epsilon(-641.5134978267527, worksheet.outputs_energy_u90, 0.002); end
  def test_outputs_energy_v90; assert_in_epsilon(-637.7420547543448, worksheet.outputs_energy_v90, 0.002); end
  def test_outputs_energy_w90; assert_in_epsilon(-667.772479747437, worksheet.outputs_energy_w90, 0.002); end
  def test_outputs_energy_x90; assert_in_epsilon(-665.1304656163973, worksheet.outputs_energy_x90, 0.002); end
  def test_outputs_energy_y90; assert_in_epsilon(-719.6635531221671, worksheet.outputs_energy_y90, 0.002); end
  def test_outputs_energy_z90; assert_in_epsilon(-739.7700502546593, worksheet.outputs_energy_z90, 0.002); end
  def test_outputs_energy_b93; assert_equal("CUMULATIVE CONSUMPTION OF FOSSIL FUEL RESERVES, 2011 - 2050", worksheet.outputs_energy_b93); end
  def test_outputs_energy_g97; assert_equal("Notes", worksheet.outputs_energy_g97); end
  def test_outputs_energy_r97; assert_in_epsilon(2011.0, worksheet.outputs_energy_r97, 0.002); end
  def test_outputs_energy_s97; assert_equal("2015", worksheet.outputs_energy_s97); end
  def test_outputs_energy_t97; assert_equal("2020", worksheet.outputs_energy_t97); end
  def test_outputs_energy_u97; assert_equal("2025", worksheet.outputs_energy_u97); end
  def test_outputs_energy_v97; assert_equal("2030", worksheet.outputs_energy_v97); end
  def test_outputs_energy_w97; assert_equal("2035", worksheet.outputs_energy_w97); end
  def test_outputs_energy_x97; assert_equal("2040", worksheet.outputs_energy_x97); end
  def test_outputs_energy_y97; assert_equal("2045", worksheet.outputs_energy_y97); end
  def test_outputs_energy_z97; assert_equal("2050", worksheet.outputs_energy_z97); end
  def test_outputs_energy_c98; assert_equal("G.Q.01", worksheet.outputs_energy_c98); end
  def test_outputs_energy_d98; assert_equal("Global Coal reserves ", worksheet.outputs_energy_d98); end
  def test_outputs_energy_g98; assert_equal("t", worksheet.outputs_energy_g98); end
  def test_outputs_energy_r98; assert_in_epsilon(7932151921.794971, worksheet.outputs_energy_r98, 0.002); end
  def test_outputs_energy_s98; assert_in_epsilon(38069037850.03793, worksheet.outputs_energy_s98, 0.002); end
  def test_outputs_energy_t98; assert_in_epsilon(65351409710.39363, worksheet.outputs_energy_t98, 0.002); end
  def test_outputs_energy_u98; assert_in_epsilon(91772291869.47128, worksheet.outputs_energy_u98, 0.002); end
  def test_outputs_energy_v98; assert_in_epsilon(116768755090.40808, worksheet.outputs_energy_v98, 0.002); end
  def test_outputs_energy_w98; assert_in_epsilon(139857819637.46878, worksheet.outputs_energy_w98, 0.002); end
  def test_outputs_energy_x98; assert_in_epsilon(159647588676.02435, worksheet.outputs_energy_x98, 0.002); end
  def test_outputs_energy_y98; assert_in_epsilon(176954712422.02902, worksheet.outputs_energy_y98, 0.002); end
  def test_outputs_energy_z98; assert_in_epsilon(191657289702.1333, worksheet.outputs_energy_z98, 0.002); end
  def test_outputs_energy_c99; assert_equal("G.Q.02", worksheet.outputs_energy_c99); end
  def test_outputs_energy_d99; assert_equal("Global Oil reserves ", worksheet.outputs_energy_d99); end
  def test_outputs_energy_g99; assert_equal("bbl", worksheet.outputs_energy_g99); end
  def test_outputs_energy_r99; assert_in_epsilon(25678788395.006027, worksheet.outputs_energy_r99, 0.002); end
  def test_outputs_energy_s99; assert_in_epsilon(138359617601.1256, worksheet.outputs_energy_s99, 0.002); end
  def test_outputs_energy_t99; assert_in_epsilon(260432551909.52402, worksheet.outputs_energy_t99, 0.002); end
  def test_outputs_energy_u99; assert_in_epsilon(398079300763.38025, worksheet.outputs_energy_u99, 0.002); end
  def test_outputs_energy_v99; assert_in_epsilon(547886877175.4717, worksheet.outputs_energy_v99, 0.002); end
  def test_outputs_energy_w99; assert_in_epsilon(716933597098.2239, worksheet.outputs_energy_w99, 0.002); end
  def test_outputs_energy_x99; assert_in_epsilon(899608151376.9202, worksheet.outputs_energy_x99, 0.002); end
  def test_outputs_energy_y99; assert_in_epsilon(1106286261729.457, worksheet.outputs_energy_y99, 0.002); end
  def test_outputs_energy_z99; assert_in_epsilon(1330632060886.7368, worksheet.outputs_energy_z99, 0.002); end
  def test_outputs_energy_c100; assert_equal("G.Q.03", worksheet.outputs_energy_c100); end
  def test_outputs_energy_d100; assert_equal("Global Gas reserves ", worksheet.outputs_energy_d100); end
  def test_outputs_energy_g100; assert_equal("T.m3", worksheet.outputs_energy_g100); end
  def test_outputs_energy_r100; assert_in_epsilon(2.84757714464237, worksheet.outputs_energy_r100, 0.002); end
  def test_outputs_energy_s100; assert_in_epsilon(14.616637682702438, worksheet.outputs_energy_s100, 0.002); end
  def test_outputs_energy_t100; assert_in_epsilon(26.847893483152287, worksheet.outputs_energy_t100, 0.002); end
  def test_outputs_energy_u100; assert_in_epsilon(39.79906021713018, worksheet.outputs_energy_u100, 0.002); end
  def test_outputs_energy_v100; assert_in_epsilon(53.29900848346544, worksheet.outputs_energy_v100, 0.002); end
  def test_outputs_energy_w100; assert_in_epsilon(67.37571367883618, worksheet.outputs_energy_w100, 0.002); end
  def test_outputs_energy_x100; assert_in_epsilon(81.6254434403986, worksheet.outputs_energy_x100, 0.002); end
  def test_outputs_energy_y100; assert_in_epsilon(96.49727308319648, worksheet.outputs_energy_y100, 0.002); end
  def test_outputs_energy_z100; assert_in_epsilon(111.80375719847663, worksheet.outputs_energy_z100, 0.002); end
  def test_outputs_energy_b103; assert_equal("ESTIMATES OF RESERVES AND RESERVES REMAINING BY 2050", worksheet.outputs_energy_b103); end
  def test_outputs_energy_c105; assert_equal("Coal", worksheet.outputs_energy_c105); end
  def test_outputs_energy_p105; assert_equal("t", worksheet.outputs_energy_p105); end
  def test_outputs_energy_c107; assert_equal("Year", worksheet.outputs_energy_c107); end
  def test_outputs_energy_d107; assert_equal("Estimate of reserves (t)", worksheet.outputs_energy_d107); end
  def test_outputs_energy_e107; assert_equal("Method / source", worksheet.outputs_energy_e107); end
  def test_outputs_energy_f107; assert_equal("Web link", worksheet.outputs_energy_f107); end
  def test_outputs_energy_h107; assert_equal("Consumption by 2050", worksheet.outputs_energy_h107); end
  def test_outputs_energy_k107; assert_equal("% of est. reserves consumed", worksheet.outputs_energy_k107); end
  def test_outputs_energy_n107; assert_equal("Remaining reserves by 2050", worksheet.outputs_energy_n107); end
  def test_outputs_energy_c108; assert_in_epsilon(2009.0, worksheet.outputs_energy_c108, 0.002); end
  def test_outputs_energy_d108; assert_in_epsilon(860011379999.9999, worksheet.outputs_energy_d108, 0.002); end
  def test_outputs_energy_e108; assert_equal("Based on recoverable reserves: those quantities of coal that geological and engineering information indicates with reasonable certainty can be extracted in the future under existing economic and operating conditions.", worksheet.outputs_energy_e108); end
  def test_outputs_energy_f108; assert_equal("http://www.eia.gov/forecasts/ieo/coal.cfm", worksheet.outputs_energy_f108); end
  def test_outputs_energy_h108; assert_in_epsilon(191657289702.1333, worksheet.outputs_energy_h108, 0.002); end
  def test_outputs_energy_k108; assert_in_delta(0.22285436467379457, worksheet.outputs_energy_k108, 0.002); end
  def test_outputs_energy_n108; assert_in_epsilon(668354090297.8666, worksheet.outputs_energy_n108, 0.002); end
  def test_outputs_energy_c109; assert_in_epsilon(2012.0, worksheet.outputs_energy_c109, 0.002); end
  def test_outputs_energy_d109; assert_in_epsilon(1038000000000.0, worksheet.outputs_energy_d109, 0.002); end
  def test_outputs_energy_e109; assert_equal("German Federal Institute for Geosciences and Natural Resources method. ", worksheet.outputs_energy_e109); end
  def test_outputs_energy_f109; assert_equal("http://www.worldcoal.org/resources/coal-statistics/", worksheet.outputs_energy_f109); end
  def test_outputs_energy_h109; assert_in_epsilon(191657289702.1333, worksheet.outputs_energy_h109, 0.002); end
  def test_outputs_energy_k109; assert_in_delta(0.18464093420244057, worksheet.outputs_energy_k109, 0.002); end
  def test_outputs_energy_n109; assert_in_epsilon(846342710297.8667, worksheet.outputs_energy_n109, 0.002); end
  def test_outputs_energy_c110; assert_equal("Unknown", worksheet.outputs_energy_c110); end
  def test_outputs_energy_d110; assert_in_epsilon(861000000000.0, worksheet.outputs_energy_d110, 0.002); end
  def test_outputs_energy_e110; assert_equal("WEC data", worksheet.outputs_energy_e110); end
  def test_outputs_energy_f110; assert_equal("http://www.worldcoal.org/resources/coal-statistics/", worksheet.outputs_energy_f110); end
  def test_outputs_energy_h110; assert_in_epsilon(191657289702.1333, worksheet.outputs_energy_h110, 0.002); end
  def test_outputs_energy_k110; assert_in_delta(0.22259847816740222, worksheet.outputs_energy_k110, 0.002); end
  def test_outputs_energy_n110; assert_in_epsilon(669342710297.8667, worksheet.outputs_energy_n110, 0.002); end
  def test_outputs_energy_c112; assert_equal("Oil", worksheet.outputs_energy_c112); end
  def test_outputs_energy_p112; assert_equal("bbl", worksheet.outputs_energy_p112); end
  def test_outputs_energy_c114; assert_equal("Year", worksheet.outputs_energy_c114); end
  def test_outputs_energy_d114; assert_equal("Estimate of reserves (bbl)", worksheet.outputs_energy_d114); end
  def test_outputs_energy_e114; assert_equal("Method / type", worksheet.outputs_energy_e114); end
  def test_outputs_energy_f114; assert_equal("Web link", worksheet.outputs_energy_f114); end
  def test_outputs_energy_h114; assert_equal("Consumption by 2050", worksheet.outputs_energy_h114); end
  def test_outputs_energy_k114; assert_equal("% of est. reserves consumed", worksheet.outputs_energy_k114); end
  def test_outputs_energy_n114; assert_equal("Remaining reserves by 2050", worksheet.outputs_energy_n114); end
  def test_outputs_energy_c115; assert_in_epsilon(2012.0, worksheet.outputs_energy_c115, 0.002); end
  def test_outputs_energy_d115; assert_in_epsilon(1525957000000.0, worksheet.outputs_energy_d115, 0.002); end
  def test_outputs_energy_e115; assert_equal("EIA", worksheet.outputs_energy_e115); end
  def test_outputs_energy_f115; assert_equal("http://www.eia.gov/cfapps/ipdbproject/iedindex3.cfm?tid=5&pid=57&aid=6&cid=regions&syid=2013&eyid=2013&unit=BB", worksheet.outputs_energy_f115); end
  def test_outputs_energy_h115; assert_in_epsilon(1330632060886.7368, worksheet.outputs_energy_h115, 0.002); end
  def test_outputs_energy_k115; assert_in_delta(0.8719983989632322, worksheet.outputs_energy_k115, 0.002); end
  def test_outputs_energy_n115; assert_in_epsilon(195324939113.26318, worksheet.outputs_energy_n115, 0.002); end
  def test_outputs_energy_c116; assert_in_epsilon(2012.0, worksheet.outputs_energy_c116, 0.002); end
  def test_outputs_energy_d116; assert_in_epsilon(1669000000000.0, worksheet.outputs_energy_d116, 0.002); end
  def test_outputs_energy_e116; assert_equal("BP data, based on proved reserves, drawn from a variety of official primary sources and data provided by the OPEC Secretariat, World Oil and the Oil & Gas Journal and an independent estimate of Russian and Chinese reserves based on information in the public domain", worksheet.outputs_energy_e116); end
  def test_outputs_energy_f116; assert_equal("http://www.bp.com/en/global/corporate/about-bp/statistical-review-of-world-energy-2013/review-by-energy-type/oil/oil-reserves/oil-reserve-in-numbers-in-this-review.html", worksheet.outputs_energy_f116); end
  def test_outputs_energy_h116; assert_in_epsilon(1330632060886.7368, worksheet.outputs_energy_h116, 0.002); end
  def test_outputs_energy_k116; assert_in_delta(0.7972630682365109, worksheet.outputs_energy_k116, 0.002); end
  def test_outputs_energy_n116; assert_in_epsilon(338367939113.2632, worksheet.outputs_energy_n116, 0.002); end
  def test_outputs_energy_c117; assert_in_epsilon(2012.0, worksheet.outputs_energy_c117, 0.002); end
  def test_outputs_energy_d117; assert_in_epsilon(1477000000000.0, worksheet.outputs_energy_d117, 0.002); end
  def test_outputs_energy_e117; assert_equal("OPEC", worksheet.outputs_energy_e117); end
  def test_outputs_energy_f117; assert_equal("http://www.opec.org/opec_web/en/data_graphs/330.htm", worksheet.outputs_energy_f117); end
  def test_outputs_energy_h117; assert_in_epsilon(1330632060886.7368, worksheet.outputs_energy_h117, 0.002); end
  def test_outputs_energy_k117; assert_in_delta(0.9009018692530378, worksheet.outputs_energy_k117, 0.002); end
  def test_outputs_energy_n117; assert_in_epsilon(146367939113.26318, worksheet.outputs_energy_n117, 0.002); end
  def test_outputs_energy_c119; assert_equal("Gas", worksheet.outputs_energy_c119); end
  def test_outputs_energy_p119; assert_equal("T.m3", worksheet.outputs_energy_p119); end
  def test_outputs_energy_c121; assert_equal("Year", worksheet.outputs_energy_c121); end
  def test_outputs_energy_d121; assert_equal("Estimate of reserves (T.m3)", worksheet.outputs_energy_d121); end
  def test_outputs_energy_e121; assert_equal("Method / type", worksheet.outputs_energy_e121); end
  def test_outputs_energy_f121; assert_equal("Web link", worksheet.outputs_energy_f121); end
  def test_outputs_energy_h121; assert_equal("Consumption by 2050", worksheet.outputs_energy_h121); end
  def test_outputs_energy_k121; assert_equal("% of est. reserves consumed", worksheet.outputs_energy_k121); end
  def test_outputs_energy_n121; assert_equal("Remaining reserves by 2050", worksheet.outputs_energy_n121); end
  def test_outputs_energy_c122; assert_in_epsilon(2012.0, worksheet.outputs_energy_c122, 0.002); end
  def test_outputs_energy_d122; assert_in_epsilon(193.84296233361653, worksheet.outputs_energy_d122, 0.002); end
  def test_outputs_energy_f122; assert_equal("http://www.eia.gov/cfapps/ipdbproject/iedindex3.cfm?tid=3&pid=3&aid=6&cid=regions&syid=2013&eyid=2013&unit=TCF", worksheet.outputs_energy_f122); end
  def test_outputs_energy_h122; assert_in_epsilon(111.80375719847663, worksheet.outputs_energy_h122, 0.002); end
  def test_outputs_energy_k122; assert_in_delta(0.5767749102289047, worksheet.outputs_energy_k122, 0.002); end
  def test_outputs_energy_n122; assert_in_epsilon(82.0392051351399, worksheet.outputs_energy_n122, 0.002); end
  def test_outputs_energy_c123; assert_in_epsilon(2012.0, worksheet.outputs_energy_c123, 0.002); end
  def test_outputs_energy_d123; assert_in_epsilon(187.29999999999998, worksheet.outputs_energy_d123, 0.002); end
  def test_outputs_energy_f123; assert_equal("http://www.bp.com/en/global/corporate/about-bp/statistical-review-of-world-energy-2013/review-by-energy-type/natural-gas/natural-gas-reserves.html", worksheet.outputs_energy_f123); end
  def test_outputs_energy_h123; assert_in_epsilon(111.80375719847663, worksheet.outputs_energy_h123, 0.002); end
  def test_outputs_energy_k123; assert_in_delta(0.5969234233768107, worksheet.outputs_energy_k123, 0.002); end
  def test_outputs_energy_n123; assert_in_epsilon(75.49624280152335, worksheet.outputs_energy_n123, 0.002); end
  def test_outputs_energy_d124; assert_in_epsilon(191.07196261682242, worksheet.outputs_energy_d124, 0.002); end
  def test_outputs_energy_f124; assert_equal("unknown: EY input", worksheet.outputs_energy_f124); end
  def test_outputs_energy_h124; assert_in_epsilon(111.80375719847663, worksheet.outputs_energy_h124, 0.002); end
  def test_outputs_energy_k124; assert_in_delta(0.5851395237023287, worksheet.outputs_energy_k124, 0.002); end
  def test_outputs_energy_n124; assert_in_epsilon(79.26820541834579, worksheet.outputs_energy_n124, 0.002); end
  def test_outputs_energy_b128; assert_equal("Electricity grid (net of distribution losses)", worksheet.outputs_energy_b128); end
  def test_outputs_energy_h130; assert_equal("Historic actuals", worksheet.outputs_energy_h130); end
  def test_outputs_energy_r130; assert_equal("Calculated by the model", worksheet.outputs_energy_r130); end
  def test_outputs_energy_c131; assert_equal("Code", worksheet.outputs_energy_c131); end
  def test_outputs_energy_d131; assert_equal("EJ", worksheet.outputs_energy_d131); end
  def test_outputs_energy_g131; assert_equal("Notes", worksheet.outputs_energy_g131); end
  def test_outputs_energy_h131; assert_equal("1975", worksheet.outputs_energy_h131); end
  def test_outputs_energy_i131; assert_equal("1980", worksheet.outputs_energy_i131); end
  def test_outputs_energy_j131; assert_equal("1985", worksheet.outputs_energy_j131); end
  def test_outputs_energy_k131; assert_equal("1990", worksheet.outputs_energy_k131); end
  def test_outputs_energy_l131; assert_equal("1995", worksheet.outputs_energy_l131); end
  def test_outputs_energy_m131; assert_equal("2000", worksheet.outputs_energy_m131); end
  def test_outputs_energy_n131; assert_equal("2005", worksheet.outputs_energy_n131); end
  def test_outputs_energy_o131; assert_in_epsilon(2010.0, worksheet.outputs_energy_o131, 0.002); end
  def test_outputs_energy_p131; assert_in_epsilon(2011.0, worksheet.outputs_energy_p131, 0.002); end
  def test_outputs_energy_r131; assert_in_epsilon(2011.0, worksheet.outputs_energy_r131, 0.002); end
  def test_outputs_energy_s131; assert_equal("2015", worksheet.outputs_energy_s131); end
  def test_outputs_energy_t131; assert_equal("2020", worksheet.outputs_energy_t131); end
  def test_outputs_energy_u131; assert_equal("2025", worksheet.outputs_energy_u131); end
  def test_outputs_energy_v131; assert_equal("2030", worksheet.outputs_energy_v131); end
  def test_outputs_energy_w131; assert_equal("2035", worksheet.outputs_energy_w131); end
  def test_outputs_energy_x131; assert_equal("2040", worksheet.outputs_energy_x131); end
  def test_outputs_energy_y131; assert_equal("2045", worksheet.outputs_energy_y131); end
  def test_outputs_energy_z131; assert_equal("2050", worksheet.outputs_energy_z131); end
  def test_outputs_energy_c132; assert_equal("G.E.02", worksheet.outputs_energy_c132); end
  def test_outputs_energy_d132; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_d132); end
  def test_outputs_energy_r132; assert_in_delta(-0.0035674675171009085, worksheet.outputs_energy_r132, 0.002); end
  def test_outputs_energy_s132; assert_in_delta(0.004428034096429778, worksheet.outputs_energy_s132, 0.002); end
  def test_outputs_energy_t132; assert_in_delta(6.661338147750939e-15, worksheet.outputs_energy_t132, 0.002); end
  def test_outputs_energy_u132; assert_in_delta(1.0436096431476471e-14, worksheet.outputs_energy_u132, 0.002); end
  def test_outputs_energy_v132; assert_in_delta(-0.12242874519364877, worksheet.outputs_energy_v132, 0.002); end
  def test_outputs_energy_w132; assert_in_delta(-1.3322676295501878e-14, worksheet.outputs_energy_w132, 0.002); end
  def test_outputs_energy_x132; assert_in_delta(-0.1783385012284553, worksheet.outputs_energy_x132, 0.002); end
  def test_outputs_energy_y132; assert_in_delta(1.5987211554602254e-14, worksheet.outputs_energy_y132, 0.002); end
  def test_outputs_energy_z132; assert_in_delta(0.0, (worksheet.outputs_energy_z132||0), 0.002); end
  def test_outputs_energy_c133; assert_equal("G.L.02", worksheet.outputs_energy_c133); end
  def test_outputs_energy_d133; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_d133); end
  def test_outputs_energy_r133; assert_in_epsilon(12.952554154644265, worksheet.outputs_energy_r133, 0.002); end
  def test_outputs_energy_s133; assert_in_epsilon(14.682143234130049, worksheet.outputs_energy_s133, 0.002); end
  def test_outputs_energy_t133; assert_in_epsilon(16.10386492353967, worksheet.outputs_energy_t133, 0.002); end
  def test_outputs_energy_u133; assert_in_epsilon(18.60399049655946, worksheet.outputs_energy_u133, 0.002); end
  def test_outputs_energy_v133; assert_in_epsilon(19.88168525992359, worksheet.outputs_energy_v133, 0.002); end
  def test_outputs_energy_w133; assert_in_epsilon(22.555046896042597, worksheet.outputs_energy_w133, 0.002); end
  def test_outputs_energy_x133; assert_in_epsilon(23.669594903016716, worksheet.outputs_energy_x133, 0.002); end
  def test_outputs_energy_y133; assert_in_epsilon(27.09440150876947, worksheet.outputs_energy_y133, 0.002); end
  def test_outputs_energy_z133; assert_in_epsilon(28.76303644919348, worksheet.outputs_energy_z133, 0.002); end
  def test_outputs_energy_c135; assert_equal("check", worksheet.outputs_energy_c135); end
  def test_outputs_energy_c136; assert_equal("G.E.01", worksheet.outputs_energy_c136); end
  def test_outputs_energy_d136; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_d136); end
  def test_outputs_energy_s136; assert_in_delta(0.0, (worksheet.outputs_energy_s136||0), 0.002); end
  def test_outputs_energy_d137; assert_equal("Oversupply", worksheet.outputs_energy_d137); end
  def test_outputs_energy_s137; assert_in_delta(0.004428034096429778, worksheet.outputs_energy_s137, 0.002); end
  def test_outputs_energy_b141; assert_equal("Electricity Generation", worksheet.outputs_energy_b141); end
  def test_outputs_energy_f141; assert_equal("G.E.02", worksheet.outputs_energy_f141); end
  def test_outputs_energy_c143; assert_equal("Split by model conventions", worksheet.outputs_energy_c143); end
  def test_outputs_energy_z143; assert_equal("EJ", worksheet.outputs_energy_z143); end
  def test_outputs_energy_c145; assert_equal("Code", worksheet.outputs_energy_c145); end
  def test_outputs_energy_d145; assert_equal("EJ", worksheet.outputs_energy_d145); end
  def test_outputs_energy_g145; assert_equal("Notes", worksheet.outputs_energy_g145); end
  def test_outputs_energy_h145; assert_equal("1975", worksheet.outputs_energy_h145); end
  def test_outputs_energy_i145; assert_equal("1980", worksheet.outputs_energy_i145); end
  def test_outputs_energy_j145; assert_equal("1985", worksheet.outputs_energy_j145); end
  def test_outputs_energy_k145; assert_equal("1990", worksheet.outputs_energy_k145); end
  def test_outputs_energy_l145; assert_equal("1995", worksheet.outputs_energy_l145); end
  def test_outputs_energy_m145; assert_equal("2000", worksheet.outputs_energy_m145); end
  def test_outputs_energy_n145; assert_equal("2005", worksheet.outputs_energy_n145); end
  def test_outputs_energy_o145; assert_in_epsilon(2010.0, worksheet.outputs_energy_o145, 0.002); end
  def test_outputs_energy_p145; assert_in_epsilon(2011.0, worksheet.outputs_energy_p145, 0.002); end
  def test_outputs_energy_r145; assert_in_epsilon(2011.0, worksheet.outputs_energy_r145, 0.002); end
  def test_outputs_energy_s145; assert_equal("2015", worksheet.outputs_energy_s145); end
  def test_outputs_energy_t145; assert_equal("2020", worksheet.outputs_energy_t145); end
  def test_outputs_energy_u145; assert_equal("2025", worksheet.outputs_energy_u145); end
  def test_outputs_energy_v145; assert_equal("2030", worksheet.outputs_energy_v145); end
  def test_outputs_energy_w145; assert_equal("2035", worksheet.outputs_energy_w145); end
  def test_outputs_energy_x145; assert_equal("2040", worksheet.outputs_energy_x145); end
  def test_outputs_energy_y145; assert_equal("2045", worksheet.outputs_energy_y145); end
  def test_outputs_energy_z145; assert_equal("2050", worksheet.outputs_energy_z145); end
  def test_outputs_energy_c146; assert_equal("-", worksheet.outputs_energy_c146); end
  def test_outputs_energy_d146; assert_equal("Unabated power plants", worksheet.outputs_energy_d146); end
  def test_outputs_energy_g146; assert_equal("unabated power", worksheet.outputs_energy_g146); end
  def test_outputs_energy_r146; assert_in_epsilon(35.67110770337408, worksheet.outputs_energy_r146, 0.002); end
  def test_outputs_energy_s146; assert_in_epsilon(39.54044675212659, worksheet.outputs_energy_s146, 0.002); end
  def test_outputs_energy_t146; assert_in_epsilon(40.63626027619322, worksheet.outputs_energy_t146, 0.002); end
  def test_outputs_energy_u146; assert_in_epsilon(43.18159308423767, worksheet.outputs_energy_u146, 0.002); end
  def test_outputs_energy_v146; assert_in_epsilon(38.13655412782391, worksheet.outputs_energy_v146, 0.002); end
  def test_outputs_energy_w146; assert_in_epsilon(36.30531450478156, worksheet.outputs_energy_w146, 0.002); end
  def test_outputs_energy_x146; assert_in_epsilon(25.298590245696705, worksheet.outputs_energy_x146, 0.002); end
  def test_outputs_energy_y146; assert_in_epsilon(24.6498653932791, worksheet.outputs_energy_y146, 0.002); end
  def test_outputs_energy_z146; assert_in_epsilon(15.458798678183399, worksheet.outputs_energy_z146, 0.002); end
  def test_outputs_energy_c147; assert_equal("-", worksheet.outputs_energy_c147); end
  def test_outputs_energy_d147; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_d147); end
  def test_outputs_energy_g147; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_g147); end
  def test_outputs_energy_r147; assert_in_delta(0.0, (worksheet.outputs_energy_r147||0), 0.002); end
  def test_outputs_energy_s147; assert_in_delta(0.0, (worksheet.outputs_energy_s147||0), 0.002); end
  def test_outputs_energy_t147; assert_in_delta(0.0, (worksheet.outputs_energy_t147||0), 0.002); end
  def test_outputs_energy_u147; assert_in_delta(0.0, (worksheet.outputs_energy_u147||0), 0.002); end
  def test_outputs_energy_v147; assert_in_delta(0.0, (worksheet.outputs_energy_v147||0), 0.002); end
  def test_outputs_energy_w147; assert_in_delta(0.0, (worksheet.outputs_energy_w147||0), 0.002); end
  def test_outputs_energy_x147; assert_in_delta(0.0, (worksheet.outputs_energy_x147||0), 0.002); end
  def test_outputs_energy_y147; assert_in_delta(0.0, (worksheet.outputs_energy_y147||0), 0.002); end
  def test_outputs_energy_z147; assert_in_delta(0.0, (worksheet.outputs_energy_z147||0), 0.002); end
  def test_outputs_energy_c148; assert_equal("-", worksheet.outputs_energy_c148); end
  def test_outputs_energy_d148; assert_equal("Nuclear", worksheet.outputs_energy_d148); end
  def test_outputs_energy_g148; assert_equal("Nuclear", worksheet.outputs_energy_g148); end
  def test_outputs_energy_r148; assert_in_epsilon(9.31580352, worksheet.outputs_energy_r148, 0.002); end
  def test_outputs_energy_s148; assert_in_epsilon(10.300400640000001, worksheet.outputs_energy_s148, 0.002); end
  def test_outputs_energy_t148; assert_in_epsilon(11.234505599999999, worksheet.outputs_energy_t148, 0.002); end
  def test_outputs_energy_u148; assert_in_epsilon(13.0017312, worksheet.outputs_energy_u148, 0.002); end
  def test_outputs_energy_v148; assert_in_epsilon(15.097155840000003, worksheet.outputs_energy_v148, 0.002); end
  def test_outputs_energy_w148; assert_in_epsilon(17.49553344, worksheet.outputs_energy_w148, 0.002); end
  def test_outputs_energy_x148; assert_in_epsilon(20.27260224, worksheet.outputs_energy_x148, 0.002); end
  def test_outputs_energy_y148; assert_in_epsilon(23.50410048, worksheet.outputs_energy_y148, 0.002); end
  def test_outputs_energy_z148; assert_in_epsilon(27.2657664, worksheet.outputs_energy_z148, 0.002); end
  def test_outputs_energy_d149; assert_equal("Wind", worksheet.outputs_energy_d149); end
  def test_outputs_energy_g149; assert_equal("Wind", worksheet.outputs_energy_g149); end
  def test_outputs_energy_r149; assert_in_epsilon(1.62541521288, worksheet.outputs_energy_r149, 0.002); end
  def test_outputs_energy_s149; assert_in_epsilon(3.601037736, worksheet.outputs_energy_s149, 0.002); end
  def test_outputs_energy_t149; assert_in_epsilon(8.007109847999999, worksheet.outputs_energy_t149, 0.002); end
  def test_outputs_energy_u149; assert_in_epsilon(12.678581375999999, worksheet.outputs_energy_u149, 0.002); end
  def test_outputs_energy_v149; assert_in_epsilon(20.902491935999997, worksheet.outputs_energy_v149, 0.002); end
  def test_outputs_energy_w149; assert_in_epsilon(28.711104479999996, worksheet.outputs_energy_w149, 0.002); end
  def test_outputs_energy_x149; assert_in_epsilon(39.500332344, worksheet.outputs_energy_x149, 0.002); end
  def test_outputs_energy_y149; assert_in_epsilon(44.963584056, worksheet.outputs_energy_y149, 0.002); end
  def test_outputs_energy_z149; assert_in_epsilon(51.293091888000006, worksheet.outputs_energy_z149, 0.002); end
  def test_outputs_energy_d150; assert_equal("Marine", worksheet.outputs_energy_d150); end
  def test_outputs_energy_g150; assert_equal("Marine", worksheet.outputs_energy_g150); end
  def test_outputs_energy_r150; assert_in_delta(0.0079840728, worksheet.outputs_energy_r150, 0.002); end
  def test_outputs_energy_s150; assert_in_delta(0.01735668, worksheet.outputs_energy_s150, 0.002); end
  def test_outputs_energy_t150; assert_in_delta(0.06153732, worksheet.outputs_energy_t150, 0.002); end
  def test_outputs_energy_u150; assert_in_delta(0.21143592, worksheet.outputs_energy_u150, 0.002); end
  def test_outputs_energy_v150; assert_in_delta(0.42602759999999995, worksheet.outputs_energy_v150, 0.002); end
  def test_outputs_energy_w150; assert_in_delta(0.79367364, worksheet.outputs_energy_w150, 0.002); end
  def test_outputs_energy_x150; assert_in_epsilon(1.1360736, worksheet.outputs_energy_x150, 0.002); end
  def test_outputs_energy_y150; assert_in_epsilon(1.51003116, worksheet.outputs_energy_y150, 0.002); end
  def test_outputs_energy_z150; assert_in_epsilon(1.85874264, worksheet.outputs_energy_z150, 0.002); end
  def test_outputs_energy_d151; assert_equal("Solar", worksheet.outputs_energy_d151); end
  def test_outputs_energy_g151; assert_equal("Solar", worksheet.outputs_energy_g151); end
  def test_outputs_energy_r151; assert_in_delta(0.19177553520000004, worksheet.outputs_energy_r151, 0.002); end
  def test_outputs_energy_s151; assert_in_delta(0.6409664136, worksheet.outputs_energy_s151, 0.002); end
  def test_outputs_energy_t151; assert_in_epsilon(2.8338409224000003, worksheet.outputs_energy_t151, 0.002); end
  def test_outputs_energy_u151; assert_in_epsilon(4.9480423344, worksheet.outputs_energy_u151, 0.002); end
  def test_outputs_energy_v151; assert_in_epsilon(8.864056476, worksheet.outputs_energy_v151, 0.002); end
  def test_outputs_energy_w151; assert_in_epsilon(12.9046600224, worksheet.outputs_energy_w151, 0.002); end
  def test_outputs_energy_x151; assert_in_epsilon(18.857875032000003, worksheet.outputs_energy_x151, 0.002); end
  def test_outputs_energy_y151; assert_in_epsilon(25.2375910056, worksheet.outputs_energy_y151, 0.002); end
  def test_outputs_energy_z151; assert_in_epsilon(33.773574672, worksheet.outputs_energy_z151, 0.002); end
  def test_outputs_energy_c152; assert_equal("-", worksheet.outputs_energy_c152); end
  def test_outputs_energy_d152; assert_equal("Hydro", worksheet.outputs_energy_d152); end
  def test_outputs_energy_g152; assert_equal("Hydro", worksheet.outputs_energy_g152); end
  def test_outputs_energy_r152; assert_in_epsilon(13.7748924, worksheet.outputs_energy_r152, 0.002); end
  def test_outputs_energy_s152; assert_in_epsilon(15.4079982, worksheet.outputs_energy_s152, 0.002); end
  def test_outputs_energy_t152; assert_in_epsilon(17.864757360000002, worksheet.outputs_energy_t152, 0.002); end
  def test_outputs_energy_u152; assert_in_epsilon(20.704941360000003, worksheet.outputs_energy_u152, 0.002); end
  def test_outputs_energy_v152; assert_in_epsilon(23.9995548, worksheet.outputs_energy_v152, 0.002); end
  def test_outputs_energy_w152; assert_in_epsilon(27.819602280000005, worksheet.outputs_energy_w152, 0.002); end
  def test_outputs_energy_x152; assert_in_epsilon(32.25028932, worksheet.outputs_energy_x152, 0.002); end
  def test_outputs_energy_y152; assert_in_epsilon(37.39102236000001, worksheet.outputs_energy_y152, 0.002); end
  def test_outputs_energy_z152; assert_in_epsilon(43.35540876000001, worksheet.outputs_energy_z152, 0.002); end
  def test_outputs_energy_c153; assert_equal("-", worksheet.outputs_energy_c153); end
  def test_outputs_energy_d153; assert_equal("Geothermal", worksheet.outputs_energy_d153); end
  def test_outputs_energy_g153; assert_equal("Geothermal", worksheet.outputs_energy_g153); end
  def test_outputs_energy_r153; assert_in_delta(0.29184468480000003, worksheet.outputs_energy_r153, 0.002); end
  def test_outputs_energy_s153; assert_in_delta(0.4158029376, worksheet.outputs_energy_s153, 0.002); end
  def test_outputs_energy_t153; assert_in_delta(0.639988128, worksheet.outputs_energy_t153, 0.002); end
  def test_outputs_energy_u153; assert_in_epsilon(1.1055258432000001, worksheet.outputs_energy_u153, 0.002); end
  def test_outputs_energy_v153; assert_in_epsilon(1.9093610304, worksheet.outputs_energy_v153, 0.002); end
  def test_outputs_energy_w153; assert_in_epsilon(3.2981478911999997, worksheet.outputs_energy_w153, 0.002); end
  def test_outputs_energy_x153; assert_in_epsilon(5.705614080000001, worksheet.outputs_energy_x153, 0.002); end
  def test_outputs_energy_y153; assert_in_epsilon(7.624316160000001, worksheet.outputs_energy_y153, 0.002); end
  def test_outputs_energy_z153; assert_in_epsilon(10.199416320000001, worksheet.outputs_energy_z153, 0.002); end
  def test_outputs_energy_d154; assert_equal("total", worksheet.outputs_energy_d154); end
  def test_outputs_energy_c156; assert_equal("Consistent with IEA categories", worksheet.outputs_energy_c156); end
  def test_outputs_energy_z156; assert_equal("EJ", worksheet.outputs_energy_z156); end
  def test_outputs_energy_h157; assert_equal("Historic actuals", worksheet.outputs_energy_h157); end
  def test_outputs_energy_r157; assert_equal("Calculated by the model", worksheet.outputs_energy_r157); end
  def test_outputs_energy_c158; assert_equal("Code", worksheet.outputs_energy_c158); end
  def test_outputs_energy_d158; assert_equal("EJ", worksheet.outputs_energy_d158); end
  def test_outputs_energy_f158; assert_equal("2010 actuals ", worksheet.outputs_energy_f158); end
  def test_outputs_energy_g158; assert_equal("Notes", worksheet.outputs_energy_g158); end
  def test_outputs_energy_h158; assert_equal("1975", worksheet.outputs_energy_h158); end
  def test_outputs_energy_i158; assert_equal("1980", worksheet.outputs_energy_i158); end
  def test_outputs_energy_j158; assert_equal("1985", worksheet.outputs_energy_j158); end
  def test_outputs_energy_k158; assert_equal("1990", worksheet.outputs_energy_k158); end
  def test_outputs_energy_l158; assert_equal("1995", worksheet.outputs_energy_l158); end
  def test_outputs_energy_m158; assert_equal("2000", worksheet.outputs_energy_m158); end
  def test_outputs_energy_n158; assert_equal("2005", worksheet.outputs_energy_n158); end
  def test_outputs_energy_o158; assert_in_epsilon(2010.0, worksheet.outputs_energy_o158, 0.002); end
  def test_outputs_energy_p158; assert_in_epsilon(2011.0, worksheet.outputs_energy_p158, 0.002); end
  def test_outputs_energy_r158; assert_in_epsilon(2011.0, worksheet.outputs_energy_r158, 0.002); end
  def test_outputs_energy_s158; assert_equal("2015", worksheet.outputs_energy_s158); end
  def test_outputs_energy_t158; assert_equal("2020", worksheet.outputs_energy_t158); end
  def test_outputs_energy_u158; assert_equal("2025", worksheet.outputs_energy_u158); end
  def test_outputs_energy_v158; assert_equal("2030", worksheet.outputs_energy_v158); end
  def test_outputs_energy_w158; assert_equal("2035", worksheet.outputs_energy_w158); end
  def test_outputs_energy_x158; assert_equal("2040", worksheet.outputs_energy_x158); end
  def test_outputs_energy_y158; assert_equal("2045", worksheet.outputs_energy_y158); end
  def test_outputs_energy_z158; assert_equal("2050", worksheet.outputs_energy_z158); end
  def test_outputs_energy_c159; assert_equal("-", worksheet.outputs_energy_c159); end
  def test_outputs_energy_d159; assert_equal("Unabated power plants", worksheet.outputs_energy_d159); end
  def test_outputs_energy_h159; assert_in_epsilon(16.8011964, worksheet.outputs_energy_h159, 0.002); end
  def test_outputs_energy_i159; assert_in_epsilon(21.0157056, worksheet.outputs_energy_i159, 0.002); end
  def test_outputs_energy_j159; assert_in_epsilon(22.6696788, worksheet.outputs_energy_j159, 0.002); end
  def test_outputs_energy_k159; assert_in_epsilon(27.429624, worksheet.outputs_energy_k159, 0.002); end
  def test_outputs_energy_l159; assert_in_epsilon(30.127896, worksheet.outputs_energy_l159, 0.002); end
  def test_outputs_energy_m159; assert_in_epsilon(36.4040784, worksheet.outputs_energy_m159, 0.002); end
  def test_outputs_energy_n159; assert_in_epsilon(44.5586256, worksheet.outputs_energy_n159, 0.002); end
  def test_outputs_energy_o159; assert_in_epsilon(53.241246, worksheet.outputs_energy_o159, 0.002); end
  def test_outputs_energy_p159; assert_in_epsilon(55.713996, worksheet.outputs_energy_p159, 0.002); end
  def test_outputs_energy_r159; assert_in_epsilon(35.67110770337408, worksheet.outputs_energy_r159, 0.002); end
  def test_outputs_energy_s159; assert_in_epsilon(39.54044675212659, worksheet.outputs_energy_s159, 0.002); end
  def test_outputs_energy_t159; assert_in_epsilon(40.63626027619322, worksheet.outputs_energy_t159, 0.002); end
  def test_outputs_energy_u159; assert_in_epsilon(43.18159308423767, worksheet.outputs_energy_u159, 0.002); end
  def test_outputs_energy_v159; assert_in_epsilon(38.13655412782391, worksheet.outputs_energy_v159, 0.002); end
  def test_outputs_energy_w159; assert_in_epsilon(36.30531450478156, worksheet.outputs_energy_w159, 0.002); end
  def test_outputs_energy_x159; assert_in_epsilon(25.298590245696705, worksheet.outputs_energy_x159, 0.002); end
  def test_outputs_energy_y159; assert_in_epsilon(24.6498653932791, worksheet.outputs_energy_y159, 0.002); end
  def test_outputs_energy_z159; assert_in_epsilon(15.458798678183399, worksheet.outputs_energy_z159, 0.002); end
  def test_outputs_energy_c160; assert_equal("-", worksheet.outputs_energy_c160); end
  def test_outputs_energy_d160; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_d160); end
  def test_outputs_energy_h160; assert_in_delta(0.0, (worksheet.outputs_energy_h160||0), 0.002); end
  def test_outputs_energy_i160; assert_in_delta(0.0, (worksheet.outputs_energy_i160||0), 0.002); end
  def test_outputs_energy_j160; assert_in_delta(0.0, (worksheet.outputs_energy_j160||0), 0.002); end
  def test_outputs_energy_k160; assert_in_delta(0.0, (worksheet.outputs_energy_k160||0), 0.002); end
  def test_outputs_energy_l160; assert_in_delta(0.0, (worksheet.outputs_energy_l160||0), 0.002); end
  def test_outputs_energy_m160; assert_in_delta(0.0, (worksheet.outputs_energy_m160||0), 0.002); end
  def test_outputs_energy_n160; assert_in_delta(0.0, (worksheet.outputs_energy_n160||0), 0.002); end
  def test_outputs_energy_o160; assert_in_delta(0.0, (worksheet.outputs_energy_o160||0), 0.002); end
  def test_outputs_energy_p160; assert_in_delta(0.0, (worksheet.outputs_energy_p160||0), 0.002); end
  def test_outputs_energy_r160; assert_in_delta(0.0, (worksheet.outputs_energy_r160||0), 0.002); end
  def test_outputs_energy_s160; assert_in_delta(0.0, (worksheet.outputs_energy_s160||0), 0.002); end
  def test_outputs_energy_t160; assert_in_delta(0.0, (worksheet.outputs_energy_t160||0), 0.002); end
  def test_outputs_energy_u160; assert_in_delta(0.0, (worksheet.outputs_energy_u160||0), 0.002); end
  def test_outputs_energy_v160; assert_in_delta(0.0, (worksheet.outputs_energy_v160||0), 0.002); end
  def test_outputs_energy_w160; assert_in_delta(0.0, (worksheet.outputs_energy_w160||0), 0.002); end
  def test_outputs_energy_x160; assert_in_delta(0.0, (worksheet.outputs_energy_x160||0), 0.002); end
  def test_outputs_energy_y160; assert_in_delta(0.0, (worksheet.outputs_energy_y160||0), 0.002); end
  def test_outputs_energy_z160; assert_in_delta(0.0, (worksheet.outputs_energy_z160||0), 0.002); end
  def test_outputs_energy_c161; assert_equal("-", worksheet.outputs_energy_c161); end
  def test_outputs_energy_d161; assert_equal("Nuclear", worksheet.outputs_energy_d161); end
  def test_outputs_energy_h161; assert_in_epsilon(1.3810068, worksheet.outputs_energy_h161, 0.002); end
  def test_outputs_energy_i161; assert_in_epsilon(2.56815, worksheet.outputs_energy_i161, 0.002); end
  def test_outputs_energy_j161; assert_in_epsilon(5.3715528, worksheet.outputs_energy_j161, 0.002); end
  def test_outputs_energy_k161; assert_in_epsilon(7.2464472, worksheet.outputs_energy_k161, 0.002); end
  def test_outputs_energy_l161; assert_in_epsilon(8.3950236, worksheet.outputs_energy_l161, 0.002); end
  def test_outputs_energy_m161; assert_in_epsilon(9.3262428, worksheet.outputs_energy_m161, 0.002); end
  def test_outputs_energy_n161; assert_in_epsilon(9.9646272, worksheet.outputs_energy_n161, 0.002); end
  def test_outputs_energy_o161; assert_in_epsilon(9.9226368, worksheet.outputs_energy_o161, 0.002); end
  def test_outputs_energy_p161; assert_in_epsilon(9.3012444, worksheet.outputs_energy_p161, 0.002); end
  def test_outputs_energy_r161; assert_in_epsilon(9.31580352, worksheet.outputs_energy_r161, 0.002); end
  def test_outputs_energy_s161; assert_in_epsilon(10.300400640000001, worksheet.outputs_energy_s161, 0.002); end
  def test_outputs_energy_t161; assert_in_epsilon(11.234505599999999, worksheet.outputs_energy_t161, 0.002); end
  def test_outputs_energy_u161; assert_in_epsilon(13.0017312, worksheet.outputs_energy_u161, 0.002); end
  def test_outputs_energy_v161; assert_in_epsilon(15.097155840000003, worksheet.outputs_energy_v161, 0.002); end
  def test_outputs_energy_w161; assert_in_epsilon(17.49553344, worksheet.outputs_energy_w161, 0.002); end
  def test_outputs_energy_x161; assert_in_epsilon(20.27260224, worksheet.outputs_energy_x161, 0.002); end
  def test_outputs_energy_y161; assert_in_epsilon(23.50410048, worksheet.outputs_energy_y161, 0.002); end
  def test_outputs_energy_z161; assert_in_epsilon(27.2657664, worksheet.outputs_energy_z161, 0.002); end
  def test_outputs_energy_c162; assert_equal("-", worksheet.outputs_energy_c162); end
  def test_outputs_energy_d162; assert_equal("Wind, solar, marine", worksheet.outputs_energy_d162); end
  def test_outputs_energy_h162; assert_in_delta(0.0018612, worksheet.outputs_energy_h162, 0.002); end
  def test_outputs_energy_i162; assert_in_delta(0.0018216, worksheet.outputs_energy_i162, 0.002); end
  def test_outputs_energy_j162; assert_in_delta(0.0025236, worksheet.outputs_energy_j162, 0.002); end
  def test_outputs_energy_k162; assert_in_delta(0.0188136, worksheet.outputs_energy_k162, 0.002); end
  def test_outputs_energy_l162; assert_in_delta(0.0368568, worksheet.outputs_energy_l162, 0.002); end
  def test_outputs_energy_m162; assert_in_delta(0.1244772, worksheet.outputs_energy_m162, 0.002); end
  def test_outputs_energy_n162; assert_in_delta(0.4177584, worksheet.outputs_energy_n162, 0.002); end
  def test_outputs_energy_o162; assert_in_epsilon(1.370574, worksheet.outputs_energy_o162, 0.002); end
  def test_outputs_energy_p162; assert_in_epsilon(1.8177696, worksheet.outputs_energy_p162, 0.002); end
  def test_outputs_energy_r162; assert_in_epsilon(1.82517482088, worksheet.outputs_energy_r162, 0.002); end
  def test_outputs_energy_s162; assert_in_epsilon(4.259360829599999, worksheet.outputs_energy_s162, 0.002); end
  def test_outputs_energy_t162; assert_in_epsilon(10.902488090399999, worksheet.outputs_energy_t162, 0.002); end
  def test_outputs_energy_u162; assert_in_epsilon(17.838059630399997, worksheet.outputs_energy_u162, 0.002); end
  def test_outputs_energy_v162; assert_in_epsilon(30.192576011999996, worksheet.outputs_energy_v162, 0.002); end
  def test_outputs_energy_w162; assert_in_epsilon(42.4094381424, worksheet.outputs_energy_w162, 0.002); end
  def test_outputs_energy_x162; assert_in_epsilon(59.494280976000006, worksheet.outputs_energy_x162, 0.002); end
  def test_outputs_energy_y162; assert_in_epsilon(71.7112062216, worksheet.outputs_energy_y162, 0.002); end
  def test_outputs_energy_z162; assert_in_epsilon(86.92540920000002, worksheet.outputs_energy_z162, 0.002); end
  def test_outputs_energy_c163; assert_equal("-", worksheet.outputs_energy_c163); end
  def test_outputs_energy_d163; assert_equal("Hydro", worksheet.outputs_energy_d163); end
  def test_outputs_energy_h163; assert_in_epsilon(5.1973488, worksheet.outputs_energy_h163, 0.002); end
  def test_outputs_energy_i163; assert_in_epsilon(6.180696, worksheet.outputs_energy_i163, 0.002); end
  def test_outputs_energy_j163; assert_in_epsilon(7.103448, worksheet.outputs_energy_j163, 0.002); end
  def test_outputs_energy_k163; assert_in_epsilon(7.7201532, worksheet.outputs_energy_k163, 0.002); end
  def test_outputs_energy_l163; assert_in_epsilon(8.9287596, worksheet.outputs_energy_l163, 0.002); end
  def test_outputs_energy_m163; assert_in_epsilon(9.433656, worksheet.outputs_energy_m163, 0.002); end
  def test_outputs_energy_n163; assert_in_epsilon(10.5463116, worksheet.outputs_energy_n163, 0.002); end
  def test_outputs_energy_o163; assert_in_epsilon(12.389958, worksheet.outputs_energy_o163, 0.002); end
  def test_outputs_energy_p163; assert_in_epsilon(12.5653572, worksheet.outputs_energy_p163, 0.002); end
  def test_outputs_energy_r163; assert_in_epsilon(13.7748924, worksheet.outputs_energy_r163, 0.002); end
  def test_outputs_energy_s163; assert_in_epsilon(15.4079982, worksheet.outputs_energy_s163, 0.002); end
  def test_outputs_energy_t163; assert_in_epsilon(17.864757360000002, worksheet.outputs_energy_t163, 0.002); end
  def test_outputs_energy_u163; assert_in_epsilon(20.704941360000003, worksheet.outputs_energy_u163, 0.002); end
  def test_outputs_energy_v163; assert_in_epsilon(23.9995548, worksheet.outputs_energy_v163, 0.002); end
  def test_outputs_energy_w163; assert_in_epsilon(27.819602280000005, worksheet.outputs_energy_w163, 0.002); end
  def test_outputs_energy_x163; assert_in_epsilon(32.25028932, worksheet.outputs_energy_x163, 0.002); end
  def test_outputs_energy_y163; assert_in_epsilon(37.39102236000001, worksheet.outputs_energy_y163, 0.002); end
  def test_outputs_energy_z163; assert_in_epsilon(43.35540876000001, worksheet.outputs_energy_z163, 0.002); end
  def test_outputs_energy_c164; assert_equal("-", worksheet.outputs_energy_c164); end
  def test_outputs_energy_d164; assert_equal("Geothermal", worksheet.outputs_energy_d164); end
  def test_outputs_energy_h164; assert_in_delta(0.0288324, worksheet.outputs_energy_h164, 0.002); end
  def test_outputs_energy_i164; assert_in_delta(0.0491184, worksheet.outputs_energy_i164, 0.002); end
  def test_outputs_energy_j164; assert_in_delta(0.0825156, worksheet.outputs_energy_j164, 0.002); end
  def test_outputs_energy_k164; assert_in_delta(0.1309248, worksheet.outputs_energy_k164, 0.002); end
  def test_outputs_energy_l164; assert_in_delta(0.143226, worksheet.outputs_energy_l164, 0.002); end
  def test_outputs_energy_m164; assert_in_delta(0.1867716, worksheet.outputs_energy_m164, 0.002); end
  def test_outputs_energy_n164; assert_in_delta(0.2097468, worksheet.outputs_energy_n164, 0.002); end
  def test_outputs_energy_o164; assert_in_delta(0.2452896, worksheet.outputs_energy_o164, 0.002); end
  def test_outputs_energy_p164; assert_in_delta(0.2491632, worksheet.outputs_energy_p164, 0.002); end
  def test_outputs_energy_r164; assert_in_delta(0.29184468480000003, worksheet.outputs_energy_r164, 0.002); end
  def test_outputs_energy_s164; assert_in_delta(0.4158029376, worksheet.outputs_energy_s164, 0.002); end
  def test_outputs_energy_t164; assert_in_delta(0.639988128, worksheet.outputs_energy_t164, 0.002); end
  def test_outputs_energy_u164; assert_in_epsilon(1.1055258432000001, worksheet.outputs_energy_u164, 0.002); end
  def test_outputs_energy_v164; assert_in_epsilon(1.9093610304, worksheet.outputs_energy_v164, 0.002); end
  def test_outputs_energy_w164; assert_in_epsilon(3.2981478911999997, worksheet.outputs_energy_w164, 0.002); end
  def test_outputs_energy_x164; assert_in_epsilon(5.705614080000001, worksheet.outputs_energy_x164, 0.002); end
  def test_outputs_energy_y164; assert_in_epsilon(7.624316160000001, worksheet.outputs_energy_y164, 0.002); end
  def test_outputs_energy_z164; assert_in_epsilon(10.199416320000001, worksheet.outputs_energy_z164, 0.002); end
  def test_outputs_energy_d165; assert_equal("total", worksheet.outputs_energy_d165); end
  def test_outputs_energy_d167; assert_equal("check", worksheet.outputs_energy_d167); end
  def test_outputs_energy_h167; assert_in_delta(0.0, (worksheet.outputs_energy_h167||0), 0.002); end
  def test_outputs_energy_i167; assert_in_delta(0.0, (worksheet.outputs_energy_i167||0), 0.002); end
  def test_outputs_energy_j167; assert_in_delta(0.0, (worksheet.outputs_energy_j167||0), 0.002); end
  def test_outputs_energy_k167; assert_in_delta(0.0, (worksheet.outputs_energy_k167||0), 0.002); end
  def test_outputs_energy_l167; assert_in_delta(0.0, (worksheet.outputs_energy_l167||0), 0.002); end
  def test_outputs_energy_m167; assert_in_delta(0.0, (worksheet.outputs_energy_m167||0), 0.002); end
  def test_outputs_energy_n167; assert_in_delta(0.0, (worksheet.outputs_energy_n167||0), 0.002); end
  def test_outputs_energy_r167; assert_in_delta(0.0035674675171009085, worksheet.outputs_energy_r167, 0.002); end
  def test_outputs_energy_s167; assert_in_delta(-0.004428034096429778, worksheet.outputs_energy_s167, 0.002); end
  def test_outputs_energy_t167; assert_in_delta(-6.661338147750939e-15, worksheet.outputs_energy_t167, 0.002); end
  def test_outputs_energy_u167; assert_in_delta(-1.0436096431476471e-14, worksheet.outputs_energy_u167, 0.002); end
  def test_outputs_energy_v167; assert_in_delta(0.12242874519364877, worksheet.outputs_energy_v167, 0.002); end
  def test_outputs_energy_w167; assert_in_delta(1.3322676295501878e-14, worksheet.outputs_energy_w167, 0.002); end
  def test_outputs_energy_x167; assert_in_delta(0.1783385012284553, worksheet.outputs_energy_x167, 0.002); end
  def test_outputs_energy_y167; assert_in_delta(-1.5987211554602254e-14, worksheet.outputs_energy_y167, 0.002); end
  def test_outputs_energy_z167; assert_in_delta(0.0, (worksheet.outputs_energy_z167||0), 0.002); end
  def test_outputs_energy_ab167; assert_equal("Should equal 0", worksheet.outputs_energy_ab167); end
  def test_outputs_energy_b171; assert_equal("Bio-energy production", worksheet.outputs_energy_b171); end
  def test_outputs_energy_h173; assert_equal("Historic actuals", worksheet.outputs_energy_h173); end
  def test_outputs_energy_r173; assert_equal("Calculated by the model", worksheet.outputs_energy_r173); end
  def test_outputs_energy_c174; assert_equal("EJ", worksheet.outputs_energy_c174); end
  def test_outputs_energy_h174; assert_equal("1975", worksheet.outputs_energy_h174); end
  def test_outputs_energy_i174; assert_equal("1980", worksheet.outputs_energy_i174); end
  def test_outputs_energy_j174; assert_equal("1985", worksheet.outputs_energy_j174); end
  def test_outputs_energy_k174; assert_equal("1990", worksheet.outputs_energy_k174); end
  def test_outputs_energy_l174; assert_equal("1995", worksheet.outputs_energy_l174); end
  def test_outputs_energy_m174; assert_equal("2000", worksheet.outputs_energy_m174); end
  def test_outputs_energy_n174; assert_equal("2005", worksheet.outputs_energy_n174); end
  def test_outputs_energy_o174; assert_in_epsilon(2010.0, worksheet.outputs_energy_o174, 0.002); end
  def test_outputs_energy_p174; assert_in_epsilon(2011.0, worksheet.outputs_energy_p174, 0.002); end
  def test_outputs_energy_r174; assert_in_epsilon(2011.0, worksheet.outputs_energy_r174, 0.002); end
  def test_outputs_energy_s174; assert_equal("2015", worksheet.outputs_energy_s174); end
  def test_outputs_energy_t174; assert_equal("2020", worksheet.outputs_energy_t174); end
  def test_outputs_energy_u174; assert_equal("2025", worksheet.outputs_energy_u174); end
  def test_outputs_energy_v174; assert_equal("2030", worksheet.outputs_energy_v174); end
  def test_outputs_energy_w174; assert_equal("2035", worksheet.outputs_energy_w174); end
  def test_outputs_energy_x174; assert_equal("2040", worksheet.outputs_energy_x174); end
  def test_outputs_energy_y174; assert_equal("2045", worksheet.outputs_energy_y174); end
  def test_outputs_energy_z174; assert_equal("2050", worksheet.outputs_energy_z174); end
  def test_outputs_energy_c175; assert_equal("G.C.01", worksheet.outputs_energy_c175); end
  def test_outputs_energy_d175; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_d175); end
  def test_outputs_energy_c176; assert_equal("G.C.02", worksheet.outputs_energy_c176); end
  def test_outputs_energy_d176; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_d176); end
  def test_outputs_energy_c177; assert_equal("G.C.03", worksheet.outputs_energy_c177); end
  def test_outputs_energy_d177; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_d177); end
  def test_outputs_energy_c178; assert_equal("total", worksheet.outputs_energy_c178); end
  def test_outputs_emissions_b2; assert_equal("G", worksheet.outputs_emissions_b2); end
  def test_outputs_emissions_c2; assert_equal("Global", worksheet.outputs_emissions_c2); end
  def test_outputs_emissions_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_emissions_e2); end
  def test_outputs_emissions_b3; assert_equal("Emissions ", worksheet.outputs_emissions_b3); end
  def test_outputs_emissions_m3; assert_equal("Need to account for negative emission techs within IPCC categories….", worksheet.outputs_emissions_m3); end
  def test_outputs_emissions_ae3; assert_equal("Sources for historic data this way", worksheet.outputs_emissions_ae3); end
  def test_outputs_emissions_b7; assert_equal("TOTAL EMISSIONS: CO2e", worksheet.outputs_emissions_b7); end
  def test_outputs_emissions_al7; assert_equal("Sources", worksheet.outputs_emissions_al7); end
  def test_outputs_emissions_c9; assert_equal("NOTE FOR USER:", worksheet.outputs_emissions_c9); end
  def test_outputs_emissions_d9; assert_equal("3120000000000 t CO2", worksheet.outputs_emissions_d9); end
  def test_outputs_emissions_e9; assert_equal("Cumulative CO2 emissions associated with 50% of climate models achieving 2C temperature change", worksheet.outputs_emissions_e9); end
  def test_outputs_emissions_c12; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c12); end
  def test_outputs_emissions_ah12; assert_equal("%", worksheet.outputs_emissions_ah12); end
  def test_outputs_emissions_h13; assert_equal("Historic actuals", worksheet.outputs_emissions_h13); end
  def test_outputs_emissions_p13; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p13); end
  def test_outputs_emissions_y13; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y13); end
  def test_outputs_emissions_d14; assert_equal("IPCC Sector", worksheet.outputs_emissions_d14); end
  def test_outputs_emissions_h14; assert_in_epsilon(1990.0, worksheet.outputs_emissions_h14, 0.002); end
  def test_outputs_emissions_i14; assert_in_epsilon(1995.0, worksheet.outputs_emissions_i14, 0.002); end
  def test_outputs_emissions_j14; assert_in_epsilon(2000.0, worksheet.outputs_emissions_j14, 0.002); end
  def test_outputs_emissions_k14; assert_in_epsilon(2005.0, worksheet.outputs_emissions_k14, 0.002); end
  def test_outputs_emissions_l14; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l14, 0.002); end
  def test_outputs_emissions_n14; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n14, 0.002); end
  def test_outputs_emissions_p14; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p14, 0.002); end
  def test_outputs_emissions_q14; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q14, 0.002); end
  def test_outputs_emissions_r14; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r14, 0.002); end
  def test_outputs_emissions_s14; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s14, 0.002); end
  def test_outputs_emissions_t14; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t14, 0.002); end
  def test_outputs_emissions_u14; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u14, 0.002); end
  def test_outputs_emissions_v14; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v14, 0.002); end
  def test_outputs_emissions_w14; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w14, 0.002); end
  def test_outputs_emissions_x14; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x14, 0.002); end
  def test_outputs_emissions_y14; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y14, 0.002); end
  def test_outputs_emissions_z14; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z14, 0.002); end
  def test_outputs_emissions_aa14; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa14, 0.002); end
  def test_outputs_emissions_ab14; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab14, 0.002); end
  def test_outputs_emissions_ac14; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac14, 0.002); end
  def test_outputs_emissions_ad14; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad14, 0.002); end
  def test_outputs_emissions_ae14; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae14, 0.002); end
  def test_outputs_emissions_af14; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af14, 0.002); end
  def test_outputs_emissions_ag14; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag14, 0.002); end
  def test_outputs_emissions_ah14; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah14, 0.002); end
  def test_outputs_emissions_am14; assert_equal("Summary of how historic sector emissions data is calculated from IEA and CAIT data", worksheet.outputs_emissions_am14); end
  def test_outputs_emissions_c15; assert_equal("G.1A", worksheet.outputs_emissions_c15); end
  def test_outputs_emissions_d15; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d15); end
  def test_outputs_emissions_h15; assert_in_delta(1.0, worksheet.outputs_emissions_h15, 0.002); end
  def test_outputs_emissions_i15; assert_in_epsilon(1.0408450530797548, worksheet.outputs_emissions_i15, 0.002); end
  def test_outputs_emissions_j15; assert_in_epsilon(1.1296576757395806, worksheet.outputs_emissions_j15, 0.002); end
  def test_outputs_emissions_k15; assert_in_epsilon(1.3051125250820124, worksheet.outputs_emissions_k15, 0.002); end
  def test_outputs_emissions_l15; assert_in_epsilon(1.4464308544810078, worksheet.outputs_emissions_l15, 0.002); end
  def test_outputs_emissions_p15; assert_in_epsilon(1.2640840926075565, worksheet.outputs_emissions_p15, 0.002); end
  def test_outputs_emissions_q15; assert_in_epsilon(1.2995533161876087, worksheet.outputs_emissions_q15, 0.002); end
  def test_outputs_emissions_r15; assert_in_epsilon(1.2688077828797009, worksheet.outputs_emissions_r15, 0.002); end
  def test_outputs_emissions_s15; assert_in_epsilon(1.3835829701611573, worksheet.outputs_emissions_s15, 0.002); end
  def test_outputs_emissions_t15; assert_in_epsilon(1.360644609116699, worksheet.outputs_emissions_t15, 0.002); end
  def test_outputs_emissions_u15; assert_in_epsilon(1.4528338203727424, worksheet.outputs_emissions_u15, 0.002); end
  def test_outputs_emissions_v15; assert_in_epsilon(1.3761937717060382, worksheet.outputs_emissions_v15, 0.002); end
  def test_outputs_emissions_w15; assert_in_epsilon(1.5067450062574554, worksheet.outputs_emissions_w15, 0.002); end
  def test_outputs_emissions_x15; assert_in_epsilon(1.45319646134851, worksheet.outputs_emissions_x15, 0.002); end
  def test_outputs_emissions_c16; assert_equal("G.1B", worksheet.outputs_emissions_c16); end
  def test_outputs_emissions_d16; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d16); end
  def test_outputs_emissions_h16; assert_in_delta(1.0, worksheet.outputs_emissions_h16, 0.002); end
  def test_outputs_emissions_i16; assert_in_delta(0.9739392788323517, worksheet.outputs_emissions_i16, 0.002); end
  def test_outputs_emissions_j16; assert_in_epsilon(1.02179210347471, worksheet.outputs_emissions_j16, 0.002); end
  def test_outputs_emissions_k16; assert_in_epsilon(1.1559648305184795, worksheet.outputs_emissions_k16, 0.002); end
  def test_outputs_emissions_l16; assert_in_epsilon(1.2608289013030967, worksheet.outputs_emissions_l16, 0.002); end
  def test_outputs_emissions_p16; assert_in_delta(0.7322038057528343, worksheet.outputs_emissions_p16, 0.002); end
  def test_outputs_emissions_q16; assert_in_delta(0.695265219413323, worksheet.outputs_emissions_q16, 0.002); end
  def test_outputs_emissions_r16; assert_in_delta(0.6410442940082627, worksheet.outputs_emissions_r16, 0.002); end
  def test_outputs_emissions_s16; assert_in_delta(0.6674534504594865, worksheet.outputs_emissions_s16, 0.002); end
  def test_outputs_emissions_t16; assert_in_delta(0.6232749832362291, worksheet.outputs_emissions_t16, 0.002); end
  def test_outputs_emissions_u16; assert_in_delta(0.6138177397189174, worksheet.outputs_emissions_u16, 0.002); end
  def test_outputs_emissions_v16; assert_in_delta(0.531640665231146, worksheet.outputs_emissions_v16, 0.002); end
  def test_outputs_emissions_w16; assert_in_delta(0.5322149924738289, worksheet.outputs_emissions_w16, 0.002); end
  def test_outputs_emissions_x16; assert_in_delta(0.47158876000458416, worksheet.outputs_emissions_x16, 0.002); end
  def test_outputs_emissions_am16; assert_equal("IPCC ref", worksheet.outputs_emissions_am16); end
  def test_outputs_emissions_an16; assert_equal("IPCC Sector", worksheet.outputs_emissions_an16); end
  def test_outputs_emissions_ao16; assert_equal("CO2", worksheet.outputs_emissions_ao16); end
  def test_outputs_emissions_ap16; assert_equal("CH4", worksheet.outputs_emissions_ap16); end
  def test_outputs_emissions_aq16; assert_equal("N2O", worksheet.outputs_emissions_aq16); end
  def test_outputs_emissions_ar16; assert_equal("F-gas", worksheet.outputs_emissions_ar16); end
  def test_outputs_emissions_c17; assert_equal("G.2", worksheet.outputs_emissions_c17); end
  def test_outputs_emissions_d17; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d17); end
  def test_outputs_emissions_h17; assert_in_delta(1.0, worksheet.outputs_emissions_h17, 0.002); end
  def test_outputs_emissions_i17; assert_in_epsilon(1.1684912775019505, worksheet.outputs_emissions_i17, 0.002); end
  def test_outputs_emissions_j17; assert_in_epsilon(1.2180656462260884, worksheet.outputs_emissions_j17, 0.002); end
  def test_outputs_emissions_k17; assert_in_epsilon(1.602017901343129, worksheet.outputs_emissions_k17, 0.002); end
  def test_outputs_emissions_l17; assert_in_epsilon(2.1468677576604036, worksheet.outputs_emissions_l17, 0.002); end
  def test_outputs_emissions_p17; assert_in_delta(0.0, (worksheet.outputs_emissions_p17||0), 0.002); end
  def test_outputs_emissions_q17; assert_in_delta(0.0, (worksheet.outputs_emissions_q17||0), 0.002); end
  def test_outputs_emissions_r17; assert_in_delta(0.0, (worksheet.outputs_emissions_r17||0), 0.002); end
  def test_outputs_emissions_s17; assert_in_delta(0.0, (worksheet.outputs_emissions_s17||0), 0.002); end
  def test_outputs_emissions_t17; assert_in_delta(0.0, (worksheet.outputs_emissions_t17||0), 0.002); end
  def test_outputs_emissions_u17; assert_in_delta(0.0, (worksheet.outputs_emissions_u17||0), 0.002); end
  def test_outputs_emissions_v17; assert_in_delta(0.0, (worksheet.outputs_emissions_v17||0), 0.002); end
  def test_outputs_emissions_w17; assert_in_delta(0.0, (worksheet.outputs_emissions_w17||0), 0.002); end
  def test_outputs_emissions_x17; assert_in_delta(0.0, (worksheet.outputs_emissions_x17||0), 0.002); end
  def test_outputs_emissions_am17; assert_equal("1A", worksheet.outputs_emissions_am17); end
  def test_outputs_emissions_an17; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_an17); end
  def test_outputs_emissions_ao17; assert_equal("IEA (nb: includes bunkers)", worksheet.outputs_emissions_ao17); end
  def test_outputs_emissions_ap17; assert_equal("CAIT other fuel combustion (from US Environmental Protection Agency)", worksheet.outputs_emissions_ap17); end
  def test_outputs_emissions_aq17; assert_equal("CAIT other fuel combustion (from US Environmental Protection Agency)", worksheet.outputs_emissions_aq17); end
  def test_outputs_emissions_ar17; assert_equal("n/a", worksheet.outputs_emissions_ar17); end
  def test_outputs_emissions_c18; assert_equal("G.3", worksheet.outputs_emissions_c18); end
  def test_outputs_emissions_d18; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d18); end
  def test_outputs_emissions_h18; assert_equal("", worksheet.outputs_emissions_h18); end
  def test_outputs_emissions_i18; assert_equal("", worksheet.outputs_emissions_i18); end
  def test_outputs_emissions_j18; assert_equal("", worksheet.outputs_emissions_j18); end
  def test_outputs_emissions_k18; assert_equal("", worksheet.outputs_emissions_k18); end
  def test_outputs_emissions_l18; assert_equal("", worksheet.outputs_emissions_l18); end
  def test_outputs_emissions_p18; assert_equal("", worksheet.outputs_emissions_p18); end
  def test_outputs_emissions_q18; assert_equal("", worksheet.outputs_emissions_q18); end
  def test_outputs_emissions_r18; assert_equal("", worksheet.outputs_emissions_r18); end
  def test_outputs_emissions_s18; assert_equal("", worksheet.outputs_emissions_s18); end
  def test_outputs_emissions_t18; assert_equal("", worksheet.outputs_emissions_t18); end
  def test_outputs_emissions_u18; assert_equal("", worksheet.outputs_emissions_u18); end
  def test_outputs_emissions_v18; assert_equal("", worksheet.outputs_emissions_v18); end
  def test_outputs_emissions_w18; assert_equal("", worksheet.outputs_emissions_w18); end
  def test_outputs_emissions_x18; assert_equal("", worksheet.outputs_emissions_x18); end
  def test_outputs_emissions_am18; assert_equal("1B", worksheet.outputs_emissions_am18); end
  def test_outputs_emissions_an18; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_an18); end
  def test_outputs_emissions_ao18; assert_equal("CAIT fugitive emissions (from US Energy Information Agency)", worksheet.outputs_emissions_ao18); end
  def test_outputs_emissions_ap18; assert_equal("CAIT fugitive emissions (from US Environmental Protection Agency)", worksheet.outputs_emissions_ap18); end
  def test_outputs_emissions_aq18; assert_equal("CAIT fugitive emissions (from US Environmental Protection Agency)", worksheet.outputs_emissions_aq18); end
  def test_outputs_emissions_ar18; assert_equal("n/a", worksheet.outputs_emissions_ar18); end
  def test_outputs_emissions_c19; assert_equal("G.4", worksheet.outputs_emissions_c19); end
  def test_outputs_emissions_d19; assert_equal("Global Agriculture", worksheet.outputs_emissions_d19); end
  def test_outputs_emissions_h19; assert_in_delta(1.0, worksheet.outputs_emissions_h19, 0.002); end
  def test_outputs_emissions_i19; assert_in_delta(0.9786618565229557, worksheet.outputs_emissions_i19, 0.002); end
  def test_outputs_emissions_j19; assert_in_delta(0.9647763099249671, worksheet.outputs_emissions_j19, 0.002); end
  def test_outputs_emissions_k19; assert_in_epsilon(1.0314242736893697, worksheet.outputs_emissions_k19, 0.002); end
  def test_outputs_emissions_l19; assert_in_epsilon(1.0670625394857256, worksheet.outputs_emissions_l19, 0.002); end
  def test_outputs_emissions_p19; assert_in_delta(0.8342433608448252, worksheet.outputs_emissions_p19, 0.002); end
  def test_outputs_emissions_q19; assert_in_delta(0.9099850055338778, worksheet.outputs_emissions_q19, 0.002); end
  def test_outputs_emissions_r19; assert_in_delta(0.988938182081889, worksheet.outputs_emissions_r19, 0.002); end
  def test_outputs_emissions_s19; assert_in_epsilon(1.0465982632592497, worksheet.outputs_emissions_s19, 0.002); end
  def test_outputs_emissions_t19; assert_in_epsilon(1.090629872350475, worksheet.outputs_emissions_t19, 0.002); end
  def test_outputs_emissions_u19; assert_in_epsilon(1.1227267586654122, worksheet.outputs_emissions_u19, 0.002); end
  def test_outputs_emissions_v19; assert_in_epsilon(1.1443478378380743, worksheet.outputs_emissions_v19, 0.002); end
  def test_outputs_emissions_w19; assert_in_epsilon(1.156756270117673, worksheet.outputs_emissions_w19, 0.002); end
  def test_outputs_emissions_x19; assert_in_epsilon(1.161102084362131, worksheet.outputs_emissions_x19, 0.002); end
  def test_outputs_emissions_am19; assert_in_epsilon(2.0, worksheet.outputs_emissions_am19, 0.002); end
  def test_outputs_emissions_an19; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_an19); end
  def test_outputs_emissions_ao19; assert_equal("CAIT industrial processes (from Carbon Dioxide Information Analysis Center)", worksheet.outputs_emissions_ao19); end
  def test_outputs_emissions_ap19; assert_equal("CAIT industrial processes (from US Environmental Protection Agency)", worksheet.outputs_emissions_ap19); end
  def test_outputs_emissions_aq19; assert_equal("CAIT industrial processes (from US Environmental Protection Agency)", worksheet.outputs_emissions_aq19); end
  def test_outputs_emissions_ar19; assert_equal("CAIT industrial processes (from US Environmental Protection Agency)", worksheet.outputs_emissions_ar19); end
  def test_outputs_emissions_c20; assert_equal("G.5", worksheet.outputs_emissions_c20); end
  def test_outputs_emissions_d20; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d20); end
  def test_outputs_emissions_h20; assert_in_delta(1.0, worksheet.outputs_emissions_h20, 0.002); end
  def test_outputs_emissions_i20; assert_in_delta(0.9940201717930505, worksheet.outputs_emissions_i20, 0.002); end
  def test_outputs_emissions_j20; assert_in_delta(0.9939558242204489, worksheet.outputs_emissions_j20, 0.002); end
  def test_outputs_emissions_k20; assert_in_delta(0.727575667007951, worksheet.outputs_emissions_k20, 0.002); end
  def test_outputs_emissions_l20; assert_in_delta(0.7290645759402035, worksheet.outputs_emissions_l20, 0.002); end
  def test_outputs_emissions_p20; assert_in_delta(0.7290645759402034, worksheet.outputs_emissions_p20, 0.002); end
  def test_outputs_emissions_q20; assert_in_epsilon(1.7186633640186064, worksheet.outputs_emissions_q20, 0.002); end
  def test_outputs_emissions_r20; assert_in_epsilon(1.4387807400257515, worksheet.outputs_emissions_r20, 0.002); end
  def test_outputs_emissions_s20; assert_in_epsilon(1.0733094117911086, worksheet.outputs_emissions_s20, 0.002); end
  def test_outputs_emissions_t20; assert_in_delta(0.8263991698428127, worksheet.outputs_emissions_t20, 0.002); end
  def test_outputs_emissions_u20; assert_in_delta(0.6101433117817823, worksheet.outputs_emissions_u20, 0.002); end
  def test_outputs_emissions_v20; assert_in_delta(0.4205173084794268, worksheet.outputs_emissions_v20, 0.002); end
  def test_outputs_emissions_w20; assert_in_delta(0.2541181939741709, worksheet.outputs_emissions_w20, 0.002); end
  def test_outputs_emissions_x20; assert_in_delta(0.10877821872296108, worksheet.outputs_emissions_x20, 0.002); end
  def test_outputs_emissions_am20; assert_in_epsilon(3.0, worksheet.outputs_emissions_am20, 0.002); end
  def test_outputs_emissions_an20; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_an20); end
  def test_outputs_emissions_ao20; assert_equal("n/a", worksheet.outputs_emissions_ao20); end
  def test_outputs_emissions_ap20; assert_equal("n/a", worksheet.outputs_emissions_ap20); end
  def test_outputs_emissions_aq20; assert_equal("n/a", worksheet.outputs_emissions_aq20); end
  def test_outputs_emissions_ar20; assert_equal("n/a", worksheet.outputs_emissions_ar20); end
  def test_outputs_emissions_c21; assert_equal("G.6", worksheet.outputs_emissions_c21); end
  def test_outputs_emissions_d21; assert_equal("Global Waste", worksheet.outputs_emissions_d21); end
  def test_outputs_emissions_h21; assert_in_delta(1.0, worksheet.outputs_emissions_h21, 0.002); end
  def test_outputs_emissions_i21; assert_in_epsilon(1.0678250854186007, worksheet.outputs_emissions_i21, 0.002); end
  def test_outputs_emissions_j21; assert_in_epsilon(1.1316437756785007, worksheet.outputs_emissions_j21, 0.002); end
  def test_outputs_emissions_k21; assert_in_epsilon(1.2007858635397024, worksheet.outputs_emissions_k21, 0.002); end
  def test_outputs_emissions_l21; assert_in_epsilon(1.2813883441650549, worksheet.outputs_emissions_l21, 0.002); end
  def test_outputs_emissions_p21; assert_in_delta(0.0, (worksheet.outputs_emissions_p21||0), 0.002); end
  def test_outputs_emissions_q21; assert_in_delta(0.0, (worksheet.outputs_emissions_q21||0), 0.002); end
  def test_outputs_emissions_r21; assert_in_delta(0.0, (worksheet.outputs_emissions_r21||0), 0.002); end
  def test_outputs_emissions_s21; assert_in_delta(0.0, (worksheet.outputs_emissions_s21||0), 0.002); end
  def test_outputs_emissions_t21; assert_in_delta(0.0, (worksheet.outputs_emissions_t21||0), 0.002); end
  def test_outputs_emissions_u21; assert_in_delta(0.0, (worksheet.outputs_emissions_u21||0), 0.002); end
  def test_outputs_emissions_v21; assert_in_delta(0.0, (worksheet.outputs_emissions_v21||0), 0.002); end
  def test_outputs_emissions_w21; assert_in_delta(0.0, (worksheet.outputs_emissions_w21||0), 0.002); end
  def test_outputs_emissions_x21; assert_in_delta(0.0, (worksheet.outputs_emissions_x21||0), 0.002); end
  def test_outputs_emissions_am21; assert_in_epsilon(4.0, worksheet.outputs_emissions_am21, 0.002); end
  def test_outputs_emissions_an21; assert_equal("Global Agriculture", worksheet.outputs_emissions_an21); end
  def test_outputs_emissions_ao21; assert_equal("n/a", worksheet.outputs_emissions_ao21); end
  def test_outputs_emissions_ap21; assert_equal("CAIT agriculture (from US Environmental Protection Agency)", worksheet.outputs_emissions_ap21); end
  def test_outputs_emissions_aq21; assert_equal("CAIT agriculture (from US Environmental Protection Agency)", worksheet.outputs_emissions_aq21); end
  def test_outputs_emissions_ar21; assert_equal("n/a", worksheet.outputs_emissions_ar21); end
  def test_outputs_emissions_c22; assert_equal("G.7", worksheet.outputs_emissions_c22); end
  def test_outputs_emissions_d22; assert_equal("Global Other", worksheet.outputs_emissions_d22); end
  def test_outputs_emissions_h22; assert_equal("", worksheet.outputs_emissions_h22); end
  def test_outputs_emissions_i22; assert_equal("", worksheet.outputs_emissions_i22); end
  def test_outputs_emissions_j22; assert_equal("", worksheet.outputs_emissions_j22); end
  def test_outputs_emissions_k22; assert_equal("", worksheet.outputs_emissions_k22); end
  def test_outputs_emissions_l22; assert_equal("", worksheet.outputs_emissions_l22); end
  def test_outputs_emissions_p22; assert_equal("", worksheet.outputs_emissions_p22); end
  def test_outputs_emissions_q22; assert_equal("", worksheet.outputs_emissions_q22); end
  def test_outputs_emissions_r22; assert_equal("", worksheet.outputs_emissions_r22); end
  def test_outputs_emissions_s22; assert_equal("", worksheet.outputs_emissions_s22); end
  def test_outputs_emissions_t22; assert_equal("", worksheet.outputs_emissions_t22); end
  def test_outputs_emissions_u22; assert_equal("", worksheet.outputs_emissions_u22); end
  def test_outputs_emissions_v22; assert_equal("", worksheet.outputs_emissions_v22); end
  def test_outputs_emissions_w22; assert_equal("", worksheet.outputs_emissions_w22); end
  def test_outputs_emissions_x22; assert_equal("", worksheet.outputs_emissions_x22); end
  def test_outputs_emissions_y22; assert_equal("", worksheet.outputs_emissions_y22); end
  def test_outputs_emissions_z22; assert_equal("", worksheet.outputs_emissions_z22); end
  def test_outputs_emissions_aa22; assert_equal("", worksheet.outputs_emissions_aa22); end
  def test_outputs_emissions_ab22; assert_equal("", worksheet.outputs_emissions_ab22); end
  def test_outputs_emissions_ac22; assert_equal("", worksheet.outputs_emissions_ac22); end
  def test_outputs_emissions_ad22; assert_equal("", worksheet.outputs_emissions_ad22); end
  def test_outputs_emissions_ae22; assert_equal("", worksheet.outputs_emissions_ae22); end
  def test_outputs_emissions_af22; assert_equal("", worksheet.outputs_emissions_af22); end
  def test_outputs_emissions_ag22; assert_equal("", worksheet.outputs_emissions_ag22); end
  def test_outputs_emissions_ah22; assert_equal("", worksheet.outputs_emissions_ah22); end
  def test_outputs_emissions_am22; assert_in_epsilon(5.0, worksheet.outputs_emissions_am22, 0.002); end
  def test_outputs_emissions_an22; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_an22); end
  def test_outputs_emissions_ao22; assert_equal("CAIT land use (from Food and Agriculture Organisation of the United Nations)", worksheet.outputs_emissions_ao22); end
  def test_outputs_emissions_ap22; assert_equal("n/a", worksheet.outputs_emissions_ap22); end
  def test_outputs_emissions_aq22; assert_equal("n/a", worksheet.outputs_emissions_aq22); end
  def test_outputs_emissions_ar22; assert_equal("n/a", worksheet.outputs_emissions_ar22); end
  def test_outputs_emissions_d23; assert_equal("total", worksheet.outputs_emissions_d23); end
  def test_outputs_emissions_h23; assert_in_delta(1.0, worksheet.outputs_emissions_h23, 0.002); end
  def test_outputs_emissions_i23; assert_in_epsilon(1.0262167439815204, worksheet.outputs_emissions_i23, 0.002); end
  def test_outputs_emissions_j23; assert_in_epsilon(1.0851188589581318, worksheet.outputs_emissions_j23, 0.002); end
  def test_outputs_emissions_k23; assert_in_epsilon(1.1964509258030918, worksheet.outputs_emissions_k23, 0.002); end
  def test_outputs_emissions_l23; assert_in_epsilon(1.3121325242380244, worksheet.outputs_emissions_l23, 0.002); end
  def test_outputs_emissions_p23; assert_in_epsilon(1.036116783213326, worksheet.outputs_emissions_p23, 0.002); end
  def test_outputs_emissions_q23; assert_in_epsilon(1.1710586931026528, worksheet.outputs_emissions_q23, 0.002); end
  def test_outputs_emissions_r23; assert_in_epsilon(1.1325709422044177, worksheet.outputs_emissions_r23, 0.002); end
  def test_outputs_emissions_s23; assert_in_epsilon(1.1766182206497073, worksheet.outputs_emissions_s23, 0.002); end
  def test_outputs_emissions_t23; assert_in_epsilon(1.1413360537201367, worksheet.outputs_emissions_t23, 0.002); end
  def test_outputs_emissions_u23; assert_in_epsilon(1.1807172570695659, worksheet.outputs_emissions_u23, 0.002); end
  def test_outputs_emissions_v23; assert_in_epsilon(1.1122984619414362, worksheet.outputs_emissions_v23, 0.002); end
  def test_outputs_emissions_w23; assert_in_epsilon(1.1780556170642693, worksheet.outputs_emissions_w23, 0.002); end
  def test_outputs_emissions_x23; assert_in_epsilon(1.126999351357855, worksheet.outputs_emissions_x23, 0.002); end
  def test_outputs_emissions_y23; assert_in_epsilon(1.0759430856514407, worksheet.outputs_emissions_y23, 0.002); end
  def test_outputs_emissions_z23; assert_in_epsilon(1.0248868199450265, worksheet.outputs_emissions_z23, 0.002); end
  def test_outputs_emissions_aa23; assert_in_delta(0.9738305542386124, worksheet.outputs_emissions_aa23, 0.002); end
  def test_outputs_emissions_ab23; assert_in_delta(0.9227742885321981, worksheet.outputs_emissions_ab23, 0.002); end
  def test_outputs_emissions_ac23; assert_in_delta(0.8717180228257839, worksheet.outputs_emissions_ac23, 0.002); end
  def test_outputs_emissions_ad23; assert_in_delta(0.8206617571193697, worksheet.outputs_emissions_ad23, 0.002); end
  def test_outputs_emissions_ae23; assert_in_delta(0.7696054914129555, worksheet.outputs_emissions_ae23, 0.002); end
  def test_outputs_emissions_af23; assert_in_delta(0.7185492257065413, worksheet.outputs_emissions_af23, 0.002); end
  def test_outputs_emissions_ag23; assert_in_delta(0.6674929600001271, worksheet.outputs_emissions_ag23, 0.002); end
  def test_outputs_emissions_ah23; assert_in_delta(0.616436694293713, worksheet.outputs_emissions_ah23, 0.002); end
  def test_outputs_emissions_am23; assert_in_epsilon(6.0, worksheet.outputs_emissions_am23, 0.002); end
  def test_outputs_emissions_an23; assert_equal("Global Waste", worksheet.outputs_emissions_an23); end
  def test_outputs_emissions_ao23; assert_equal("n/a", worksheet.outputs_emissions_ao23); end
  def test_outputs_emissions_ap23; assert_equal("CAIT waste (from US Environmental Protection Agency)", worksheet.outputs_emissions_ap23); end
  def test_outputs_emissions_aq23; assert_equal("CAIT agriculture (from US Environmental Protection Agency)", worksheet.outputs_emissions_aq23); end
  def test_outputs_emissions_ar23; assert_equal("n/a", worksheet.outputs_emissions_ar23); end
  def test_outputs_emissions_am24; assert_in_epsilon(7.0, worksheet.outputs_emissions_am24, 0.002); end
  def test_outputs_emissions_an24; assert_equal("Global Other", worksheet.outputs_emissions_an24); end
  def test_outputs_emissions_ao24; assert_equal("n/a", worksheet.outputs_emissions_ao24); end
  def test_outputs_emissions_ap24; assert_equal("n/a", worksheet.outputs_emissions_ap24); end
  def test_outputs_emissions_aq24; assert_equal("n/a", worksheet.outputs_emissions_aq24); end
  def test_outputs_emissions_ar24; assert_equal("n/a", worksheet.outputs_emissions_ar24); end
  def test_outputs_emissions_an25; assert_equal("total", worksheet.outputs_emissions_an25); end
  def test_outputs_emissions_c27; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c27); end
  def test_outputs_emissions_ah27; assert_equal("t", worksheet.outputs_emissions_ah27); end
  def test_outputs_emissions_h28; assert_equal("Historic actuals", worksheet.outputs_emissions_h28); end
  def test_outputs_emissions_p28; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p28); end
  def test_outputs_emissions_y28; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y28); end
  def test_outputs_emissions_d29; assert_equal("IPCC Sector", worksheet.outputs_emissions_d29); end
  def test_outputs_emissions_h29; assert_equal("1990", worksheet.outputs_emissions_h29); end
  def test_outputs_emissions_i29; assert_equal("1995", worksheet.outputs_emissions_i29); end
  def test_outputs_emissions_j29; assert_equal("2000", worksheet.outputs_emissions_j29); end
  def test_outputs_emissions_k29; assert_equal("2005", worksheet.outputs_emissions_k29); end
  def test_outputs_emissions_l29; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l29, 0.002); end
  def test_outputs_emissions_n29; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n29, 0.002); end
  def test_outputs_emissions_p29; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p29, 0.002); end
  def test_outputs_emissions_q29; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q29, 0.002); end
  def test_outputs_emissions_r29; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r29, 0.002); end
  def test_outputs_emissions_s29; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s29, 0.002); end
  def test_outputs_emissions_t29; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t29, 0.002); end
  def test_outputs_emissions_u29; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u29, 0.002); end
  def test_outputs_emissions_v29; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v29, 0.002); end
  def test_outputs_emissions_w29; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w29, 0.002); end
  def test_outputs_emissions_x29; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x29, 0.002); end
  def test_outputs_emissions_y29; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y29, 0.002); end
  def test_outputs_emissions_z29; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z29, 0.002); end
  def test_outputs_emissions_aa29; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa29, 0.002); end
  def test_outputs_emissions_ab29; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab29, 0.002); end
  def test_outputs_emissions_ac29; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac29, 0.002); end
  def test_outputs_emissions_ad29; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad29, 0.002); end
  def test_outputs_emissions_ae29; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae29, 0.002); end
  def test_outputs_emissions_af29; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af29, 0.002); end
  def test_outputs_emissions_ag29; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag29, 0.002); end
  def test_outputs_emissions_ah29; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah29, 0.002); end
  def test_outputs_emissions_am29; assert_equal("IPCC ref", worksheet.outputs_emissions_am29); end
  def test_outputs_emissions_an29; assert_equal("Calculator Sector", worksheet.outputs_emissions_an29); end
  def test_outputs_emissions_ao29; assert_equal("CO2", worksheet.outputs_emissions_ao29); end
  def test_outputs_emissions_ap29; assert_equal("CH4", worksheet.outputs_emissions_ap29); end
  def test_outputs_emissions_aq29; assert_equal("N2O", worksheet.outputs_emissions_aq29); end
  def test_outputs_emissions_ar29; assert_equal("F-gas", worksheet.outputs_emissions_ar29); end
  def test_outputs_emissions_c30; assert_equal("G.1A", worksheet.outputs_emissions_c30); end
  def test_outputs_emissions_d30; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d30); end
  def test_outputs_emissions_h30; assert_in_epsilon(21628258071.11542, worksheet.outputs_emissions_h30, 0.002); end
  def test_outputs_emissions_i30; assert_in_epsilon(22511665420.05277, worksheet.outputs_emissions_i30, 0.002); end
  def test_outputs_emissions_j30; assert_in_epsilon(24432527742.91207, worksheet.outputs_emissions_j30, 0.002); end
  def test_outputs_emissions_k30; assert_in_epsilon(28227310504.318863, worksheet.outputs_emissions_k30, 0.002); end
  def test_outputs_emissions_l30; assert_in_epsilon(31283779802.739235, worksheet.outputs_emissions_l30, 0.002); end
  def test_outputs_emissions_p30; assert_in_epsilon(27339936978.507996, worksheet.outputs_emissions_p30, 0.002); end
  def test_outputs_emissions_q30; assert_in_epsilon(28107074499.67946, worksheet.outputs_emissions_q30, 0.002); end
  def test_outputs_emissions_r30; assert_in_epsilon(27442102170.76195, worksheet.outputs_emissions_r30, 0.002); end
  def test_outputs_emissions_s30; assert_in_epsilon(29924489541.445896, worksheet.outputs_emissions_s30, 0.002); end
  def test_outputs_emissions_t30; assert_in_epsilon(29428372749.047935, worksheet.outputs_emissions_t30, 0.002); end
  def test_outputs_emissions_u30; assert_in_epsilon(31422264801.46622, worksheet.outputs_emissions_u30, 0.002); end
  def test_outputs_emissions_v30; assert_in_epsilon(29764674050.319893, worksheet.outputs_emissions_v30, 0.002); end
  def test_outputs_emissions_w30; assert_in_epsilon(32588269842.700665, worksheet.outputs_emissions_w30, 0.002); end
  def test_outputs_emissions_x30; assert_in_epsilon(31430108094.077282, worksheet.outputs_emissions_x30, 0.002); end
  def test_outputs_emissions_am30; assert_equal("1A3", worksheet.outputs_emissions_am30); end
  def test_outputs_emissions_an30; assert_equal("Global Transport", worksheet.outputs_emissions_an30); end
  def test_outputs_emissions_ao30; assert_equal("IEA transport (nb: includes bunkers)", worksheet.outputs_emissions_ao30); end
  def test_outputs_emissions_ap30; assert_equal("n/a", worksheet.outputs_emissions_ap30); end
  def test_outputs_emissions_aq30; assert_equal("n/a", worksheet.outputs_emissions_aq30); end
  def test_outputs_emissions_ar30; assert_equal("n/a", worksheet.outputs_emissions_ar30); end
  def test_outputs_emissions_c31; assert_equal("G.1B", worksheet.outputs_emissions_c31); end
  def test_outputs_emissions_d31; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d31); end
  def test_outputs_emissions_h31; assert_in_epsilon(1972118810.29452, worksheet.outputs_emissions_h31, 0.002); end
  def test_outputs_emissions_i31; assert_in_epsilon(1920723971.86996, worksheet.outputs_emissions_i31, 0.002); end
  def test_outputs_emissions_j31; assert_in_epsilon(2015095427.4728801, worksheet.outputs_emissions_j31, 0.002); end
  def test_outputs_emissions_k31; assert_in_epsilon(2279699986.30441, worksheet.outputs_emissions_k31, 0.002); end
  def test_outputs_emissions_l31; assert_in_epsilon(2486504392.8228097, worksheet.outputs_emissions_l31, 0.002); end
  def test_outputs_emissions_p31; assert_in_epsilon(1443992898.2943993, worksheet.outputs_emissions_p31, 0.002); end
  def test_outputs_emissions_q31; assert_in_epsilon(1371145617.3485608, worksheet.outputs_emissions_q31, 0.002); end
  def test_outputs_emissions_r31; assert_in_epsilon(1264215510.4456654, worksheet.outputs_emissions_r31, 0.002); end
  def test_outputs_emissions_s31; assert_in_epsilon(1316297504.6471348, worksheet.outputs_emissions_s31, 0.002); end
  def test_outputs_emissions_t31; assert_in_epsilon(1229172318.426169, worksheet.outputs_emissions_t31, 0.002); end
  def test_outputs_emissions_u31; assert_in_epsilon(1210521510.5921426, worksheet.outputs_emissions_u31, 0.002); end
  def test_outputs_emissions_v31; assert_in_epsilon(1048458556.2198347, worksheet.outputs_emissions_v31, 0.002); end
  def test_outputs_emissions_w31; assert_in_epsilon(1049591197.7783942, worksheet.outputs_emissions_w31, 0.002); end
  def test_outputs_emissions_x31; assert_in_epsilon(930029064.3285084, worksheet.outputs_emissions_x31, 0.002); end
  def test_outputs_emissions_am31; assert_equal("1A4,5", worksheet.outputs_emissions_am31); end
  def test_outputs_emissions_an31; assert_equal("Global Buildings", worksheet.outputs_emissions_an31); end
  def test_outputs_emissions_ao31; assert_equal("IEA other (exc agric/forestry and fishing)", worksheet.outputs_emissions_ao31); end
  def test_outputs_emissions_ap31; assert_equal("CAIT other fuel combustion (from the US Environmental Protection Agency)", worksheet.outputs_emissions_ap31); end
  def test_outputs_emissions_aq31; assert_equal("CAIT other fuel combustion (from the US Environmental Protection Agency)", worksheet.outputs_emissions_aq31); end
  def test_outputs_emissions_ar31; assert_equal("n/a", worksheet.outputs_emissions_ar31); end
  def test_outputs_emissions_c32; assert_equal("G.2", worksheet.outputs_emissions_c32); end
  def test_outputs_emissions_d32; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d32); end
  def test_outputs_emissions_h32; assert_in_epsilon(863552754.5553, worksheet.outputs_emissions_h32, 0.002); end
  def test_outputs_emissions_i32; assert_in_epsilon(1009053861.3606508, worksheet.outputs_emissions_i32, 0.002); end
  def test_outputs_emissions_j32; assert_in_epsilon(1051863944.0277202, worksheet.outputs_emissions_j32, 0.002); end
  def test_outputs_emissions_k32; assert_in_epsilon(1383426971.55176, worksheet.outputs_emissions_k32, 0.002); end
  def test_outputs_emissions_l32; assert_in_epsilon(1853933565.7936018, worksheet.outputs_emissions_l32, 0.002); end
  def test_outputs_emissions_p32; assert_in_delta(0.0, (worksheet.outputs_emissions_p32||0), 0.002); end
  def test_outputs_emissions_q32; assert_in_delta(0.0, (worksheet.outputs_emissions_q32||0), 0.002); end
  def test_outputs_emissions_r32; assert_in_delta(0.0, (worksheet.outputs_emissions_r32||0), 0.002); end
  def test_outputs_emissions_s32; assert_in_delta(0.0, (worksheet.outputs_emissions_s32||0), 0.002); end
  def test_outputs_emissions_t32; assert_in_delta(0.0, (worksheet.outputs_emissions_t32||0), 0.002); end
  def test_outputs_emissions_u32; assert_in_delta(0.0, (worksheet.outputs_emissions_u32||0), 0.002); end
  def test_outputs_emissions_v32; assert_in_delta(0.0, (worksheet.outputs_emissions_v32||0), 0.002); end
  def test_outputs_emissions_w32; assert_in_delta(0.0, (worksheet.outputs_emissions_w32||0), 0.002); end
  def test_outputs_emissions_x32; assert_in_delta(0.0, (worksheet.outputs_emissions_x32||0), 0.002); end
  def test_outputs_emissions_am32; assert_equal("1A2, 2", worksheet.outputs_emissions_am32); end
  def test_outputs_emissions_an32; assert_equal("Global Materials", worksheet.outputs_emissions_an32); end
  def test_outputs_emissions_ao32; assert_equal("IEA manufacturing and construction + CAIT industrial processes (from Carbon Dioxide Information Analysis Center)", worksheet.outputs_emissions_ao32); end
  def test_outputs_emissions_ap32; assert_equal("CAIT industrial processes (from the US Environmental Protection Agency)", worksheet.outputs_emissions_ap32); end
  def test_outputs_emissions_aq32; assert_equal("CAIT industrial processes (from US Environmental Protection Agency)", worksheet.outputs_emissions_aq32); end
  def test_outputs_emissions_ar32; assert_equal("CAIT industrial processes (from the US Environmental Protection Agency)", worksheet.outputs_emissions_ar32); end
  def test_outputs_emissions_c33; assert_equal("G.3", worksheet.outputs_emissions_c33); end
  def test_outputs_emissions_d33; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d33); end
  def test_outputs_emissions_h33; assert_in_delta(0.0, (worksheet.outputs_emissions_h33||0), 0.002); end
  def test_outputs_emissions_i33; assert_in_delta(0.0, (worksheet.outputs_emissions_i33||0), 0.002); end
  def test_outputs_emissions_j33; assert_in_delta(0.0, (worksheet.outputs_emissions_j33||0), 0.002); end
  def test_outputs_emissions_k33; assert_in_delta(0.0, (worksheet.outputs_emissions_k33||0), 0.002); end
  def test_outputs_emissions_l33; assert_in_delta(0.0, (worksheet.outputs_emissions_l33||0), 0.002); end
  def test_outputs_emissions_p33; assert_in_delta(0.0, (worksheet.outputs_emissions_p33||0), 0.002); end
  def test_outputs_emissions_q33; assert_in_delta(0.0, (worksheet.outputs_emissions_q33||0), 0.002); end
  def test_outputs_emissions_r33; assert_in_delta(0.0, (worksheet.outputs_emissions_r33||0), 0.002); end
  def test_outputs_emissions_s33; assert_in_delta(0.0, (worksheet.outputs_emissions_s33||0), 0.002); end
  def test_outputs_emissions_t33; assert_in_delta(0.0, (worksheet.outputs_emissions_t33||0), 0.002); end
  def test_outputs_emissions_u33; assert_in_delta(0.0, (worksheet.outputs_emissions_u33||0), 0.002); end
  def test_outputs_emissions_v33; assert_in_delta(0.0, (worksheet.outputs_emissions_v33||0), 0.002); end
  def test_outputs_emissions_w33; assert_in_delta(0.0, (worksheet.outputs_emissions_w33||0), 0.002); end
  def test_outputs_emissions_x33; assert_in_delta(0.0, (worksheet.outputs_emissions_x33||0), 0.002); end
  def test_outputs_emissions_am33; assert_equal("1A1", worksheet.outputs_emissions_am33); end
  def test_outputs_emissions_an33; assert_equal("Global Electricity Generation and fuel production", worksheet.outputs_emissions_an33); end
  def test_outputs_emissions_ao33; assert_equal("IEA main activity electricity and heat productin + IEA unallocated autoproducers + IEA other energy industry own use + CAIT fugitive emissions (from Energy Information Agency)", worksheet.outputs_emissions_ao33); end
  def test_outputs_emissions_ap33; assert_equal("CAIT fugitive emissions (from the US Environmental Protection Agency)", worksheet.outputs_emissions_ap33); end
  def test_outputs_emissions_aq33; assert_equal("n/a", worksheet.outputs_emissions_aq33); end
  def test_outputs_emissions_ar33; assert_equal("n/a", worksheet.outputs_emissions_ar33); end
  def test_outputs_emissions_c34; assert_equal("G.4", worksheet.outputs_emissions_c34); end
  def test_outputs_emissions_d34; assert_equal("Global Agriculture", worksheet.outputs_emissions_d34); end
  def test_outputs_emissions_h34; assert_in_epsilon(5621789899.83279, worksheet.outputs_emissions_h34, 0.002); end
  def test_outputs_emissions_i34; assert_in_epsilon(5501831340.35236, worksheet.outputs_emissions_i34, 0.002); end
  def test_outputs_emissions_j34; assert_in_epsilon(5423769714.73413, worksheet.outputs_emissions_j34, 0.002); end
  def test_outputs_emissions_k34; assert_in_epsilon(5798450564.26927, worksheet.outputs_emissions_k34, 0.002); end
  def test_outputs_emissions_l34; assert_in_epsilon(5998801406.97078, worksheet.outputs_emissions_l34, 0.002); end
  def test_outputs_emissions_p34; assert_in_epsilon(4689940900.0, worksheet.outputs_emissions_p34, 0.002); end
  def test_outputs_emissions_q34; assert_in_epsilon(5115744513.10964, worksheet.outputs_emissions_q34, 0.002); end
  def test_outputs_emissions_r34; assert_in_epsilon(5559602683.586965, worksheet.outputs_emissions_r34, 0.002); end
  def test_outputs_emissions_s34; assert_in_epsilon(5883755545.573389, worksheet.outputs_emissions_s34, 0.002); end
  def test_outputs_emissions_t34; assert_in_epsilon(6131292000.835826, worksheet.outputs_emissions_t34, 0.002); end
  def test_outputs_emissions_u34; assert_in_epsilon(6311733952.137221, worksheet.outputs_emissions_u34, 0.002); end
  def test_outputs_emissions_v34; assert_in_epsilon(6433283116.653578, worksheet.outputs_emissions_v34, 0.002); end
  def test_outputs_emissions_w34; assert_in_epsilon(6503040715.915785, worksheet.outputs_emissions_w34, 0.002); end
  def test_outputs_emissions_x34; assert_in_epsilon(6527471970.541828, worksheet.outputs_emissions_x34, 0.002); end
  def test_outputs_emissions_ao34; assert_equal("n/a", worksheet.outputs_emissions_ao34); end
  def test_outputs_emissions_ap34; assert_equal("n/a", worksheet.outputs_emissions_ap34); end
  def test_outputs_emissions_aq34; assert_equal("n/a", worksheet.outputs_emissions_aq34); end
  def test_outputs_emissions_ar34; assert_equal("n/a", worksheet.outputs_emissions_ar34); end
  def test_outputs_emissions_c35; assert_equal("G.5", worksheet.outputs_emissions_c35); end
  def test_outputs_emissions_d35; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d35); end
  def test_outputs_emissions_h35; assert_in_epsilon(3620960210.0, worksheet.outputs_emissions_h35, 0.002); end
  def test_outputs_emissions_i35; assert_in_epsilon(3599307490.0, worksheet.outputs_emissions_i35, 0.002); end
  def test_outputs_emissions_j35; assert_in_epsilon(3599074490.0, worksheet.outputs_emissions_j35, 0.002); end
  def test_outputs_emissions_k35; assert_in_epsilon(2634522540.0, worksheet.outputs_emissions_k35, 0.002); end
  def test_outputs_emissions_l35; assert_in_epsilon(2639913820.0, worksheet.outputs_emissions_l35, 0.002); end
  def test_outputs_emissions_p35; assert_in_epsilon(2639913819.9999995, worksheet.outputs_emissions_p35, 0.002); end
  def test_outputs_emissions_q35; assert_in_epsilon(6223211655.4961195, worksheet.outputs_emissions_q35, 0.002); end
  def test_outputs_emissions_r35; assert_in_epsilon(5209767810.547601, worksheet.outputs_emissions_r35, 0.002); end
  def test_outputs_emissions_s35; assert_in_epsilon(3886410673.114109, worksheet.outputs_emissions_s35, 0.002); end
  def test_outputs_emissions_t35; assert_in_epsilon(2992358511.5778565, worksheet.outputs_emissions_t35, 0.002); end
  def test_outputs_emissions_u35; assert_in_epsilon(2209304654.359458, worksheet.outputs_emissions_u35, 0.002); end
  def test_outputs_emissions_v35; assert_in_epsilon(1522676441.6203, worksheet.outputs_emissions_v35, 0.002); end
  def test_outputs_emissions_w35; assert_in_epsilon(920151869.0175346, worksheet.outputs_emissions_w35, 0.002); end
  def test_outputs_emissions_x35; assert_in_epsilon(393881601.7105191, worksheet.outputs_emissions_x35, 0.002); end
  def test_outputs_emissions_am35; assert_equal("4, 5, 6", worksheet.outputs_emissions_am35); end
  def test_outputs_emissions_an35; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_an35); end
  def test_outputs_emissions_ao35; assert_equal("IEA agriculture/forestry + IEA fishing + CAIT land use (from the Food and Agriculture Organisation of the United Nations)", worksheet.outputs_emissions_ao35); end
  def test_outputs_emissions_ap35; assert_equal("CAIT agriculture + CAIT waste (from the Food and Agriculture Organisation of the United Nations)", worksheet.outputs_emissions_ap35); end
  def test_outputs_emissions_aq35; assert_equal("CAIT agric + CAIT waste (from the US Environmental Protection Agency)", worksheet.outputs_emissions_aq35); end
  def test_outputs_emissions_ar35; assert_equal("n/a", worksheet.outputs_emissions_ar35); end
  def test_outputs_emissions_c36; assert_equal("G.6", worksheet.outputs_emissions_c36); end
  def test_outputs_emissions_d36; assert_equal("Global Waste", worksheet.outputs_emissions_d36); end
  def test_outputs_emissions_h36; assert_in_epsilon(1148256668.6108994, worksheet.outputs_emissions_h36, 0.002); end
  def test_outputs_emissions_i36; assert_in_epsilon(1226137275.2419114, worksheet.outputs_emissions_i36, 0.002); end
  def test_outputs_emissions_j36; assert_in_epsilon(1299417511.9148552, worksheet.outputs_emissions_j36, 0.002); end
  def test_outputs_emissions_k36; assert_in_epsilon(1378810375.3831608, worksheet.outputs_emissions_k36, 0.002); end
  def test_outputs_emissions_l36; assert_in_epsilon(1471362711.2678025, worksheet.outputs_emissions_l36, 0.002); end
  def test_outputs_emissions_p36; assert_in_delta(0.0, (worksheet.outputs_emissions_p36||0), 0.002); end
  def test_outputs_emissions_q36; assert_in_delta(0.0, (worksheet.outputs_emissions_q36||0), 0.002); end
  def test_outputs_emissions_r36; assert_in_delta(0.0, (worksheet.outputs_emissions_r36||0), 0.002); end
  def test_outputs_emissions_s36; assert_in_delta(0.0, (worksheet.outputs_emissions_s36||0), 0.002); end
  def test_outputs_emissions_t36; assert_in_delta(0.0, (worksheet.outputs_emissions_t36||0), 0.002); end
  def test_outputs_emissions_u36; assert_in_delta(0.0, (worksheet.outputs_emissions_u36||0), 0.002); end
  def test_outputs_emissions_v36; assert_in_delta(0.0, (worksheet.outputs_emissions_v36||0), 0.002); end
  def test_outputs_emissions_w36; assert_in_delta(0.0, (worksheet.outputs_emissions_w36||0), 0.002); end
  def test_outputs_emissions_x36; assert_in_delta(0.0, (worksheet.outputs_emissions_x36||0), 0.002); end
  def test_outputs_emissions_an36; assert_equal("total", worksheet.outputs_emissions_an36); end
  def test_outputs_emissions_c37; assert_equal("G.7", worksheet.outputs_emissions_c37); end
  def test_outputs_emissions_d37; assert_equal("Global Other", worksheet.outputs_emissions_d37); end
  def test_outputs_emissions_h37; assert_in_delta(0.0, (worksheet.outputs_emissions_h37||0), 0.002); end
  def test_outputs_emissions_i37; assert_in_delta(0.0, (worksheet.outputs_emissions_i37||0), 0.002); end
  def test_outputs_emissions_j37; assert_in_delta(0.0, (worksheet.outputs_emissions_j37||0), 0.002); end
  def test_outputs_emissions_k37; assert_in_delta(0.0, (worksheet.outputs_emissions_k37||0), 0.002); end
  def test_outputs_emissions_l37; assert_in_delta(0.0, (worksheet.outputs_emissions_l37||0), 0.002); end
  def test_outputs_emissions_p37; assert_in_delta(0.0, (worksheet.outputs_emissions_p37||0), 0.002); end
  def test_outputs_emissions_q37; assert_in_delta(0.0, (worksheet.outputs_emissions_q37||0), 0.002); end
  def test_outputs_emissions_r37; assert_in_delta(0.0, (worksheet.outputs_emissions_r37||0), 0.002); end
  def test_outputs_emissions_s37; assert_in_delta(0.0, (worksheet.outputs_emissions_s37||0), 0.002); end
  def test_outputs_emissions_t37; assert_in_delta(0.0, (worksheet.outputs_emissions_t37||0), 0.002); end
  def test_outputs_emissions_u37; assert_in_delta(0.0, (worksheet.outputs_emissions_u37||0), 0.002); end
  def test_outputs_emissions_v37; assert_in_delta(0.0, (worksheet.outputs_emissions_v37||0), 0.002); end
  def test_outputs_emissions_w37; assert_in_delta(0.0, (worksheet.outputs_emissions_w37||0), 0.002); end
  def test_outputs_emissions_x37; assert_in_delta(0.0, (worksheet.outputs_emissions_x37||0), 0.002); end
  def test_outputs_emissions_d38; assert_equal("total", worksheet.outputs_emissions_d38); end
  def test_outputs_emissions_h38; assert_in_epsilon(34854936414.40893, worksheet.outputs_emissions_h38, 0.002); end
  def test_outputs_emissions_i38; assert_in_epsilon(35768719358.87766, worksheet.outputs_emissions_i38, 0.002); end
  def test_outputs_emissions_j38; assert_in_epsilon(37821748831.06165, worksheet.outputs_emissions_j38, 0.002); end
  def test_outputs_emissions_k38; assert_in_epsilon(41702220941.82745, worksheet.outputs_emissions_k38, 0.002); end
  def test_outputs_emissions_l38; assert_in_epsilon(45734295699.59422, worksheet.outputs_emissions_l38, 0.002); end
  def test_outputs_emissions_p38; assert_in_epsilon(36113784596.8024, worksheet.outputs_emissions_p38, 0.002); end
  def test_outputs_emissions_q38; assert_in_epsilon(40817176285.63378, worksheet.outputs_emissions_q38, 0.002); end
  def test_outputs_emissions_r38; assert_in_epsilon(39475688175.342186, worksheet.outputs_emissions_r38, 0.002); end
  def test_outputs_emissions_s38; assert_in_epsilon(41010953264.780525, worksheet.outputs_emissions_s38, 0.002); end
  def test_outputs_emissions_t38; assert_in_epsilon(39781195579.88778, worksheet.outputs_emissions_t38, 0.002); end
  def test_outputs_emissions_u38; assert_in_epsilon(41153824918.55504, worksheet.outputs_emissions_u38, 0.002); end
  def test_outputs_emissions_v38; assert_in_epsilon(38769092164.81361, worksheet.outputs_emissions_v38, 0.002); end
  def test_outputs_emissions_w38; assert_in_epsilon(41061053625.41238, worksheet.outputs_emissions_w38, 0.002); end
  def test_outputs_emissions_x38; assert_in_epsilon(39281490730.65814, worksheet.outputs_emissions_x38, 0.002); end
  def test_outputs_emissions_y38; assert_in_epsilon(37501927835.90391, worksheet.outputs_emissions_y38, 0.002); end
  def test_outputs_emissions_z38; assert_in_epsilon(35722364941.14967, worksheet.outputs_emissions_z38, 0.002); end
  def test_outputs_emissions_aa38; assert_in_epsilon(33942802046.39544, worksheet.outputs_emissions_aa38, 0.002); end
  def test_outputs_emissions_ab38; assert_in_epsilon(32163239151.641205, worksheet.outputs_emissions_ab38, 0.002); end
  def test_outputs_emissions_ac38; assert_in_epsilon(30383676256.88697, worksheet.outputs_emissions_ac38, 0.002); end
  def test_outputs_emissions_ad38; assert_in_epsilon(28604113362.132736, worksheet.outputs_emissions_ad38, 0.002); end
  def test_outputs_emissions_ae38; assert_in_epsilon(26824550467.3785, worksheet.outputs_emissions_ae38, 0.002); end
  def test_outputs_emissions_af38; assert_in_epsilon(25044987572.624268, worksheet.outputs_emissions_af38, 0.002); end
  def test_outputs_emissions_ag38; assert_in_epsilon(23265424677.870033, worksheet.outputs_emissions_ag38, 0.002); end
  def test_outputs_emissions_ah38; assert_in_epsilon(21485861783.1158, worksheet.outputs_emissions_ah38, 0.002); end
  def test_outputs_emissions_am38; assert_equal("CAIT: Climate Analysis Indicators Tool, v2.0 (see: http://cait.wri.org).  For more detail on CAIT emissions methodology, see: (insert reference).", worksheet.outputs_emissions_am38); end
  def test_outputs_emissions_c39; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c39); end
  def test_outputs_emissions_d39; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d39); end
  def test_outputs_emissions_p39; assert_in_epsilon(1926113784596.8022, worksheet.outputs_emissions_p39, 0.002); end
  def test_outputs_emissions_q39; assert_in_epsilon(2061036136466.2083, worksheet.outputs_emissions_q39, 0.002); end
  def test_outputs_emissions_r39; assert_in_epsilon(2235097086992.2905, worksheet.outputs_emissions_r39, 0.002); end
  def test_outputs_emissions_s39; assert_in_epsilon(2408265666596.0464, worksheet.outputs_emissions_s39, 0.002); end
  def test_outputs_emissions_t39; assert_in_epsilon(2581053597367.803, worksheet.outputs_emissions_t39, 0.002); end
  def test_outputs_emissions_u39; assert_in_epsilon(2753595899562.5474, worksheet.outputs_emissions_u39, 0.002); end
  def test_outputs_emissions_v39; assert_in_epsilon(2923298607179.1157, worksheet.outputs_emissions_v39, 0.002); end
  def test_outputs_emissions_w39; assert_in_epsilon(3092807911121.719, worksheet.outputs_emissions_w39, 0.002); end
  def test_outputs_emissions_x39; assert_in_epsilon(3263613916848.7183, worksheet.outputs_emissions_x39, 0.002); end
  def test_outputs_emissions_y39; assert_in_epsilon(3354340802258.915, worksheet.outputs_emissions_y39, 0.002); end
  def test_outputs_emissions_z39; assert_in_epsilon(3501004989659.7236, worksheet.outputs_emissions_z39, 0.002); end
  def test_outputs_emissions_aa39; assert_in_epsilon(3639320256427.7715, worksheet.outputs_emissions_aa39, 0.002); end
  def test_outputs_emissions_ab39; assert_in_epsilon(3769286602563.058, worksheet.outputs_emissions_ab39, 0.002); end
  def test_outputs_emissions_ac39; assert_in_epsilon(3890904028065.5835, worksheet.outputs_emissions_ac39, 0.002); end
  def test_outputs_emissions_ad39; assert_in_epsilon(4004172532935.3477, worksheet.outputs_emissions_ad39, 0.002); end
  def test_outputs_emissions_ae39; assert_in_epsilon(4109092117172.3506, worksheet.outputs_emissions_ae39, 0.002); end
  def test_outputs_emissions_af39; assert_in_epsilon(4205662780776.593, worksheet.outputs_emissions_af39, 0.002); end
  def test_outputs_emissions_ag39; assert_in_epsilon(4293884523748.0737, worksheet.outputs_emissions_ag39, 0.002); end
  def test_outputs_emissions_ah39; assert_in_epsilon(4373757346086.7935, worksheet.outputs_emissions_ah39, 0.002); end
  def test_outputs_emissions_c42; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c42); end
  def test_outputs_emissions_e42; assert_equal("NOTE: Crude allocation of biofuel across demand sectors", worksheet.outputs_emissions_e42); end
  def test_outputs_emissions_h43; assert_equal("Historic actuals", worksheet.outputs_emissions_h43); end
  def test_outputs_emissions_p43; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p43); end
  def test_outputs_emissions_y43; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y43); end
  def test_outputs_emissions_c44; assert_equal("Emissions by sector", worksheet.outputs_emissions_c44); end
  def test_outputs_emissions_d44; assert_equal("Calculator Sector", worksheet.outputs_emissions_d44); end
  def test_outputs_emissions_h44; assert_equal("1990", worksheet.outputs_emissions_h44); end
  def test_outputs_emissions_i44; assert_equal("1995", worksheet.outputs_emissions_i44); end
  def test_outputs_emissions_j44; assert_equal("2000", worksheet.outputs_emissions_j44); end
  def test_outputs_emissions_k44; assert_equal("2005", worksheet.outputs_emissions_k44); end
  def test_outputs_emissions_l44; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l44, 0.002); end
  def test_outputs_emissions_n44; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n44, 0.002); end
  def test_outputs_emissions_p44; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p44, 0.002); end
  def test_outputs_emissions_q44; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q44, 0.002); end
  def test_outputs_emissions_r44; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r44, 0.002); end
  def test_outputs_emissions_s44; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s44, 0.002); end
  def test_outputs_emissions_t44; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t44, 0.002); end
  def test_outputs_emissions_u44; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u44, 0.002); end
  def test_outputs_emissions_v44; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v44, 0.002); end
  def test_outputs_emissions_w44; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w44, 0.002); end
  def test_outputs_emissions_x44; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x44, 0.002); end
  def test_outputs_emissions_y44; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y44, 0.002); end
  def test_outputs_emissions_z44; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z44, 0.002); end
  def test_outputs_emissions_aa44; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa44, 0.002); end
  def test_outputs_emissions_ab44; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab44, 0.002); end
  def test_outputs_emissions_ac44; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac44, 0.002); end
  def test_outputs_emissions_ad44; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad44, 0.002); end
  def test_outputs_emissions_ae44; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae44, 0.002); end
  def test_outputs_emissions_af44; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af44, 0.002); end
  def test_outputs_emissions_ag44; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag44, 0.002); end
  def test_outputs_emissions_ah44; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah44, 0.002); end
  def test_outputs_emissions_c45; assert_equal("G.10", worksheet.outputs_emissions_c45); end
  def test_outputs_emissions_d45; assert_equal("Global Transport", worksheet.outputs_emissions_d45); end
  def test_outputs_emissions_h45; assert_in_epsilon(4596810000.0, worksheet.outputs_emissions_h45, 0.002); end
  def test_outputs_emissions_i45; assert_in_epsilon(5023330000.0, worksheet.outputs_emissions_i45, 0.002); end
  def test_outputs_emissions_j45; assert_in_epsilon(5720270000.0, worksheet.outputs_emissions_j45, 0.002); end
  def test_outputs_emissions_k45; assert_in_epsilon(6397960000.0, worksheet.outputs_emissions_k45, 0.002); end
  def test_outputs_emissions_l45; assert_in_epsilon(6906230000.0, worksheet.outputs_emissions_l45, 0.002); end
  def test_outputs_emissions_p45; assert_in_epsilon(5929060300.592624, worksheet.outputs_emissions_p45, 0.002); end
  def test_outputs_emissions_q45; assert_in_epsilon(6545542527.424964, worksheet.outputs_emissions_q45, 0.002); end
  def test_outputs_emissions_r45; assert_in_epsilon(6401180072.940013, worksheet.outputs_emissions_r45, 0.002); end
  def test_outputs_emissions_s45; assert_in_epsilon(8009179951.76338, worksheet.outputs_emissions_s45, 0.002); end
  def test_outputs_emissions_t45; assert_in_epsilon(8268033229.191532, worksheet.outputs_emissions_t45, 0.002); end
  def test_outputs_emissions_u45; assert_in_epsilon(10313162781.451569, worksheet.outputs_emissions_u45, 0.002); end
  def test_outputs_emissions_v45; assert_in_epsilon(10614915004.537556, worksheet.outputs_emissions_v45, 0.002); end
  def test_outputs_emissions_w45; assert_in_epsilon(13227349040.690006, worksheet.outputs_emissions_w45, 0.002); end
  def test_outputs_emissions_x45; assert_in_epsilon(13590276159.11154, worksheet.outputs_emissions_x45, 0.002); end
  def test_outputs_emissions_c46; assert_equal("G.20", worksheet.outputs_emissions_c46); end
  def test_outputs_emissions_d46; assert_equal("Global Buildings", worksheet.outputs_emissions_d46); end
  def test_outputs_emissions_h46; assert_in_epsilon(3557238071.115422, worksheet.outputs_emissions_h46, 0.002); end
  def test_outputs_emissions_i46; assert_in_epsilon(3404615420.05277, worksheet.outputs_emissions_i46, 0.002); end
  def test_outputs_emissions_j46; assert_in_epsilon(3354907742.912074, worksheet.outputs_emissions_j46, 0.002); end
  def test_outputs_emissions_k46; assert_in_epsilon(3571160504.318861, worksheet.outputs_emissions_k46, 0.002); end
  def test_outputs_emissions_l46; assert_in_epsilon(3657419802.739237, worksheet.outputs_emissions_l46, 0.002); end
  def test_outputs_emissions_p46; assert_in_epsilon(6164169149.451058, worksheet.outputs_emissions_p46, 0.002); end
  def test_outputs_emissions_q46; assert_in_epsilon(6172532422.78983, worksheet.outputs_emissions_q46, 0.002); end
  def test_outputs_emissions_r46; assert_in_epsilon(6171116557.675557, worksheet.outputs_emissions_r46, 0.002); end
  def test_outputs_emissions_s46; assert_in_epsilon(6454176505.453375, worksheet.outputs_emissions_s46, 0.002); end
  def test_outputs_emissions_t46; assert_in_epsilon(6848210066.193461, worksheet.outputs_emissions_t46, 0.002); end
  def test_outputs_emissions_u46; assert_in_epsilon(7208709608.850204, worksheet.outputs_emissions_u46, 0.002); end
  def test_outputs_emissions_v46; assert_in_epsilon(7567794991.522798, worksheet.outputs_emissions_v46, 0.002); end
  def test_outputs_emissions_w46; assert_in_epsilon(7903711624.362006, worksheet.outputs_emissions_w46, 0.002); end
  def test_outputs_emissions_x46; assert_in_epsilon(8133612277.456491, worksheet.outputs_emissions_x46, 0.002); end
  def test_outputs_emissions_c47; assert_equal("G.30", worksheet.outputs_emissions_c47); end
  def test_outputs_emissions_d47; assert_equal("Global Materials", worksheet.outputs_emissions_d47); end
  def test_outputs_emissions_h47; assert_in_epsilon(5423972754.555301, worksheet.outputs_emissions_h47, 0.002); end
  def test_outputs_emissions_i47; assert_in_epsilon(5531303861.360651, worksheet.outputs_emissions_i47, 0.002); end
  def test_outputs_emissions_j47; assert_in_epsilon(5660313944.0277195, worksheet.outputs_emissions_j47, 0.002); end
  def test_outputs_emissions_k47; assert_in_epsilon(6821436971.55176, worksheet.outputs_emissions_k47, 0.002); end
  def test_outputs_emissions_l47; assert_in_epsilon(8125303565.793601, worksheet.outputs_emissions_l47, 0.002); end
  def test_outputs_emissions_p47; assert_in_epsilon(7770940553.366606, worksheet.outputs_emissions_p47, 0.002); end
  def test_outputs_emissions_q47; assert_in_epsilon(7538204793.570584, worksheet.outputs_emissions_q47, 0.002); end
  def test_outputs_emissions_r47; assert_in_epsilon(7249327756.932808, worksheet.outputs_emissions_r47, 0.002); end
  def test_outputs_emissions_s47; assert_in_epsilon(7347902513.145245, worksheet.outputs_emissions_s47, 0.002); end
  def test_outputs_emissions_t47; assert_in_epsilon(7425684370.766377, worksheet.outputs_emissions_t47, 0.002); end
  def test_outputs_emissions_u47; assert_in_epsilon(7526941211.8841305, worksheet.outputs_emissions_u47, 0.002); end
  def test_outputs_emissions_v47; assert_in_epsilon(7599894223.812955, worksheet.outputs_emissions_v47, 0.002); end
  def test_outputs_emissions_w47; assert_in_epsilon(7707322363.32039, worksheet.outputs_emissions_w47, 0.002); end
  def test_outputs_emissions_x47; assert_in_epsilon(7778393406.455495, worksheet.outputs_emissions_x47, 0.002); end
  def test_outputs_emissions_c48; assert_equal("G.40", worksheet.outputs_emissions_c48); end
  def test_outputs_emissions_d48; assert_equal("Global Electricity Generation and Global Fuel production", worksheet.outputs_emissions_d48); end
  def test_outputs_emissions_h48; assert_in_epsilon(10480758810.29452, worksheet.outputs_emissions_h48, 0.002); end
  def test_outputs_emissions_i48; assert_in_epsilon(11081273971.86996, worksheet.outputs_emissions_i48, 0.002); end
  def test_outputs_emissions_j48; assert_in_epsilon(12425205427.47288, worksheet.outputs_emissions_j48, 0.002); end
  def test_outputs_emissions_k48; assert_in_epsilon(14705129986.304409, worksheet.outputs_emissions_k48, 0.002); end
  def test_outputs_emissions_l48; assert_in_epsilon(16534584392.82281, worksheet.outputs_emissions_l48, 0.002); end
  def test_outputs_emissions_p48; assert_in_epsilon(8919759873.392109, worksheet.outputs_emissions_p48, 0.002); end
  def test_outputs_emissions_q48; assert_in_epsilon(9221940373.242641, worksheet.outputs_emissions_q48, 0.002); end
  def test_outputs_emissions_r48; assert_in_epsilon(8884693293.659246, worksheet.outputs_emissions_r48, 0.002); end
  def test_outputs_emissions_s48; assert_in_epsilon(9429528075.731035, worksheet.outputs_emissions_s48, 0.002); end
  def test_outputs_emissions_t48; assert_in_epsilon(8115617401.322729, worksheet.outputs_emissions_t48, 0.002); end
  def test_outputs_emissions_u48; assert_in_epsilon(7583972709.872452, worksheet.outputs_emissions_u48, 0.002); end
  def test_outputs_emissions_v48; assert_in_epsilon(5030528386.66642, worksheet.outputs_emissions_v48, 0.002); end
  def test_outputs_emissions_w48; assert_in_epsilon(4799478012.106666, worksheet.outputs_emissions_w48, 0.002); end
  def test_outputs_emissions_x48; assert_in_epsilon(2857855315.3822665, worksheet.outputs_emissions_x48, 0.002); end
  def test_outputs_emissions_c49; assert_equal("G.60", worksheet.outputs_emissions_c49); end
  def test_outputs_emissions_d49; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d49); end
  def test_outputs_emissions_h49; assert_in_epsilon(10796156778.44369, worksheet.outputs_emissions_h49, 0.002); end
  def test_outputs_emissions_i49; assert_in_epsilon(10728196105.59427, worksheet.outputs_emissions_i49, 0.002); end
  def test_outputs_emissions_j49; assert_in_epsilon(10661061716.64899, worksheet.outputs_emissions_j49, 0.002); end
  def test_outputs_emissions_k49; assert_in_epsilon(10206533479.65243, worksheet.outputs_emissions_k49, 0.002); end
  def test_outputs_emissions_l49; assert_in_epsilon(10510757938.238579, worksheet.outputs_emissions_l49, 0.002); end
  def test_outputs_emissions_p49; assert_in_epsilon(7329854719.999999, worksheet.outputs_emissions_p49, 0.002); end
  def test_outputs_emissions_q49; assert_in_epsilon(11338956168.605759, worksheet.outputs_emissions_q49, 0.002); end
  def test_outputs_emissions_r49; assert_in_epsilon(10769370494.134565, worksheet.outputs_emissions_r49, 0.002); end
  def test_outputs_emissions_s49; assert_in_epsilon(9770166218.687498, worksheet.outputs_emissions_s49, 0.002); end
  def test_outputs_emissions_t49; assert_in_epsilon(9123650512.413683, worksheet.outputs_emissions_t49, 0.002); end
  def test_outputs_emissions_u49; assert_in_epsilon(8521038606.496679, worksheet.outputs_emissions_u49, 0.002); end
  def test_outputs_emissions_v49; assert_in_epsilon(7955959558.273877, worksheet.outputs_emissions_v49, 0.002); end
  def test_outputs_emissions_w49; assert_in_epsilon(7423192584.933319, worksheet.outputs_emissions_w49, 0.002); end
  def test_outputs_emissions_x49; assert_in_epsilon(6921353572.252347, worksheet.outputs_emissions_x49, 0.002); end
  def test_outputs_emissions_d50; assert_equal("total", worksheet.outputs_emissions_d50); end
  def test_outputs_emissions_h50; assert_in_epsilon(34854936414.40893, worksheet.outputs_emissions_h50, 0.002); end
  def test_outputs_emissions_i50; assert_in_epsilon(35768719358.87766, worksheet.outputs_emissions_i50, 0.002); end
  def test_outputs_emissions_j50; assert_in_epsilon(37821758831.06165, worksheet.outputs_emissions_j50, 0.002); end
  def test_outputs_emissions_k50; assert_in_epsilon(41702220941.82745, worksheet.outputs_emissions_k50, 0.002); end
  def test_outputs_emissions_l50; assert_in_epsilon(45734295699.59422, worksheet.outputs_emissions_l50, 0.002); end
  def test_outputs_emissions_p50; assert_in_epsilon(36113784596.8024, worksheet.outputs_emissions_p50, 0.002); end
  def test_outputs_emissions_q50; assert_in_epsilon(40817176285.63378, worksheet.outputs_emissions_q50, 0.002); end
  def test_outputs_emissions_r50; assert_in_epsilon(39475688175.34219, worksheet.outputs_emissions_r50, 0.002); end
  def test_outputs_emissions_s50; assert_in_epsilon(41010953264.780525, worksheet.outputs_emissions_s50, 0.002); end
  def test_outputs_emissions_t50; assert_in_epsilon(39781195579.88778, worksheet.outputs_emissions_t50, 0.002); end
  def test_outputs_emissions_u50; assert_in_epsilon(41153824918.55503, worksheet.outputs_emissions_u50, 0.002); end
  def test_outputs_emissions_v50; assert_in_epsilon(38769092164.81361, worksheet.outputs_emissions_v50, 0.002); end
  def test_outputs_emissions_w50; assert_in_epsilon(41061053625.412384, worksheet.outputs_emissions_w50, 0.002); end
  def test_outputs_emissions_x50; assert_in_epsilon(39281490730.65814, worksheet.outputs_emissions_x50, 0.002); end
  def test_outputs_emissions_y50; assert_in_epsilon(37501927835.90391, worksheet.outputs_emissions_y50, 0.002); end
  def test_outputs_emissions_z50; assert_in_epsilon(35722364941.14967, worksheet.outputs_emissions_z50, 0.002); end
  def test_outputs_emissions_aa50; assert_in_epsilon(33942802046.39544, worksheet.outputs_emissions_aa50, 0.002); end
  def test_outputs_emissions_ab50; assert_in_epsilon(32163239151.641205, worksheet.outputs_emissions_ab50, 0.002); end
  def test_outputs_emissions_ac50; assert_in_epsilon(30383676256.88697, worksheet.outputs_emissions_ac50, 0.002); end
  def test_outputs_emissions_ad50; assert_in_epsilon(28604113362.132736, worksheet.outputs_emissions_ad50, 0.002); end
  def test_outputs_emissions_ae50; assert_in_epsilon(26824550467.3785, worksheet.outputs_emissions_ae50, 0.002); end
  def test_outputs_emissions_af50; assert_in_epsilon(25044987572.624268, worksheet.outputs_emissions_af50, 0.002); end
  def test_outputs_emissions_ag50; assert_in_epsilon(23265424677.870033, worksheet.outputs_emissions_ag50, 0.002); end
  def test_outputs_emissions_ah50; assert_in_epsilon(21485861783.1158, worksheet.outputs_emissions_ah50, 0.002); end
  def test_outputs_emissions_c51; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c51); end
  def test_outputs_emissions_d51; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d51); end
  def test_outputs_emissions_p51; assert_in_epsilon(1926113784596.8022, worksheet.outputs_emissions_p51, 0.002); end
  def test_outputs_emissions_q51; assert_in_epsilon(2061036136466.2083, worksheet.outputs_emissions_q51, 0.002); end
  def test_outputs_emissions_r51; assert_in_epsilon(2235097086992.2905, worksheet.outputs_emissions_r51, 0.002); end
  def test_outputs_emissions_s51; assert_in_epsilon(2408265666596.0464, worksheet.outputs_emissions_s51, 0.002); end
  def test_outputs_emissions_t51; assert_in_epsilon(2581053597367.803, worksheet.outputs_emissions_t51, 0.002); end
  def test_outputs_emissions_u51; assert_in_epsilon(2753595899562.5474, worksheet.outputs_emissions_u51, 0.002); end
  def test_outputs_emissions_v51; assert_in_epsilon(2923298607179.1157, worksheet.outputs_emissions_v51, 0.002); end
  def test_outputs_emissions_w51; assert_in_epsilon(3092807911121.719, worksheet.outputs_emissions_w51, 0.002); end
  def test_outputs_emissions_x51; assert_in_epsilon(3263613916848.7183, worksheet.outputs_emissions_x51, 0.002); end
  def test_outputs_emissions_y51; assert_in_epsilon(3354340802258.915, worksheet.outputs_emissions_y51, 0.002); end
  def test_outputs_emissions_z51; assert_in_epsilon(3501004989659.7236, worksheet.outputs_emissions_z51, 0.002); end
  def test_outputs_emissions_aa51; assert_in_epsilon(3639320256427.7715, worksheet.outputs_emissions_aa51, 0.002); end
  def test_outputs_emissions_ab51; assert_in_epsilon(3769286602563.058, worksheet.outputs_emissions_ab51, 0.002); end
  def test_outputs_emissions_ac51; assert_in_epsilon(3890904028065.5835, worksheet.outputs_emissions_ac51, 0.002); end
  def test_outputs_emissions_ad51; assert_in_epsilon(4004172532935.3477, worksheet.outputs_emissions_ad51, 0.002); end
  def test_outputs_emissions_ae51; assert_in_epsilon(4109092117172.3506, worksheet.outputs_emissions_ae51, 0.002); end
  def test_outputs_emissions_af51; assert_in_epsilon(4205662780776.593, worksheet.outputs_emissions_af51, 0.002); end
  def test_outputs_emissions_ag51; assert_in_epsilon(4293884523748.0737, worksheet.outputs_emissions_ag51, 0.002); end
  def test_outputs_emissions_ah51; assert_in_epsilon(4373757346086.7935, worksheet.outputs_emissions_ah51, 0.002); end
  def test_outputs_emissions_c54; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c54); end
  def test_outputs_emissions_h55; assert_equal("Historic actuals", worksheet.outputs_emissions_h55); end
  def test_outputs_emissions_p55; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p55); end
  def test_outputs_emissions_y55; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y55); end
  def test_outputs_emissions_c56; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c56); end
  def test_outputs_emissions_h56; assert_equal("1990", worksheet.outputs_emissions_h56); end
  def test_outputs_emissions_i56; assert_equal("1995", worksheet.outputs_emissions_i56); end
  def test_outputs_emissions_j56; assert_equal("2000", worksheet.outputs_emissions_j56); end
  def test_outputs_emissions_k56; assert_equal("2005", worksheet.outputs_emissions_k56); end
  def test_outputs_emissions_l56; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l56, 0.002); end
  def test_outputs_emissions_n56; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n56, 0.002); end
  def test_outputs_emissions_p56; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p56, 0.002); end
  def test_outputs_emissions_q56; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q56, 0.002); end
  def test_outputs_emissions_r56; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r56, 0.002); end
  def test_outputs_emissions_s56; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s56, 0.002); end
  def test_outputs_emissions_t56; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t56, 0.002); end
  def test_outputs_emissions_u56; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u56, 0.002); end
  def test_outputs_emissions_v56; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v56, 0.002); end
  def test_outputs_emissions_w56; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w56, 0.002); end
  def test_outputs_emissions_x56; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x56, 0.002); end
  def test_outputs_emissions_y56; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y56, 0.002); end
  def test_outputs_emissions_z56; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z56, 0.002); end
  def test_outputs_emissions_aa56; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa56, 0.002); end
  def test_outputs_emissions_ab56; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab56, 0.002); end
  def test_outputs_emissions_ac56; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac56, 0.002); end
  def test_outputs_emissions_ad56; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad56, 0.002); end
  def test_outputs_emissions_ae56; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae56, 0.002); end
  def test_outputs_emissions_af56; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af56, 0.002); end
  def test_outputs_emissions_ag56; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag56, 0.002); end
  def test_outputs_emissions_ah56; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah56, 0.002); end
  def test_outputs_emissions_c57; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_emissions_c57); end
  def test_outputs_emissions_d57; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d57); end
  def test_outputs_emissions_c58; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_emissions_c58); end
  def test_outputs_emissions_d58; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_emissions_d58); end
  def test_outputs_emissions_c59; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_emissions_c59); end
  def test_outputs_emissions_d59; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_emissions_d59); end
  def test_outputs_emissions_c60; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_emissions_c60); end
  def test_outputs_emissions_d60; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_emissions_d60); end
  def test_outputs_emissions_c61; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_emissions_c61); end
  def test_outputs_emissions_d61; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_emissions_d61); end
  def test_outputs_emissions_c62; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_emissions_c62); end
  def test_outputs_emissions_d62; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_emissions_d62); end
  def test_outputs_emissions_c63; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_emissions_c63); end
  def test_outputs_emissions_d63; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_emissions_d63); end
  def test_outputs_emissions_c64; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_emissions_c64); end
  def test_outputs_emissions_d64; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d64); end
  def test_outputs_emissions_c65; assert_equal("G.CCS.solid.super.elec", worksheet.outputs_emissions_c65); end
  def test_outputs_emissions_d65; assert_equal("Global Carbon capture solid-fuel supercritical power plant", worksheet.outputs_emissions_d65); end
  def test_outputs_emissions_c66; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_emissions_c66); end
  def test_outputs_emissions_d66; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_emissions_d66); end
  def test_outputs_emissions_c67; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_emissions_c67); end
  def test_outputs_emissions_d67; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_emissions_d67); end
  def test_outputs_emissions_c68; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_emissions_c68); end
  def test_outputs_emissions_d68; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_emissions_d68); end
  def test_outputs_emissions_c69; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_emissions_c69); end
  def test_outputs_emissions_d69; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_emissions_d69); end
  def test_outputs_emissions_c70; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_emissions_c70); end
  def test_outputs_emissions_d70; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_emissions_d70); end
  def test_outputs_emissions_d71; assert_equal("Total emissions from power", worksheet.outputs_emissions_d71); end
  def test_outputs_emissions_c72; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c72); end
  def test_outputs_emissions_c75; assert_equal("Emissions intensity", worksheet.outputs_emissions_c75); end
  def test_outputs_emissions_d75; assert_equal("Mt/TWh", worksheet.outputs_emissions_d75); end
  def test_outputs_emissions_d76; assert_equal("g/KWh", worksheet.outputs_emissions_d76); end
  def test_outputs_emissions_b81; assert_equal("CO2", worksheet.outputs_emissions_b81); end
  def test_outputs_emissions_d81; assert_equal("CARBON DIOXIDE", worksheet.outputs_emissions_d81); end
  def test_outputs_emissions_c84; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c84); end
  def test_outputs_emissions_ah84; assert_equal("%", worksheet.outputs_emissions_ah84); end
  def test_outputs_emissions_h85; assert_equal("Historic actuals", worksheet.outputs_emissions_h85); end
  def test_outputs_emissions_p85; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p85); end
  def test_outputs_emissions_y85; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y85); end
  def test_outputs_emissions_d86; assert_equal("IPCC Sector", worksheet.outputs_emissions_d86); end
  def test_outputs_emissions_h86; assert_in_epsilon(1990.0, worksheet.outputs_emissions_h86, 0.002); end
  def test_outputs_emissions_i86; assert_in_epsilon(1995.0, worksheet.outputs_emissions_i86, 0.002); end
  def test_outputs_emissions_j86; assert_in_epsilon(2000.0, worksheet.outputs_emissions_j86, 0.002); end
  def test_outputs_emissions_k86; assert_in_epsilon(2005.0, worksheet.outputs_emissions_k86, 0.002); end
  def test_outputs_emissions_l86; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l86, 0.002); end
  def test_outputs_emissions_n86; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n86, 0.002); end
  def test_outputs_emissions_p86; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p86, 0.002); end
  def test_outputs_emissions_q86; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q86, 0.002); end
  def test_outputs_emissions_r86; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r86, 0.002); end
  def test_outputs_emissions_s86; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s86, 0.002); end
  def test_outputs_emissions_t86; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t86, 0.002); end
  def test_outputs_emissions_u86; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u86, 0.002); end
  def test_outputs_emissions_v86; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v86, 0.002); end
  def test_outputs_emissions_w86; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w86, 0.002); end
  def test_outputs_emissions_x86; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x86, 0.002); end
  def test_outputs_emissions_y86; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y86, 0.002); end
  def test_outputs_emissions_z86; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z86, 0.002); end
  def test_outputs_emissions_aa86; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa86, 0.002); end
  def test_outputs_emissions_ab86; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab86, 0.002); end
  def test_outputs_emissions_ac86; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac86, 0.002); end
  def test_outputs_emissions_ad86; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad86, 0.002); end
  def test_outputs_emissions_ae86; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae86, 0.002); end
  def test_outputs_emissions_af86; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af86, 0.002); end
  def test_outputs_emissions_ag86; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag86, 0.002); end
  def test_outputs_emissions_ah86; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah86, 0.002); end
  def test_outputs_emissions_c87; assert_equal("G.1A", worksheet.outputs_emissions_c87); end
  def test_outputs_emissions_d87; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d87); end
  def test_outputs_emissions_h87; assert_in_delta(1.0, worksheet.outputs_emissions_h87, 0.002); end
  def test_outputs_emissions_i87; assert_in_epsilon(1.2341154727100507, worksheet.outputs_emissions_i87, 0.002); end
  def test_outputs_emissions_j87; assert_in_epsilon(1.049948006137812, worksheet.outputs_emissions_j87, 0.002); end
  def test_outputs_emissions_k87; assert_in_epsilon(1.3133450831657922, worksheet.outputs_emissions_k87, 0.002); end
  def test_outputs_emissions_l87; assert_in_epsilon(1.3455518909475077, worksheet.outputs_emissions_l87, 0.002); end
  def test_outputs_emissions_n87; assert_in_delta(0.0, (worksheet.outputs_emissions_n87||0), 0.002); end
  def test_outputs_emissions_p87; assert_in_epsilon(1.3618933832617326, worksheet.outputs_emissions_p87, 0.002); end
  def test_outputs_emissions_q87; assert_in_epsilon(1.5150929782004658, worksheet.outputs_emissions_q87, 0.002); end
  def test_outputs_emissions_r87; assert_in_epsilon(1.5759902216005768, worksheet.outputs_emissions_r87, 0.002); end
  def test_outputs_emissions_s87; assert_in_epsilon(1.7891239878565472, worksheet.outputs_emissions_s87, 0.002); end
  def test_outputs_emissions_t87; assert_in_epsilon(1.8551295504967613, worksheet.outputs_emissions_t87, 0.002); end
  def test_outputs_emissions_u87; assert_in_epsilon(2.098906593714972, worksheet.outputs_emissions_u87, 0.002); end
  def test_outputs_emissions_v87; assert_in_epsilon(2.134494143154978, worksheet.outputs_emissions_v87, 0.002); end
  def test_outputs_emissions_w87; assert_in_epsilon(2.458885647073981, worksheet.outputs_emissions_w87, 0.002); end
  def test_outputs_emissions_x87; assert_in_epsilon(2.5168712889473315, worksheet.outputs_emissions_x87, 0.002); end
  def test_outputs_emissions_c88; assert_equal("G.1B", worksheet.outputs_emissions_c88); end
  def test_outputs_emissions_d88; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d88); end
  def test_outputs_emissions_h88; assert_in_delta(1.0, worksheet.outputs_emissions_h88, 0.002); end
  def test_outputs_emissions_i88; assert_in_epsilon(1.2547770700636942, worksheet.outputs_emissions_i88, 0.002); end
  def test_outputs_emissions_j88; assert_in_epsilon(1.4394904458598725, worksheet.outputs_emissions_j88, 0.002); end
  def test_outputs_emissions_k88; assert_in_epsilon(2.038216560509554, worksheet.outputs_emissions_k88, 0.002); end
  def test_outputs_emissions_l88; assert_in_epsilon(2.8736624203821655, worksheet.outputs_emissions_l88, 0.002); end
  def test_outputs_emissions_n88; assert_in_delta(0.0, (worksheet.outputs_emissions_n88||0), 0.002); end
  def test_outputs_emissions_p88; assert_in_delta(0.0, (worksheet.outputs_emissions_p88||0), 0.002); end
  def test_outputs_emissions_q88; assert_in_delta(0.0, (worksheet.outputs_emissions_q88||0), 0.002); end
  def test_outputs_emissions_r88; assert_in_delta(0.0, (worksheet.outputs_emissions_r88||0), 0.002); end
  def test_outputs_emissions_s88; assert_in_delta(0.0, (worksheet.outputs_emissions_s88||0), 0.002); end
  def test_outputs_emissions_t88; assert_in_delta(0.0, (worksheet.outputs_emissions_t88||0), 0.002); end
  def test_outputs_emissions_u88; assert_in_delta(0.0, (worksheet.outputs_emissions_u88||0), 0.002); end
  def test_outputs_emissions_v88; assert_in_delta(0.0, (worksheet.outputs_emissions_v88||0), 0.002); end
  def test_outputs_emissions_w88; assert_in_delta(0.0, (worksheet.outputs_emissions_w88||0), 0.002); end
  def test_outputs_emissions_x88; assert_in_delta(0.0, (worksheet.outputs_emissions_x88||0), 0.002); end
  def test_outputs_emissions_c89; assert_equal("G.2", worksheet.outputs_emissions_c89); end
  def test_outputs_emissions_d89; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d89); end
  def test_outputs_emissions_h89; assert_equal("", worksheet.outputs_emissions_h89); end
  def test_outputs_emissions_i89; assert_equal("", worksheet.outputs_emissions_i89); end
  def test_outputs_emissions_j89; assert_equal("", worksheet.outputs_emissions_j89); end
  def test_outputs_emissions_k89; assert_equal("", worksheet.outputs_emissions_k89); end
  def test_outputs_emissions_l89; assert_equal("", worksheet.outputs_emissions_l89); end
  def test_outputs_emissions_n89; assert_equal("", worksheet.outputs_emissions_n89); end
  def test_outputs_emissions_p89; assert_equal("", worksheet.outputs_emissions_p89); end
  def test_outputs_emissions_q89; assert_equal("", worksheet.outputs_emissions_q89); end
  def test_outputs_emissions_r89; assert_equal("", worksheet.outputs_emissions_r89); end
  def test_outputs_emissions_s89; assert_equal("", worksheet.outputs_emissions_s89); end
  def test_outputs_emissions_t89; assert_equal("", worksheet.outputs_emissions_t89); end
  def test_outputs_emissions_u89; assert_equal("", worksheet.outputs_emissions_u89); end
  def test_outputs_emissions_v89; assert_equal("", worksheet.outputs_emissions_v89); end
  def test_outputs_emissions_w89; assert_equal("", worksheet.outputs_emissions_w89); end
  def test_outputs_emissions_x89; assert_equal("", worksheet.outputs_emissions_x89); end
  def test_outputs_emissions_c90; assert_equal("G.3", worksheet.outputs_emissions_c90); end
  def test_outputs_emissions_d90; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d90); end
  def test_outputs_emissions_h90; assert_equal("", worksheet.outputs_emissions_h90); end
  def test_outputs_emissions_i90; assert_equal("", worksheet.outputs_emissions_i90); end
  def test_outputs_emissions_j90; assert_equal("", worksheet.outputs_emissions_j90); end
  def test_outputs_emissions_k90; assert_equal("", worksheet.outputs_emissions_k90); end
  def test_outputs_emissions_l90; assert_equal("", worksheet.outputs_emissions_l90); end
  def test_outputs_emissions_n90; assert_equal("", worksheet.outputs_emissions_n90); end
  def test_outputs_emissions_p90; assert_equal("", worksheet.outputs_emissions_p90); end
  def test_outputs_emissions_q90; assert_equal("", worksheet.outputs_emissions_q90); end
  def test_outputs_emissions_r90; assert_equal("", worksheet.outputs_emissions_r90); end
  def test_outputs_emissions_s90; assert_equal("", worksheet.outputs_emissions_s90); end
  def test_outputs_emissions_t90; assert_equal("", worksheet.outputs_emissions_t90); end
  def test_outputs_emissions_u90; assert_equal("", worksheet.outputs_emissions_u90); end
  def test_outputs_emissions_v90; assert_equal("", worksheet.outputs_emissions_v90); end
  def test_outputs_emissions_w90; assert_equal("", worksheet.outputs_emissions_w90); end
  def test_outputs_emissions_x90; assert_equal("", worksheet.outputs_emissions_x90); end
  def test_outputs_emissions_c91; assert_equal("G.4", worksheet.outputs_emissions_c91); end
  def test_outputs_emissions_d91; assert_equal("Global Agriculture", worksheet.outputs_emissions_d91); end
  def test_outputs_emissions_h91; assert_in_delta(1.0, worksheet.outputs_emissions_h91, 0.002); end
  def test_outputs_emissions_i91; assert_in_delta(0.9940201717930505, worksheet.outputs_emissions_i91, 0.002); end
  def test_outputs_emissions_j91; assert_in_delta(0.9939558242204489, worksheet.outputs_emissions_j91, 0.002); end
  def test_outputs_emissions_k91; assert_in_delta(0.727575667007951, worksheet.outputs_emissions_k91, 0.002); end
  def test_outputs_emissions_l91; assert_in_delta(0.7290645759402035, worksheet.outputs_emissions_l91, 0.002); end
  def test_outputs_emissions_n91; assert_in_delta(0.0, (worksheet.outputs_emissions_n91||0), 0.002); end
  def test_outputs_emissions_p91; assert_in_delta(0.7290645759402034, worksheet.outputs_emissions_p91, 0.002); end
  def test_outputs_emissions_q91; assert_in_epsilon(1.7186633640186064, worksheet.outputs_emissions_q91, 0.002); end
  def test_outputs_emissions_r91; assert_in_epsilon(1.4387807400257515, worksheet.outputs_emissions_r91, 0.002); end
  def test_outputs_emissions_s91; assert_in_epsilon(1.0733094117911086, worksheet.outputs_emissions_s91, 0.002); end
  def test_outputs_emissions_t91; assert_in_delta(0.8263991698428127, worksheet.outputs_emissions_t91, 0.002); end
  def test_outputs_emissions_u91; assert_in_delta(0.6101433117817823, worksheet.outputs_emissions_u91, 0.002); end
  def test_outputs_emissions_v91; assert_in_delta(0.4205173084794268, worksheet.outputs_emissions_v91, 0.002); end
  def test_outputs_emissions_w91; assert_in_delta(0.2541181939741709, worksheet.outputs_emissions_w91, 0.002); end
  def test_outputs_emissions_x91; assert_in_delta(0.10877821872296108, worksheet.outputs_emissions_x91, 0.002); end
  def test_outputs_emissions_c92; assert_equal("G.5", worksheet.outputs_emissions_c92); end
  def test_outputs_emissions_d92; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d92); end
  def test_outputs_emissions_h92; assert_equal("", worksheet.outputs_emissions_h92); end
  def test_outputs_emissions_i92; assert_equal("", worksheet.outputs_emissions_i92); end
  def test_outputs_emissions_j92; assert_equal("", worksheet.outputs_emissions_j92); end
  def test_outputs_emissions_k92; assert_equal("", worksheet.outputs_emissions_k92); end
  def test_outputs_emissions_l92; assert_equal("", worksheet.outputs_emissions_l92); end
  def test_outputs_emissions_n92; assert_equal("", worksheet.outputs_emissions_n92); end
  def test_outputs_emissions_p92; assert_equal("", worksheet.outputs_emissions_p92); end
  def test_outputs_emissions_q92; assert_equal("", worksheet.outputs_emissions_q92); end
  def test_outputs_emissions_r92; assert_equal("", worksheet.outputs_emissions_r92); end
  def test_outputs_emissions_s92; assert_equal("", worksheet.outputs_emissions_s92); end
  def test_outputs_emissions_t92; assert_equal("", worksheet.outputs_emissions_t92); end
  def test_outputs_emissions_u92; assert_equal("", worksheet.outputs_emissions_u92); end
  def test_outputs_emissions_v92; assert_equal("", worksheet.outputs_emissions_v92); end
  def test_outputs_emissions_w92; assert_equal("", worksheet.outputs_emissions_w92); end
  def test_outputs_emissions_x92; assert_equal("", worksheet.outputs_emissions_x92); end
  def test_outputs_emissions_c93; assert_equal("G.6", worksheet.outputs_emissions_c93); end
  def test_outputs_emissions_d93; assert_equal("Global Waste", worksheet.outputs_emissions_d93); end
  def test_outputs_emissions_h93; assert_equal("", worksheet.outputs_emissions_h93); end
  def test_outputs_emissions_i93; assert_equal("", worksheet.outputs_emissions_i93); end
  def test_outputs_emissions_j93; assert_equal("", worksheet.outputs_emissions_j93); end
  def test_outputs_emissions_k93; assert_equal("", worksheet.outputs_emissions_k93); end
  def test_outputs_emissions_l93; assert_equal("", worksheet.outputs_emissions_l93); end
  def test_outputs_emissions_n93; assert_equal("", worksheet.outputs_emissions_n93); end
  def test_outputs_emissions_p93; assert_equal("", worksheet.outputs_emissions_p93); end
  def test_outputs_emissions_q93; assert_equal("", worksheet.outputs_emissions_q93); end
  def test_outputs_emissions_r93; assert_equal("", worksheet.outputs_emissions_r93); end
  def test_outputs_emissions_s93; assert_equal("", worksheet.outputs_emissions_s93); end
  def test_outputs_emissions_t93; assert_equal("", worksheet.outputs_emissions_t93); end
  def test_outputs_emissions_u93; assert_equal("", worksheet.outputs_emissions_u93); end
  def test_outputs_emissions_v93; assert_equal("", worksheet.outputs_emissions_v93); end
  def test_outputs_emissions_w93; assert_equal("", worksheet.outputs_emissions_w93); end
  def test_outputs_emissions_x93; assert_equal("", worksheet.outputs_emissions_x93); end
  def test_outputs_emissions_c94; assert_equal("G.7", worksheet.outputs_emissions_c94); end
  def test_outputs_emissions_d94; assert_equal("Global Other", worksheet.outputs_emissions_d94); end
  def test_outputs_emissions_h94; assert_in_delta(1.0, worksheet.outputs_emissions_h94, 0.002); end
  def test_outputs_emissions_i94; assert_in_epsilon(1.0404595875610005, worksheet.outputs_emissions_i94, 0.002); end
  def test_outputs_emissions_j94; assert_in_epsilon(1.1187053731856844, worksheet.outputs_emissions_j94, 0.002); end
  def test_outputs_emissions_k94; assert_in_epsilon(1.2435953713979433, worksheet.outputs_emissions_k94, 0.002); end
  def test_outputs_emissions_l94; assert_in_epsilon(1.3816400184854125, worksheet.outputs_emissions_l94, 0.002); end
  def test_outputs_emissions_n94; assert_in_delta(0.0, (worksheet.outputs_emissions_n94||0), 0.002); end
  def test_outputs_emissions_p94; assert_in_epsilon(1.1801733670775223, worksheet.outputs_emissions_p94, 0.002); end
  def test_outputs_emissions_q94; assert_in_epsilon(1.3520475061080535, worksheet.outputs_emissions_q94, 0.002); end
  def test_outputs_emissions_r94; assert_in_epsilon(1.2861275110479973, worksheet.outputs_emissions_r94, 0.002); end
  def test_outputs_emissions_s94; assert_in_epsilon(1.332148287172079, worksheet.outputs_emissions_s94, 0.002); end
  def test_outputs_emissions_t94; assert_in_epsilon(1.277778226002447, worksheet.outputs_emissions_t94, 0.002); end
  def test_outputs_emissions_u94; assert_in_epsilon(1.3258354412381814, worksheet.outputs_emissions_u94, 0.002); end
  def test_outputs_emissions_v94; assert_in_epsilon(1.2337773935548348, worksheet.outputs_emissions_v94, 0.002); end
  def test_outputs_emissions_w94; assert_in_epsilon(1.321843337255458, worksheet.outputs_emissions_w94, 0.002); end
  def test_outputs_emissions_x94; assert_in_epsilon(1.2559713282459537, worksheet.outputs_emissions_x94, 0.002); end
  def test_outputs_emissions_d95; assert_equal("total", worksheet.outputs_emissions_d95); end
  def test_outputs_emissions_h95; assert_equal("", worksheet.outputs_emissions_h95); end
  def test_outputs_emissions_i95; assert_equal("", worksheet.outputs_emissions_i95); end
  def test_outputs_emissions_j95; assert_equal("", worksheet.outputs_emissions_j95); end
  def test_outputs_emissions_k95; assert_equal("", worksheet.outputs_emissions_k95); end
  def test_outputs_emissions_l95; assert_equal("", worksheet.outputs_emissions_l95); end
  def test_outputs_emissions_n95; assert_equal("", worksheet.outputs_emissions_n95); end
  def test_outputs_emissions_p95; assert_equal("", worksheet.outputs_emissions_p95); end
  def test_outputs_emissions_q95; assert_equal("", worksheet.outputs_emissions_q95); end
  def test_outputs_emissions_r95; assert_equal("", worksheet.outputs_emissions_r95); end
  def test_outputs_emissions_s95; assert_equal("", worksheet.outputs_emissions_s95); end
  def test_outputs_emissions_t95; assert_equal("", worksheet.outputs_emissions_t95); end
  def test_outputs_emissions_u95; assert_equal("", worksheet.outputs_emissions_u95); end
  def test_outputs_emissions_v95; assert_equal("", worksheet.outputs_emissions_v95); end
  def test_outputs_emissions_w95; assert_equal("", worksheet.outputs_emissions_w95); end
  def test_outputs_emissions_x95; assert_equal("", worksheet.outputs_emissions_x95); end
  def test_outputs_emissions_c98; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c98); end
  def test_outputs_emissions_ah98; assert_equal("t", worksheet.outputs_emissions_ah98); end
  def test_outputs_emissions_h99; assert_equal("Historic actuals", worksheet.outputs_emissions_h99); end
  def test_outputs_emissions_p99; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p99); end
  def test_outputs_emissions_y99; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y99); end
  def test_outputs_emissions_d100; assert_equal("IPCC Sector", worksheet.outputs_emissions_d100); end
  def test_outputs_emissions_h100; assert_equal("1990", worksheet.outputs_emissions_h100); end
  def test_outputs_emissions_i100; assert_equal("1995", worksheet.outputs_emissions_i100); end
  def test_outputs_emissions_j100; assert_equal("2000", worksheet.outputs_emissions_j100); end
  def test_outputs_emissions_k100; assert_equal("2005", worksheet.outputs_emissions_k100); end
  def test_outputs_emissions_l100; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l100, 0.002); end
  def test_outputs_emissions_n100; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n100, 0.002); end
  def test_outputs_emissions_p100; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p100, 0.002); end
  def test_outputs_emissions_q100; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q100, 0.002); end
  def test_outputs_emissions_r100; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r100, 0.002); end
  def test_outputs_emissions_s100; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s100, 0.002); end
  def test_outputs_emissions_t100; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t100, 0.002); end
  def test_outputs_emissions_u100; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u100, 0.002); end
  def test_outputs_emissions_v100; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v100, 0.002); end
  def test_outputs_emissions_w100; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w100, 0.002); end
  def test_outputs_emissions_x100; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x100, 0.002); end
  def test_outputs_emissions_y100; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y100, 0.002); end
  def test_outputs_emissions_z100; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z100, 0.002); end
  def test_outputs_emissions_aa100; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa100, 0.002); end
  def test_outputs_emissions_ab100; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab100, 0.002); end
  def test_outputs_emissions_ac100; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac100, 0.002); end
  def test_outputs_emissions_ad100; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad100, 0.002); end
  def test_outputs_emissions_ae100; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae100, 0.002); end
  def test_outputs_emissions_af100; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af100, 0.002); end
  def test_outputs_emissions_ag100; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag100, 0.002); end
  def test_outputs_emissions_ah100; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah100, 0.002); end
  def test_outputs_emissions_c101; assert_equal("G.1A", worksheet.outputs_emissions_c101); end
  def test_outputs_emissions_d101; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d101); end
  def test_outputs_emissions_h101; assert_in_epsilon(20988690000.0, worksheet.outputs_emissions_h101, 0.002); end
  def test_outputs_emissions_i101; assert_in_epsilon(21850990000.0, worksheet.outputs_emissions_i101, 0.002); end
  def test_outputs_emissions_j101; assert_in_epsilon(23758620000.0, worksheet.outputs_emissions_j101, 0.002); end
  def test_outputs_emissions_k101; assert_in_epsilon(27501380000.0, worksheet.outputs_emissions_k101, 0.002); end
  def test_outputs_emissions_l101; assert_in_epsilon(30509400000.0, worksheet.outputs_emissions_l101, 0.002); end
  def test_outputs_emissions_p101; assert_in_epsilon(27052826699.24664, worksheet.outputs_emissions_p101, 0.002); end
  def test_outputs_emissions_q101; assert_in_epsilon(27801224546.936066, worksheet.outputs_emissions_q101, 0.002); end
  def test_outputs_emissions_r101; assert_in_epsilon(27133679544.00416, worksheet.outputs_emissions_r101, 0.002); end
  def test_outputs_emissions_s101; assert_in_epsilon(29588655477.97873, worksheet.outputs_emissions_s101, 0.002); end
  def test_outputs_emissions_t101; assert_in_epsilon(29093659250.509438, worksheet.outputs_emissions_t101, 0.002); end
  def test_outputs_emissions_u101; assert_in_epsilon(31054927340.770874, worksheet.outputs_emissions_u101, 0.002); end
  def test_outputs_emissions_v101; assert_in_epsilon(29402146644.04663, worksheet.outputs_emissions_v101, 0.002); end
  def test_outputs_emissions_w101; assert_in_epsilon(32183841077.378525, worksheet.outputs_emissions_w101, 0.002); end
  def test_outputs_emissions_x101; assert_in_epsilon(31030816450.264057, worksheet.outputs_emissions_x101, 0.002); end
  def test_outputs_emissions_c102; assert_equal("G.1B", worksheet.outputs_emissions_c102); end
  def test_outputs_emissions_d102; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d102); end
  def test_outputs_emissions_h102; assert_in_epsilon(164019360.0, worksheet.outputs_emissions_h102, 0.002); end
  def test_outputs_emissions_i102; assert_in_epsilon(202418830.0, worksheet.outputs_emissions_i102, 0.002); end
  def test_outputs_emissions_j102; assert_in_epsilon(172211800.0, worksheet.outputs_emissions_j102, 0.002); end
  def test_outputs_emissions_k102; assert_in_epsilon(215414020.0, worksheet.outputs_emissions_k102, 0.002); end
  def test_outputs_emissions_l102; assert_in_epsilon(220696560.0, worksheet.outputs_emissions_l102, 0.002); end
  def test_outputs_emissions_p102; assert_in_epsilon(223376881.1108241, worksheet.outputs_emissions_p102, 0.002); end
  def test_outputs_emissions_q102; assert_in_epsilon(248504580.62493435, worksheet.outputs_emissions_q102, 0.002); end
  def test_outputs_emissions_r102; assert_in_epsilon(258492907.5131848, worksheet.outputs_emissions_r102, 0.002); end
  def test_outputs_emissions_s102; assert_in_epsilon(293450971.44887865, worksheet.outputs_emissions_s102, 0.002); end
  def test_outputs_emissions_t102; assert_in_epsilon(304277161.58956647, worksheet.outputs_emissions_t102, 0.002); end
  def test_outputs_emissions_u102; assert_in_epsilon(344261316.2009097, worksheet.outputs_emissions_u102, 0.002); end
  def test_outputs_emissions_v102; assert_in_epsilon(350098363.28402793, worksheet.outputs_emissions_v102, 0.002); end
  def test_outputs_emissions_w102; assert_in_epsilon(403304850.14626026, worksheet.outputs_emissions_w102, 0.002); end
  def test_outputs_emissions_x102; assert_in_epsilon(412815618.0155164, worksheet.outputs_emissions_x102, 0.002); end
  def test_outputs_emissions_c103; assert_equal("G.2", worksheet.outputs_emissions_c103); end
  def test_outputs_emissions_d103; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d103); end
  def test_outputs_emissions_h103; assert_in_epsilon(575248000.0, worksheet.outputs_emissions_h103, 0.002); end
  def test_outputs_emissions_i103; assert_in_epsilon(721808000.0, worksheet.outputs_emissions_i103, 0.002); end
  def test_outputs_emissions_j103; assert_in_epsilon(828064000.0, worksheet.outputs_emissions_j103, 0.002); end
  def test_outputs_emissions_k103; assert_in_epsilon(1172480000.0, worksheet.outputs_emissions_k103, 0.002); end
  def test_outputs_emissions_l103; assert_in_epsilon(1653068560.0, worksheet.outputs_emissions_l103, 0.002); end
  def test_outputs_emissions_p103; assert_in_delta(0.0, (worksheet.outputs_emissions_p103||0), 0.002); end
  def test_outputs_emissions_q103; assert_in_delta(0.0, (worksheet.outputs_emissions_q103||0), 0.002); end
  def test_outputs_emissions_r103; assert_in_delta(0.0, (worksheet.outputs_emissions_r103||0), 0.002); end
  def test_outputs_emissions_s103; assert_in_delta(0.0, (worksheet.outputs_emissions_s103||0), 0.002); end
  def test_outputs_emissions_t103; assert_in_delta(0.0, (worksheet.outputs_emissions_t103||0), 0.002); end
  def test_outputs_emissions_u103; assert_in_delta(0.0, (worksheet.outputs_emissions_u103||0), 0.002); end
  def test_outputs_emissions_v103; assert_in_delta(0.0, (worksheet.outputs_emissions_v103||0), 0.002); end
  def test_outputs_emissions_w103; assert_in_delta(0.0, (worksheet.outputs_emissions_w103||0), 0.002); end
  def test_outputs_emissions_x103; assert_in_delta(0.0, (worksheet.outputs_emissions_x103||0), 0.002); end
  def test_outputs_emissions_c104; assert_equal("G.3", worksheet.outputs_emissions_c104); end
  def test_outputs_emissions_d104; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d104); end
  def test_outputs_emissions_h104; assert_in_delta(0.0, (worksheet.outputs_emissions_h104||0), 0.002); end
  def test_outputs_emissions_i104; assert_in_delta(0.0, (worksheet.outputs_emissions_i104||0), 0.002); end
  def test_outputs_emissions_j104; assert_in_delta(0.0, (worksheet.outputs_emissions_j104||0), 0.002); end
  def test_outputs_emissions_k104; assert_in_delta(0.0, (worksheet.outputs_emissions_k104||0), 0.002); end
  def test_outputs_emissions_l104; assert_in_delta(0.0, (worksheet.outputs_emissions_l104||0), 0.002); end
  def test_outputs_emissions_p104; assert_in_delta(0.0, (worksheet.outputs_emissions_p104||0), 0.002); end
  def test_outputs_emissions_q104; assert_in_delta(0.0, (worksheet.outputs_emissions_q104||0), 0.002); end
  def test_outputs_emissions_r104; assert_in_delta(0.0, (worksheet.outputs_emissions_r104||0), 0.002); end
  def test_outputs_emissions_s104; assert_in_delta(0.0, (worksheet.outputs_emissions_s104||0), 0.002); end
  def test_outputs_emissions_t104; assert_in_delta(0.0, (worksheet.outputs_emissions_t104||0), 0.002); end
  def test_outputs_emissions_u104; assert_in_delta(0.0, (worksheet.outputs_emissions_u104||0), 0.002); end
  def test_outputs_emissions_v104; assert_in_delta(0.0, (worksheet.outputs_emissions_v104||0), 0.002); end
  def test_outputs_emissions_w104; assert_in_delta(0.0, (worksheet.outputs_emissions_w104||0), 0.002); end
  def test_outputs_emissions_x104; assert_in_delta(0.0, (worksheet.outputs_emissions_x104||0), 0.002); end
  def test_outputs_emissions_c105; assert_equal("G.4", worksheet.outputs_emissions_c105); end
  def test_outputs_emissions_d105; assert_equal("Global Agriculture", worksheet.outputs_emissions_d105); end
  def test_outputs_emissions_h105; assert_in_delta(0.0, (worksheet.outputs_emissions_h105||0), 0.002); end
  def test_outputs_emissions_i105; assert_in_delta(0.0, (worksheet.outputs_emissions_i105||0), 0.002); end
  def test_outputs_emissions_j105; assert_in_delta(0.0, (worksheet.outputs_emissions_j105||0), 0.002); end
  def test_outputs_emissions_k105; assert_in_delta(0.0, (worksheet.outputs_emissions_k105||0), 0.002); end
  def test_outputs_emissions_l105; assert_in_delta(0.0, (worksheet.outputs_emissions_l105||0), 0.002); end
  def test_outputs_emissions_p105; assert_in_delta(0.0, (worksheet.outputs_emissions_p105||0), 0.002); end
  def test_outputs_emissions_q105; assert_in_delta(0.0, (worksheet.outputs_emissions_q105||0), 0.002); end
  def test_outputs_emissions_r105; assert_in_delta(0.0, (worksheet.outputs_emissions_r105||0), 0.002); end
  def test_outputs_emissions_s105; assert_in_delta(0.0, (worksheet.outputs_emissions_s105||0), 0.002); end
  def test_outputs_emissions_t105; assert_in_delta(0.0, (worksheet.outputs_emissions_t105||0), 0.002); end
  def test_outputs_emissions_u105; assert_in_delta(0.0, (worksheet.outputs_emissions_u105||0), 0.002); end
  def test_outputs_emissions_v105; assert_in_delta(0.0, (worksheet.outputs_emissions_v105||0), 0.002); end
  def test_outputs_emissions_w105; assert_in_delta(0.0, (worksheet.outputs_emissions_w105||0), 0.002); end
  def test_outputs_emissions_x105; assert_in_delta(0.0, (worksheet.outputs_emissions_x105||0), 0.002); end
  def test_outputs_emissions_c106; assert_equal("G.5", worksheet.outputs_emissions_c106); end
  def test_outputs_emissions_d106; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d106); end
  def test_outputs_emissions_h106; assert_in_epsilon(3620960210.0, worksheet.outputs_emissions_h106, 0.002); end
  def test_outputs_emissions_i106; assert_in_epsilon(3599307490.0, worksheet.outputs_emissions_i106, 0.002); end
  def test_outputs_emissions_j106; assert_in_epsilon(3599074490.0, worksheet.outputs_emissions_j106, 0.002); end
  def test_outputs_emissions_k106; assert_in_epsilon(2634522540.0, worksheet.outputs_emissions_k106, 0.002); end
  def test_outputs_emissions_l106; assert_in_epsilon(2639913820.0, worksheet.outputs_emissions_l106, 0.002); end
  def test_outputs_emissions_p106; assert_in_epsilon(2639913819.9999995, worksheet.outputs_emissions_p106, 0.002); end
  def test_outputs_emissions_q106; assert_in_epsilon(6223211655.4961195, worksheet.outputs_emissions_q106, 0.002); end
  def test_outputs_emissions_r106; assert_in_epsilon(5209767810.547601, worksheet.outputs_emissions_r106, 0.002); end
  def test_outputs_emissions_s106; assert_in_epsilon(3886410673.114109, worksheet.outputs_emissions_s106, 0.002); end
  def test_outputs_emissions_t106; assert_in_epsilon(2992358511.5778565, worksheet.outputs_emissions_t106, 0.002); end
  def test_outputs_emissions_u106; assert_in_epsilon(2209304654.359458, worksheet.outputs_emissions_u106, 0.002); end
  def test_outputs_emissions_v106; assert_in_epsilon(1522676441.6203, worksheet.outputs_emissions_v106, 0.002); end
  def test_outputs_emissions_w106; assert_in_epsilon(920151869.0175346, worksheet.outputs_emissions_w106, 0.002); end
  def test_outputs_emissions_x106; assert_in_epsilon(393881601.7105191, worksheet.outputs_emissions_x106, 0.002); end
  def test_outputs_emissions_c107; assert_equal("G.6", worksheet.outputs_emissions_c107); end
  def test_outputs_emissions_d107; assert_equal("Global Waste", worksheet.outputs_emissions_d107); end
  def test_outputs_emissions_h107; assert_in_delta(0.0, (worksheet.outputs_emissions_h107||0), 0.002); end
  def test_outputs_emissions_i107; assert_in_delta(0.0, (worksheet.outputs_emissions_i107||0), 0.002); end
  def test_outputs_emissions_j107; assert_in_delta(0.0, (worksheet.outputs_emissions_j107||0), 0.002); end
  def test_outputs_emissions_k107; assert_in_delta(0.0, (worksheet.outputs_emissions_k107||0), 0.002); end
  def test_outputs_emissions_l107; assert_in_delta(0.0, (worksheet.outputs_emissions_l107||0), 0.002); end
  def test_outputs_emissions_p107; assert_in_delta(0.0, (worksheet.outputs_emissions_p107||0), 0.002); end
  def test_outputs_emissions_q107; assert_in_delta(0.0, (worksheet.outputs_emissions_q107||0), 0.002); end
  def test_outputs_emissions_r107; assert_in_delta(0.0, (worksheet.outputs_emissions_r107||0), 0.002); end
  def test_outputs_emissions_s107; assert_in_delta(0.0, (worksheet.outputs_emissions_s107||0), 0.002); end
  def test_outputs_emissions_t107; assert_in_delta(0.0, (worksheet.outputs_emissions_t107||0), 0.002); end
  def test_outputs_emissions_u107; assert_in_delta(0.0, (worksheet.outputs_emissions_u107||0), 0.002); end
  def test_outputs_emissions_v107; assert_in_delta(0.0, (worksheet.outputs_emissions_v107||0), 0.002); end
  def test_outputs_emissions_w107; assert_in_delta(0.0, (worksheet.outputs_emissions_w107||0), 0.002); end
  def test_outputs_emissions_x107; assert_in_delta(0.0, (worksheet.outputs_emissions_x107||0), 0.002); end
  def test_outputs_emissions_c108; assert_equal("G.7", worksheet.outputs_emissions_c108); end
  def test_outputs_emissions_d108; assert_equal("Global Other", worksheet.outputs_emissions_d108); end
  def test_outputs_emissions_h108; assert_in_delta(0.0, (worksheet.outputs_emissions_h108||0), 0.002); end
  def test_outputs_emissions_i108; assert_in_delta(0.0, (worksheet.outputs_emissions_i108||0), 0.002); end
  def test_outputs_emissions_j108; assert_in_delta(0.0, (worksheet.outputs_emissions_j108||0), 0.002); end
  def test_outputs_emissions_k108; assert_in_delta(0.0, (worksheet.outputs_emissions_k108||0), 0.002); end
  def test_outputs_emissions_l108; assert_in_delta(0.0, (worksheet.outputs_emissions_l108||0), 0.002); end
  def test_outputs_emissions_p108; assert_in_delta(0.0, (worksheet.outputs_emissions_p108||0), 0.002); end
  def test_outputs_emissions_q108; assert_in_delta(0.0, (worksheet.outputs_emissions_q108||0), 0.002); end
  def test_outputs_emissions_r108; assert_in_delta(0.0, (worksheet.outputs_emissions_r108||0), 0.002); end
  def test_outputs_emissions_s108; assert_in_delta(0.0, (worksheet.outputs_emissions_s108||0), 0.002); end
  def test_outputs_emissions_t108; assert_in_delta(0.0, (worksheet.outputs_emissions_t108||0), 0.002); end
  def test_outputs_emissions_u108; assert_in_delta(0.0, (worksheet.outputs_emissions_u108||0), 0.002); end
  def test_outputs_emissions_v108; assert_in_delta(0.0, (worksheet.outputs_emissions_v108||0), 0.002); end
  def test_outputs_emissions_w108; assert_in_delta(0.0, (worksheet.outputs_emissions_w108||0), 0.002); end
  def test_outputs_emissions_x108; assert_in_delta(0.0, (worksheet.outputs_emissions_x108||0), 0.002); end
  def test_outputs_emissions_d109; assert_equal("total", worksheet.outputs_emissions_d109); end
  def test_outputs_emissions_h109; assert_in_epsilon(25348917570.0, worksheet.outputs_emissions_h109, 0.002); end
  def test_outputs_emissions_i109; assert_in_epsilon(26374524320.0, worksheet.outputs_emissions_i109, 0.002); end
  def test_outputs_emissions_j109; assert_in_epsilon(28357970290.0, worksheet.outputs_emissions_j109, 0.002); end
  def test_outputs_emissions_k109; assert_in_epsilon(31523796560.0, worksheet.outputs_emissions_k109, 0.002); end
  def test_outputs_emissions_l109; assert_in_epsilon(35023078940.0, worksheet.outputs_emissions_l109, 0.002); end
  def test_outputs_emissions_p109; assert_in_epsilon(29916117400.357464, worksheet.outputs_emissions_p109, 0.002); end
  def test_outputs_emissions_q109; assert_in_epsilon(34272940783.05712, worksheet.outputs_emissions_q109, 0.002); end
  def test_outputs_emissions_r109; assert_in_epsilon(32601940262.064945, worksheet.outputs_emissions_r109, 0.002); end
  def test_outputs_emissions_s109; assert_in_epsilon(33768517122.541718, worksheet.outputs_emissions_s109, 0.002); end
  def test_outputs_emissions_t109; assert_in_epsilon(32390294923.67686, worksheet.outputs_emissions_t109, 0.002); end
  def test_outputs_emissions_u109; assert_in_epsilon(33608493311.33124, worksheet.outputs_emissions_u109, 0.002); end
  def test_outputs_emissions_v109; assert_in_epsilon(31274921448.95096, worksheet.outputs_emissions_v109, 0.002); end
  def test_outputs_emissions_w109; assert_in_epsilon(33507297796.54232, worksheet.outputs_emissions_w109, 0.002); end
  def test_outputs_emissions_x109; assert_in_epsilon(31837513669.990093, worksheet.outputs_emissions_x109, 0.002); end
  def test_outputs_emissions_y109; assert_in_epsilon(30167729543.437866, worksheet.outputs_emissions_y109, 0.002); end
  def test_outputs_emissions_z109; assert_in_epsilon(28497945416.88564, worksheet.outputs_emissions_z109, 0.002); end
  def test_outputs_emissions_aa109; assert_in_epsilon(26828161290.333412, worksheet.outputs_emissions_aa109, 0.002); end
  def test_outputs_emissions_ab109; assert_in_epsilon(25158377163.781185, worksheet.outputs_emissions_ab109, 0.002); end
  def test_outputs_emissions_ac109; assert_in_epsilon(23488593037.22896, worksheet.outputs_emissions_ac109, 0.002); end
  def test_outputs_emissions_ad109; assert_in_epsilon(21818808910.67673, worksheet.outputs_emissions_ad109, 0.002); end
  def test_outputs_emissions_ae109; assert_in_epsilon(20149024784.124504, worksheet.outputs_emissions_ae109, 0.002); end
  def test_outputs_emissions_af109; assert_in_epsilon(18479240657.572277, worksheet.outputs_emissions_af109, 0.002); end
  def test_outputs_emissions_ag109; assert_in_epsilon(16809456531.02005, worksheet.outputs_emissions_ag109, 0.002); end
  def test_outputs_emissions_ah109; assert_in_epsilon(15139672404.467823, worksheet.outputs_emissions_ah109, 0.002); end
  def test_outputs_emissions_c110; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c110); end
  def test_outputs_emissions_d110; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d110); end
  def test_outputs_emissions_n110; assert_in_epsilon(1890000000000.0, worksheet.outputs_emissions_n110, 0.002); end
  def test_outputs_emissions_p110; assert_in_epsilon(1919916117400.3574, worksheet.outputs_emissions_p110, 0.002); end
  def test_outputs_emissions_q110; assert_in_epsilon(2048294233767.1865, worksheet.outputs_emissions_q110, 0.002); end
  def test_outputs_emissions_r110; assert_in_epsilon(2215481436379.9917, worksheet.outputs_emissions_r110, 0.002); end
  def test_outputs_emissions_s110; assert_in_epsilon(2381407579841.5083, worksheet.outputs_emissions_s110, 0.002); end
  def test_outputs_emissions_t110; assert_in_epsilon(2546804609957.0547, worksheet.outputs_emissions_t110, 0.002); end
  def test_outputs_emissions_u110; assert_in_epsilon(2711801580544.575, worksheet.outputs_emissions_u110, 0.002); end
  def test_outputs_emissions_v110; assert_in_epsilon(2874010117445.281, worksheet.outputs_emissions_v110, 0.002); end
  def test_outputs_emissions_w110; assert_in_epsilon(3035965665559.014, worksheet.outputs_emissions_w110, 0.002); end
  def test_outputs_emissions_x110; assert_in_epsilon(3199327694225.345, worksheet.outputs_emissions_x110, 0.002); end
  def test_outputs_emissions_y110; assert_in_epsilon(3354340802258.915, worksheet.outputs_emissions_y110, 0.002); end
  def test_outputs_emissions_z110; assert_in_epsilon(3501004989659.7236, worksheet.outputs_emissions_z110, 0.002); end
  def test_outputs_emissions_aa110; assert_in_epsilon(3639320256427.7715, worksheet.outputs_emissions_aa110, 0.002); end
  def test_outputs_emissions_ab110; assert_in_epsilon(3769286602563.058, worksheet.outputs_emissions_ab110, 0.002); end
  def test_outputs_emissions_ac110; assert_in_epsilon(3890904028065.5835, worksheet.outputs_emissions_ac110, 0.002); end
  def test_outputs_emissions_ad110; assert_in_epsilon(4004172532935.3477, worksheet.outputs_emissions_ad110, 0.002); end
  def test_outputs_emissions_ae110; assert_in_epsilon(4109092117172.3506, worksheet.outputs_emissions_ae110, 0.002); end
  def test_outputs_emissions_af110; assert_in_epsilon(4205662780776.593, worksheet.outputs_emissions_af110, 0.002); end
  def test_outputs_emissions_ag110; assert_in_epsilon(4293884523748.0737, worksheet.outputs_emissions_ag110, 0.002); end
  def test_outputs_emissions_ah110; assert_in_epsilon(4373757346086.7935, worksheet.outputs_emissions_ah110, 0.002); end
  def test_outputs_emissions_n111; assert_equal("IPCC", worksheet.outputs_emissions_n111); end
  def test_outputs_emissions_c112; assert_equal("G.X2.A", worksheet.outputs_emissions_c112); end
  def test_outputs_emissions_d112; assert_equal("Global Carbon capture combustion", worksheet.outputs_emissions_d112); end
  def test_outputs_emissions_p112; assert_in_delta(0.0, (worksheet.outputs_emissions_p112||0), 0.002); end
  def test_outputs_emissions_q112; assert_in_delta(0.0, (worksheet.outputs_emissions_q112||0), 0.002); end
  def test_outputs_emissions_r112; assert_in_delta(0.0, (worksheet.outputs_emissions_r112||0), 0.002); end
  def test_outputs_emissions_s112; assert_in_delta(0.0, (worksheet.outputs_emissions_s112||0), 0.002); end
  def test_outputs_emissions_t112; assert_in_delta(0.0, (worksheet.outputs_emissions_t112||0), 0.002); end
  def test_outputs_emissions_u112; assert_in_delta(0.0, (worksheet.outputs_emissions_u112||0), 0.002); end
  def test_outputs_emissions_v112; assert_in_delta(0.0, (worksheet.outputs_emissions_v112||0), 0.002); end
  def test_outputs_emissions_w112; assert_in_delta(0.0, (worksheet.outputs_emissions_w112||0), 0.002); end
  def test_outputs_emissions_x112; assert_in_delta(0.0, (worksheet.outputs_emissions_x112||0), 0.002); end
  def test_outputs_emissions_c113; assert_equal("G.X2.B", worksheet.outputs_emissions_c113); end
  def test_outputs_emissions_d113; assert_equal("Global Carbon capture industrial process", worksheet.outputs_emissions_d113); end
  def test_outputs_emissions_p113; assert_in_delta(0.0, (worksheet.outputs_emissions_p113||0), 0.002); end
  def test_outputs_emissions_q113; assert_in_delta(0.0, (worksheet.outputs_emissions_q113||0), 0.002); end
  def test_outputs_emissions_r113; assert_in_delta(0.0, (worksheet.outputs_emissions_r113||0), 0.002); end
  def test_outputs_emissions_s113; assert_in_delta(0.0, (worksheet.outputs_emissions_s113||0), 0.002); end
  def test_outputs_emissions_t113; assert_in_delta(0.0, (worksheet.outputs_emissions_t113||0), 0.002); end
  def test_outputs_emissions_u113; assert_in_delta(0.0, (worksheet.outputs_emissions_u113||0), 0.002); end
  def test_outputs_emissions_v113; assert_in_delta(0.0, (worksheet.outputs_emissions_v113||0), 0.002); end
  def test_outputs_emissions_w113; assert_in_delta(0.0, (worksheet.outputs_emissions_w113||0), 0.002); end
  def test_outputs_emissions_x113; assert_in_delta(0.0, (worksheet.outputs_emissions_x113||0), 0.002); end
  def test_outputs_emissions_c114; assert_equal("G.X2.C", worksheet.outputs_emissions_c114); end
  def test_outputs_emissions_d114; assert_equal("Global Carbon capture from air", worksheet.outputs_emissions_d114); end
  def test_outputs_emissions_p114; assert_in_delta(0.0, (worksheet.outputs_emissions_p114||0), 0.002); end
  def test_outputs_emissions_q114; assert_in_delta(0.0, (worksheet.outputs_emissions_q114||0), 0.002); end
  def test_outputs_emissions_r114; assert_in_delta(0.0, (worksheet.outputs_emissions_r114||0), 0.002); end
  def test_outputs_emissions_s114; assert_in_delta(0.0, (worksheet.outputs_emissions_s114||0), 0.002); end
  def test_outputs_emissions_t114; assert_in_delta(0.0, (worksheet.outputs_emissions_t114||0), 0.002); end
  def test_outputs_emissions_u114; assert_in_delta(0.0, (worksheet.outputs_emissions_u114||0), 0.002); end
  def test_outputs_emissions_v114; assert_in_delta(0.0, (worksheet.outputs_emissions_v114||0), 0.002); end
  def test_outputs_emissions_w114; assert_in_delta(0.0, (worksheet.outputs_emissions_w114||0), 0.002); end
  def test_outputs_emissions_x114; assert_in_delta(0.0, (worksheet.outputs_emissions_x114||0), 0.002); end
  def test_outputs_emissions_c116; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c116); end
  def test_outputs_emissions_ah116; assert_equal("t", worksheet.outputs_emissions_ah116); end
  def test_outputs_emissions_h117; assert_equal("Historic actuals", worksheet.outputs_emissions_h117); end
  def test_outputs_emissions_p117; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p117); end
  def test_outputs_emissions_y117; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y117); end
  def test_outputs_emissions_c118; assert_equal("Emissions by sector", worksheet.outputs_emissions_c118); end
  def test_outputs_emissions_d118; assert_equal("Calculator Sector", worksheet.outputs_emissions_d118); end
  def test_outputs_emissions_h118; assert_equal("1990", worksheet.outputs_emissions_h118); end
  def test_outputs_emissions_i118; assert_equal("1995", worksheet.outputs_emissions_i118); end
  def test_outputs_emissions_j118; assert_equal("2000", worksheet.outputs_emissions_j118); end
  def test_outputs_emissions_k118; assert_equal("2005", worksheet.outputs_emissions_k118); end
  def test_outputs_emissions_l118; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l118, 0.002); end
  def test_outputs_emissions_n118; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n118, 0.002); end
  def test_outputs_emissions_p118; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p118, 0.002); end
  def test_outputs_emissions_q118; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q118, 0.002); end
  def test_outputs_emissions_r118; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r118, 0.002); end
  def test_outputs_emissions_s118; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s118, 0.002); end
  def test_outputs_emissions_t118; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t118, 0.002); end
  def test_outputs_emissions_u118; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u118, 0.002); end
  def test_outputs_emissions_v118; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v118, 0.002); end
  def test_outputs_emissions_w118; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w118, 0.002); end
  def test_outputs_emissions_x118; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x118, 0.002); end
  def test_outputs_emissions_y118; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y118, 0.002); end
  def test_outputs_emissions_z118; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z118, 0.002); end
  def test_outputs_emissions_aa118; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa118, 0.002); end
  def test_outputs_emissions_ab118; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab118, 0.002); end
  def test_outputs_emissions_ac118; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac118, 0.002); end
  def test_outputs_emissions_ad118; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad118, 0.002); end
  def test_outputs_emissions_ae118; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae118, 0.002); end
  def test_outputs_emissions_af118; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af118, 0.002); end
  def test_outputs_emissions_ag118; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag118, 0.002); end
  def test_outputs_emissions_ah118; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah118, 0.002); end
  def test_outputs_emissions_c119; assert_equal("G.10", worksheet.outputs_emissions_c119); end
  def test_outputs_emissions_d119; assert_equal("Global Transport", worksheet.outputs_emissions_d119); end
  def test_outputs_emissions_h119; assert_in_epsilon(4596810000.0, worksheet.outputs_emissions_h119, 0.002); end
  def test_outputs_emissions_i119; assert_in_epsilon(5023330000.0, worksheet.outputs_emissions_i119, 0.002); end
  def test_outputs_emissions_j119; assert_in_epsilon(5720270000.0, worksheet.outputs_emissions_j119, 0.002); end
  def test_outputs_emissions_k119; assert_in_epsilon(6397960000.0, worksheet.outputs_emissions_k119, 0.002); end
  def test_outputs_emissions_l119; assert_in_epsilon(6906230000.0, worksheet.outputs_emissions_l119, 0.002); end
  def test_outputs_emissions_p119; assert_in_epsilon(5859160102.701807, worksheet.outputs_emissions_p119, 0.002); end
  def test_outputs_emissions_q119; assert_in_epsilon(6460077044.759872, worksheet.outputs_emissions_q119, 0.002); end
  def test_outputs_emissions_r119; assert_in_epsilon(6315714590.274921, worksheet.outputs_emissions_r119, 0.002); end
  def test_outputs_emissions_s119; assert_in_epsilon(7898275890.681221, worksheet.outputs_emissions_s119, 0.002); end
  def test_outputs_emissions_t119; assert_in_epsilon(8157129168.109373, worksheet.outputs_emissions_t119, 0.002); end
  def test_outputs_emissions_u119; assert_in_epsilon(10169407345.431816, worksheet.outputs_emissions_u119, 0.002); end
  def test_outputs_emissions_v119; assert_in_epsilon(10471159568.517803, worksheet.outputs_emissions_v119, 0.002); end
  def test_outputs_emissions_w119; assert_in_epsilon(13041185623.594465, worksheet.outputs_emissions_w119, 0.002); end
  def test_outputs_emissions_x119; assert_in_epsilon(13404112742.015999, worksheet.outputs_emissions_x119, 0.002); end
  def test_outputs_emissions_c120; assert_equal("G.20", worksheet.outputs_emissions_c120); end
  def test_outputs_emissions_d120; assert_equal("Global Buildings", worksheet.outputs_emissions_d120); end
  def test_outputs_emissions_h120; assert_in_epsilon(2917670000.0, worksheet.outputs_emissions_h120, 0.002); end
  def test_outputs_emissions_i120; assert_in_epsilon(2743940000.0, worksheet.outputs_emissions_i120, 0.002); end
  def test_outputs_emissions_j120; assert_in_epsilon(2681000000.0, worksheet.outputs_emissions_j120, 0.002); end
  def test_outputs_emissions_k120; assert_in_epsilon(2845230000.0, worksheet.outputs_emissions_k120, 0.002); end
  def test_outputs_emissions_l120; assert_in_epsilon(2883040000.0, worksheet.outputs_emissions_l120, 0.002); end
  def test_outputs_emissions_p120; assert_in_epsilon(6088249147.568724, worksheet.outputs_emissions_p120, 0.002); end
  def test_outputs_emissions_q120; assert_in_epsilon(6094658174.118078, worksheet.outputs_emissions_q120, 0.002); end
  def test_outputs_emissions_r120; assert_in_epsilon(6091103331.743623, worksheet.outputs_emissions_r120, 0.002); end
  def test_outputs_emissions_s120; assert_in_epsilon(6373456233.838654, worksheet.outputs_emissions_s120, 0.002); end
  def test_outputs_emissions_t120; assert_in_epsilon(6765271039.452471, worksheet.outputs_emissions_t120, 0.002); end
  def test_outputs_emissions_u120; assert_in_epsilon(7124402894.205048, worksheet.outputs_emissions_u120, 0.002); end
  def test_outputs_emissions_v120; assert_in_epsilon(7482040526.258525, worksheet.outputs_emissions_v120, 0.002); end
  def test_outputs_emissions_w120; assert_in_epsilon(7817382124.997026, worksheet.outputs_emissions_w120, 0.002); end
  def test_outputs_emissions_x120; assert_in_epsilon(8047745178.03691, worksheet.outputs_emissions_x120, 0.002); end
  def test_outputs_emissions_c121; assert_equal("G.30", worksheet.outputs_emissions_c121); end
  def test_outputs_emissions_d121; assert_equal("Global Materials", worksheet.outputs_emissions_d121); end
  def test_outputs_emissions_h121; assert_in_epsilon(5135668000.0, worksheet.outputs_emissions_h121, 0.002); end
  def test_outputs_emissions_i121; assert_in_epsilon(5244058000.0, worksheet.outputs_emissions_i121, 0.002); end
  def test_outputs_emissions_j121; assert_in_epsilon(5436514000.0, worksheet.outputs_emissions_j121, 0.002); end
  def test_outputs_emissions_k121; assert_in_epsilon(6610490000.0, worksheet.outputs_emissions_k121, 0.002); end
  def test_outputs_emissions_l121; assert_in_epsilon(7924438560.0, worksheet.outputs_emissions_l121, 0.002); end
  def test_outputs_emissions_p121; assert_in_epsilon(7651538792.779813, worksheet.outputs_emissions_p121, 0.002); end
  def test_outputs_emissions_q121; assert_in_epsilon(7418610214.369656, worksheet.outputs_emissions_q121, 0.002); end
  def test_outputs_emissions_r121; assert_in_epsilon(7129521616.182009, worksheet.outputs_emissions_r121, 0.002); end
  def test_outputs_emissions_s121; assert_in_epsilon(7227917546.086573, worksheet.outputs_emissions_s121, 0.002); end
  def test_outputs_emissions_t121; assert_in_epsilon(7305553312.641832, worksheet.outputs_emissions_t121, 0.002); end
  def test_outputs_emissions_u121; assert_in_epsilon(7406696797.935709, worksheet.outputs_emissions_u121, 0.002); end
  def test_outputs_emissions_v121; assert_in_epsilon(7479569189.282655, worksheet.outputs_emissions_v121, 0.002); end
  def test_outputs_emissions_w121; assert_in_epsilon(7586949443.450211, worksheet.outputs_emissions_w121, 0.002); end
  def test_outputs_emissions_x121; assert_in_epsilon(7658005336.487433, worksheet.outputs_emissions_x121, 0.002); end
  def test_outputs_emissions_c122; assert_equal("G.40", worksheet.outputs_emissions_c122); end
  def test_outputs_emissions_d122; assert_equal("Global Electricity Generation and Global Fuel production", worksheet.outputs_emissions_d122); end
  def test_outputs_emissions_e122; assert_equal("Global Electricity Generation", worksheet.outputs_emissions_e122); end
  def test_outputs_emissions_h122; assert_in_epsilon(8672659360.0, worksheet.outputs_emissions_h122, 0.002); end
  def test_outputs_emissions_i122; assert_in_epsilon(9362968830.0, worksheet.outputs_emissions_i122, 0.002); end
  def test_outputs_emissions_j122; assert_in_epsilon(10582321800.0, worksheet.outputs_emissions_j122, 0.002); end
  def test_outputs_emissions_k122; assert_in_epsilon(12640844020.0, worksheet.outputs_emissions_k122, 0.002); end
  def test_outputs_emissions_l122; assert_in_epsilon(14268776560.0, worksheet.outputs_emissions_l122, 0.002); end
  def test_outputs_emissions_p122; assert_in_epsilon(7677255537.30712, worksheet.outputs_emissions_p122, 0.002); end
  def test_outputs_emissions_q122; assert_in_epsilon(8076383694.313396, worksheet.outputs_emissions_q122, 0.002); end
  def test_outputs_emissions_r122; assert_in_epsilon(7855832913.316798, worksheet.outputs_emissions_r122, 0.002); end
  def test_outputs_emissions_s122; assert_in_epsilon(8382456778.821163, worksheet.outputs_emissions_s122, 0.002); end
  def test_outputs_emissions_t122; assert_in_epsilon(7169982891.895327, worksheet.outputs_emissions_t122, 0.002); end
  def test_outputs_emissions_u122; assert_in_epsilon(6698681619.399204, worksheet.outputs_emissions_u122, 0.002); end
  def test_outputs_emissions_v122; assert_in_epsilon(4319475723.271675, worksheet.outputs_emissions_v122, 0.002); end
  def test_outputs_emissions_w122; assert_in_epsilon(4141628735.4830904, worksheet.outputs_emissions_w122, 0.002); end
  def test_outputs_emissions_x122; assert_in_epsilon(2333768811.739233, worksheet.outputs_emissions_x122, 0.002); end
  def test_outputs_emissions_c123; assert_equal("G.60", worksheet.outputs_emissions_c123); end
  def test_outputs_emissions_d123; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d123); end
  def test_outputs_emissions_h123; assert_in_epsilon(4026110210.0, worksheet.outputs_emissions_h123, 0.002); end
  def test_outputs_emissions_i123; assert_in_epsilon(4000227490.0, worksheet.outputs_emissions_i123, 0.002); end
  def test_outputs_emissions_j123; assert_in_epsilon(3937874490.0, worksheet.outputs_emissions_j123, 0.002); end
  def test_outputs_emissions_k123; assert_in_epsilon(3029272540.0, worksheet.outputs_emissions_k123, 0.002); end
  def test_outputs_emissions_l123; assert_in_epsilon(3040593820.0, worksheet.outputs_emissions_l123, 0.002); end
  def test_outputs_emissions_p123; assert_in_epsilon(2639913819.9999995, worksheet.outputs_emissions_p123, 0.002); end
  def test_outputs_emissions_q123; assert_in_epsilon(6223211655.4961195, worksheet.outputs_emissions_q123, 0.002); end
  def test_outputs_emissions_r123; assert_in_epsilon(5209767810.547601, worksheet.outputs_emissions_r123, 0.002); end
  def test_outputs_emissions_s123; assert_in_epsilon(3886410673.114109, worksheet.outputs_emissions_s123, 0.002); end
  def test_outputs_emissions_t123; assert_in_epsilon(2992358511.5778565, worksheet.outputs_emissions_t123, 0.002); end
  def test_outputs_emissions_u123; assert_in_epsilon(2209304654.359458, worksheet.outputs_emissions_u123, 0.002); end
  def test_outputs_emissions_v123; assert_in_epsilon(1522676441.6203, worksheet.outputs_emissions_v123, 0.002); end
  def test_outputs_emissions_w123; assert_in_epsilon(920151869.0175346, worksheet.outputs_emissions_w123, 0.002); end
  def test_outputs_emissions_x123; assert_in_epsilon(393881601.7105191, worksheet.outputs_emissions_x123, 0.002); end
  def test_outputs_emissions_d124; assert_equal("total", worksheet.outputs_emissions_d124); end
  def test_outputs_emissions_h124; assert_in_epsilon(25348917570.0, worksheet.outputs_emissions_h124, 0.002); end
  def test_outputs_emissions_i124; assert_in_epsilon(26374524320.0, worksheet.outputs_emissions_i124, 0.002); end
  def test_outputs_emissions_j124; assert_in_epsilon(28357980290.0, worksheet.outputs_emissions_j124, 0.002); end
  def test_outputs_emissions_k124; assert_in_epsilon(31523796560.0, worksheet.outputs_emissions_k124, 0.002); end
  def test_outputs_emissions_l124; assert_in_epsilon(35023078940.0, worksheet.outputs_emissions_l124, 0.002); end
  def test_outputs_emissions_p124; assert_in_epsilon(29916117400.357464, worksheet.outputs_emissions_p124, 0.002); end
  def test_outputs_emissions_q124; assert_in_epsilon(34272940783.05712, worksheet.outputs_emissions_q124, 0.002); end
  def test_outputs_emissions_r124; assert_in_epsilon(32601940262.064953, worksheet.outputs_emissions_r124, 0.002); end
  def test_outputs_emissions_s124; assert_in_epsilon(33768517122.541718, worksheet.outputs_emissions_s124, 0.002); end
  def test_outputs_emissions_t124; assert_in_epsilon(32390294923.676857, worksheet.outputs_emissions_t124, 0.002); end
  def test_outputs_emissions_u124; assert_in_epsilon(33608493311.331234, worksheet.outputs_emissions_u124, 0.002); end
  def test_outputs_emissions_v124; assert_in_epsilon(31274921448.95096, worksheet.outputs_emissions_v124, 0.002); end
  def test_outputs_emissions_w124; assert_in_epsilon(33507297796.542328, worksheet.outputs_emissions_w124, 0.002); end
  def test_outputs_emissions_x124; assert_in_epsilon(31837513669.990097, worksheet.outputs_emissions_x124, 0.002); end
  def test_outputs_emissions_y124; assert_in_epsilon(30167729543.437866, worksheet.outputs_emissions_y124, 0.002); end
  def test_outputs_emissions_z124; assert_in_epsilon(28497945416.885635, worksheet.outputs_emissions_z124, 0.002); end
  def test_outputs_emissions_aa124; assert_in_epsilon(26828161290.333405, worksheet.outputs_emissions_aa124, 0.002); end
  def test_outputs_emissions_ab124; assert_in_epsilon(25158377163.781174, worksheet.outputs_emissions_ab124, 0.002); end
  def test_outputs_emissions_ac124; assert_in_epsilon(23488593037.228943, worksheet.outputs_emissions_ac124, 0.002); end
  def test_outputs_emissions_ad124; assert_in_epsilon(21818808910.676712, worksheet.outputs_emissions_ad124, 0.002); end
  def test_outputs_emissions_ae124; assert_in_epsilon(20149024784.12448, worksheet.outputs_emissions_ae124, 0.002); end
  def test_outputs_emissions_af124; assert_in_epsilon(18479240657.57225, worksheet.outputs_emissions_af124, 0.002); end
  def test_outputs_emissions_ag124; assert_in_epsilon(16809456531.02002, worksheet.outputs_emissions_ag124, 0.002); end
  def test_outputs_emissions_ah124; assert_in_epsilon(15139672404.467789, worksheet.outputs_emissions_ah124, 0.002); end
  def test_outputs_emissions_c125; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c125); end
  def test_outputs_emissions_d125; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d125); end
  def test_outputs_emissions_n125; assert_in_epsilon(1890000000000.0, worksheet.outputs_emissions_n125, 0.002); end
  def test_outputs_emissions_p125; assert_in_epsilon(1919916117400.3574, worksheet.outputs_emissions_p125, 0.002); end
  def test_outputs_emissions_q125; assert_in_epsilon(2048294233767.1865, worksheet.outputs_emissions_q125, 0.002); end
  def test_outputs_emissions_r125; assert_in_epsilon(2215481436379.9917, worksheet.outputs_emissions_r125, 0.002); end
  def test_outputs_emissions_s125; assert_in_epsilon(2381407579841.5083, worksheet.outputs_emissions_s125, 0.002); end
  def test_outputs_emissions_t125; assert_in_epsilon(2546804609957.0547, worksheet.outputs_emissions_t125, 0.002); end
  def test_outputs_emissions_u125; assert_in_epsilon(2711801580544.575, worksheet.outputs_emissions_u125, 0.002); end
  def test_outputs_emissions_v125; assert_in_epsilon(2874010117445.281, worksheet.outputs_emissions_v125, 0.002); end
  def test_outputs_emissions_w125; assert_in_epsilon(3035965665559.014, worksheet.outputs_emissions_w125, 0.002); end
  def test_outputs_emissions_x125; assert_in_epsilon(3199327694225.345, worksheet.outputs_emissions_x125, 0.002); end
  def test_outputs_emissions_y125; assert_in_epsilon(3354340802258.915, worksheet.outputs_emissions_y125, 0.002); end
  def test_outputs_emissions_z125; assert_in_epsilon(3501004989659.7236, worksheet.outputs_emissions_z125, 0.002); end
  def test_outputs_emissions_aa125; assert_in_epsilon(3639320256427.7715, worksheet.outputs_emissions_aa125, 0.002); end
  def test_outputs_emissions_ab125; assert_in_epsilon(3769286602563.058, worksheet.outputs_emissions_ab125, 0.002); end
  def test_outputs_emissions_ac125; assert_in_epsilon(3890904028065.5835, worksheet.outputs_emissions_ac125, 0.002); end
  def test_outputs_emissions_ad125; assert_in_epsilon(4004172532935.3477, worksheet.outputs_emissions_ad125, 0.002); end
  def test_outputs_emissions_ae125; assert_in_epsilon(4109092117172.3506, worksheet.outputs_emissions_ae125, 0.002); end
  def test_outputs_emissions_af125; assert_in_epsilon(4205662780776.593, worksheet.outputs_emissions_af125, 0.002); end
  def test_outputs_emissions_ag125; assert_in_epsilon(4293884523748.0737, worksheet.outputs_emissions_ag125, 0.002); end
  def test_outputs_emissions_ah125; assert_in_epsilon(4373757346086.7935, worksheet.outputs_emissions_ah125, 0.002); end
  def test_outputs_emissions_c127; assert_equal("G.50", worksheet.outputs_emissions_c127); end
  def test_outputs_emissions_d127; assert_equal("Global Fuel production", worksheet.outputs_emissions_d127); end
  def test_outputs_emissions_p127; assert_in_epsilon(223376881.1108241, worksheet.outputs_emissions_p127, 0.002); end
  def test_outputs_emissions_q127; assert_in_epsilon(248504580.62493435, worksheet.outputs_emissions_q127, 0.002); end
  def test_outputs_emissions_r127; assert_in_epsilon(258492907.5131848, worksheet.outputs_emissions_r127, 0.002); end
  def test_outputs_emissions_s127; assert_in_epsilon(293450971.44887865, worksheet.outputs_emissions_s127, 0.002); end
  def test_outputs_emissions_t127; assert_in_epsilon(304277161.58956647, worksheet.outputs_emissions_t127, 0.002); end
  def test_outputs_emissions_u127; assert_in_epsilon(344261316.2009097, worksheet.outputs_emissions_u127, 0.002); end
  def test_outputs_emissions_v127; assert_in_epsilon(350098363.28402793, worksheet.outputs_emissions_v127, 0.002); end
  def test_outputs_emissions_w127; assert_in_epsilon(403304850.14626026, worksheet.outputs_emissions_w127, 0.002); end
  def test_outputs_emissions_x127; assert_in_epsilon(412815618.0155164, worksheet.outputs_emissions_x127, 0.002); end
  def test_outputs_emissions_h128; assert_in_epsilon(1000000.0, worksheet.outputs_emissions_h128, 0.002); end
  def test_outputs_emissions_c130; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c130); end
  def test_outputs_emissions_ah130; assert_equal("t", worksheet.outputs_emissions_ah130); end
  def test_outputs_emissions_h131; assert_equal("Historic actuals", worksheet.outputs_emissions_h131); end
  def test_outputs_emissions_p131; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p131); end
  def test_outputs_emissions_y131; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y131); end
  def test_outputs_emissions_c132; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c132); end
  def test_outputs_emissions_h132; assert_equal("1990", worksheet.outputs_emissions_h132); end
  def test_outputs_emissions_i132; assert_equal("1995", worksheet.outputs_emissions_i132); end
  def test_outputs_emissions_j132; assert_equal("2000", worksheet.outputs_emissions_j132); end
  def test_outputs_emissions_k132; assert_equal("2005", worksheet.outputs_emissions_k132); end
  def test_outputs_emissions_l132; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l132, 0.002); end
  def test_outputs_emissions_n132; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n132, 0.002); end
  def test_outputs_emissions_p132; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p132, 0.002); end
  def test_outputs_emissions_q132; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q132, 0.002); end
  def test_outputs_emissions_r132; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r132, 0.002); end
  def test_outputs_emissions_s132; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s132, 0.002); end
  def test_outputs_emissions_t132; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t132, 0.002); end
  def test_outputs_emissions_u132; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u132, 0.002); end
  def test_outputs_emissions_v132; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v132, 0.002); end
  def test_outputs_emissions_w132; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w132, 0.002); end
  def test_outputs_emissions_x132; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x132, 0.002); end
  def test_outputs_emissions_y132; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y132, 0.002); end
  def test_outputs_emissions_z132; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z132, 0.002); end
  def test_outputs_emissions_aa132; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa132, 0.002); end
  def test_outputs_emissions_ab132; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab132, 0.002); end
  def test_outputs_emissions_ac132; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac132, 0.002); end
  def test_outputs_emissions_ad132; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad132, 0.002); end
  def test_outputs_emissions_ae132; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae132, 0.002); end
  def test_outputs_emissions_af132; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af132, 0.002); end
  def test_outputs_emissions_ag132; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag132, 0.002); end
  def test_outputs_emissions_ah132; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah132, 0.002); end
  def test_outputs_emissions_c133; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_emissions_c133); end
  def test_outputs_emissions_d133; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d133); end
  def test_outputs_emissions_p133; assert_in_epsilon(429182949.75595945, worksheet.outputs_emissions_p133, 0.002); end
  def test_outputs_emissions_q133; assert_in_epsilon(611082887.271504, worksheet.outputs_emissions_q133, 0.002); end
  def test_outputs_emissions_r133; assert_in_epsilon(742236165.6217107, worksheet.outputs_emissions_r133, 0.002); end
  def test_outputs_emissions_s133; assert_in_epsilon(791739527.6681585, worksheet.outputs_emissions_s133, 0.002); end
  def test_outputs_emissions_t133; assert_in_epsilon(697607058.9402803, worksheet.outputs_emissions_t133, 0.002); end
  def test_outputs_emissions_u133; assert_in_epsilon(664263766.6247898, worksheet.outputs_emissions_u133, 0.002); end
  def test_outputs_emissions_v133; assert_in_epsilon(485845203.28346425, worksheet.outputs_emissions_v133, 0.002); end
  def test_outputs_emissions_w133; assert_in_epsilon(412632439.25920105, worksheet.outputs_emissions_w133, 0.002); end
  def test_outputs_emissions_x133; assert_in_epsilon(230086998.56193018, worksheet.outputs_emissions_x133, 0.002); end
  def test_outputs_emissions_c134; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_emissions_c134); end
  def test_outputs_emissions_d134; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_emissions_d134); end
  def test_outputs_emissions_p134; assert_in_epsilon(1003797901.4559809, worksheet.outputs_emissions_p134, 0.002); end
  def test_outputs_emissions_q134; assert_in_epsilon(1220797070.0485716, worksheet.outputs_emissions_q134, 0.002); end
  def test_outputs_emissions_r134; assert_in_epsilon(1366478255.9966128, worksheet.outputs_emissions_r134, 0.002); end
  def test_outputs_emissions_s134; assert_in_epsilon(1510122908.895734, worksheet.outputs_emissions_s134, 0.002); end
  def test_outputs_emissions_t134; assert_in_epsilon(1295343574.427092, worksheet.outputs_emissions_t134, 0.002); end
  def test_outputs_emissions_u134; assert_in_epsilon(1232094530.1504517, worksheet.outputs_emissions_u134, 0.002); end
  def test_outputs_emissions_v134; assert_in_epsilon(858675327.1763878, worksheet.outputs_emissions_v134, 0.002); end
  def test_outputs_emissions_w134; assert_in_epsilon(736872194.1445647, worksheet.outputs_emissions_w134, 0.002); end
  def test_outputs_emissions_x134; assert_in_epsilon(415016295.61104494, worksheet.outputs_emissions_x134, 0.002); end
  def test_outputs_emissions_c135; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_emissions_c135); end
  def test_outputs_emissions_d135; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_emissions_d135); end
  def test_outputs_emissions_p135; assert_in_epsilon(4766052062.028482, worksheet.outputs_emissions_p135, 0.002); end
  def test_outputs_emissions_q135; assert_in_epsilon(4452361968.560808, worksheet.outputs_emissions_q135, 0.002); end
  def test_outputs_emissions_r135; assert_in_epsilon(4246326246.3251057, worksheet.outputs_emissions_r135, 0.002); end
  def test_outputs_emissions_s135; assert_in_epsilon(4371071566.833679, worksheet.outputs_emissions_s135, 0.002); end
  def test_outputs_emissions_t135; assert_in_epsilon(3639166465.384178, worksheet.outputs_emissions_t135, 0.002); end
  def test_outputs_emissions_u135; assert_in_epsilon(3179965669.4810038, worksheet.outputs_emissions_u135, 0.002); end
  def test_outputs_emissions_v135; assert_in_epsilon(1954487428.362916, worksheet.outputs_emissions_v135, 0.002); end
  def test_outputs_emissions_w135; assert_in_epsilon(1687445182.1886747, worksheet.outputs_emissions_w135, 0.002); end
  def test_outputs_emissions_x135; assert_in_epsilon(956066087.1989418, worksheet.outputs_emissions_x135, 0.002); end
  def test_outputs_emissions_c136; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_emissions_c136); end
  def test_outputs_emissions_d136; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_emissions_d136); end
  def test_outputs_emissions_p136; assert_in_epsilon(171716650.9222746, worksheet.outputs_emissions_p136, 0.002); end
  def test_outputs_emissions_q136; assert_in_epsilon(314663327.2460474, worksheet.outputs_emissions_q136, 0.002); end
  def test_outputs_emissions_r136; assert_in_epsilon(347546615.3415318, worksheet.outputs_emissions_r136, 0.002); end
  def test_outputs_emissions_s136; assert_in_epsilon(374603123.06833255, worksheet.outputs_emissions_s136, 0.002); end
  def test_outputs_emissions_t136; assert_in_epsilon(380933488.3843044, worksheet.outputs_emissions_t136, 0.002); end
  def test_outputs_emissions_u136; assert_in_epsilon(419953093.15629125, worksheet.outputs_emissions_u136, 0.002); end
  def test_outputs_emissions_v136; assert_in_epsilon(324397903.98615074, worksheet.outputs_emissions_v136, 0.002); end
  def test_outputs_emissions_w136; assert_in_epsilon(348936345.17424774, worksheet.outputs_emissions_w136, 0.002); end
  def test_outputs_emissions_x136; assert_in_epsilon(228295345.64442894, worksheet.outputs_emissions_x136, 0.002); end
  def test_outputs_emissions_c137; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_emissions_c137); end
  def test_outputs_emissions_d137; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_emissions_d137); end
  def test_outputs_emissions_p137; assert_in_epsilon(500840231.85663426, worksheet.outputs_emissions_p137, 0.002); end
  def test_outputs_emissions_q137; assert_in_epsilon(767416825.6402138, worksheet.outputs_emissions_q137, 0.002); end
  def test_outputs_emissions_r137; assert_in_epsilon(748148466.2282126, worksheet.outputs_emissions_r137, 0.002); end
  def test_outputs_emissions_s137; assert_in_epsilon(777464124.5704292, worksheet.outputs_emissions_s137, 0.002); end
  def test_outputs_emissions_t137; assert_in_epsilon(701509967.3526092, worksheet.outputs_emissions_t137, 0.002); end
  def test_outputs_emissions_u137; assert_in_epsilon(660747093.0879458, worksheet.outputs_emissions_u137, 0.002); end
  def test_outputs_emissions_v137; assert_in_epsilon(473654383.78221416, worksheet.outputs_emissions_v137, 0.002); end
  def test_outputs_emissions_w137; assert_in_epsilon(512395939.983513, worksheet.outputs_emissions_w137, 0.002); end
  def test_outputs_emissions_x137; assert_in_epsilon(337123066.13653016, worksheet.outputs_emissions_x137, 0.002); end
  def test_outputs_emissions_c138; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_emissions_c138); end
  def test_outputs_emissions_d138; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_emissions_d138); end
  def test_outputs_emissions_p138; assert_in_epsilon(571608812.5751911, worksheet.outputs_emissions_p138, 0.002); end
  def test_outputs_emissions_q138; assert_in_epsilon(629624501.4663495, worksheet.outputs_emissions_q138, 0.002); end
  def test_outputs_emissions_r138; assert_in_epsilon(584421570.7578149, worksheet.outputs_emissions_r138, 0.002); end
  def test_outputs_emissions_s138; assert_in_epsilon(517645132.79405427, worksheet.outputs_emissions_s138, 0.002); end
  def test_outputs_emissions_t138; assert_in_epsilon(502412372.1751728, worksheet.outputs_emissions_t138, 0.002); end
  def test_outputs_emissions_u138; assert_in_epsilon(519347316.05200213, worksheet.outputs_emissions_u138, 0.002); end
  def test_outputs_emissions_v138; assert_in_epsilon(418986435.11398494, worksheet.outputs_emissions_v138, 0.002); end
  def test_outputs_emissions_w138; assert_in_epsilon(524615533.6970329, worksheet.outputs_emissions_w138, 0.002); end
  def test_outputs_emissions_x138; assert_in_epsilon(406558957.0116186, worksheet.outputs_emissions_x138, 0.002); end
  def test_outputs_emissions_c139; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_emissions_c139); end
  def test_outputs_emissions_d139; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_emissions_d139); end
  def test_outputs_emissions_p139; assert_in_epsilon(845447796.6976066, worksheet.outputs_emissions_p139, 0.002); end
  def test_outputs_emissions_q139; assert_in_epsilon(920710764.7098188, worksheet.outputs_emissions_q139, 0.002); end
  def test_outputs_emissions_r139; assert_in_epsilon(964518600.7546107, worksheet.outputs_emissions_r139, 0.002); end
  def test_outputs_emissions_s139; assert_in_epsilon(1072675945.8537093, worksheet.outputs_emissions_s139, 0.002); end
  def test_outputs_emissions_t139; assert_in_epsilon(917697547.6079696, worksheet.outputs_emissions_t139, 0.002); end
  def test_outputs_emissions_u139; assert_in_epsilon(864061532.7419767, worksheet.outputs_emissions_u139, 0.002); end
  def test_outputs_emissions_v139; assert_in_epsilon(582569875.6708472, worksheet.outputs_emissions_v139, 0.002); end
  def test_outputs_emissions_w139; assert_in_epsilon(551291535.964353, worksheet.outputs_emissions_w139, 0.002); end
  def test_outputs_emissions_x139; assert_in_epsilon(324529628.66566306, worksheet.outputs_emissions_x139, 0.002); end
  def test_outputs_emissions_c140; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_emissions_c140); end
  def test_outputs_emissions_d140; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d140); end
  def test_outputs_emissions_p140; assert_in_delta(0.0, (worksheet.outputs_emissions_p140||0), 0.002); end
  def test_outputs_emissions_q140; assert_in_delta(0.0, (worksheet.outputs_emissions_q140||0), 0.002); end
  def test_outputs_emissions_r140; assert_in_delta(0.0, (worksheet.outputs_emissions_r140||0), 0.002); end
  def test_outputs_emissions_s140; assert_in_delta(0.0, (worksheet.outputs_emissions_s140||0), 0.002); end
  def test_outputs_emissions_t140; assert_in_delta(0.0, (worksheet.outputs_emissions_t140||0), 0.002); end
  def test_outputs_emissions_u140; assert_in_delta(0.0, (worksheet.outputs_emissions_u140||0), 0.002); end
  def test_outputs_emissions_v140; assert_in_delta(0.0, (worksheet.outputs_emissions_v140||0), 0.002); end
  def test_outputs_emissions_w140; assert_in_delta(0.0, (worksheet.outputs_emissions_w140||0), 0.002); end
  def test_outputs_emissions_x140; assert_in_delta(0.0, (worksheet.outputs_emissions_x140||0), 0.002); end
  def test_outputs_emissions_c141; assert_equal("G.CCS.solid.super.elec", worksheet.outputs_emissions_c141); end
  def test_outputs_emissions_d141; assert_equal("Global Carbon capture solid-fuel supercritical power plant", worksheet.outputs_emissions_d141); end
  def test_outputs_emissions_p141; assert_in_delta(0.0, (worksheet.outputs_emissions_p141||0), 0.002); end
  def test_outputs_emissions_q141; assert_in_delta(0.0, (worksheet.outputs_emissions_q141||0), 0.002); end
  def test_outputs_emissions_r141; assert_in_delta(0.0, (worksheet.outputs_emissions_r141||0), 0.002); end
  def test_outputs_emissions_s141; assert_in_delta(0.0, (worksheet.outputs_emissions_s141||0), 0.002); end
  def test_outputs_emissions_t141; assert_in_delta(0.0, (worksheet.outputs_emissions_t141||0), 0.002); end
  def test_outputs_emissions_u141; assert_in_delta(0.0, (worksheet.outputs_emissions_u141||0), 0.002); end
  def test_outputs_emissions_v141; assert_in_delta(0.0, (worksheet.outputs_emissions_v141||0), 0.002); end
  def test_outputs_emissions_w141; assert_in_delta(0.0, (worksheet.outputs_emissions_w141||0), 0.002); end
  def test_outputs_emissions_x141; assert_in_delta(0.0, (worksheet.outputs_emissions_x141||0), 0.002); end
  def test_outputs_emissions_c142; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_emissions_c142); end
  def test_outputs_emissions_d142; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_emissions_d142); end
  def test_outputs_emissions_p142; assert_in_delta(0.0, (worksheet.outputs_emissions_p142||0), 0.002); end
  def test_outputs_emissions_q142; assert_in_delta(0.0, (worksheet.outputs_emissions_q142||0), 0.002); end
  def test_outputs_emissions_r142; assert_in_delta(0.0, (worksheet.outputs_emissions_r142||0), 0.002); end
  def test_outputs_emissions_s142; assert_in_delta(0.0, (worksheet.outputs_emissions_s142||0), 0.002); end
  def test_outputs_emissions_t142; assert_in_delta(0.0, (worksheet.outputs_emissions_t142||0), 0.002); end
  def test_outputs_emissions_u142; assert_in_delta(0.0, (worksheet.outputs_emissions_u142||0), 0.002); end
  def test_outputs_emissions_v142; assert_in_delta(0.0, (worksheet.outputs_emissions_v142||0), 0.002); end
  def test_outputs_emissions_w142; assert_in_delta(0.0, (worksheet.outputs_emissions_w142||0), 0.002); end
  def test_outputs_emissions_x142; assert_in_delta(0.0, (worksheet.outputs_emissions_x142||0), 0.002); end
  def test_outputs_emissions_c143; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_emissions_c143); end
  def test_outputs_emissions_d143; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_emissions_d143); end
  def test_outputs_emissions_p143; assert_in_delta(0.0, (worksheet.outputs_emissions_p143||0), 0.002); end
  def test_outputs_emissions_q143; assert_in_delta(0.0, (worksheet.outputs_emissions_q143||0), 0.002); end
  def test_outputs_emissions_r143; assert_in_delta(0.0, (worksheet.outputs_emissions_r143||0), 0.002); end
  def test_outputs_emissions_s143; assert_in_delta(0.0, (worksheet.outputs_emissions_s143||0), 0.002); end
  def test_outputs_emissions_t143; assert_in_delta(0.0, (worksheet.outputs_emissions_t143||0), 0.002); end
  def test_outputs_emissions_u143; assert_in_delta(0.0, (worksheet.outputs_emissions_u143||0), 0.002); end
  def test_outputs_emissions_v143; assert_in_delta(0.0, (worksheet.outputs_emissions_v143||0), 0.002); end
  def test_outputs_emissions_w143; assert_in_delta(0.0, (worksheet.outputs_emissions_w143||0), 0.002); end
  def test_outputs_emissions_x143; assert_in_delta(0.0, (worksheet.outputs_emissions_x143||0), 0.002); end
  def test_outputs_emissions_c144; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_emissions_c144); end
  def test_outputs_emissions_d144; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_emissions_d144); end
  def test_outputs_emissions_p144; assert_in_delta(0.0, (worksheet.outputs_emissions_p144||0), 0.002); end
  def test_outputs_emissions_q144; assert_in_delta(0.0, (worksheet.outputs_emissions_q144||0), 0.002); end
  def test_outputs_emissions_r144; assert_in_delta(0.0, (worksheet.outputs_emissions_r144||0), 0.002); end
  def test_outputs_emissions_s144; assert_in_delta(0.0, (worksheet.outputs_emissions_s144||0), 0.002); end
  def test_outputs_emissions_t144; assert_in_delta(0.0, (worksheet.outputs_emissions_t144||0), 0.002); end
  def test_outputs_emissions_u144; assert_in_delta(0.0, (worksheet.outputs_emissions_u144||0), 0.002); end
  def test_outputs_emissions_v144; assert_in_delta(0.0, (worksheet.outputs_emissions_v144||0), 0.002); end
  def test_outputs_emissions_w144; assert_in_delta(0.0, (worksheet.outputs_emissions_w144||0), 0.002); end
  def test_outputs_emissions_x144; assert_in_delta(0.0, (worksheet.outputs_emissions_x144||0), 0.002); end
  def test_outputs_emissions_c145; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_emissions_c145); end
  def test_outputs_emissions_d145; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_emissions_d145); end
  def test_outputs_emissions_p145; assert_in_delta(0.0, (worksheet.outputs_emissions_p145||0), 0.002); end
  def test_outputs_emissions_q145; assert_in_delta(0.0, (worksheet.outputs_emissions_q145||0), 0.002); end
  def test_outputs_emissions_r145; assert_in_delta(0.0, (worksheet.outputs_emissions_r145||0), 0.002); end
  def test_outputs_emissions_s145; assert_in_delta(0.0, (worksheet.outputs_emissions_s145||0), 0.002); end
  def test_outputs_emissions_t145; assert_in_delta(0.0, (worksheet.outputs_emissions_t145||0), 0.002); end
  def test_outputs_emissions_u145; assert_in_delta(0.0, (worksheet.outputs_emissions_u145||0), 0.002); end
  def test_outputs_emissions_v145; assert_in_delta(0.0, (worksheet.outputs_emissions_v145||0), 0.002); end
  def test_outputs_emissions_w145; assert_in_delta(0.0, (worksheet.outputs_emissions_w145||0), 0.002); end
  def test_outputs_emissions_x145; assert_in_delta(0.0, (worksheet.outputs_emissions_x145||0), 0.002); end
  def test_outputs_emissions_c146; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_emissions_c146); end
  def test_outputs_emissions_d146; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_emissions_d146); end
  def test_outputs_emissions_p146; assert_in_delta(0.0, (worksheet.outputs_emissions_p146||0), 0.002); end
  def test_outputs_emissions_q146; assert_in_delta(0.0, (worksheet.outputs_emissions_q146||0), 0.002); end
  def test_outputs_emissions_r146; assert_in_delta(0.0, (worksheet.outputs_emissions_r146||0), 0.002); end
  def test_outputs_emissions_s146; assert_in_delta(0.0, (worksheet.outputs_emissions_s146||0), 0.002); end
  def test_outputs_emissions_t146; assert_in_delta(0.0, (worksheet.outputs_emissions_t146||0), 0.002); end
  def test_outputs_emissions_u146; assert_in_delta(0.0, (worksheet.outputs_emissions_u146||0), 0.002); end
  def test_outputs_emissions_v146; assert_in_delta(0.0, (worksheet.outputs_emissions_v146||0), 0.002); end
  def test_outputs_emissions_w146; assert_in_delta(0.0, (worksheet.outputs_emissions_w146||0), 0.002); end
  def test_outputs_emissions_x146; assert_in_delta(0.0, (worksheet.outputs_emissions_x146||0), 0.002); end
  def test_outputs_emissions_d147; assert_equal("Total emissions from power", worksheet.outputs_emissions_d147); end
  def test_outputs_emissions_h147; assert_in_delta(0.0, (worksheet.outputs_emissions_h147||0), 0.002); end
  def test_outputs_emissions_i147; assert_in_delta(0.0, (worksheet.outputs_emissions_i147||0), 0.002); end
  def test_outputs_emissions_j147; assert_in_delta(0.0, (worksheet.outputs_emissions_j147||0), 0.002); end
  def test_outputs_emissions_k147; assert_in_delta(0.0, (worksheet.outputs_emissions_k147||0), 0.002); end
  def test_outputs_emissions_l147; assert_in_delta(0.0, (worksheet.outputs_emissions_l147||0), 0.002); end
  def test_outputs_emissions_p147; assert_in_epsilon(8288646405.2921295, worksheet.outputs_emissions_p147, 0.002); end
  def test_outputs_emissions_q147; assert_in_epsilon(8916657344.943314, worksheet.outputs_emissions_q147, 0.002); end
  def test_outputs_emissions_r147; assert_in_epsilon(8999675921.025599, worksheet.outputs_emissions_r147, 0.002); end
  def test_outputs_emissions_s147; assert_in_epsilon(9415322329.684097, worksheet.outputs_emissions_s147, 0.002); end
  def test_outputs_emissions_t147; assert_in_epsilon(8134670474.271606, worksheet.outputs_emissions_t147, 0.002); end
  def test_outputs_emissions_u147; assert_in_epsilon(7540433001.29446, worksheet.outputs_emissions_u147, 0.002); end
  def test_outputs_emissions_v147; assert_in_epsilon(5098616557.375965, worksheet.outputs_emissions_v147, 0.002); end
  def test_outputs_emissions_w147; assert_in_epsilon(4774189170.411587, worksheet.outputs_emissions_w147, 0.002); end
  def test_outputs_emissions_x147; assert_in_epsilon(2897676378.8301578, worksheet.outputs_emissions_x147, 0.002); end
  def test_outputs_emissions_c148; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c148); end
  def test_outputs_emissions_j150; assert_equal("Global Transport", worksheet.outputs_emissions_j150); end
  def test_outputs_emissions_p150; assert_in_delta(0.25, worksheet.outputs_emissions_p150, 0.002); end
  def test_outputs_emissions_c151; assert_equal("Emissions intensity", worksheet.outputs_emissions_c151); end
  def test_outputs_emissions_d151; assert_equal("Mt/TWh", worksheet.outputs_emissions_d151); end
  def test_outputs_emissions_j151; assert_equal("Global Buildings", worksheet.outputs_emissions_j151); end
  def test_outputs_emissions_p151; assert_in_delta(0.25, worksheet.outputs_emissions_p151, 0.002); end
  def test_outputs_emissions_d152; assert_equal("g/KWh", worksheet.outputs_emissions_d152); end
  def test_outputs_emissions_j152; assert_equal("Global Materials", worksheet.outputs_emissions_j152); end
  def test_outputs_emissions_p152; assert_in_delta(0.25, worksheet.outputs_emissions_p152, 0.002); end
  def test_outputs_emissions_j153; assert_equal("Global Electricity Generation and Global Fuel production", worksheet.outputs_emissions_j153); end
  def test_outputs_emissions_p153; assert_in_delta(0.25, worksheet.outputs_emissions_p153, 0.002); end
  def test_outputs_emissions_e154; assert_equal("VERY CRUDE", worksheet.outputs_emissions_e154); end
  def test_outputs_emissions_j154; assert_equal("Emissions sequestered by biofuel production", worksheet.outputs_emissions_j154); end
  def test_outputs_emissions_p154; assert_in_epsilon(3339070996.3833365, worksheet.outputs_emissions_p154, 0.002); end
  def test_outputs_emissions_q154; assert_in_epsilon(4355112925.019409, worksheet.outputs_emissions_q154, 0.002); end
  def test_outputs_emissions_r154; assert_in_epsilon(5609343660.887944, worksheet.outputs_emissions_r154, 0.002); end
  def test_outputs_emissions_s154; assert_in_epsilon(5305266089.247254, worksheet.outputs_emissions_s154, 0.002); end
  def test_outputs_emissions_t154; assert_in_epsilon(5075858975.863382, worksheet.outputs_emissions_t154, 0.002); end
  def test_outputs_emissions_u154; assert_in_epsilon(4744050792.384661, worksheet.outputs_emissions_u154, 0.002); end
  def test_outputs_emissions_v154; assert_in_epsilon(4516956789.553273, worksheet.outputs_emissions_v154, 0.002); end
  def test_outputs_emissions_w154; assert_in_epsilon(4143461140.299026, worksheet.outputs_emissions_w154, 0.002); end
  def test_outputs_emissions_x154; assert_in_epsilon(3906892740.4257636, worksheet.outputs_emissions_x154, 0.002); end
  def test_outputs_emissions_b158; assert_equal("CH4", worksheet.outputs_emissions_b158); end
  def test_outputs_emissions_d158; assert_equal("METHANE", worksheet.outputs_emissions_d158); end
  def test_outputs_emissions_c161; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c161); end
  def test_outputs_emissions_ah161; assert_equal("%", worksheet.outputs_emissions_ah161); end
  def test_outputs_emissions_h162; assert_equal("Historic actuals", worksheet.outputs_emissions_h162); end
  def test_outputs_emissions_p162; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p162); end
  def test_outputs_emissions_y162; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y162); end
  def test_outputs_emissions_d163; assert_equal("IPCC Sector", worksheet.outputs_emissions_d163); end
  def test_outputs_emissions_h163; assert_in_epsilon(1990.0, worksheet.outputs_emissions_h163, 0.002); end
  def test_outputs_emissions_i163; assert_in_epsilon(1995.0, worksheet.outputs_emissions_i163, 0.002); end
  def test_outputs_emissions_j163; assert_in_epsilon(2000.0, worksheet.outputs_emissions_j163, 0.002); end
  def test_outputs_emissions_k163; assert_in_epsilon(2005.0, worksheet.outputs_emissions_k163, 0.002); end
  def test_outputs_emissions_l163; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l163, 0.002); end
  def test_outputs_emissions_n163; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n163, 0.002); end
  def test_outputs_emissions_p163; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p163, 0.002); end
  def test_outputs_emissions_q163; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q163, 0.002); end
  def test_outputs_emissions_r163; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r163, 0.002); end
  def test_outputs_emissions_s163; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s163, 0.002); end
  def test_outputs_emissions_t163; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t163, 0.002); end
  def test_outputs_emissions_u163; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u163, 0.002); end
  def test_outputs_emissions_v163; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v163, 0.002); end
  def test_outputs_emissions_w163; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w163, 0.002); end
  def test_outputs_emissions_x163; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x163, 0.002); end
  def test_outputs_emissions_y163; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y163, 0.002); end
  def test_outputs_emissions_z163; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z163, 0.002); end
  def test_outputs_emissions_aa163; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa163, 0.002); end
  def test_outputs_emissions_ab163; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab163, 0.002); end
  def test_outputs_emissions_ac163; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac163, 0.002); end
  def test_outputs_emissions_ad163; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad163, 0.002); end
  def test_outputs_emissions_ae163; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae163, 0.002); end
  def test_outputs_emissions_af163; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af163, 0.002); end
  def test_outputs_emissions_ag163; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag163, 0.002); end
  def test_outputs_emissions_ah163; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah163, 0.002); end
  def test_outputs_emissions_c164; assert_equal("G.1A", worksheet.outputs_emissions_c164); end
  def test_outputs_emissions_d164; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d164); end
  def test_outputs_emissions_h164; assert_in_delta(1.0, worksheet.outputs_emissions_h164, 0.002); end
  def test_outputs_emissions_i164; assert_in_delta(0.9503377381095197, worksheet.outputs_emissions_i164, 0.002); end
  def test_outputs_emissions_j164; assert_in_epsilon(1.0192379778516576, worksheet.outputs_emissions_j164, 0.002); end
  def test_outputs_emissions_k164; assert_in_epsilon(1.1416882882012713, worksheet.outputs_emissions_k164, 0.002); end
  def test_outputs_emissions_l164; assert_in_epsilon(1.2531433668948542, worksheet.outputs_emissions_l164, 0.002); end
  def test_outputs_emissions_n164; assert_in_delta(0.0, (worksheet.outputs_emissions_n164||0), 0.002); end
  def test_outputs_emissions_p164; assert_in_delta(0.6750823451579225, worksheet.outputs_emissions_p164, 0.002); end
  def test_outputs_emissions_q164; assert_in_delta(0.6208956241542799, worksheet.outputs_emissions_q164, 0.002); end
  def test_outputs_emissions_r164; assert_in_delta(0.5562319057000207, worksheet.outputs_emissions_r164, 0.002); end
  def test_outputs_emissions_s164; assert_in_delta(0.565702585126966, worksheet.outputs_emissions_s164, 0.002); end
  def test_outputs_emissions_t164; assert_in_delta(0.5115289187693447, worksheet.outputs_emissions_t164, 0.002); end
  def test_outputs_emissions_u164; assert_in_delta(0.479099860491705, worksheet.outputs_emissions_u164, 0.002); end
  def test_outputs_emissions_v164; assert_in_delta(0.38623992326420503, worksheet.outputs_emissions_v164, 0.002); end
  def test_outputs_emissions_w164; assert_in_delta(0.35743960185755314, worksheet.outputs_emissions_w164, 0.002); end
  def test_outputs_emissions_x164; assert_in_delta(0.2860536494432004, worksheet.outputs_emissions_x164, 0.002); end
  def test_outputs_emissions_c165; assert_equal("G.1B", worksheet.outputs_emissions_c165); end
  def test_outputs_emissions_d165; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d165); end
  def test_outputs_emissions_h165; assert_in_delta(1.0, worksheet.outputs_emissions_h165, 0.002); end
  def test_outputs_emissions_i165; assert_in_delta(0.879890818719268, worksheet.outputs_emissions_i165, 0.002); end
  def test_outputs_emissions_j165; assert_in_delta(0.979297698254329, worksheet.outputs_emissions_j165, 0.002); end
  def test_outputs_emissions_k165; assert_in_delta(0.9690307450919389, worksheet.outputs_emissions_k165, 0.002); end
  def test_outputs_emissions_l165; assert_in_delta(0.8211983025793723, worksheet.outputs_emissions_l165, 0.002); end
  def test_outputs_emissions_n165; assert_in_delta(0.0, (worksheet.outputs_emissions_n165||0), 0.002); end
  def test_outputs_emissions_p165; assert_in_delta(0.0, (worksheet.outputs_emissions_p165||0), 0.002); end
  def test_outputs_emissions_q165; assert_in_delta(0.0, (worksheet.outputs_emissions_q165||0), 0.002); end
  def test_outputs_emissions_r165; assert_in_delta(0.0, (worksheet.outputs_emissions_r165||0), 0.002); end
  def test_outputs_emissions_s165; assert_in_delta(0.0, (worksheet.outputs_emissions_s165||0), 0.002); end
  def test_outputs_emissions_t165; assert_in_delta(0.0, (worksheet.outputs_emissions_t165||0), 0.002); end
  def test_outputs_emissions_u165; assert_in_delta(0.0, (worksheet.outputs_emissions_u165||0), 0.002); end
  def test_outputs_emissions_v165; assert_in_delta(0.0, (worksheet.outputs_emissions_v165||0), 0.002); end
  def test_outputs_emissions_w165; assert_in_delta(0.0, (worksheet.outputs_emissions_w165||0), 0.002); end
  def test_outputs_emissions_x165; assert_in_delta(0.0, (worksheet.outputs_emissions_x165||0), 0.002); end
  def test_outputs_emissions_c166; assert_equal("G.2", worksheet.outputs_emissions_c166); end
  def test_outputs_emissions_d166; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d166); end
  def test_outputs_emissions_h166; assert_equal("", worksheet.outputs_emissions_h166); end
  def test_outputs_emissions_i166; assert_equal("", worksheet.outputs_emissions_i166); end
  def test_outputs_emissions_j166; assert_equal("", worksheet.outputs_emissions_j166); end
  def test_outputs_emissions_k166; assert_equal("", worksheet.outputs_emissions_k166); end
  def test_outputs_emissions_l166; assert_equal("", worksheet.outputs_emissions_l166); end
  def test_outputs_emissions_n166; assert_equal("", worksheet.outputs_emissions_n166); end
  def test_outputs_emissions_p166; assert_equal("", worksheet.outputs_emissions_p166); end
  def test_outputs_emissions_q166; assert_equal("", worksheet.outputs_emissions_q166); end
  def test_outputs_emissions_r166; assert_equal("", worksheet.outputs_emissions_r166); end
  def test_outputs_emissions_s166; assert_equal("", worksheet.outputs_emissions_s166); end
  def test_outputs_emissions_t166; assert_equal("", worksheet.outputs_emissions_t166); end
  def test_outputs_emissions_u166; assert_equal("", worksheet.outputs_emissions_u166); end
  def test_outputs_emissions_v166; assert_equal("", worksheet.outputs_emissions_v166); end
  def test_outputs_emissions_w166; assert_equal("", worksheet.outputs_emissions_w166); end
  def test_outputs_emissions_x166; assert_equal("", worksheet.outputs_emissions_x166); end
  def test_outputs_emissions_c167; assert_equal("G.3", worksheet.outputs_emissions_c167); end
  def test_outputs_emissions_d167; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d167); end
  def test_outputs_emissions_h167; assert_in_delta(1.0, worksheet.outputs_emissions_h167, 0.002); end
  def test_outputs_emissions_i167; assert_in_delta(0.9844681018595185, worksheet.outputs_emissions_i167, 0.002); end
  def test_outputs_emissions_j167; assert_in_delta(0.9607832305620752, worksheet.outputs_emissions_j167, 0.002); end
  def test_outputs_emissions_k167; assert_in_epsilon(1.0174999221741345, worksheet.outputs_emissions_k167, 0.002); end
  def test_outputs_emissions_l167; assert_in_epsilon(1.0398531265501052, worksheet.outputs_emissions_l167, 0.002); end
  def test_outputs_emissions_n167; assert_in_delta(0.0, (worksheet.outputs_emissions_n167||0), 0.002); end
  def test_outputs_emissions_p167; assert_in_delta(0.9098739184463878, worksheet.outputs_emissions_p167, 0.002); end
  def test_outputs_emissions_q167; assert_in_epsilon(1.0023181020809828, worksheet.outputs_emissions_q167, 0.002); end
  def test_outputs_emissions_r167; assert_in_epsilon(1.0985510283722297, worksheet.outputs_emissions_r167, 0.002); end
  def test_outputs_emissions_s167; assert_in_epsilon(1.172132095271089, worksheet.outputs_emissions_s167, 0.002); end
  def test_outputs_emissions_t167; assert_in_epsilon(1.228956897072443, worksheet.outputs_emissions_t167, 0.002); end
  def test_outputs_emissions_u167; assert_in_epsilon(1.271102937304018, worksheet.outputs_emissions_u167, 0.002); end
  def test_outputs_emissions_v167; assert_in_epsilon(1.3003950732886007, worksheet.outputs_emissions_v167, 0.002); end
  def test_outputs_emissions_w167; assert_in_epsilon(1.3184400046475169, worksheet.outputs_emissions_w167, 0.002); end
  def test_outputs_emissions_x167; assert_in_epsilon(1.3266868050049156, worksheet.outputs_emissions_x167, 0.002); end
  def test_outputs_emissions_c168; assert_equal("G.4", worksheet.outputs_emissions_c168); end
  def test_outputs_emissions_d168; assert_equal("Global Agriculture", worksheet.outputs_emissions_d168); end
  def test_outputs_emissions_h168; assert_equal("", worksheet.outputs_emissions_h168); end
  def test_outputs_emissions_i168; assert_equal("", worksheet.outputs_emissions_i168); end
  def test_outputs_emissions_j168; assert_equal("", worksheet.outputs_emissions_j168); end
  def test_outputs_emissions_k168; assert_equal("", worksheet.outputs_emissions_k168); end
  def test_outputs_emissions_l168; assert_equal("", worksheet.outputs_emissions_l168); end
  def test_outputs_emissions_n168; assert_equal("", worksheet.outputs_emissions_n168); end
  def test_outputs_emissions_p168; assert_equal("", worksheet.outputs_emissions_p168); end
  def test_outputs_emissions_q168; assert_equal("", worksheet.outputs_emissions_q168); end
  def test_outputs_emissions_r168; assert_equal("", worksheet.outputs_emissions_r168); end
  def test_outputs_emissions_s168; assert_equal("", worksheet.outputs_emissions_s168); end
  def test_outputs_emissions_t168; assert_equal("", worksheet.outputs_emissions_t168); end
  def test_outputs_emissions_u168; assert_equal("", worksheet.outputs_emissions_u168); end
  def test_outputs_emissions_v168; assert_equal("", worksheet.outputs_emissions_v168); end
  def test_outputs_emissions_w168; assert_equal("", worksheet.outputs_emissions_w168); end
  def test_outputs_emissions_x168; assert_equal("", worksheet.outputs_emissions_x168); end
  def test_outputs_emissions_c169; assert_equal("G.5", worksheet.outputs_emissions_c169); end
  def test_outputs_emissions_d169; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d169); end
  def test_outputs_emissions_h169; assert_in_delta(1.0, worksheet.outputs_emissions_h169, 0.002); end
  def test_outputs_emissions_i169; assert_in_epsilon(1.069594583730273, worksheet.outputs_emissions_i169, 0.002); end
  def test_outputs_emissions_j169; assert_in_epsilon(1.132046270233498, worksheet.outputs_emissions_j169, 0.002); end
  def test_outputs_emissions_k169; assert_in_epsilon(1.2002761798927328, worksheet.outputs_emissions_k169, 0.002); end
  def test_outputs_emissions_l169; assert_in_epsilon(1.2825028183900702, worksheet.outputs_emissions_l169, 0.002); end
  def test_outputs_emissions_n169; assert_in_delta(0.0, (worksheet.outputs_emissions_n169||0), 0.002); end
  def test_outputs_emissions_p169; assert_in_delta(0.0, (worksheet.outputs_emissions_p169||0), 0.002); end
  def test_outputs_emissions_q169; assert_in_delta(0.0, (worksheet.outputs_emissions_q169||0), 0.002); end
  def test_outputs_emissions_r169; assert_in_delta(0.0, (worksheet.outputs_emissions_r169||0), 0.002); end
  def test_outputs_emissions_s169; assert_in_delta(0.0, (worksheet.outputs_emissions_s169||0), 0.002); end
  def test_outputs_emissions_t169; assert_in_delta(0.0, (worksheet.outputs_emissions_t169||0), 0.002); end
  def test_outputs_emissions_u169; assert_in_delta(0.0, (worksheet.outputs_emissions_u169||0), 0.002); end
  def test_outputs_emissions_v169; assert_in_delta(0.0, (worksheet.outputs_emissions_v169||0), 0.002); end
  def test_outputs_emissions_w169; assert_in_delta(0.0, (worksheet.outputs_emissions_w169||0), 0.002); end
  def test_outputs_emissions_x169; assert_in_delta(0.0, (worksheet.outputs_emissions_x169||0), 0.002); end
  def test_outputs_emissions_c170; assert_equal("G.6", worksheet.outputs_emissions_c170); end
  def test_outputs_emissions_d170; assert_equal("Global Waste", worksheet.outputs_emissions_d170); end
  def test_outputs_emissions_h170; assert_equal("", worksheet.outputs_emissions_h170); end
  def test_outputs_emissions_i170; assert_equal("", worksheet.outputs_emissions_i170); end
  def test_outputs_emissions_j170; assert_equal("", worksheet.outputs_emissions_j170); end
  def test_outputs_emissions_k170; assert_equal("", worksheet.outputs_emissions_k170); end
  def test_outputs_emissions_l170; assert_equal("", worksheet.outputs_emissions_l170); end
  def test_outputs_emissions_n170; assert_equal("", worksheet.outputs_emissions_n170); end
  def test_outputs_emissions_p170; assert_equal("", worksheet.outputs_emissions_p170); end
  def test_outputs_emissions_q170; assert_equal("", worksheet.outputs_emissions_q170); end
  def test_outputs_emissions_r170; assert_equal("", worksheet.outputs_emissions_r170); end
  def test_outputs_emissions_s170; assert_equal("", worksheet.outputs_emissions_s170); end
  def test_outputs_emissions_t170; assert_equal("", worksheet.outputs_emissions_t170); end
  def test_outputs_emissions_u170; assert_equal("", worksheet.outputs_emissions_u170); end
  def test_outputs_emissions_v170; assert_equal("", worksheet.outputs_emissions_v170); end
  def test_outputs_emissions_w170; assert_equal("", worksheet.outputs_emissions_w170); end
  def test_outputs_emissions_x170; assert_equal("", worksheet.outputs_emissions_x170); end
  def test_outputs_emissions_c171; assert_equal("G.7", worksheet.outputs_emissions_c171); end
  def test_outputs_emissions_d171; assert_equal("Global Other", worksheet.outputs_emissions_d171); end
  def test_outputs_emissions_h171; assert_in_delta(1.0, worksheet.outputs_emissions_h171, 0.002); end
  def test_outputs_emissions_i171; assert_in_delta(0.9898691815586533, worksheet.outputs_emissions_i171, 0.002); end
  def test_outputs_emissions_j171; assert_in_epsilon(1.0089221060408866, worksheet.outputs_emissions_j171, 0.002); end
  def test_outputs_emissions_k171; assert_in_epsilon(1.0873255048854953, worksheet.outputs_emissions_k171, 0.002); end
  def test_outputs_emissions_l171; assert_in_epsilon(1.147915693057713, worksheet.outputs_emissions_l171, 0.002); end
  def test_outputs_emissions_n171; assert_in_delta(0.0, (worksheet.outputs_emissions_n171||0), 0.002); end
  def test_outputs_emissions_p171; assert_in_delta(0.6386316370237816, worksheet.outputs_emissions_p171, 0.002); end
  def test_outputs_emissions_q171; assert_in_delta(0.667396661992723, worksheet.outputs_emissions_q171, 0.002); end
  def test_outputs_emissions_r171; assert_in_delta(0.6946605604614294, worksheet.outputs_emissions_r171, 0.002); end
  def test_outputs_emissions_s171; assert_in_delta(0.7328745882284368, worksheet.outputs_emissions_s171, 0.002); end
  def test_outputs_emissions_t171; assert_in_delta(0.7438228612910146, worksheet.outputs_emissions_t171, 0.002); end
  def test_outputs_emissions_u171; assert_in_delta(0.7546483758804354, worksheet.outputs_emissions_u171, 0.002); end
  def test_outputs_emissions_v171; assert_in_delta(0.7408574905879693, worksheet.outputs_emissions_v171, 0.002); end
  def test_outputs_emissions_w171; assert_in_delta(0.7414303950540262, worksheet.outputs_emissions_w171, 0.002); end
  def test_outputs_emissions_x171; assert_in_delta(0.7240125854212801, worksheet.outputs_emissions_x171, 0.002); end
  def test_outputs_emissions_d172; assert_equal("total", worksheet.outputs_emissions_d172); end
  def test_outputs_emissions_h172; assert_equal("", worksheet.outputs_emissions_h172); end
  def test_outputs_emissions_i172; assert_equal("", worksheet.outputs_emissions_i172); end
  def test_outputs_emissions_j172; assert_equal("", worksheet.outputs_emissions_j172); end
  def test_outputs_emissions_k172; assert_equal("", worksheet.outputs_emissions_k172); end
  def test_outputs_emissions_l172; assert_equal("", worksheet.outputs_emissions_l172); end
  def test_outputs_emissions_n172; assert_equal("", worksheet.outputs_emissions_n172); end
  def test_outputs_emissions_p172; assert_equal("", worksheet.outputs_emissions_p172); end
  def test_outputs_emissions_q172; assert_equal("", worksheet.outputs_emissions_q172); end
  def test_outputs_emissions_r172; assert_equal("", worksheet.outputs_emissions_r172); end
  def test_outputs_emissions_s172; assert_equal("", worksheet.outputs_emissions_s172); end
  def test_outputs_emissions_t172; assert_equal("", worksheet.outputs_emissions_t172); end
  def test_outputs_emissions_u172; assert_equal("", worksheet.outputs_emissions_u172); end
  def test_outputs_emissions_v172; assert_equal("", worksheet.outputs_emissions_v172); end
  def test_outputs_emissions_w172; assert_equal("", worksheet.outputs_emissions_w172); end
  def test_outputs_emissions_x172; assert_equal("", worksheet.outputs_emissions_x172); end
  def test_outputs_emissions_c175; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c175); end
  def test_outputs_emissions_ah175; assert_equal("t", worksheet.outputs_emissions_ah175); end
  def test_outputs_emissions_h176; assert_equal("Historic actuals", worksheet.outputs_emissions_h176); end
  def test_outputs_emissions_p176; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p176); end
  def test_outputs_emissions_y176; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y176); end
  def test_outputs_emissions_d177; assert_equal("IPCC Sector", worksheet.outputs_emissions_d177); end
  def test_outputs_emissions_h177; assert_equal("1990", worksheet.outputs_emissions_h177); end
  def test_outputs_emissions_i177; assert_equal("1995", worksheet.outputs_emissions_i177); end
  def test_outputs_emissions_j177; assert_equal("2000", worksheet.outputs_emissions_j177); end
  def test_outputs_emissions_k177; assert_equal("2005", worksheet.outputs_emissions_k177); end
  def test_outputs_emissions_l177; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l177, 0.002); end
  def test_outputs_emissions_n177; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n177, 0.002); end
  def test_outputs_emissions_p177; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p177, 0.002); end
  def test_outputs_emissions_q177; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q177, 0.002); end
  def test_outputs_emissions_r177; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r177, 0.002); end
  def test_outputs_emissions_s177; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s177, 0.002); end
  def test_outputs_emissions_t177; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t177, 0.002); end
  def test_outputs_emissions_u177; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u177, 0.002); end
  def test_outputs_emissions_v177; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v177, 0.002); end
  def test_outputs_emissions_w177; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w177, 0.002); end
  def test_outputs_emissions_x177; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x177, 0.002); end
  def test_outputs_emissions_y177; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y177, 0.002); end
  def test_outputs_emissions_z177; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z177, 0.002); end
  def test_outputs_emissions_aa177; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa177, 0.002); end
  def test_outputs_emissions_ab177; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab177, 0.002); end
  def test_outputs_emissions_ac177; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac177, 0.002); end
  def test_outputs_emissions_ad177; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad177, 0.002); end
  def test_outputs_emissions_ae177; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae177, 0.002); end
  def test_outputs_emissions_af177; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af177, 0.002); end
  def test_outputs_emissions_ag177; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag177, 0.002); end
  def test_outputs_emissions_ah177; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah177, 0.002); end
  def test_outputs_emissions_c178; assert_equal("G.1A", worksheet.outputs_emissions_c178); end
  def test_outputs_emissions_d178; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d178); end
  def test_outputs_emissions_h178; assert_in_epsilon(18933565.995937712, worksheet.outputs_emissions_h178, 0.002); end
  def test_outputs_emissions_i178; assert_in_epsilon(18885684.480530668, worksheet.outputs_emissions_i178, 0.002); end
  def test_outputs_emissions_j178; assert_in_epsilon(18782247.75647433, worksheet.outputs_emissions_j178, 0.002); end
  def test_outputs_emissions_k178; assert_in_epsilon(20106526.323573668, worksheet.outputs_emissions_k178, 0.002); end
  def test_outputs_emissions_l178; assert_in_epsilon(21278658.064488094, worksheet.outputs_emissions_l178, 0.002); end
  def test_outputs_emissions_p178; assert_in_epsilon(3236246.0454617464, worksheet.outputs_emissions_p178, 0.002); end
  def test_outputs_emissions_q178; assert_in_epsilon(3355006.751741983, worksheet.outputs_emissions_q178, 0.002); end
  def test_outputs_emissions_r178; assert_in_epsilon(3389575.1692013475, worksheet.outputs_emissions_r178, 0.002); end
  def test_outputs_emissions_s178; assert_in_epsilon(3527337.2933604037, worksheet.outputs_emissions_s178, 0.002); end
  def test_outputs_emissions_t178; assert_in_epsilon(3387119.037110982, worksheet.outputs_emissions_t178, 0.002); end
  def test_outputs_emissions_u178; assert_in_epsilon(3423264.463787956, worksheet.outputs_emissions_u178, 0.002); end
  def test_outputs_emissions_v178; assert_in_epsilon(3141155.344577052, worksheet.outputs_emissions_v178, 0.002); end
  def test_outputs_emissions_w178; assert_in_epsilon(3228458.4477860406, worksheet.outputs_emissions_w178, 0.002); end
  def test_outputs_emissions_x178; assert_in_epsilon(3004527.9203293915, worksheet.outputs_emissions_x178, 0.002); end
  def test_outputs_emissions_c179; assert_equal("G.1B", worksheet.outputs_emissions_c179); end
  def test_outputs_emissions_d179; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d179); end
  def test_outputs_emissions_h179; assert_in_epsilon(86099973.82354857, worksheet.outputs_emissions_h179, 0.002); end
  def test_outputs_emissions_i179; assert_in_epsilon(81824054.37476, worksheet.outputs_emissions_i179, 0.002); end
  def test_outputs_emissions_j179; assert_in_epsilon(87756363.21299429, worksheet.outputs_emissions_j179, 0.002); end
  def test_outputs_emissions_k179; assert_in_epsilon(98299331.72878143, worksheet.outputs_emissions_k179, 0.002); end
  def test_outputs_emissions_l179; assert_in_epsilon(107895611.08680047, worksheet.outputs_emissions_l179, 0.002); end
  def test_outputs_emissions_p179; assert_in_epsilon(58124572.246836916, worksheet.outputs_emissions_p179, 0.002); end
  def test_outputs_emissions_q179; assert_in_epsilon(53459096.986839354, worksheet.outputs_emissions_q179, 0.002); end
  def test_outputs_emissions_r179; assert_in_epsilon(47891552.520594314, worksheet.outputs_emissions_r179, 0.002); end
  def test_outputs_emissions_s179; assert_in_epsilon(48706977.77134553, worksheet.outputs_emissions_s179, 0.002); end
  def test_outputs_emissions_t179; assert_in_epsilon(44042626.51602868, worksheet.outputs_emissions_t179, 0.002); end
  def test_outputs_emissions_u179; assert_in_epsilon(41250485.44720157, worksheet.outputs_emissions_u179, 0.002); end
  def test_outputs_emissions_v179; assert_in_epsilon(33255247.282657463, worksheet.outputs_emissions_v179, 0.002); end
  def test_outputs_emissions_w179; assert_in_epsilon(30775540.363434948, worksheet.outputs_emissions_w179, 0.002); end
  def test_outputs_emissions_x179; assert_in_epsilon(24629211.729190093, worksheet.outputs_emissions_x179, 0.002); end
  def test_outputs_emissions_c180; assert_equal("G.2", worksheet.outputs_emissions_c180); end
  def test_outputs_emissions_d180; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d180); end
  def test_outputs_emissions_h180; assert_in_epsilon(366609.03004181094, worksheet.outputs_emissions_h180, 0.002); end
  def test_outputs_emissions_i180; assert_in_epsilon(322575.91959336575, worksheet.outputs_emissions_i180, 0.002); end
  def test_outputs_emissions_j180; assert_in_epsilon(359019.3792791976, worksheet.outputs_emissions_j180, 0.002); end
  def test_outputs_emissions_k180; assert_in_epsilon(355255.42153884907, worksheet.outputs_emissions_k180, 0.002); end
  def test_outputs_emissions_l180; assert_in_epsilon(301058.71318060526, worksheet.outputs_emissions_l180, 0.002); end
  def test_outputs_emissions_p180; assert_in_delta(0.0, (worksheet.outputs_emissions_p180||0), 0.002); end
  def test_outputs_emissions_q180; assert_in_delta(0.0, (worksheet.outputs_emissions_q180||0), 0.002); end
  def test_outputs_emissions_r180; assert_in_delta(0.0, (worksheet.outputs_emissions_r180||0), 0.002); end
  def test_outputs_emissions_s180; assert_in_delta(0.0, (worksheet.outputs_emissions_s180||0), 0.002); end
  def test_outputs_emissions_t180; assert_in_delta(0.0, (worksheet.outputs_emissions_t180||0), 0.002); end
  def test_outputs_emissions_u180; assert_in_delta(0.0, (worksheet.outputs_emissions_u180||0), 0.002); end
  def test_outputs_emissions_v180; assert_in_delta(0.0, (worksheet.outputs_emissions_v180||0), 0.002); end
  def test_outputs_emissions_w180; assert_in_delta(0.0, (worksheet.outputs_emissions_w180||0), 0.002); end
  def test_outputs_emissions_x180; assert_in_delta(0.0, (worksheet.outputs_emissions_x180||0), 0.002); end
  def test_outputs_emissions_c181; assert_equal("G.3", worksheet.outputs_emissions_c181); end
  def test_outputs_emissions_d181; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d181); end
  def test_outputs_emissions_h181; assert_in_delta(0.0, (worksheet.outputs_emissions_h181||0), 0.002); end
  def test_outputs_emissions_i181; assert_in_delta(0.0, (worksheet.outputs_emissions_i181||0), 0.002); end
  def test_outputs_emissions_j181; assert_in_delta(0.0, (worksheet.outputs_emissions_j181||0), 0.002); end
  def test_outputs_emissions_k181; assert_in_delta(0.0, (worksheet.outputs_emissions_k181||0), 0.002); end
  def test_outputs_emissions_l181; assert_in_delta(0.0, (worksheet.outputs_emissions_l181||0), 0.002); end
  def test_outputs_emissions_p181; assert_in_delta(0.0, (worksheet.outputs_emissions_p181||0), 0.002); end
  def test_outputs_emissions_q181; assert_in_delta(0.0, (worksheet.outputs_emissions_q181||0), 0.002); end
  def test_outputs_emissions_r181; assert_in_delta(0.0, (worksheet.outputs_emissions_r181||0), 0.002); end
  def test_outputs_emissions_s181; assert_in_delta(0.0, (worksheet.outputs_emissions_s181||0), 0.002); end
  def test_outputs_emissions_t181; assert_in_delta(0.0, (worksheet.outputs_emissions_t181||0), 0.002); end
  def test_outputs_emissions_u181; assert_in_delta(0.0, (worksheet.outputs_emissions_u181||0), 0.002); end
  def test_outputs_emissions_v181; assert_in_delta(0.0, (worksheet.outputs_emissions_v181||0), 0.002); end
  def test_outputs_emissions_w181; assert_in_delta(0.0, (worksheet.outputs_emissions_w181||0), 0.002); end
  def test_outputs_emissions_x181; assert_in_delta(0.0, (worksheet.outputs_emissions_x181||0), 0.002); end
  def test_outputs_emissions_c182; assert_equal("G.4", worksheet.outputs_emissions_c182); end
  def test_outputs_emissions_d182; assert_equal("Global Agriculture", worksheet.outputs_emissions_d182); end
  def test_outputs_emissions_h182; assert_in_epsilon(142056532.4371805, worksheet.outputs_emissions_h182, 0.002); end
  def test_outputs_emissions_i182; assert_in_epsilon(139850124.8451762, worksheet.outputs_emissions_i182, 0.002); end
  def test_outputs_emissions_j182; assert_in_epsilon(136485534.15744048, worksheet.outputs_emissions_j182, 0.002); end
  def test_outputs_emissions_k182; assert_in_epsilon(144542510.69915858, worksheet.outputs_emissions_k182, 0.002); end
  def test_outputs_emissions_l182; assert_in_epsilon(147717929.40166858, worksheet.outputs_emissions_l182, 0.002); end
  def test_outputs_emissions_p182; assert_in_epsilon(129253533.80952379, worksheet.outputs_emissions_p182, 0.002); end
  def test_outputs_emissions_q182; assert_in_epsilon(142385833.98064032, worksheet.outputs_emissions_q182, 0.002); end
  def test_outputs_emissions_r182; assert_in_epsilon(156056349.79585764, worksheet.outputs_emissions_r182, 0.002); end
  def test_outputs_emissions_s182; assert_in_epsilon(166509021.01253778, worksheet.outputs_emissions_s182, 0.002); end
  def test_outputs_emissions_t182; assert_in_epsilon(174581355.31286818, worksheet.outputs_emissions_t182, 0.002); end
  def test_outputs_emissions_u182; assert_in_epsilon(180568475.6441236, worksheet.outputs_emissions_u182, 0.002); end
  def test_outputs_emissions_v182; assert_in_epsilon(184729614.9097718, worksheet.outputs_emissions_v182, 0.002); end
  def test_outputs_emissions_w182; assert_in_epsilon(187293015.2866864, worksheet.outputs_emissions_w182, 0.002); end
  def test_outputs_emissions_x182; assert_in_epsilon(188464527.14916015, worksheet.outputs_emissions_x182, 0.002); end
  def test_outputs_emissions_c183; assert_equal("G.5", worksheet.outputs_emissions_c183); end
  def test_outputs_emissions_d183; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d183); end
  def test_outputs_emissions_h183; assert_in_delta(0.0, (worksheet.outputs_emissions_h183||0), 0.002); end
  def test_outputs_emissions_i183; assert_in_delta(0.0, (worksheet.outputs_emissions_i183||0), 0.002); end
  def test_outputs_emissions_j183; assert_in_delta(0.0, (worksheet.outputs_emissions_j183||0), 0.002); end
  def test_outputs_emissions_k183; assert_in_delta(0.0, (worksheet.outputs_emissions_k183||0), 0.002); end
  def test_outputs_emissions_l183; assert_in_delta(0.0, (worksheet.outputs_emissions_l183||0), 0.002); end
  def test_outputs_emissions_p183; assert_in_delta(0.0, (worksheet.outputs_emissions_p183||0), 0.002); end
  def test_outputs_emissions_q183; assert_in_delta(0.0, (worksheet.outputs_emissions_q183||0), 0.002); end
  def test_outputs_emissions_r183; assert_in_delta(0.0, (worksheet.outputs_emissions_r183||0), 0.002); end
  def test_outputs_emissions_s183; assert_in_delta(0.0, (worksheet.outputs_emissions_s183||0), 0.002); end
  def test_outputs_emissions_t183; assert_in_delta(0.0, (worksheet.outputs_emissions_t183||0), 0.002); end
  def test_outputs_emissions_u183; assert_in_delta(0.0, (worksheet.outputs_emissions_u183||0), 0.002); end
  def test_outputs_emissions_v183; assert_in_delta(0.0, (worksheet.outputs_emissions_v183||0), 0.002); end
  def test_outputs_emissions_w183; assert_in_delta(0.0, (worksheet.outputs_emissions_w183||0), 0.002); end
  def test_outputs_emissions_x183; assert_in_delta(0.0, (worksheet.outputs_emissions_x183||0), 0.002); end
  def test_outputs_emissions_c184; assert_equal("G.6", worksheet.outputs_emissions_c184); end
  def test_outputs_emissions_d184; assert_equal("Global Waste", worksheet.outputs_emissions_d184); end
  def test_outputs_emissions_h184; assert_in_epsilon(51016399.3613838, worksheet.outputs_emissions_h184, 0.002); end
  def test_outputs_emissions_i184; assert_in_epsilon(54566864.43835667, worksheet.outputs_emissions_i184, 0.002); end
  def test_outputs_emissions_j184; assert_in_epsilon(57752924.617797144, worksheet.outputs_emissions_j184, 0.002); end
  def test_outputs_emissions_k184; assert_in_epsilon(61233768.9373638, worksheet.outputs_emissions_k184, 0.002); end
  def test_outputs_emissions_l184; assert_in_epsilon(65428675.9650881, worksheet.outputs_emissions_l184, 0.002); end
  def test_outputs_emissions_p184; assert_in_delta(0.0, (worksheet.outputs_emissions_p184||0), 0.002); end
  def test_outputs_emissions_q184; assert_in_delta(0.0, (worksheet.outputs_emissions_q184||0), 0.002); end
  def test_outputs_emissions_r184; assert_in_delta(0.0, (worksheet.outputs_emissions_r184||0), 0.002); end
  def test_outputs_emissions_s184; assert_in_delta(0.0, (worksheet.outputs_emissions_s184||0), 0.002); end
  def test_outputs_emissions_t184; assert_in_delta(0.0, (worksheet.outputs_emissions_t184||0), 0.002); end
  def test_outputs_emissions_u184; assert_in_delta(0.0, (worksheet.outputs_emissions_u184||0), 0.002); end
  def test_outputs_emissions_v184; assert_in_delta(0.0, (worksheet.outputs_emissions_v184||0), 0.002); end
  def test_outputs_emissions_w184; assert_in_delta(0.0, (worksheet.outputs_emissions_w184||0), 0.002); end
  def test_outputs_emissions_x184; assert_in_delta(0.0, (worksheet.outputs_emissions_x184||0), 0.002); end
  def test_outputs_emissions_c185; assert_equal("G.7", worksheet.outputs_emissions_c185); end
  def test_outputs_emissions_d185; assert_equal("Global Other", worksheet.outputs_emissions_d185); end
  def test_outputs_emissions_h185; assert_in_delta(0.0, (worksheet.outputs_emissions_h185||0), 0.002); end
  def test_outputs_emissions_i185; assert_in_delta(0.0, (worksheet.outputs_emissions_i185||0), 0.002); end
  def test_outputs_emissions_j185; assert_in_delta(0.0, (worksheet.outputs_emissions_j185||0), 0.002); end
  def test_outputs_emissions_k185; assert_in_delta(0.0, (worksheet.outputs_emissions_k185||0), 0.002); end
  def test_outputs_emissions_l185; assert_in_delta(0.0, (worksheet.outputs_emissions_l185||0), 0.002); end
  def test_outputs_emissions_p185; assert_in_delta(0.0, (worksheet.outputs_emissions_p185||0), 0.002); end
  def test_outputs_emissions_q185; assert_in_delta(0.0, (worksheet.outputs_emissions_q185||0), 0.002); end
  def test_outputs_emissions_r185; assert_in_delta(0.0, (worksheet.outputs_emissions_r185||0), 0.002); end
  def test_outputs_emissions_s185; assert_in_delta(0.0, (worksheet.outputs_emissions_s185||0), 0.002); end
  def test_outputs_emissions_t185; assert_in_delta(0.0, (worksheet.outputs_emissions_t185||0), 0.002); end
  def test_outputs_emissions_u185; assert_in_delta(0.0, (worksheet.outputs_emissions_u185||0), 0.002); end
  def test_outputs_emissions_v185; assert_in_delta(0.0, (worksheet.outputs_emissions_v185||0), 0.002); end
  def test_outputs_emissions_w185; assert_in_delta(0.0, (worksheet.outputs_emissions_w185||0), 0.002); end
  def test_outputs_emissions_x185; assert_in_delta(0.0, (worksheet.outputs_emissions_x185||0), 0.002); end
  def test_outputs_emissions_d186; assert_equal("total", worksheet.outputs_emissions_d186); end
  def test_outputs_emissions_h186; assert_in_epsilon(298473080.6480924, worksheet.outputs_emissions_h186, 0.002); end
  def test_outputs_emissions_i186; assert_in_epsilon(295449304.05841714, worksheet.outputs_emissions_i186, 0.002); end
  def test_outputs_emissions_j186; assert_in_epsilon(301136089.12398475, worksheet.outputs_emissions_j186, 0.002); end
  def test_outputs_emissions_k186; assert_in_epsilon(324537393.11041623, worksheet.outputs_emissions_k186, 0.002); end
  def test_outputs_emissions_l186; assert_in_epsilon(342621933.23122567, worksheet.outputs_emissions_l186, 0.002); end
  def test_outputs_emissions_p186; assert_in_epsilon(190614352.10182244, worksheet.outputs_emissions_p186, 0.002); end
  def test_outputs_emissions_q186; assert_in_epsilon(199199937.71922165, worksheet.outputs_emissions_q186, 0.002); end
  def test_outputs_emissions_r186; assert_in_epsilon(207337477.48565328, worksheet.outputs_emissions_r186, 0.002); end
  def test_outputs_emissions_s186; assert_in_epsilon(218743336.07724372, worksheet.outputs_emissions_s186, 0.002); end
  def test_outputs_emissions_t186; assert_in_epsilon(222011100.86600783, worksheet.outputs_emissions_t186, 0.002); end
  def test_outputs_emissions_u186; assert_in_epsilon(225242225.55511314, worksheet.outputs_emissions_u186, 0.002); end
  def test_outputs_emissions_v186; assert_in_epsilon(221126017.53700632, worksheet.outputs_emissions_v186, 0.002); end
  def test_outputs_emissions_w186; assert_in_epsilon(221297014.09790736, worksheet.outputs_emissions_w186, 0.002); end
  def test_outputs_emissions_x186; assert_in_epsilon(216098266.79867962, worksheet.outputs_emissions_x186, 0.002); end
  def test_outputs_emissions_c187; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c187); end
  def test_outputs_emissions_d187; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d187); end
  def test_outputs_emissions_p187; assert_in_epsilon(190614352.10182244, worksheet.outputs_emissions_p187, 0.002); end
  def test_outputs_emissions_q187; assert_in_epsilon(389814289.8210441, worksheet.outputs_emissions_q187, 0.002); end
  def test_outputs_emissions_r187; assert_in_epsilon(597151767.3066974, worksheet.outputs_emissions_r187, 0.002); end
  def test_outputs_emissions_s187; assert_in_epsilon(815895103.383941, worksheet.outputs_emissions_s187, 0.002); end
  def test_outputs_emissions_t187; assert_in_epsilon(1037906204.2499489, worksheet.outputs_emissions_t187, 0.002); end
  def test_outputs_emissions_u187; assert_in_epsilon(1263148429.805062, worksheet.outputs_emissions_u187, 0.002); end
  def test_outputs_emissions_v187; assert_in_epsilon(1484274447.3420684, worksheet.outputs_emissions_v187, 0.002); end
  def test_outputs_emissions_w187; assert_in_epsilon(1705571461.4399757, worksheet.outputs_emissions_w187, 0.002); end
  def test_outputs_emissions_x187; assert_in_epsilon(1921669728.2386553, worksheet.outputs_emissions_x187, 0.002); end
  def test_outputs_emissions_c189; assert_equal("G.X2.A", worksheet.outputs_emissions_c189); end
  def test_outputs_emissions_d189; assert_equal("Global Carbon capture combustion", worksheet.outputs_emissions_d189); end
  def test_outputs_emissions_p189; assert_in_delta(0.0, (worksheet.outputs_emissions_p189||0), 0.002); end
  def test_outputs_emissions_q189; assert_in_delta(0.0, (worksheet.outputs_emissions_q189||0), 0.002); end
  def test_outputs_emissions_r189; assert_in_delta(0.0, (worksheet.outputs_emissions_r189||0), 0.002); end
  def test_outputs_emissions_s189; assert_in_delta(0.0, (worksheet.outputs_emissions_s189||0), 0.002); end
  def test_outputs_emissions_t189; assert_in_delta(0.0, (worksheet.outputs_emissions_t189||0), 0.002); end
  def test_outputs_emissions_u189; assert_in_delta(0.0, (worksheet.outputs_emissions_u189||0), 0.002); end
  def test_outputs_emissions_v189; assert_in_delta(0.0, (worksheet.outputs_emissions_v189||0), 0.002); end
  def test_outputs_emissions_w189; assert_in_delta(0.0, (worksheet.outputs_emissions_w189||0), 0.002); end
  def test_outputs_emissions_x189; assert_in_delta(0.0, (worksheet.outputs_emissions_x189||0), 0.002); end
  def test_outputs_emissions_c190; assert_equal("G.X2.B", worksheet.outputs_emissions_c190); end
  def test_outputs_emissions_d190; assert_equal("Global Carbon capture industrial process", worksheet.outputs_emissions_d190); end
  def test_outputs_emissions_p190; assert_in_delta(0.0, (worksheet.outputs_emissions_p190||0), 0.002); end
  def test_outputs_emissions_q190; assert_in_delta(0.0, (worksheet.outputs_emissions_q190||0), 0.002); end
  def test_outputs_emissions_r190; assert_in_delta(0.0, (worksheet.outputs_emissions_r190||0), 0.002); end
  def test_outputs_emissions_s190; assert_in_delta(0.0, (worksheet.outputs_emissions_s190||0), 0.002); end
  def test_outputs_emissions_t190; assert_in_delta(0.0, (worksheet.outputs_emissions_t190||0), 0.002); end
  def test_outputs_emissions_u190; assert_in_delta(0.0, (worksheet.outputs_emissions_u190||0), 0.002); end
  def test_outputs_emissions_v190; assert_in_delta(0.0, (worksheet.outputs_emissions_v190||0), 0.002); end
  def test_outputs_emissions_w190; assert_in_delta(0.0, (worksheet.outputs_emissions_w190||0), 0.002); end
  def test_outputs_emissions_x190; assert_in_delta(0.0, (worksheet.outputs_emissions_x190||0), 0.002); end
  def test_outputs_emissions_c191; assert_equal("G.X2.C", worksheet.outputs_emissions_c191); end
  def test_outputs_emissions_d191; assert_equal("Global Carbon capture from air", worksheet.outputs_emissions_d191); end
  def test_outputs_emissions_p191; assert_in_delta(0.0, (worksheet.outputs_emissions_p191||0), 0.002); end
  def test_outputs_emissions_q191; assert_in_delta(0.0, (worksheet.outputs_emissions_q191||0), 0.002); end
  def test_outputs_emissions_r191; assert_in_delta(0.0, (worksheet.outputs_emissions_r191||0), 0.002); end
  def test_outputs_emissions_s191; assert_in_delta(0.0, (worksheet.outputs_emissions_s191||0), 0.002); end
  def test_outputs_emissions_t191; assert_in_delta(0.0, (worksheet.outputs_emissions_t191||0), 0.002); end
  def test_outputs_emissions_u191; assert_in_delta(0.0, (worksheet.outputs_emissions_u191||0), 0.002); end
  def test_outputs_emissions_v191; assert_in_delta(0.0, (worksheet.outputs_emissions_v191||0), 0.002); end
  def test_outputs_emissions_w191; assert_in_delta(0.0, (worksheet.outputs_emissions_w191||0), 0.002); end
  def test_outputs_emissions_x191; assert_in_delta(0.0, (worksheet.outputs_emissions_x191||0), 0.002); end
  def test_outputs_emissions_c193; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c193); end
  def test_outputs_emissions_ah193; assert_equal("t", worksheet.outputs_emissions_ah193); end
  def test_outputs_emissions_h194; assert_equal("Historic actuals", worksheet.outputs_emissions_h194); end
  def test_outputs_emissions_p194; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p194); end
  def test_outputs_emissions_y194; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y194); end
  def test_outputs_emissions_c195; assert_equal("Emissions by sector", worksheet.outputs_emissions_c195); end
  def test_outputs_emissions_d195; assert_equal("Calculator Sector", worksheet.outputs_emissions_d195); end
  def test_outputs_emissions_h195; assert_equal("1990", worksheet.outputs_emissions_h195); end
  def test_outputs_emissions_i195; assert_equal("1995", worksheet.outputs_emissions_i195); end
  def test_outputs_emissions_j195; assert_equal("2000", worksheet.outputs_emissions_j195); end
  def test_outputs_emissions_k195; assert_equal("2005", worksheet.outputs_emissions_k195); end
  def test_outputs_emissions_l195; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l195, 0.002); end
  def test_outputs_emissions_n195; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n195, 0.002); end
  def test_outputs_emissions_p195; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p195, 0.002); end
  def test_outputs_emissions_q195; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q195, 0.002); end
  def test_outputs_emissions_r195; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r195, 0.002); end
  def test_outputs_emissions_s195; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s195, 0.002); end
  def test_outputs_emissions_t195; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t195, 0.002); end
  def test_outputs_emissions_u195; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u195, 0.002); end
  def test_outputs_emissions_v195; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v195, 0.002); end
  def test_outputs_emissions_w195; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w195, 0.002); end
  def test_outputs_emissions_x195; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x195, 0.002); end
  def test_outputs_emissions_y195; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y195, 0.002); end
  def test_outputs_emissions_z195; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z195, 0.002); end
  def test_outputs_emissions_aa195; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa195, 0.002); end
  def test_outputs_emissions_ab195; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab195, 0.002); end
  def test_outputs_emissions_ac195; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac195, 0.002); end
  def test_outputs_emissions_ad195; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad195, 0.002); end
  def test_outputs_emissions_ae195; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae195, 0.002); end
  def test_outputs_emissions_af195; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af195, 0.002); end
  def test_outputs_emissions_ag195; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag195, 0.002); end
  def test_outputs_emissions_ah195; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah195, 0.002); end
  def test_outputs_emissions_c196; assert_equal("G.10", worksheet.outputs_emissions_c196); end
  def test_outputs_emissions_d196; assert_equal("Global Transport", worksheet.outputs_emissions_d196); end
  def test_outputs_emissions_h196; assert_in_delta(0.0, (worksheet.outputs_emissions_h196||0), 0.002); end
  def test_outputs_emissions_i196; assert_in_delta(0.0, (worksheet.outputs_emissions_i196||0), 0.002); end
  def test_outputs_emissions_j196; assert_in_delta(0.0, (worksheet.outputs_emissions_j196||0), 0.002); end
  def test_outputs_emissions_k196; assert_in_delta(0.0, (worksheet.outputs_emissions_k196||0), 0.002); end
  def test_outputs_emissions_l196; assert_in_delta(0.0, (worksheet.outputs_emissions_l196||0), 0.002); end
  def test_outputs_emissions_p196; assert_in_epsilon(215421.33885330684, worksheet.outputs_emissions_p196, 0.002); end
  def test_outputs_emissions_q196; assert_in_epsilon(263391.0812415164, worksheet.outputs_emissions_q196, 0.002); end
  def test_outputs_emissions_r196; assert_in_epsilon(263391.0812415164, worksheet.outputs_emissions_r196, 0.002); end
  def test_outputs_emissions_s196; assert_in_epsilon(341788.75086885097, worksheet.outputs_emissions_s196, 0.002); end
  def test_outputs_emissions_t196; assert_in_epsilon(341788.75086885097, worksheet.outputs_emissions_t196, 0.002); end
  def test_outputs_emissions_u196; assert_in_epsilon(443031.48530691944, worksheet.outputs_emissions_u196, 0.002); end
  def test_outputs_emissions_v196; assert_in_epsilon(443031.48530691944, worksheet.outputs_emissions_v196, 0.002); end
  def test_outputs_emissions_w196; assert_in_epsilon(573726.1662530524, worksheet.outputs_emissions_w196, 0.002); end
  def test_outputs_emissions_x196; assert_in_epsilon(573726.1662530524, worksheet.outputs_emissions_x196, 0.002); end
  def test_outputs_emissions_c197; assert_equal("G.20", worksheet.outputs_emissions_c197); end
  def test_outputs_emissions_d197; assert_equal("Global Buildings", worksheet.outputs_emissions_d197); end
  def test_outputs_emissions_h197; assert_in_epsilon(18933565.995937712, worksheet.outputs_emissions_h197, 0.002); end
  def test_outputs_emissions_i197; assert_in_epsilon(18885684.480530668, worksheet.outputs_emissions_i197, 0.002); end
  def test_outputs_emissions_j197; assert_in_epsilon(18782247.75647433, worksheet.outputs_emissions_j197, 0.002); end
  def test_outputs_emissions_k197; assert_in_epsilon(20106526.323573668, worksheet.outputs_emissions_k197, 0.002); end
  def test_outputs_emissions_l197; assert_in_epsilon(21278658.064488094, worksheet.outputs_emissions_l197, 0.002); end
  def test_outputs_emissions_p197; assert_in_epsilon(854130.9103326736, worksheet.outputs_emissions_p197, 0.002); end
  def test_outputs_emissions_q197; assert_in_epsilon(874540.018132409, worksheet.outputs_emissions_q197, 0.002); end
  def test_outputs_emissions_r197; assert_in_epsilon(896990.992314428, worksheet.outputs_emissions_r197, 0.002); end
  def test_outputs_emissions_s197; assert_in_epsilon(903374.11468626, worksheet.outputs_emissions_s197, 0.002); end
  def test_outputs_emissions_t197; assert_in_epsilon(928227.2335735868, worksheet.outputs_emissions_t197, 0.002); end
  def test_outputs_emissions_u197; assert_in_epsilon(943903.9113653383, worksheet.outputs_emissions_u197, 0.002); end
  def test_outputs_emissions_v197; assert_in_epsilon(963362.9941385139, worksheet.outputs_emissions_v197, 0.002); end
  def test_outputs_emissions_w197; assert_in_epsilon(973817.0124419823, worksheet.outputs_emissions_w197, 0.002); end
  def test_outputs_emissions_x197; assert_in_epsilon(973591.110772096, worksheet.outputs_emissions_x197, 0.002); end
  def test_outputs_emissions_c198; assert_equal("G.30", worksheet.outputs_emissions_c198); end
  def test_outputs_emissions_d198; assert_equal("Global Materials", worksheet.outputs_emissions_d198); end
  def test_outputs_emissions_h198; assert_in_epsilon(366609.03004181094, worksheet.outputs_emissions_h198, 0.002); end
  def test_outputs_emissions_i198; assert_in_epsilon(322575.91959336575, worksheet.outputs_emissions_i198, 0.002); end
  def test_outputs_emissions_j198; assert_in_epsilon(359019.3792791976, worksheet.outputs_emissions_j198, 0.002); end
  def test_outputs_emissions_k198; assert_in_epsilon(355255.42153884907, worksheet.outputs_emissions_k198, 0.002); end
  def test_outputs_emissions_l198; assert_in_epsilon(301058.71318060526, worksheet.outputs_emissions_l198, 0.002); end
  def test_outputs_emissions_p198; assert_in_epsilon(1124392.896208441, worksheet.outputs_emissions_p198, 0.002); end
  def test_outputs_emissions_q198; assert_in_epsilon(1125854.5949576185, worksheet.outputs_emissions_q198, 0.002); end
  def test_outputs_emissions_r198; assert_in_epsilon(1127394.171361242, worksheet.outputs_emissions_r198, 0.002); end
  def test_outputs_emissions_s198; assert_in_epsilon(1128614.2510617021, worksheet.outputs_emissions_s198, 0.002); end
  def test_outputs_emissions_t198; assert_in_epsilon(1129514.8340589977, worksheet.outputs_emissions_t198, 0.002); end
  def test_outputs_emissions_u198; assert_in_epsilon(1130095.9203531297, worksheet.outputs_emissions_u198, 0.002); end
  def test_outputs_emissions_v198; assert_in_epsilon(1130357.5099440978, worksheet.outputs_emissions_v198, 0.002); end
  def test_outputs_emissions_w198; assert_in_epsilon(1130299.6028319013, worksheet.outputs_emissions_w198, 0.002); end
  def test_outputs_emissions_x198; assert_in_epsilon(1129922.199016541, worksheet.outputs_emissions_x198, 0.002); end
  def test_outputs_emissions_c199; assert_equal("G.40", worksheet.outputs_emissions_c199); end
  def test_outputs_emissions_d199; assert_equal("Global Electricity Generation and Global Fuel production", worksheet.outputs_emissions_d199); end
  def test_outputs_emissions_e199; assert_equal("Global Electricity Generation", worksheet.outputs_emissions_e199); end
  def test_outputs_emissions_h199; assert_in_epsilon(86099973.82354857, worksheet.outputs_emissions_h199, 0.002); end
  def test_outputs_emissions_i199; assert_in_epsilon(81824054.37476, worksheet.outputs_emissions_i199, 0.002); end
  def test_outputs_emissions_j199; assert_in_epsilon(87756363.21299429, worksheet.outputs_emissions_j199, 0.002); end
  def test_outputs_emissions_k199; assert_in_epsilon(98299331.72878143, worksheet.outputs_emissions_k199, 0.002); end
  def test_outputs_emissions_l199; assert_in_epsilon(107895611.08680047, worksheet.outputs_emissions_l199, 0.002); end
  def test_outputs_emissions_p199; assert_in_epsilon(59166873.14690424, worksheet.outputs_emissions_p199, 0.002); end
  def test_outputs_emissions_q199; assert_in_epsilon(54550318.044249795, worksheet.outputs_emissions_q199, 0.002); end
  def test_outputs_emissions_r199; assert_in_epsilon(48993351.444878474, worksheet.outputs_emissions_r199, 0.002); end
  def test_outputs_emissions_s199; assert_in_epsilon(49860537.94808912, worksheet.outputs_emissions_s199, 0.002); end
  def test_outputs_emissions_t199; assert_in_epsilon(45030214.73463823, worksheet.outputs_emissions_t199, 0.002); end
  def test_outputs_emissions_u199; assert_in_epsilon(42156718.593964145, worksheet.outputs_emissions_u199, 0.002); end
  def test_outputs_emissions_v199; assert_in_epsilon(33859650.63784499, worksheet.outputs_emissions_v199, 0.002); end
  def test_outputs_emissions_w199; assert_in_epsilon(31326156.02969405, worksheet.outputs_emissions_w199, 0.002); end
  def test_outputs_emissions_x199; assert_in_epsilon(24956500.173477795, worksheet.outputs_emissions_x199, 0.002); end
  def test_outputs_emissions_c200; assert_equal("G.60", worksheet.outputs_emissions_c200); end
  def test_outputs_emissions_d200; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d200); end
  def test_outputs_emissions_h200; assert_in_epsilon(193072931.79856429, worksheet.outputs_emissions_h200, 0.002); end
  def test_outputs_emissions_i200; assert_in_epsilon(194416989.28353286, worksheet.outputs_emissions_i200, 0.002); end
  def test_outputs_emissions_j200; assert_in_epsilon(194238458.77523762, worksheet.outputs_emissions_j200, 0.002); end
  def test_outputs_emissions_k200; assert_in_epsilon(205776279.63652238, worksheet.outputs_emissions_k200, 0.002); end
  def test_outputs_emissions_l200; assert_in_epsilon(213146605.36675668, worksheet.outputs_emissions_l200, 0.002); end
  def test_outputs_emissions_p200; assert_in_epsilon(129253533.80952379, worksheet.outputs_emissions_p200, 0.002); end
  def test_outputs_emissions_q200; assert_in_epsilon(142385833.98064032, worksheet.outputs_emissions_q200, 0.002); end
  def test_outputs_emissions_r200; assert_in_epsilon(156056349.79585764, worksheet.outputs_emissions_r200, 0.002); end
  def test_outputs_emissions_s200; assert_in_epsilon(166509021.01253778, worksheet.outputs_emissions_s200, 0.002); end
  def test_outputs_emissions_t200; assert_in_epsilon(174581355.31286818, worksheet.outputs_emissions_t200, 0.002); end
  def test_outputs_emissions_u200; assert_in_epsilon(180568475.6441236, worksheet.outputs_emissions_u200, 0.002); end
  def test_outputs_emissions_v200; assert_in_epsilon(184729614.9097718, worksheet.outputs_emissions_v200, 0.002); end
  def test_outputs_emissions_w200; assert_in_epsilon(187293015.2866864, worksheet.outputs_emissions_w200, 0.002); end
  def test_outputs_emissions_x200; assert_in_epsilon(188464527.14916015, worksheet.outputs_emissions_x200, 0.002); end
  def test_outputs_emissions_d201; assert_equal("total", worksheet.outputs_emissions_d201); end
  def test_outputs_emissions_h201; assert_in_epsilon(298473080.6480924, worksheet.outputs_emissions_h201, 0.002); end
  def test_outputs_emissions_i201; assert_in_epsilon(295449304.05841714, worksheet.outputs_emissions_i201, 0.002); end
  def test_outputs_emissions_j201; assert_in_epsilon(301136089.12398475, worksheet.outputs_emissions_j201, 0.002); end
  def test_outputs_emissions_k201; assert_in_epsilon(324537393.11041623, worksheet.outputs_emissions_k201, 0.002); end
  def test_outputs_emissions_l201; assert_in_epsilon(342621933.23122567, worksheet.outputs_emissions_l201, 0.002); end
  def test_outputs_emissions_p201; assert_in_epsilon(190614352.10182244, worksheet.outputs_emissions_p201, 0.002); end
  def test_outputs_emissions_q201; assert_in_epsilon(199199937.71922165, worksheet.outputs_emissions_q201, 0.002); end
  def test_outputs_emissions_r201; assert_in_epsilon(207337477.48565328, worksheet.outputs_emissions_r201, 0.002); end
  def test_outputs_emissions_s201; assert_in_epsilon(218743336.07724372, worksheet.outputs_emissions_s201, 0.002); end
  def test_outputs_emissions_t201; assert_in_epsilon(222011100.86600783, worksheet.outputs_emissions_t201, 0.002); end
  def test_outputs_emissions_u201; assert_in_epsilon(225242225.55511314, worksheet.outputs_emissions_u201, 0.002); end
  def test_outputs_emissions_v201; assert_in_epsilon(221126017.53700632, worksheet.outputs_emissions_v201, 0.002); end
  def test_outputs_emissions_w201; assert_in_epsilon(221297014.09790736, worksheet.outputs_emissions_w201, 0.002); end
  def test_outputs_emissions_x201; assert_in_epsilon(216098266.79867962, worksheet.outputs_emissions_x201, 0.002); end
  def test_outputs_emissions_c202; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c202); end
  def test_outputs_emissions_d202; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d202); end
  def test_outputs_emissions_p202; assert_in_epsilon(190614352.10182244, worksheet.outputs_emissions_p202, 0.002); end
  def test_outputs_emissions_q202; assert_in_epsilon(389814289.8210441, worksheet.outputs_emissions_q202, 0.002); end
  def test_outputs_emissions_r202; assert_in_epsilon(597151767.3066974, worksheet.outputs_emissions_r202, 0.002); end
  def test_outputs_emissions_s202; assert_in_epsilon(815895103.383941, worksheet.outputs_emissions_s202, 0.002); end
  def test_outputs_emissions_t202; assert_in_epsilon(1037906204.2499489, worksheet.outputs_emissions_t202, 0.002); end
  def test_outputs_emissions_u202; assert_in_epsilon(1263148429.805062, worksheet.outputs_emissions_u202, 0.002); end
  def test_outputs_emissions_v202; assert_in_epsilon(1484274447.3420684, worksheet.outputs_emissions_v202, 0.002); end
  def test_outputs_emissions_w202; assert_in_epsilon(1705571461.4399757, worksheet.outputs_emissions_w202, 0.002); end
  def test_outputs_emissions_x202; assert_in_epsilon(1921669728.2386553, worksheet.outputs_emissions_x202, 0.002); end
  def test_outputs_emissions_c204; assert_equal("G.50", worksheet.outputs_emissions_c204); end
  def test_outputs_emissions_d204; assert_equal("Global Fuel production", worksheet.outputs_emissions_d204); end
  def test_outputs_emissions_p204; assert_in_epsilon(58124572.246836916, worksheet.outputs_emissions_p204, 0.002); end
  def test_outputs_emissions_q204; assert_in_epsilon(53459096.986839354, worksheet.outputs_emissions_q204, 0.002); end
  def test_outputs_emissions_r204; assert_in_epsilon(47891552.520594314, worksheet.outputs_emissions_r204, 0.002); end
  def test_outputs_emissions_s204; assert_in_epsilon(48706977.77134553, worksheet.outputs_emissions_s204, 0.002); end
  def test_outputs_emissions_t204; assert_in_epsilon(44042626.51602868, worksheet.outputs_emissions_t204, 0.002); end
  def test_outputs_emissions_u204; assert_in_epsilon(41250485.44720157, worksheet.outputs_emissions_u204, 0.002); end
  def test_outputs_emissions_v204; assert_in_epsilon(33255247.282657463, worksheet.outputs_emissions_v204, 0.002); end
  def test_outputs_emissions_w204; assert_in_epsilon(30775540.363434948, worksheet.outputs_emissions_w204, 0.002); end
  def test_outputs_emissions_x204; assert_in_epsilon(24629211.729190093, worksheet.outputs_emissions_x204, 0.002); end
  def test_outputs_emissions_c207; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c207); end
  def test_outputs_emissions_ah207; assert_equal("t", worksheet.outputs_emissions_ah207); end
  def test_outputs_emissions_h208; assert_equal("Historic actuals", worksheet.outputs_emissions_h208); end
  def test_outputs_emissions_p208; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p208); end
  def test_outputs_emissions_y208; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y208); end
  def test_outputs_emissions_c209; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c209); end
  def test_outputs_emissions_h209; assert_equal("1990", worksheet.outputs_emissions_h209); end
  def test_outputs_emissions_i209; assert_equal("1995", worksheet.outputs_emissions_i209); end
  def test_outputs_emissions_j209; assert_equal("2000", worksheet.outputs_emissions_j209); end
  def test_outputs_emissions_k209; assert_equal("2005", worksheet.outputs_emissions_k209); end
  def test_outputs_emissions_l209; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l209, 0.002); end
  def test_outputs_emissions_n209; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n209, 0.002); end
  def test_outputs_emissions_p209; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p209, 0.002); end
  def test_outputs_emissions_q209; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q209, 0.002); end
  def test_outputs_emissions_r209; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r209, 0.002); end
  def test_outputs_emissions_s209; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s209, 0.002); end
  def test_outputs_emissions_t209; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t209, 0.002); end
  def test_outputs_emissions_u209; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u209, 0.002); end
  def test_outputs_emissions_v209; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v209, 0.002); end
  def test_outputs_emissions_w209; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w209, 0.002); end
  def test_outputs_emissions_x209; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x209, 0.002); end
  def test_outputs_emissions_y209; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y209, 0.002); end
  def test_outputs_emissions_z209; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z209, 0.002); end
  def test_outputs_emissions_aa209; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa209, 0.002); end
  def test_outputs_emissions_ab209; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab209, 0.002); end
  def test_outputs_emissions_ac209; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac209, 0.002); end
  def test_outputs_emissions_ad209; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad209, 0.002); end
  def test_outputs_emissions_ae209; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae209, 0.002); end
  def test_outputs_emissions_af209; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af209, 0.002); end
  def test_outputs_emissions_ag209; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag209, 0.002); end
  def test_outputs_emissions_ah209; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah209, 0.002); end
  def test_outputs_emissions_c210; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_emissions_c210); end
  def test_outputs_emissions_d210; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d210); end
  def test_outputs_emissions_q210; assert_in_epsilon(611082887.271504, worksheet.outputs_emissions_q210, 0.002); end
  def test_outputs_emissions_c211; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_emissions_c211); end
  def test_outputs_emissions_d211; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_emissions_d211); end
  def test_outputs_emissions_q211; assert_in_epsilon(1220797070.0485716, worksheet.outputs_emissions_q211, 0.002); end
  def test_outputs_emissions_c212; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_emissions_c212); end
  def test_outputs_emissions_d212; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_emissions_d212); end
  def test_outputs_emissions_q212; assert_in_epsilon(4452361968.560808, worksheet.outputs_emissions_q212, 0.002); end
  def test_outputs_emissions_c213; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_emissions_c213); end
  def test_outputs_emissions_d213; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_emissions_d213); end
  def test_outputs_emissions_q213; assert_in_epsilon(314663327.2460474, worksheet.outputs_emissions_q213, 0.002); end
  def test_outputs_emissions_c214; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_emissions_c214); end
  def test_outputs_emissions_d214; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_emissions_d214); end
  def test_outputs_emissions_c215; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_emissions_c215); end
  def test_outputs_emissions_d215; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_emissions_d215); end
  def test_outputs_emissions_c216; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_emissions_c216); end
  def test_outputs_emissions_d216; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_emissions_d216); end
  def test_outputs_emissions_c217; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_emissions_c217); end
  def test_outputs_emissions_d217; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d217); end
  def test_outputs_emissions_c218; assert_equal(".CCS.solid.super.elec", worksheet.outputs_emissions_c218); end
  def test_outputs_emissions_d218; assert_equal(:na, worksheet.outputs_emissions_d218); end
  def test_outputs_emissions_c219; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_emissions_c219); end
  def test_outputs_emissions_d219; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_emissions_d219); end
  def test_outputs_emissions_q219; assert_in_delta(0.0, (worksheet.outputs_emissions_q219||0), 0.002); end
  def test_outputs_emissions_c220; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_emissions_c220); end
  def test_outputs_emissions_d220; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_emissions_d220); end
  def test_outputs_emissions_q220; assert_in_delta(0.0, (worksheet.outputs_emissions_q220||0), 0.002); end
  def test_outputs_emissions_c221; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_emissions_c221); end
  def test_outputs_emissions_d221; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_emissions_d221); end
  def test_outputs_emissions_q221; assert_in_delta(0.0, (worksheet.outputs_emissions_q221||0), 0.002); end
  def test_outputs_emissions_c222; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_emissions_c222); end
  def test_outputs_emissions_d222; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_emissions_d222); end
  def test_outputs_emissions_q222; assert_in_delta(0.0, (worksheet.outputs_emissions_q222||0), 0.002); end
  def test_outputs_emissions_c223; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_emissions_c223); end
  def test_outputs_emissions_d223; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_emissions_d223); end
  def test_outputs_emissions_q223; assert_in_delta(0.0, (worksheet.outputs_emissions_q223||0), 0.002); end
  def test_outputs_emissions_d224; assert_equal("Total emissions from power", worksheet.outputs_emissions_d224); end
  def test_outputs_emissions_h224; assert_in_delta(0.0, (worksheet.outputs_emissions_h224||0), 0.002); end
  def test_outputs_emissions_i224; assert_in_delta(0.0, (worksheet.outputs_emissions_i224||0), 0.002); end
  def test_outputs_emissions_j224; assert_in_delta(0.0, (worksheet.outputs_emissions_j224||0), 0.002); end
  def test_outputs_emissions_k224; assert_in_delta(0.0, (worksheet.outputs_emissions_k224||0), 0.002); end
  def test_outputs_emissions_l224; assert_in_delta(0.0, (worksheet.outputs_emissions_l224||0), 0.002); end
  def test_outputs_emissions_p224; assert_in_delta(0.0, (worksheet.outputs_emissions_p224||0), 0.002); end
  def test_outputs_emissions_q224; assert_in_epsilon(6598905253.126931, worksheet.outputs_emissions_q224, 0.002); end
  def test_outputs_emissions_r224; assert_in_delta(0.0, (worksheet.outputs_emissions_r224||0), 0.002); end
  def test_outputs_emissions_s224; assert_in_delta(0.0, (worksheet.outputs_emissions_s224||0), 0.002); end
  def test_outputs_emissions_t224; assert_in_delta(0.0, (worksheet.outputs_emissions_t224||0), 0.002); end
  def test_outputs_emissions_u224; assert_in_delta(0.0, (worksheet.outputs_emissions_u224||0), 0.002); end
  def test_outputs_emissions_v224; assert_in_delta(0.0, (worksheet.outputs_emissions_v224||0), 0.002); end
  def test_outputs_emissions_w224; assert_in_delta(0.0, (worksheet.outputs_emissions_w224||0), 0.002); end
  def test_outputs_emissions_x224; assert_in_delta(0.0, (worksheet.outputs_emissions_x224||0), 0.002); end
  def test_outputs_emissions_c225; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c225); end
  def test_outputs_emissions_c228; assert_equal("Emissions intensity", worksheet.outputs_emissions_c228); end
  def test_outputs_emissions_d228; assert_equal("Mt/TWh", worksheet.outputs_emissions_d228); end
  def test_outputs_emissions_d229; assert_equal("g/KWh", worksheet.outputs_emissions_d229); end
  def test_outputs_emissions_b234; assert_equal("N2O", worksheet.outputs_emissions_b234); end
  def test_outputs_emissions_d234; assert_equal("NITROUS OXIDE", worksheet.outputs_emissions_d234); end
  def test_outputs_emissions_c237; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c237); end
  def test_outputs_emissions_ah237; assert_equal("%", worksheet.outputs_emissions_ah237); end
  def test_outputs_emissions_h238; assert_equal("Historic actuals", worksheet.outputs_emissions_h238); end
  def test_outputs_emissions_p238; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p238); end
  def test_outputs_emissions_y238; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y238); end
  def test_outputs_emissions_d239; assert_equal("IPCC Sector", worksheet.outputs_emissions_d239); end
  def test_outputs_emissions_h239; assert_in_epsilon(1990.0, worksheet.outputs_emissions_h239, 0.002); end
  def test_outputs_emissions_i239; assert_in_epsilon(1995.0, worksheet.outputs_emissions_i239, 0.002); end
  def test_outputs_emissions_j239; assert_in_epsilon(2000.0, worksheet.outputs_emissions_j239, 0.002); end
  def test_outputs_emissions_k239; assert_in_epsilon(2005.0, worksheet.outputs_emissions_k239, 0.002); end
  def test_outputs_emissions_l239; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l239, 0.002); end
  def test_outputs_emissions_n239; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n239, 0.002); end
  def test_outputs_emissions_p239; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p239, 0.002); end
  def test_outputs_emissions_q239; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q239, 0.002); end
  def test_outputs_emissions_r239; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r239, 0.002); end
  def test_outputs_emissions_s239; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s239, 0.002); end
  def test_outputs_emissions_t239; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t239, 0.002); end
  def test_outputs_emissions_u239; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u239, 0.002); end
  def test_outputs_emissions_v239; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v239, 0.002); end
  def test_outputs_emissions_w239; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w239, 0.002); end
  def test_outputs_emissions_x239; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x239, 0.002); end
  def test_outputs_emissions_y239; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y239, 0.002); end
  def test_outputs_emissions_z239; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z239, 0.002); end
  def test_outputs_emissions_aa239; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa239, 0.002); end
  def test_outputs_emissions_ab239; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab239, 0.002); end
  def test_outputs_emissions_ac239; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac239, 0.002); end
  def test_outputs_emissions_ad239; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad239, 0.002); end
  def test_outputs_emissions_ae239; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae239, 0.002); end
  def test_outputs_emissions_af239; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af239, 0.002); end
  def test_outputs_emissions_ag239; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag239, 0.002); end
  def test_outputs_emissions_ah239; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah239, 0.002); end
  def test_outputs_emissions_c240; assert_equal("G.1A", worksheet.outputs_emissions_c240); end
  def test_outputs_emissions_d240; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d240); end
  def test_outputs_emissions_h240; assert_equal("", worksheet.outputs_emissions_h240); end
  def test_outputs_emissions_i240; assert_equal("", worksheet.outputs_emissions_i240); end
  def test_outputs_emissions_j240; assert_equal("", worksheet.outputs_emissions_j240); end
  def test_outputs_emissions_k240; assert_equal("", worksheet.outputs_emissions_k240); end
  def test_outputs_emissions_l240; assert_equal("", worksheet.outputs_emissions_l240); end
  def test_outputs_emissions_n240; assert_equal("", worksheet.outputs_emissions_n240); end
  def test_outputs_emissions_p240; assert_equal("", worksheet.outputs_emissions_p240); end
  def test_outputs_emissions_q240; assert_equal("", worksheet.outputs_emissions_q240); end
  def test_outputs_emissions_r240; assert_equal("", worksheet.outputs_emissions_r240); end
  def test_outputs_emissions_s240; assert_equal("", worksheet.outputs_emissions_s240); end
  def test_outputs_emissions_t240; assert_equal("", worksheet.outputs_emissions_t240); end
  def test_outputs_emissions_u240; assert_equal("", worksheet.outputs_emissions_u240); end
  def test_outputs_emissions_v240; assert_equal("", worksheet.outputs_emissions_v240); end
  def test_outputs_emissions_w240; assert_equal("", worksheet.outputs_emissions_w240); end
  def test_outputs_emissions_x240; assert_equal("", worksheet.outputs_emissions_x240); end
  def test_outputs_emissions_c241; assert_equal("G.1B", worksheet.outputs_emissions_c241); end
  def test_outputs_emissions_d241; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d241); end
  def test_outputs_emissions_h241; assert_in_delta(1.0, worksheet.outputs_emissions_h241, 0.002); end
  def test_outputs_emissions_i241; assert_in_delta(0.9995217568690384, worksheet.outputs_emissions_i241, 0.002); end
  def test_outputs_emissions_j241; assert_in_delta(0.7706911616119932, worksheet.outputs_emissions_j241, 0.002); end
  def test_outputs_emissions_k241; assert_in_delta(0.7251685036497738, worksheet.outputs_emissions_k241, 0.002); end
  def test_outputs_emissions_l241; assert_in_delta(0.6932952151220552, worksheet.outputs_emissions_l241, 0.002); end
  def test_outputs_emissions_n241; assert_in_delta(0.0, (worksheet.outputs_emissions_n241||0), 0.002); end
  def test_outputs_emissions_p241; assert_in_delta(0.0, (worksheet.outputs_emissions_p241||0), 0.002); end
  def test_outputs_emissions_q241; assert_in_delta(0.0, (worksheet.outputs_emissions_q241||0), 0.002); end
  def test_outputs_emissions_r241; assert_in_delta(0.0, (worksheet.outputs_emissions_r241||0), 0.002); end
  def test_outputs_emissions_s241; assert_in_delta(0.0, (worksheet.outputs_emissions_s241||0), 0.002); end
  def test_outputs_emissions_t241; assert_in_delta(0.0, (worksheet.outputs_emissions_t241||0), 0.002); end
  def test_outputs_emissions_u241; assert_in_delta(0.0, (worksheet.outputs_emissions_u241||0), 0.002); end
  def test_outputs_emissions_v241; assert_in_delta(0.0, (worksheet.outputs_emissions_v241||0), 0.002); end
  def test_outputs_emissions_w241; assert_in_delta(0.0, (worksheet.outputs_emissions_w241||0), 0.002); end
  def test_outputs_emissions_x241; assert_in_delta(0.0, (worksheet.outputs_emissions_x241||0), 0.002); end
  def test_outputs_emissions_c242; assert_equal("G.2", worksheet.outputs_emissions_c242); end
  def test_outputs_emissions_d242; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d242); end
  def test_outputs_emissions_h242; assert_equal("", worksheet.outputs_emissions_h242); end
  def test_outputs_emissions_i242; assert_equal("", worksheet.outputs_emissions_i242); end
  def test_outputs_emissions_j242; assert_equal("", worksheet.outputs_emissions_j242); end
  def test_outputs_emissions_k242; assert_equal("", worksheet.outputs_emissions_k242); end
  def test_outputs_emissions_l242; assert_equal("", worksheet.outputs_emissions_l242); end
  def test_outputs_emissions_n242; assert_equal("", worksheet.outputs_emissions_n242); end
  def test_outputs_emissions_p242; assert_equal("", worksheet.outputs_emissions_p242); end
  def test_outputs_emissions_q242; assert_equal("", worksheet.outputs_emissions_q242); end
  def test_outputs_emissions_r242; assert_equal("", worksheet.outputs_emissions_r242); end
  def test_outputs_emissions_s242; assert_equal("", worksheet.outputs_emissions_s242); end
  def test_outputs_emissions_t242; assert_equal("", worksheet.outputs_emissions_t242); end
  def test_outputs_emissions_u242; assert_equal("", worksheet.outputs_emissions_u242); end
  def test_outputs_emissions_v242; assert_equal("", worksheet.outputs_emissions_v242); end
  def test_outputs_emissions_w242; assert_equal("", worksheet.outputs_emissions_w242); end
  def test_outputs_emissions_x242; assert_equal("", worksheet.outputs_emissions_x242); end
  def test_outputs_emissions_c243; assert_equal("G.3", worksheet.outputs_emissions_c243); end
  def test_outputs_emissions_d243; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d243); end
  def test_outputs_emissions_h243; assert_in_delta(1.0, worksheet.outputs_emissions_h243, 0.002); end
  def test_outputs_emissions_i243; assert_in_delta(0.9720973530695243, worksheet.outputs_emissions_i243, 0.002); end
  def test_outputs_emissions_j243; assert_in_delta(0.9692908596465343, worksheet.outputs_emissions_j243, 0.002); end
  def test_outputs_emissions_k243; assert_in_epsilon(1.047167055523433, worksheet.outputs_emissions_k243, 0.002); end
  def test_outputs_emissions_l243; assert_in_epsilon(1.097825325904162, worksheet.outputs_emissions_l243, 0.002); end
  def test_outputs_emissions_n243; assert_in_delta(0.0, (worksheet.outputs_emissions_n243||0), 0.002); end
  def test_outputs_emissions_p243; assert_in_delta(0.7487359411989448, worksheet.outputs_emissions_p243, 0.002); end
  def test_outputs_emissions_q243; assert_in_delta(0.8055938032998518, worksheet.outputs_emissions_q243, 0.002); end
  def test_outputs_emissions_r243; assert_in_delta(0.8650106064621915, worksheet.outputs_emissions_r243, 0.002); end
  def test_outputs_emissions_s243; assert_in_delta(0.9046705240755571, worksheet.outputs_emissions_s243, 0.002); end
  def test_outputs_emissions_t243; assert_in_delta(0.9342382321674203, worksheet.outputs_emissions_t243, 0.002); end
  def test_outputs_emissions_u243; assert_in_delta(0.954973610008986, worksheet.outputs_emissions_u243, 0.002); end
  def test_outputs_emissions_v243; assert_in_delta(0.9679218419259144, worksheet.outputs_emissions_v243, 0.002); end
  def test_outputs_emissions_w243; assert_in_delta(0.9739576847735021, worksheet.outputs_emissions_w243, 0.002); end
  def test_outputs_emissions_x243; assert_in_delta(0.9738930693296156, worksheet.outputs_emissions_x243, 0.002); end
  def test_outputs_emissions_c244; assert_equal("G.4", worksheet.outputs_emissions_c244); end
  def test_outputs_emissions_d244; assert_equal("Global Agriculture", worksheet.outputs_emissions_d244); end
  def test_outputs_emissions_h244; assert_equal("", worksheet.outputs_emissions_h244); end
  def test_outputs_emissions_i244; assert_equal("", worksheet.outputs_emissions_i244); end
  def test_outputs_emissions_j244; assert_equal("", worksheet.outputs_emissions_j244); end
  def test_outputs_emissions_k244; assert_equal("", worksheet.outputs_emissions_k244); end
  def test_outputs_emissions_l244; assert_equal("", worksheet.outputs_emissions_l244); end
  def test_outputs_emissions_n244; assert_equal("", worksheet.outputs_emissions_n244); end
  def test_outputs_emissions_p244; assert_equal("", worksheet.outputs_emissions_p244); end
  def test_outputs_emissions_q244; assert_equal("", worksheet.outputs_emissions_q244); end
  def test_outputs_emissions_r244; assert_equal("", worksheet.outputs_emissions_r244); end
  def test_outputs_emissions_s244; assert_equal("", worksheet.outputs_emissions_s244); end
  def test_outputs_emissions_t244; assert_equal("", worksheet.outputs_emissions_t244); end
  def test_outputs_emissions_u244; assert_equal("", worksheet.outputs_emissions_u244); end
  def test_outputs_emissions_v244; assert_equal("", worksheet.outputs_emissions_v244); end
  def test_outputs_emissions_w244; assert_equal("", worksheet.outputs_emissions_w244); end
  def test_outputs_emissions_x244; assert_equal("", worksheet.outputs_emissions_x244); end
  def test_outputs_emissions_c245; assert_equal("G.5", worksheet.outputs_emissions_c245); end
  def test_outputs_emissions_d245; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d245); end
  def test_outputs_emissions_h245; assert_in_delta(1.0, worksheet.outputs_emissions_h245, 0.002); end
  def test_outputs_emissions_i245; assert_in_epsilon(1.043176979375526, worksheet.outputs_emissions_i245, 0.002); end
  def test_outputs_emissions_j245; assert_in_epsilon(1.1260372552269713, worksheet.outputs_emissions_j245, 0.002); end
  def test_outputs_emissions_k245; assert_in_epsilon(1.2078854671369774, worksheet.outputs_emissions_k245, 0.002); end
  def test_outputs_emissions_l245; assert_in_epsilon(1.2658643514608812, worksheet.outputs_emissions_l245, 0.002); end
  def test_outputs_emissions_n245; assert_in_delta(0.0, (worksheet.outputs_emissions_n245||0), 0.002); end
  def test_outputs_emissions_p245; assert_in_delta(0.0, (worksheet.outputs_emissions_p245||0), 0.002); end
  def test_outputs_emissions_q245; assert_in_delta(0.0, (worksheet.outputs_emissions_q245||0), 0.002); end
  def test_outputs_emissions_r245; assert_in_delta(0.0, (worksheet.outputs_emissions_r245||0), 0.002); end
  def test_outputs_emissions_s245; assert_in_delta(0.0, (worksheet.outputs_emissions_s245||0), 0.002); end
  def test_outputs_emissions_t245; assert_in_delta(0.0, (worksheet.outputs_emissions_t245||0), 0.002); end
  def test_outputs_emissions_u245; assert_in_delta(0.0, (worksheet.outputs_emissions_u245||0), 0.002); end
  def test_outputs_emissions_v245; assert_in_delta(0.0, (worksheet.outputs_emissions_v245||0), 0.002); end
  def test_outputs_emissions_w245; assert_in_delta(0.0, (worksheet.outputs_emissions_w245||0), 0.002); end
  def test_outputs_emissions_x245; assert_in_delta(0.0, (worksheet.outputs_emissions_x245||0), 0.002); end
  def test_outputs_emissions_c246; assert_equal("G.6", worksheet.outputs_emissions_c246); end
  def test_outputs_emissions_d246; assert_equal("Global Waste", worksheet.outputs_emissions_d246); end
  def test_outputs_emissions_h246; assert_equal("", worksheet.outputs_emissions_h246); end
  def test_outputs_emissions_i246; assert_equal("", worksheet.outputs_emissions_i246); end
  def test_outputs_emissions_j246; assert_equal("", worksheet.outputs_emissions_j246); end
  def test_outputs_emissions_k246; assert_equal("", worksheet.outputs_emissions_k246); end
  def test_outputs_emissions_l246; assert_equal("", worksheet.outputs_emissions_l246); end
  def test_outputs_emissions_n246; assert_equal("", worksheet.outputs_emissions_n246); end
  def test_outputs_emissions_p246; assert_equal("", worksheet.outputs_emissions_p246); end
  def test_outputs_emissions_q246; assert_equal("", worksheet.outputs_emissions_q246); end
  def test_outputs_emissions_r246; assert_equal("", worksheet.outputs_emissions_r246); end
  def test_outputs_emissions_s246; assert_equal("", worksheet.outputs_emissions_s246); end
  def test_outputs_emissions_t246; assert_equal("", worksheet.outputs_emissions_t246); end
  def test_outputs_emissions_u246; assert_equal("", worksheet.outputs_emissions_u246); end
  def test_outputs_emissions_v246; assert_equal("", worksheet.outputs_emissions_v246); end
  def test_outputs_emissions_w246; assert_equal("", worksheet.outputs_emissions_w246); end
  def test_outputs_emissions_x246; assert_equal("", worksheet.outputs_emissions_x246); end
  def test_outputs_emissions_c247; assert_equal("G.7", worksheet.outputs_emissions_c247); end
  def test_outputs_emissions_d247; assert_equal("Global Other", worksheet.outputs_emissions_d247); end
  def test_outputs_emissions_h247; assert_in_delta(1.0, worksheet.outputs_emissions_h247, 0.002); end
  def test_outputs_emissions_i247; assert_in_delta(0.9850762071343433, worksheet.outputs_emissions_i247, 0.002); end
  def test_outputs_emissions_j247; assert_in_delta(0.9696847034328003, worksheet.outputs_emissions_j247, 0.002); end
  def test_outputs_emissions_k247; assert_in_epsilon(1.038620051204927, worksheet.outputs_emissions_k247, 0.002); end
  def test_outputs_emissions_l247; assert_in_epsilon(1.085875473888128, worksheet.outputs_emissions_l247, 0.002); end
  def test_outputs_emissions_n247; assert_in_delta(0.0, (worksheet.outputs_emissions_n247||0), 0.002); end
  def test_outputs_emissions_p247; assert_in_delta(0.6777976420918856, worksheet.outputs_emissions_p247, 0.002); end
  def test_outputs_emissions_q247; assert_in_delta(0.7291462174911123, worksheet.outputs_emissions_q247, 0.002); end
  def test_outputs_emissions_r247; assert_in_delta(0.7781332321017037, worksheet.outputs_emissions_r247, 0.002); end
  def test_outputs_emissions_s247; assert_in_delta(0.8180226211734193, worksheet.outputs_emissions_s247, 0.002); end
  def test_outputs_emissions_t247; assert_in_delta(0.8426796250342865, worksheet.outputs_emissions_t247, 0.002); end
  def test_outputs_emissions_u247; assert_in_delta(0.8694168339855433, worksheet.outputs_emissions_u247, 0.002); end
  def test_outputs_emissions_v247; assert_in_delta(0.8803120038996374, worksheet.outputs_emissions_v247, 0.002); end
  def test_outputs_emissions_w247; assert_in_delta(0.8976043850178593, worksheet.outputs_emissions_w247, 0.002); end
  def test_outputs_emissions_x247; assert_in_delta(0.8974175230062336, worksheet.outputs_emissions_x247, 0.002); end
  def test_outputs_emissions_d248; assert_equal("total", worksheet.outputs_emissions_d248); end
  def test_outputs_emissions_h248; assert_equal("", worksheet.outputs_emissions_h248); end
  def test_outputs_emissions_i248; assert_equal("", worksheet.outputs_emissions_i248); end
  def test_outputs_emissions_j248; assert_equal("", worksheet.outputs_emissions_j248); end
  def test_outputs_emissions_k248; assert_equal("", worksheet.outputs_emissions_k248); end
  def test_outputs_emissions_l248; assert_equal("", worksheet.outputs_emissions_l248); end
  def test_outputs_emissions_n248; assert_equal("", worksheet.outputs_emissions_n248); end
  def test_outputs_emissions_p248; assert_equal("", worksheet.outputs_emissions_p248); end
  def test_outputs_emissions_q248; assert_equal("", worksheet.outputs_emissions_q248); end
  def test_outputs_emissions_r248; assert_equal("", worksheet.outputs_emissions_r248); end
  def test_outputs_emissions_s248; assert_equal("", worksheet.outputs_emissions_s248); end
  def test_outputs_emissions_t248; assert_equal("", worksheet.outputs_emissions_t248); end
  def test_outputs_emissions_u248; assert_equal("", worksheet.outputs_emissions_u248); end
  def test_outputs_emissions_v248; assert_equal("", worksheet.outputs_emissions_v248); end
  def test_outputs_emissions_w248; assert_equal("", worksheet.outputs_emissions_w248); end
  def test_outputs_emissions_x248; assert_equal("", worksheet.outputs_emissions_x248); end
  def test_outputs_emissions_c251; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c251); end
  def test_outputs_emissions_ah251; assert_equal("t", worksheet.outputs_emissions_ah251); end
  def test_outputs_emissions_h252; assert_equal("Historic actuals", worksheet.outputs_emissions_h252); end
  def test_outputs_emissions_p252; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p252); end
  def test_outputs_emissions_y252; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y252); end
  def test_outputs_emissions_d253; assert_equal("IPCC Sector", worksheet.outputs_emissions_d253); end
  def test_outputs_emissions_h253; assert_equal("1990", worksheet.outputs_emissions_h253); end
  def test_outputs_emissions_i253; assert_equal("1995", worksheet.outputs_emissions_i253); end
  def test_outputs_emissions_j253; assert_equal("2000", worksheet.outputs_emissions_j253); end
  def test_outputs_emissions_k253; assert_equal("2005", worksheet.outputs_emissions_k253); end
  def test_outputs_emissions_l253; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l253, 0.002); end
  def test_outputs_emissions_n253; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n253, 0.002); end
  def test_outputs_emissions_p253; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p253, 0.002); end
  def test_outputs_emissions_q253; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q253, 0.002); end
  def test_outputs_emissions_r253; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r253, 0.002); end
  def test_outputs_emissions_s253; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s253, 0.002); end
  def test_outputs_emissions_t253; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t253, 0.002); end
  def test_outputs_emissions_u253; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u253, 0.002); end
  def test_outputs_emissions_v253; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v253, 0.002); end
  def test_outputs_emissions_w253; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w253, 0.002); end
  def test_outputs_emissions_x253; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x253, 0.002); end
  def test_outputs_emissions_y253; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y253, 0.002); end
  def test_outputs_emissions_z253; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z253, 0.002); end
  def test_outputs_emissions_aa253; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa253, 0.002); end
  def test_outputs_emissions_ab253; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab253, 0.002); end
  def test_outputs_emissions_ac253; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac253, 0.002); end
  def test_outputs_emissions_ad253; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad253, 0.002); end
  def test_outputs_emissions_ae253; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae253, 0.002); end
  def test_outputs_emissions_af253; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af253, 0.002); end
  def test_outputs_emissions_ag253; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag253, 0.002); end
  def test_outputs_emissions_ah253; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah253, 0.002); end
  def test_outputs_emissions_c254; assert_equal("G.1A", worksheet.outputs_emissions_c254); end
  def test_outputs_emissions_d254; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d254); end
  def test_outputs_emissions_h254; assert_in_epsilon(780526.4038733226, worksheet.outputs_emissions_h254, 0.002); end
  def test_outputs_emissions_i254; assert_in_epsilon(851858.2127794387, worksheet.outputs_emissions_i254, 0.002); end
  def test_outputs_emissions_j254; assert_in_epsilon(901550.1291164935, worksheet.outputs_emissions_j254, 0.002); end
  def test_outputs_emissions_k254; assert_in_epsilon(979656.2952381098, worksheet.outputs_emissions_k254, 0.002); end
  def test_outputs_emissions_l254; assert_in_epsilon(1056541.881887055, worksheet.outputs_emissions_l254, 0.002); end
  def test_outputs_emissions_p254; assert_in_epsilon(706932.6203440693, worksheet.outputs_emissions_p254, 0.002); end
  def test_outputs_emissions_q254; assert_in_epsilon(759338.0998606784, worksheet.outputs_emissions_q254, 0.002); end
  def test_outputs_emissions_r254; assert_in_epsilon(765295.3167889172, worksheet.outputs_emissions_r254, 0.002); end
  def test_outputs_emissions_s254; assert_in_epsilon(844387.0332470962, worksheet.outputs_emissions_s254, 0.002); end
  def test_outputs_emissions_t254; assert_in_epsilon(850270.9637392431, worksheet.outputs_emissions_t254, 0.002); end
  def test_outputs_emissions_u254; assert_in_epsilon(953060.9901799951, worksheet.outputs_emissions_u254, 0.002); end
  def test_outputs_emissions_v254; assert_in_epsilon(956655.3033456291, worksheet.outputs_emissions_v254, 0.002); end
  def test_outputs_emissions_w254; assert_in_epsilon(1085906.8965117217, worksheet.outputs_emissions_w254, 0.002); end
  def test_outputs_emissions_x254; assert_in_epsilon(1084505.0241493802, worksheet.outputs_emissions_x254, 0.002); end
  def test_outputs_emissions_c255; assert_equal("G.1B", worksheet.outputs_emissions_c255); end
  def test_outputs_emissions_d255; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d255); end
  def test_outputs_emissions_h255; assert_in_delta(0.0, (worksheet.outputs_emissions_h255||0), 0.002); end
  def test_outputs_emissions_i255; assert_in_delta(0.0, (worksheet.outputs_emissions_i255||0), 0.002); end
  def test_outputs_emissions_j255; assert_in_delta(0.0, (worksheet.outputs_emissions_j255||0), 0.002); end
  def test_outputs_emissions_k255; assert_in_delta(0.0, (worksheet.outputs_emissions_k255||0), 0.002); end
  def test_outputs_emissions_l255; assert_in_delta(0.0, (worksheet.outputs_emissions_l255||0), 0.002); end
  def test_outputs_emissions_p255; assert_in_delta(0.0, (worksheet.outputs_emissions_p255||0), 0.002); end
  def test_outputs_emissions_q255; assert_in_delta(0.0, (worksheet.outputs_emissions_q255||0), 0.002); end
  def test_outputs_emissions_r255; assert_in_delta(0.0, (worksheet.outputs_emissions_r255||0), 0.002); end
  def test_outputs_emissions_s255; assert_in_delta(0.0, (worksheet.outputs_emissions_s255||0), 0.002); end
  def test_outputs_emissions_t255; assert_in_delta(0.0, (worksheet.outputs_emissions_t255||0), 0.002); end
  def test_outputs_emissions_u255; assert_in_delta(0.0, (worksheet.outputs_emissions_u255||0), 0.002); end
  def test_outputs_emissions_v255; assert_in_delta(0.0, (worksheet.outputs_emissions_v255||0), 0.002); end
  def test_outputs_emissions_w255; assert_in_delta(0.0, (worksheet.outputs_emissions_w255||0), 0.002); end
  def test_outputs_emissions_x255; assert_in_delta(0.0, (worksheet.outputs_emissions_x255||0), 0.002); end
  def test_outputs_emissions_c256; assert_equal("G.2", worksheet.outputs_emissions_c256); end
  def test_outputs_emissions_d256; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d256); end
  def test_outputs_emissions_h256; assert_in_epsilon(905180.5320142645, worksheet.outputs_emissions_h256, 0.002); end
  def test_outputs_emissions_i256; assert_in_epsilon(904747.6356425486, worksheet.outputs_emissions_i256, 0.002); end
  def test_outputs_emissions_j256; assert_in_epsilon(697614.6356866355, worksheet.outputs_emissions_j256, 0.002); end
  def test_outputs_emissions_k256; assert_in_epsilon(656408.4119336903, worksheet.outputs_emissions_k256, 0.002); end
  def test_outputs_emissions_l256; assert_in_epsilon(627557.3316671258, worksheet.outputs_emissions_l256, 0.002); end
  def test_outputs_emissions_p256; assert_in_delta(0.0, (worksheet.outputs_emissions_p256||0), 0.002); end
  def test_outputs_emissions_q256; assert_in_delta(0.0, (worksheet.outputs_emissions_q256||0), 0.002); end
  def test_outputs_emissions_r256; assert_in_delta(0.0, (worksheet.outputs_emissions_r256||0), 0.002); end
  def test_outputs_emissions_s256; assert_in_delta(0.0, (worksheet.outputs_emissions_s256||0), 0.002); end
  def test_outputs_emissions_t256; assert_in_delta(0.0, (worksheet.outputs_emissions_t256||0), 0.002); end
  def test_outputs_emissions_u256; assert_in_delta(0.0, (worksheet.outputs_emissions_u256||0), 0.002); end
  def test_outputs_emissions_v256; assert_in_delta(0.0, (worksheet.outputs_emissions_v256||0), 0.002); end
  def test_outputs_emissions_w256; assert_in_delta(0.0, (worksheet.outputs_emissions_w256||0), 0.002); end
  def test_outputs_emissions_x256; assert_in_delta(0.0, (worksheet.outputs_emissions_x256||0), 0.002); end
  def test_outputs_emissions_c257; assert_equal("G.3", worksheet.outputs_emissions_c257); end
  def test_outputs_emissions_d257; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d257); end
  def test_outputs_emissions_h257; assert_in_delta(0.0, (worksheet.outputs_emissions_h257||0), 0.002); end
  def test_outputs_emissions_i257; assert_in_delta(0.0, (worksheet.outputs_emissions_i257||0), 0.002); end
  def test_outputs_emissions_j257; assert_in_delta(0.0, (worksheet.outputs_emissions_j257||0), 0.002); end
  def test_outputs_emissions_k257; assert_in_delta(0.0, (worksheet.outputs_emissions_k257||0), 0.002); end
  def test_outputs_emissions_l257; assert_in_delta(0.0, (worksheet.outputs_emissions_l257||0), 0.002); end
  def test_outputs_emissions_p257; assert_in_delta(0.0, (worksheet.outputs_emissions_p257||0), 0.002); end
  def test_outputs_emissions_q257; assert_in_delta(0.0, (worksheet.outputs_emissions_q257||0), 0.002); end
  def test_outputs_emissions_r257; assert_in_delta(0.0, (worksheet.outputs_emissions_r257||0), 0.002); end
  def test_outputs_emissions_s257; assert_in_delta(0.0, (worksheet.outputs_emissions_s257||0), 0.002); end
  def test_outputs_emissions_t257; assert_in_delta(0.0, (worksheet.outputs_emissions_t257||0), 0.002); end
  def test_outputs_emissions_u257; assert_in_delta(0.0, (worksheet.outputs_emissions_u257||0), 0.002); end
  def test_outputs_emissions_v257; assert_in_delta(0.0, (worksheet.outputs_emissions_v257||0), 0.002); end
  def test_outputs_emissions_w257; assert_in_delta(0.0, (worksheet.outputs_emissions_w257||0), 0.002); end
  def test_outputs_emissions_x257; assert_in_delta(0.0, (worksheet.outputs_emissions_x257||0), 0.002); end
  def test_outputs_emissions_c258; assert_equal("G.4", worksheet.outputs_emissions_c258); end
  def test_outputs_emissions_d258; assert_equal("Global Agriculture", worksheet.outputs_emissions_d258); end
  def test_outputs_emissions_h258; assert_in_epsilon(8511621.673070969, worksheet.outputs_emissions_h258, 0.002); end
  def test_outputs_emissions_i258; assert_in_epsilon(8274124.8987214845, worksheet.outputs_emissions_i258, 0.002); end
  def test_outputs_emissions_j258; assert_in_epsilon(8250237.088477032, worksheet.outputs_emissions_j258, 0.002); end
  def test_outputs_emissions_k258; assert_in_epsilon(8913089.805119162, worksheet.outputs_emissions_k258, 0.002); end
  def test_outputs_emissions_l258; assert_in_epsilon(9344273.837212065, worksheet.outputs_emissions_l258, 0.002); end
  def test_outputs_emissions_p258; assert_in_epsilon(6372957.064516129, worksheet.outputs_emissions_p258, 0.002); end
  def test_outputs_emissions_q258; assert_in_epsilon(6856909.6758586895, worksheet.outputs_emissions_q258, 0.002); end
  def test_outputs_emissions_r258; assert_in_epsilon(7362643.025399853, worksheet.outputs_emissions_r258, 0.002); end
  def test_outputs_emissions_s258; assert_in_epsilon(7700213.2397099845, worksheet.outputs_emissions_s258, 0.002); end
  def test_outputs_emissions_t258; assert_in_epsilon(7951882.384727722, worksheet.outputs_emissions_t258, 0.002); end
  def test_outputs_emissions_u258; assert_in_epsilon(8128374.076163308, worksheet.outputs_emissions_u258, 0.002); end
  def test_outputs_emissions_v258; assert_in_epsilon(8238584.527575385, worksheet.outputs_emissions_v258, 0.002); end
  def test_outputs_emissions_w258; assert_in_epsilon(8289959.3383721635, worksheet.outputs_emissions_w258, 0.002); end
  def test_outputs_emissions_x258; assert_in_epsilon(8289409.356159564, worksheet.outputs_emissions_x258, 0.002); end
  def test_outputs_emissions_c259; assert_equal("G.5", worksheet.outputs_emissions_c259); end
  def test_outputs_emissions_d259; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d259); end
  def test_outputs_emissions_h259; assert_in_delta(0.0, (worksheet.outputs_emissions_h259||0), 0.002); end
  def test_outputs_emissions_i259; assert_in_delta(0.0, (worksheet.outputs_emissions_i259||0), 0.002); end
  def test_outputs_emissions_j259; assert_in_delta(0.0, (worksheet.outputs_emissions_j259||0), 0.002); end
  def test_outputs_emissions_k259; assert_in_delta(0.0, (worksheet.outputs_emissions_k259||0), 0.002); end
  def test_outputs_emissions_l259; assert_in_delta(0.0, (worksheet.outputs_emissions_l259||0), 0.002); end
  def test_outputs_emissions_p259; assert_in_delta(0.0, (worksheet.outputs_emissions_p259||0), 0.002); end
  def test_outputs_emissions_q259; assert_in_delta(0.0, (worksheet.outputs_emissions_q259||0), 0.002); end
  def test_outputs_emissions_r259; assert_in_delta(0.0, (worksheet.outputs_emissions_r259||0), 0.002); end
  def test_outputs_emissions_s259; assert_in_delta(0.0, (worksheet.outputs_emissions_s259||0), 0.002); end
  def test_outputs_emissions_t259; assert_in_delta(0.0, (worksheet.outputs_emissions_t259||0), 0.002); end
  def test_outputs_emissions_u259; assert_in_delta(0.0, (worksheet.outputs_emissions_u259||0), 0.002); end
  def test_outputs_emissions_v259; assert_in_delta(0.0, (worksheet.outputs_emissions_v259||0), 0.002); end
  def test_outputs_emissions_w259; assert_in_delta(0.0, (worksheet.outputs_emissions_w259||0), 0.002); end
  def test_outputs_emissions_x259; assert_in_delta(0.0, (worksheet.outputs_emissions_x259||0), 0.002); end
  def test_outputs_emissions_c260; assert_equal("G.6", worksheet.outputs_emissions_c260); end
  def test_outputs_emissions_d260; assert_equal("Global Waste", worksheet.outputs_emissions_d260); end
  def test_outputs_emissions_h260; assert_in_epsilon(248104.13555432163, worksheet.outputs_emissions_h260, 0.002); end
  def test_outputs_emissions_i260; assert_in_epsilon(258816.52269813325, worksheet.outputs_emissions_i260, 0.002); end
  def test_outputs_emissions_j260; assert_in_epsilon(279374.4998100487, worksheet.outputs_emissions_j260, 0.002); end
  def test_outputs_emissions_k260; assert_in_epsilon(299681.37967264774, worksheet.outputs_emissions_k260, 0.002); end
  def test_outputs_emissions_l260; assert_in_epsilon(314066.1806482339, worksheet.outputs_emissions_l260, 0.002); end
  def test_outputs_emissions_p260; assert_in_delta(0.0, (worksheet.outputs_emissions_p260||0), 0.002); end
  def test_outputs_emissions_q260; assert_in_delta(0.0, (worksheet.outputs_emissions_q260||0), 0.002); end
  def test_outputs_emissions_r260; assert_in_delta(0.0, (worksheet.outputs_emissions_r260||0), 0.002); end
  def test_outputs_emissions_s260; assert_in_delta(0.0, (worksheet.outputs_emissions_s260||0), 0.002); end
  def test_outputs_emissions_t260; assert_in_delta(0.0, (worksheet.outputs_emissions_t260||0), 0.002); end
  def test_outputs_emissions_u260; assert_in_delta(0.0, (worksheet.outputs_emissions_u260||0), 0.002); end
  def test_outputs_emissions_v260; assert_in_delta(0.0, (worksheet.outputs_emissions_v260||0), 0.002); end
  def test_outputs_emissions_w260; assert_in_delta(0.0, (worksheet.outputs_emissions_w260||0), 0.002); end
  def test_outputs_emissions_x260; assert_in_delta(0.0, (worksheet.outputs_emissions_x260||0), 0.002); end
  def test_outputs_emissions_c261; assert_equal("G.7", worksheet.outputs_emissions_c261); end
  def test_outputs_emissions_d261; assert_equal("Global Other", worksheet.outputs_emissions_d261); end
  def test_outputs_emissions_h261; assert_in_delta(0.0, (worksheet.outputs_emissions_h261||0), 0.002); end
  def test_outputs_emissions_i261; assert_in_delta(0.0, (worksheet.outputs_emissions_i261||0), 0.002); end
  def test_outputs_emissions_j261; assert_in_delta(0.0, (worksheet.outputs_emissions_j261||0), 0.002); end
  def test_outputs_emissions_k261; assert_in_delta(0.0, (worksheet.outputs_emissions_k261||0), 0.002); end
  def test_outputs_emissions_l261; assert_in_delta(0.0, (worksheet.outputs_emissions_l261||0), 0.002); end
  def test_outputs_emissions_p261; assert_in_delta(0.0, (worksheet.outputs_emissions_p261||0), 0.002); end
  def test_outputs_emissions_q261; assert_in_delta(0.0, (worksheet.outputs_emissions_q261||0), 0.002); end
  def test_outputs_emissions_r261; assert_in_delta(0.0, (worksheet.outputs_emissions_r261||0), 0.002); end
  def test_outputs_emissions_s261; assert_in_delta(0.0, (worksheet.outputs_emissions_s261||0), 0.002); end
  def test_outputs_emissions_t261; assert_in_delta(0.0, (worksheet.outputs_emissions_t261||0), 0.002); end
  def test_outputs_emissions_u261; assert_in_delta(0.0, (worksheet.outputs_emissions_u261||0), 0.002); end
  def test_outputs_emissions_v261; assert_in_delta(0.0, (worksheet.outputs_emissions_v261||0), 0.002); end
  def test_outputs_emissions_w261; assert_in_delta(0.0, (worksheet.outputs_emissions_w261||0), 0.002); end
  def test_outputs_emissions_x261; assert_in_delta(0.0, (worksheet.outputs_emissions_x261||0), 0.002); end
  def test_outputs_emissions_d262; assert_equal("total", worksheet.outputs_emissions_d262); end
  def test_outputs_emissions_h262; assert_in_epsilon(10445432.74451287, worksheet.outputs_emissions_h262, 0.002); end
  def test_outputs_emissions_i262; assert_in_epsilon(10289547.269841613, worksheet.outputs_emissions_i262, 0.002); end
  def test_outputs_emissions_j262; assert_in_epsilon(10128776.353090225, worksheet.outputs_emissions_j262, 0.002); end
  def test_outputs_emissions_k262; assert_in_epsilon(10848835.89196358, worksheet.outputs_emissions_k262, 0.002); end
  def test_outputs_emissions_l262; assert_in_epsilon(11342439.231414484, worksheet.outputs_emissions_l262, 0.002); end
  def test_outputs_emissions_p262; assert_in_epsilon(7079889.684860198, worksheet.outputs_emissions_p262, 0.002); end
  def test_outputs_emissions_q262; assert_in_epsilon(7616247.775719368, worksheet.outputs_emissions_q262, 0.002); end
  def test_outputs_emissions_r262; assert_in_epsilon(8127938.34218877, worksheet.outputs_emissions_r262, 0.002); end
  def test_outputs_emissions_s262; assert_in_epsilon(8544600.272957081, worksheet.outputs_emissions_s262, 0.002); end
  def test_outputs_emissions_t262; assert_in_epsilon(8802153.348466964, worksheet.outputs_emissions_t262, 0.002); end
  def test_outputs_emissions_u262; assert_in_epsilon(9081435.066343304, worksheet.outputs_emissions_u262, 0.002); end
  def test_outputs_emissions_v262; assert_in_epsilon(9195239.830921015, worksheet.outputs_emissions_v262, 0.002); end
  def test_outputs_emissions_w262; assert_in_epsilon(9375866.234883886, worksheet.outputs_emissions_w262, 0.002); end
  def test_outputs_emissions_x262; assert_in_epsilon(9373914.380308945, worksheet.outputs_emissions_x262, 0.002); end
  def test_outputs_emissions_c263; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c263); end
  def test_outputs_emissions_d263; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d263); end
  def test_outputs_emissions_p263; assert_in_epsilon(7079889.684860198, worksheet.outputs_emissions_p263, 0.002); end
  def test_outputs_emissions_q263; assert_in_epsilon(14696137.460579567, worksheet.outputs_emissions_q263, 0.002); end
  def test_outputs_emissions_r263; assert_in_epsilon(22824075.802768335, worksheet.outputs_emissions_r263, 0.002); end
  def test_outputs_emissions_s263; assert_in_epsilon(31368676.075725414, worksheet.outputs_emissions_s263, 0.002); end
  def test_outputs_emissions_t263; assert_in_epsilon(40170829.42419238, worksheet.outputs_emissions_t263, 0.002); end
  def test_outputs_emissions_u263; assert_in_epsilon(49252264.49053568, worksheet.outputs_emissions_u263, 0.002); end
  def test_outputs_emissions_v263; assert_in_epsilon(58447504.32145669, worksheet.outputs_emissions_v263, 0.002); end
  def test_outputs_emissions_w263; assert_in_epsilon(67823370.55634058, worksheet.outputs_emissions_w263, 0.002); end
  def test_outputs_emissions_x263; assert_in_epsilon(77197284.93664952, worksheet.outputs_emissions_x263, 0.002); end
  def test_outputs_emissions_c265; assert_equal("G.X2.A", worksheet.outputs_emissions_c265); end
  def test_outputs_emissions_d265; assert_equal("Global Carbon capture combustion", worksheet.outputs_emissions_d265); end
  def test_outputs_emissions_p265; assert_in_delta(0.0, (worksheet.outputs_emissions_p265||0), 0.002); end
  def test_outputs_emissions_q265; assert_in_delta(0.0, (worksheet.outputs_emissions_q265||0), 0.002); end
  def test_outputs_emissions_r265; assert_in_delta(0.0, (worksheet.outputs_emissions_r265||0), 0.002); end
  def test_outputs_emissions_s265; assert_in_delta(0.0, (worksheet.outputs_emissions_s265||0), 0.002); end
  def test_outputs_emissions_t265; assert_in_delta(0.0, (worksheet.outputs_emissions_t265||0), 0.002); end
  def test_outputs_emissions_u265; assert_in_delta(0.0, (worksheet.outputs_emissions_u265||0), 0.002); end
  def test_outputs_emissions_v265; assert_in_delta(0.0, (worksheet.outputs_emissions_v265||0), 0.002); end
  def test_outputs_emissions_w265; assert_in_delta(0.0, (worksheet.outputs_emissions_w265||0), 0.002); end
  def test_outputs_emissions_x265; assert_in_delta(0.0, (worksheet.outputs_emissions_x265||0), 0.002); end
  def test_outputs_emissions_c266; assert_equal("G.X2.B", worksheet.outputs_emissions_c266); end
  def test_outputs_emissions_d266; assert_equal("Global Carbon capture industrial process", worksheet.outputs_emissions_d266); end
  def test_outputs_emissions_p266; assert_in_delta(0.0, (worksheet.outputs_emissions_p266||0), 0.002); end
  def test_outputs_emissions_q266; assert_in_delta(0.0, (worksheet.outputs_emissions_q266||0), 0.002); end
  def test_outputs_emissions_r266; assert_in_delta(0.0, (worksheet.outputs_emissions_r266||0), 0.002); end
  def test_outputs_emissions_s266; assert_in_delta(0.0, (worksheet.outputs_emissions_s266||0), 0.002); end
  def test_outputs_emissions_t266; assert_in_delta(0.0, (worksheet.outputs_emissions_t266||0), 0.002); end
  def test_outputs_emissions_u266; assert_in_delta(0.0, (worksheet.outputs_emissions_u266||0), 0.002); end
  def test_outputs_emissions_v266; assert_in_delta(0.0, (worksheet.outputs_emissions_v266||0), 0.002); end
  def test_outputs_emissions_w266; assert_in_delta(0.0, (worksheet.outputs_emissions_w266||0), 0.002); end
  def test_outputs_emissions_x266; assert_in_delta(0.0, (worksheet.outputs_emissions_x266||0), 0.002); end
  def test_outputs_emissions_c267; assert_equal("G.X2.C", worksheet.outputs_emissions_c267); end
  def test_outputs_emissions_d267; assert_equal("Global Carbon capture from air", worksheet.outputs_emissions_d267); end
  def test_outputs_emissions_p267; assert_in_delta(0.0, (worksheet.outputs_emissions_p267||0), 0.002); end
  def test_outputs_emissions_q267; assert_in_delta(0.0, (worksheet.outputs_emissions_q267||0), 0.002); end
  def test_outputs_emissions_r267; assert_in_delta(0.0, (worksheet.outputs_emissions_r267||0), 0.002); end
  def test_outputs_emissions_s267; assert_in_delta(0.0, (worksheet.outputs_emissions_s267||0), 0.002); end
  def test_outputs_emissions_t267; assert_in_delta(0.0, (worksheet.outputs_emissions_t267||0), 0.002); end
  def test_outputs_emissions_u267; assert_in_delta(0.0, (worksheet.outputs_emissions_u267||0), 0.002); end
  def test_outputs_emissions_v267; assert_in_delta(0.0, (worksheet.outputs_emissions_v267||0), 0.002); end
  def test_outputs_emissions_w267; assert_in_delta(0.0, (worksheet.outputs_emissions_w267||0), 0.002); end
  def test_outputs_emissions_x267; assert_in_delta(0.0, (worksheet.outputs_emissions_x267||0), 0.002); end
  def test_outputs_emissions_c269; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c269); end
  def test_outputs_emissions_ah269; assert_equal("t", worksheet.outputs_emissions_ah269); end
  def test_outputs_emissions_h270; assert_equal("Historic actuals", worksheet.outputs_emissions_h270); end
  def test_outputs_emissions_p270; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p270); end
  def test_outputs_emissions_y270; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y270); end
  def test_outputs_emissions_c271; assert_equal("Emissions by sector", worksheet.outputs_emissions_c271); end
  def test_outputs_emissions_d271; assert_equal("Calculator Sector", worksheet.outputs_emissions_d271); end
  def test_outputs_emissions_h271; assert_equal("1990", worksheet.outputs_emissions_h271); end
  def test_outputs_emissions_i271; assert_equal("1995", worksheet.outputs_emissions_i271); end
  def test_outputs_emissions_j271; assert_equal("2000", worksheet.outputs_emissions_j271); end
  def test_outputs_emissions_k271; assert_equal("2005", worksheet.outputs_emissions_k271); end
  def test_outputs_emissions_l271; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l271, 0.002); end
  def test_outputs_emissions_n271; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n271, 0.002); end
  def test_outputs_emissions_p271; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p271, 0.002); end
  def test_outputs_emissions_q271; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q271, 0.002); end
  def test_outputs_emissions_r271; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r271, 0.002); end
  def test_outputs_emissions_s271; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s271, 0.002); end
  def test_outputs_emissions_t271; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t271, 0.002); end
  def test_outputs_emissions_u271; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u271, 0.002); end
  def test_outputs_emissions_v271; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v271, 0.002); end
  def test_outputs_emissions_w271; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w271, 0.002); end
  def test_outputs_emissions_x271; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x271, 0.002); end
  def test_outputs_emissions_y271; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y271, 0.002); end
  def test_outputs_emissions_z271; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z271, 0.002); end
  def test_outputs_emissions_aa271; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa271, 0.002); end
  def test_outputs_emissions_ab271; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab271, 0.002); end
  def test_outputs_emissions_ac271; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac271, 0.002); end
  def test_outputs_emissions_ad271; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad271, 0.002); end
  def test_outputs_emissions_ae271; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae271, 0.002); end
  def test_outputs_emissions_af271; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af271, 0.002); end
  def test_outputs_emissions_ag271; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag271, 0.002); end
  def test_outputs_emissions_ah271; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah271, 0.002); end
  def test_outputs_emissions_c272; assert_equal("G.10", worksheet.outputs_emissions_c272); end
  def test_outputs_emissions_d272; assert_equal("Global Transport", worksheet.outputs_emissions_d272); end
  def test_outputs_emissions_p272; assert_in_epsilon(210891.45088676532, worksheet.outputs_emissions_p272, 0.002); end
  def test_outputs_emissions_q272; assert_in_epsilon(257852.48373877426, worksheet.outputs_emissions_q272, 0.002); end
  def test_outputs_emissions_r272; assert_in_epsilon(257852.48373877426, worksheet.outputs_emissions_r272, 0.002); end
  def test_outputs_emissions_s272; assert_in_epsilon(334601.60423843114, worksheet.outputs_emissions_s272, 0.002); end
  def test_outputs_emissions_t272; assert_in_epsilon(334601.60423843114, worksheet.outputs_emissions_t272, 0.002); end
  def test_outputs_emissions_u272; assert_in_epsilon(433715.4026719608, worksheet.outputs_emissions_u272, 0.002); end
  def test_outputs_emissions_v272; assert_in_epsilon(433715.4026719608, worksheet.outputs_emissions_v272, 0.002); end
  def test_outputs_emissions_w272; assert_in_epsilon(561661.8309813761, worksheet.outputs_emissions_w272, 0.002); end
  def test_outputs_emissions_x272; assert_in_epsilon(561661.8309813761, worksheet.outputs_emissions_x272, 0.002); end
  def test_outputs_emissions_c273; assert_equal("G.20", worksheet.outputs_emissions_c273); end
  def test_outputs_emissions_d273; assert_equal("Global Buildings", worksheet.outputs_emissions_d273); end
  def test_outputs_emissions_h273; assert_in_epsilon(780526.4038733226, worksheet.outputs_emissions_h273, 0.002); end
  def test_outputs_emissions_i273; assert_in_epsilon(851858.2127794387, worksheet.outputs_emissions_i273, 0.002); end
  def test_outputs_emissions_j273; assert_in_epsilon(901550.1291164935, worksheet.outputs_emissions_j273, 0.002); end
  def test_outputs_emissions_k273; assert_in_epsilon(979656.2952381098, worksheet.outputs_emissions_k273, 0.002); end
  def test_outputs_emissions_l273; assert_in_epsilon(1056541.881887055, worksheet.outputs_emissions_l273, 0.002); end
  def test_outputs_emissions_p273; assert_in_epsilon(187042.7508559619, worksheet.outputs_emissions_p273, 0.002); end
  def test_outputs_emissions_q273; assert_in_epsilon(191964.2202934577, worksheet.outputs_emissions_q273, 0.002); end
  def test_outputs_emissions_r273; assert_in_epsilon(197343.27449461783, worksheet.outputs_emissions_r273, 0.002); end
  def test_outputs_emissions_s273; assert_in_epsilon(199191.66195584086, worksheet.outputs_emissions_s273, 0.002); end
  def test_outputs_emissions_t273; assert_in_epsilon(204665.3381804681, worksheet.outputs_emissions_t273, 0.002); end
  def test_outputs_emissions_u273; assert_in_epsilon(208015.26614995048, worksheet.outputs_emissions_u273, 0.002); end
  def test_outputs_emissions_v273; assert_in_epsilon(211367.23350762407, worksheet.outputs_emissions_v273, 0.002); end
  def test_outputs_emissions_w273; assert_in_epsilon(212514.00678612065, worksheet.outputs_emissions_w273, 0.002); end
  def test_outputs_emissions_x273; assert_in_epsilon(211037.69707537795, worksheet.outputs_emissions_x273, 0.002); end
  def test_outputs_emissions_c274; assert_equal("G.30", worksheet.outputs_emissions_c274); end
  def test_outputs_emissions_d274; assert_equal("Global Materials", worksheet.outputs_emissions_d274); end
  def test_outputs_emissions_h274; assert_in_epsilon(905180.5320142645, worksheet.outputs_emissions_h274, 0.002); end
  def test_outputs_emissions_i274; assert_in_epsilon(904747.6356425486, worksheet.outputs_emissions_i274, 0.002); end
  def test_outputs_emissions_j274; assert_in_epsilon(697614.6356866355, worksheet.outputs_emissions_j274, 0.002); end
  def test_outputs_emissions_k274; assert_in_epsilon(656408.4119336903, worksheet.outputs_emissions_k274, 0.002); end
  def test_outputs_emissions_l274; assert_in_epsilon(627557.3316671258, worksheet.outputs_emissions_l274, 0.002); end
  def test_outputs_emissions_p274; assert_in_epsilon(308998.41860134207, worksheet.outputs_emissions_p274, 0.002); end
  def test_outputs_emissions_q274; assert_in_epsilon(309521.3958284464, worksheet.outputs_emissions_q274, 0.002); end
  def test_outputs_emissions_r274; assert_in_epsilon(310099.55855552515, worksheet.outputs_emissions_r274, 0.002); end
  def test_outputs_emissions_s274; assert_in_epsilon(310593.7670528243, worksheet.outputs_emissions_s274, 0.002); end
  def test_outputs_emissions_t274; assert_in_epsilon(311004.02132034383, worksheet.outputs_emissions_t274, 0.002); end
  def test_outputs_emissions_u274; assert_in_epsilon(311330.3213580838, worksheet.outputs_emissions_u274, 0.002); end
  def test_outputs_emissions_v274; assert_in_epsilon(311572.66716604424, worksheet.outputs_emissions_v274, 0.002); end
  def test_outputs_emissions_w274; assert_in_epsilon(311731.05874422495, worksheet.outputs_emissions_w274, 0.002); end
  def test_outputs_emissions_x274; assert_in_epsilon(311805.49609262624, worksheet.outputs_emissions_x274, 0.002); end
  def test_outputs_emissions_c275; assert_equal("G.40", worksheet.outputs_emissions_c275); end
  def test_outputs_emissions_d275; assert_equal("Global Electricity Generation and Global Fuel production", worksheet.outputs_emissions_d275); end
  def test_outputs_emissions_e275; assert_equal("Global Electricity Generation", worksheet.outputs_emissions_e275); end
  def test_outputs_emissions_h275; assert_in_delta(0.0, (worksheet.outputs_emissions_h275||0), 0.002); end
  def test_outputs_emissions_i275; assert_in_delta(0.0, (worksheet.outputs_emissions_i275||0), 0.002); end
  def test_outputs_emissions_j275; assert_in_delta(0.0, (worksheet.outputs_emissions_j275||0), 0.002); end
  def test_outputs_emissions_k275; assert_in_delta(0.0, (worksheet.outputs_emissions_k275||0), 0.002); end
  def test_outputs_emissions_l275; assert_in_delta(0.0, (worksheet.outputs_emissions_l275||0), 0.002); end
  def test_outputs_emissions_p275; assert_in_delta(0.0, (worksheet.outputs_emissions_p275||0), 0.002); end
  def test_outputs_emissions_q275; assert_in_delta(0.0, (worksheet.outputs_emissions_q275||0), 0.002); end
  def test_outputs_emissions_r275; assert_in_delta(0.0, (worksheet.outputs_emissions_r275||0), 0.002); end
  def test_outputs_emissions_s275; assert_in_delta(0.0, (worksheet.outputs_emissions_s275||0), 0.002); end
  def test_outputs_emissions_t275; assert_in_delta(0.0, (worksheet.outputs_emissions_t275||0), 0.002); end
  def test_outputs_emissions_u275; assert_in_delta(0.0, (worksheet.outputs_emissions_u275||0), 0.002); end
  def test_outputs_emissions_v275; assert_in_delta(0.0, (worksheet.outputs_emissions_v275||0), 0.002); end
  def test_outputs_emissions_w275; assert_in_delta(0.0, (worksheet.outputs_emissions_w275||0), 0.002); end
  def test_outputs_emissions_x275; assert_in_delta(0.0, (worksheet.outputs_emissions_x275||0), 0.002); end
  def test_outputs_emissions_c276; assert_equal("G.60", worksheet.outputs_emissions_c276); end
  def test_outputs_emissions_d276; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d276); end
  def test_outputs_emissions_h276; assert_in_epsilon(8759725.80862529, worksheet.outputs_emissions_h276, 0.002); end
  def test_outputs_emissions_i276; assert_in_epsilon(8532941.421419613, worksheet.outputs_emissions_i276, 0.002); end
  def test_outputs_emissions_j276; assert_in_epsilon(8529611.588287098, worksheet.outputs_emissions_j276, 0.002); end
  def test_outputs_emissions_k276; assert_in_epsilon(9212771.184791807, worksheet.outputs_emissions_k276, 0.002); end
  def test_outputs_emissions_l276; assert_in_epsilon(9658340.01786029, worksheet.outputs_emissions_l276, 0.002); end
  def test_outputs_emissions_p276; assert_in_epsilon(6372957.064516129, worksheet.outputs_emissions_p276, 0.002); end
  def test_outputs_emissions_q276; assert_in_epsilon(6856909.6758586895, worksheet.outputs_emissions_q276, 0.002); end
  def test_outputs_emissions_r276; assert_in_epsilon(7362643.025399853, worksheet.outputs_emissions_r276, 0.002); end
  def test_outputs_emissions_s276; assert_in_epsilon(7700213.2397099845, worksheet.outputs_emissions_s276, 0.002); end
  def test_outputs_emissions_t276; assert_in_epsilon(7951882.384727722, worksheet.outputs_emissions_t276, 0.002); end
  def test_outputs_emissions_u276; assert_in_epsilon(8128374.076163308, worksheet.outputs_emissions_u276, 0.002); end
  def test_outputs_emissions_v276; assert_in_epsilon(8238584.527575385, worksheet.outputs_emissions_v276, 0.002); end
  def test_outputs_emissions_w276; assert_in_epsilon(8289959.3383721635, worksheet.outputs_emissions_w276, 0.002); end
  def test_outputs_emissions_x276; assert_in_epsilon(8289409.356159564, worksheet.outputs_emissions_x276, 0.002); end
  def test_outputs_emissions_d277; assert_equal("total", worksheet.outputs_emissions_d277); end
  def test_outputs_emissions_h277; assert_in_epsilon(10445432.74451287, worksheet.outputs_emissions_h277, 0.002); end
  def test_outputs_emissions_i277; assert_in_epsilon(10289547.269841613, worksheet.outputs_emissions_i277, 0.002); end
  def test_outputs_emissions_j277; assert_in_epsilon(10128776.353090225, worksheet.outputs_emissions_j277, 0.002); end
  def test_outputs_emissions_k277; assert_in_epsilon(10848835.89196358, worksheet.outputs_emissions_k277, 0.002); end
  def test_outputs_emissions_l277; assert_in_epsilon(11342439.231414484, worksheet.outputs_emissions_l277, 0.002); end
  def test_outputs_emissions_p277; assert_in_epsilon(7079889.684860198, worksheet.outputs_emissions_p277, 0.002); end
  def test_outputs_emissions_q277; assert_in_epsilon(7616247.775719368, worksheet.outputs_emissions_q277, 0.002); end
  def test_outputs_emissions_r277; assert_in_epsilon(8127938.34218877, worksheet.outputs_emissions_r277, 0.002); end
  def test_outputs_emissions_s277; assert_in_epsilon(8544600.272957081, worksheet.outputs_emissions_s277, 0.002); end
  def test_outputs_emissions_t277; assert_in_epsilon(8802153.348466964, worksheet.outputs_emissions_t277, 0.002); end
  def test_outputs_emissions_u277; assert_in_epsilon(9081435.066343304, worksheet.outputs_emissions_u277, 0.002); end
  def test_outputs_emissions_v277; assert_in_epsilon(9195239.830921015, worksheet.outputs_emissions_v277, 0.002); end
  def test_outputs_emissions_w277; assert_in_epsilon(9375866.234883886, worksheet.outputs_emissions_w277, 0.002); end
  def test_outputs_emissions_x277; assert_in_epsilon(9373914.380308945, worksheet.outputs_emissions_x277, 0.002); end
  def test_outputs_emissions_c278; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c278); end
  def test_outputs_emissions_d278; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d278); end
  def test_outputs_emissions_h278; assert_in_delta(0.0, (worksheet.outputs_emissions_h278||0), 0.002); end
  def test_outputs_emissions_i278; assert_in_delta(0.0, (worksheet.outputs_emissions_i278||0), 0.002); end
  def test_outputs_emissions_j278; assert_in_delta(0.0, (worksheet.outputs_emissions_j278||0), 0.002); end
  def test_outputs_emissions_k278; assert_in_delta(0.0, (worksheet.outputs_emissions_k278||0), 0.002); end
  def test_outputs_emissions_l278; assert_in_delta(0.0, (worksheet.outputs_emissions_l278||0), 0.002); end
  def test_outputs_emissions_p278; assert_in_epsilon(7079889.684860198, worksheet.outputs_emissions_p278, 0.002); end
  def test_outputs_emissions_q278; assert_in_epsilon(14696137.460579567, worksheet.outputs_emissions_q278, 0.002); end
  def test_outputs_emissions_r278; assert_in_epsilon(22824075.802768335, worksheet.outputs_emissions_r278, 0.002); end
  def test_outputs_emissions_s278; assert_in_epsilon(31368676.075725414, worksheet.outputs_emissions_s278, 0.002); end
  def test_outputs_emissions_t278; assert_in_epsilon(40170829.42419238, worksheet.outputs_emissions_t278, 0.002); end
  def test_outputs_emissions_u278; assert_in_epsilon(49252264.49053568, worksheet.outputs_emissions_u278, 0.002); end
  def test_outputs_emissions_v278; assert_in_epsilon(58447504.32145669, worksheet.outputs_emissions_v278, 0.002); end
  def test_outputs_emissions_w278; assert_in_epsilon(67823370.55634058, worksheet.outputs_emissions_w278, 0.002); end
  def test_outputs_emissions_x278; assert_in_epsilon(77197284.93664952, worksheet.outputs_emissions_x278, 0.002); end
  def test_outputs_emissions_c280; assert_equal("G.50", worksheet.outputs_emissions_c280); end
  def test_outputs_emissions_d280; assert_equal("Global Fuel production", worksheet.outputs_emissions_d280); end
  def test_outputs_emissions_p280; assert_in_delta(0.0, (worksheet.outputs_emissions_p280||0), 0.002); end
  def test_outputs_emissions_q280; assert_in_delta(0.0, (worksheet.outputs_emissions_q280||0), 0.002); end
  def test_outputs_emissions_r280; assert_in_delta(0.0, (worksheet.outputs_emissions_r280||0), 0.002); end
  def test_outputs_emissions_s280; assert_in_delta(0.0, (worksheet.outputs_emissions_s280||0), 0.002); end
  def test_outputs_emissions_t280; assert_in_delta(0.0, (worksheet.outputs_emissions_t280||0), 0.002); end
  def test_outputs_emissions_u280; assert_in_delta(0.0, (worksheet.outputs_emissions_u280||0), 0.002); end
  def test_outputs_emissions_v280; assert_in_delta(0.0, (worksheet.outputs_emissions_v280||0), 0.002); end
  def test_outputs_emissions_w280; assert_in_delta(0.0, (worksheet.outputs_emissions_w280||0), 0.002); end
  def test_outputs_emissions_x280; assert_in_delta(0.0, (worksheet.outputs_emissions_x280||0), 0.002); end
  def test_outputs_emissions_c283; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c283); end
  def test_outputs_emissions_ah283; assert_equal("t", worksheet.outputs_emissions_ah283); end
  def test_outputs_emissions_h284; assert_equal("Historic actuals", worksheet.outputs_emissions_h284); end
  def test_outputs_emissions_p284; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p284); end
  def test_outputs_emissions_y284; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y284); end
  def test_outputs_emissions_c285; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c285); end
  def test_outputs_emissions_h285; assert_equal("1990", worksheet.outputs_emissions_h285); end
  def test_outputs_emissions_i285; assert_equal("1995", worksheet.outputs_emissions_i285); end
  def test_outputs_emissions_j285; assert_equal("2000", worksheet.outputs_emissions_j285); end
  def test_outputs_emissions_k285; assert_equal("2005", worksheet.outputs_emissions_k285); end
  def test_outputs_emissions_l285; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l285, 0.002); end
  def test_outputs_emissions_n285; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n285, 0.002); end
  def test_outputs_emissions_p285; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p285, 0.002); end
  def test_outputs_emissions_q285; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q285, 0.002); end
  def test_outputs_emissions_r285; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r285, 0.002); end
  def test_outputs_emissions_s285; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s285, 0.002); end
  def test_outputs_emissions_t285; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t285, 0.002); end
  def test_outputs_emissions_u285; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u285, 0.002); end
  def test_outputs_emissions_v285; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v285, 0.002); end
  def test_outputs_emissions_w285; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w285, 0.002); end
  def test_outputs_emissions_x285; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x285, 0.002); end
  def test_outputs_emissions_y285; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y285, 0.002); end
  def test_outputs_emissions_z285; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z285, 0.002); end
  def test_outputs_emissions_aa285; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa285, 0.002); end
  def test_outputs_emissions_ab285; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab285, 0.002); end
  def test_outputs_emissions_ac285; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac285, 0.002); end
  def test_outputs_emissions_ad285; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad285, 0.002); end
  def test_outputs_emissions_ae285; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae285, 0.002); end
  def test_outputs_emissions_af285; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af285, 0.002); end
  def test_outputs_emissions_ag285; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag285, 0.002); end
  def test_outputs_emissions_ah285; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah285, 0.002); end
  def test_outputs_emissions_c286; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_emissions_c286); end
  def test_outputs_emissions_d286; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d286); end
  def test_outputs_emissions_q286; assert_in_epsilon(611082887.271504, worksheet.outputs_emissions_q286, 0.002); end
  def test_outputs_emissions_c287; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_emissions_c287); end
  def test_outputs_emissions_d287; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_emissions_d287); end
  def test_outputs_emissions_q287; assert_in_epsilon(1220797070.0485716, worksheet.outputs_emissions_q287, 0.002); end
  def test_outputs_emissions_c288; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_emissions_c288); end
  def test_outputs_emissions_d288; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_emissions_d288); end
  def test_outputs_emissions_q288; assert_in_epsilon(4452361968.560808, worksheet.outputs_emissions_q288, 0.002); end
  def test_outputs_emissions_c289; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_emissions_c289); end
  def test_outputs_emissions_d289; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_emissions_d289); end
  def test_outputs_emissions_q289; assert_in_epsilon(314663327.2460474, worksheet.outputs_emissions_q289, 0.002); end
  def test_outputs_emissions_c290; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_emissions_c290); end
  def test_outputs_emissions_d290; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_emissions_d290); end
  def test_outputs_emissions_q290; assert_in_epsilon(767416825.6402138, worksheet.outputs_emissions_q290, 0.002); end
  def test_outputs_emissions_c291; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_emissions_c291); end
  def test_outputs_emissions_d291; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_emissions_d291); end
  def test_outputs_emissions_q291; assert_in_epsilon(629624501.4663495, worksheet.outputs_emissions_q291, 0.002); end
  def test_outputs_emissions_c292; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_emissions_c292); end
  def test_outputs_emissions_d292; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_emissions_d292); end
  def test_outputs_emissions_q292; assert_in_epsilon(920710764.7098188, worksheet.outputs_emissions_q292, 0.002); end
  def test_outputs_emissions_c293; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_emissions_c293); end
  def test_outputs_emissions_d293; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d293); end
  def test_outputs_emissions_q293; assert_in_delta(0.0, (worksheet.outputs_emissions_q293||0), 0.002); end
  def test_outputs_emissions_c294; assert_equal(".CCS.solid.super.elec", worksheet.outputs_emissions_c294); end
  def test_outputs_emissions_d294; assert_equal(:na, worksheet.outputs_emissions_d294); end
  def test_outputs_emissions_q294; assert_equal(:na, worksheet.outputs_emissions_q294); end
  def test_outputs_emissions_c295; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_emissions_c295); end
  def test_outputs_emissions_d295; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_emissions_d295); end
  def test_outputs_emissions_q295; assert_in_delta(0.0, (worksheet.outputs_emissions_q295||0), 0.002); end
  def test_outputs_emissions_c296; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_emissions_c296); end
  def test_outputs_emissions_d296; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_emissions_d296); end
  def test_outputs_emissions_q296; assert_in_delta(0.0, (worksheet.outputs_emissions_q296||0), 0.002); end
  def test_outputs_emissions_c297; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_emissions_c297); end
  def test_outputs_emissions_d297; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_emissions_d297); end
  def test_outputs_emissions_q297; assert_in_delta(0.0, (worksheet.outputs_emissions_q297||0), 0.002); end
  def test_outputs_emissions_c298; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_emissions_c298); end
  def test_outputs_emissions_d298; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_emissions_d298); end
  def test_outputs_emissions_q298; assert_in_delta(0.0, (worksheet.outputs_emissions_q298||0), 0.002); end
  def test_outputs_emissions_c299; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_emissions_c299); end
  def test_outputs_emissions_d299; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_emissions_d299); end
  def test_outputs_emissions_q299; assert_in_delta(0.0, (worksheet.outputs_emissions_q299||0), 0.002); end
  def test_outputs_emissions_d300; assert_equal("Total emissions from power", worksheet.outputs_emissions_d300); end
  def test_outputs_emissions_h300; assert_in_delta(0.0, (worksheet.outputs_emissions_h300||0), 0.002); end
  def test_outputs_emissions_i300; assert_in_delta(0.0, (worksheet.outputs_emissions_i300||0), 0.002); end
  def test_outputs_emissions_j300; assert_in_delta(0.0, (worksheet.outputs_emissions_j300||0), 0.002); end
  def test_outputs_emissions_k300; assert_in_delta(0.0, (worksheet.outputs_emissions_k300||0), 0.002); end
  def test_outputs_emissions_l300; assert_in_delta(0.0, (worksheet.outputs_emissions_l300||0), 0.002); end
  def test_outputs_emissions_p300; assert_in_delta(0.0, (worksheet.outputs_emissions_p300||0), 0.002); end
  def test_outputs_emissions_q300; assert_equal(:na, worksheet.outputs_emissions_q300); end
  def test_outputs_emissions_r300; assert_in_delta(0.0, (worksheet.outputs_emissions_r300||0), 0.002); end
  def test_outputs_emissions_s300; assert_in_delta(0.0, (worksheet.outputs_emissions_s300||0), 0.002); end
  def test_outputs_emissions_t300; assert_in_delta(0.0, (worksheet.outputs_emissions_t300||0), 0.002); end
  def test_outputs_emissions_u300; assert_in_delta(0.0, (worksheet.outputs_emissions_u300||0), 0.002); end
  def test_outputs_emissions_v300; assert_in_delta(0.0, (worksheet.outputs_emissions_v300||0), 0.002); end
  def test_outputs_emissions_w300; assert_in_delta(0.0, (worksheet.outputs_emissions_w300||0), 0.002); end
  def test_outputs_emissions_x300; assert_in_delta(0.0, (worksheet.outputs_emissions_x300||0), 0.002); end
  def test_outputs_emissions_c301; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c301); end
  def test_outputs_emissions_c304; assert_equal("Emissions intensity", worksheet.outputs_emissions_c304); end
  def test_outputs_emissions_d304; assert_equal("Mt/TWh", worksheet.outputs_emissions_d304); end
  def test_outputs_emissions_d305; assert_equal("g/KWh", worksheet.outputs_emissions_d305); end
  def test_outputs_emissions_b310; assert_equal("F", worksheet.outputs_emissions_b310); end
  def test_outputs_emissions_c310; assert_equal("F-gases", worksheet.outputs_emissions_c310); end
  def test_outputs_emissions_c313; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c313); end
  def test_outputs_emissions_ah313; assert_equal("%", worksheet.outputs_emissions_ah313); end
  def test_outputs_emissions_h314; assert_equal("Historic actuals", worksheet.outputs_emissions_h314); end
  def test_outputs_emissions_p314; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p314); end
  def test_outputs_emissions_y314; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y314); end
  def test_outputs_emissions_d315; assert_equal("IPCC Sector", worksheet.outputs_emissions_d315); end
  def test_outputs_emissions_h315; assert_in_epsilon(1990.0, worksheet.outputs_emissions_h315, 0.002); end
  def test_outputs_emissions_i315; assert_in_epsilon(1995.0, worksheet.outputs_emissions_i315, 0.002); end
  def test_outputs_emissions_j315; assert_in_epsilon(2000.0, worksheet.outputs_emissions_j315, 0.002); end
  def test_outputs_emissions_k315; assert_in_epsilon(2005.0, worksheet.outputs_emissions_k315, 0.002); end
  def test_outputs_emissions_l315; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l315, 0.002); end
  def test_outputs_emissions_n315; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n315, 0.002); end
  def test_outputs_emissions_p315; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p315, 0.002); end
  def test_outputs_emissions_q315; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q315, 0.002); end
  def test_outputs_emissions_r315; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r315, 0.002); end
  def test_outputs_emissions_s315; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s315, 0.002); end
  def test_outputs_emissions_t315; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t315, 0.002); end
  def test_outputs_emissions_u315; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u315, 0.002); end
  def test_outputs_emissions_v315; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v315, 0.002); end
  def test_outputs_emissions_w315; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w315, 0.002); end
  def test_outputs_emissions_x315; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x315, 0.002); end
  def test_outputs_emissions_y315; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y315, 0.002); end
  def test_outputs_emissions_z315; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z315, 0.002); end
  def test_outputs_emissions_aa315; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa315, 0.002); end
  def test_outputs_emissions_ab315; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab315, 0.002); end
  def test_outputs_emissions_ac315; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac315, 0.002); end
  def test_outputs_emissions_ad315; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad315, 0.002); end
  def test_outputs_emissions_ae315; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae315, 0.002); end
  def test_outputs_emissions_af315; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af315, 0.002); end
  def test_outputs_emissions_ag315; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag315, 0.002); end
  def test_outputs_emissions_ah315; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah315, 0.002); end
  def test_outputs_emissions_c316; assert_equal("G.1A", worksheet.outputs_emissions_c316); end
  def test_outputs_emissions_d316; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d316); end
  def test_outputs_emissions_h316; assert_equal("", worksheet.outputs_emissions_h316); end
  def test_outputs_emissions_i316; assert_equal("", worksheet.outputs_emissions_i316); end
  def test_outputs_emissions_j316; assert_equal("", worksheet.outputs_emissions_j316); end
  def test_outputs_emissions_k316; assert_equal("", worksheet.outputs_emissions_k316); end
  def test_outputs_emissions_l316; assert_equal("", worksheet.outputs_emissions_l316); end
  def test_outputs_emissions_n316; assert_equal("", worksheet.outputs_emissions_n316); end
  def test_outputs_emissions_p316; assert_equal("", worksheet.outputs_emissions_p316); end
  def test_outputs_emissions_q316; assert_equal("", worksheet.outputs_emissions_q316); end
  def test_outputs_emissions_r316; assert_equal("", worksheet.outputs_emissions_r316); end
  def test_outputs_emissions_s316; assert_equal("", worksheet.outputs_emissions_s316); end
  def test_outputs_emissions_t316; assert_equal("", worksheet.outputs_emissions_t316); end
  def test_outputs_emissions_u316; assert_equal("", worksheet.outputs_emissions_u316); end
  def test_outputs_emissions_v316; assert_equal("", worksheet.outputs_emissions_v316); end
  def test_outputs_emissions_w316; assert_equal("", worksheet.outputs_emissions_w316); end
  def test_outputs_emissions_x316; assert_equal("", worksheet.outputs_emissions_x316); end
  def test_outputs_emissions_y316; assert_equal("", worksheet.outputs_emissions_y316); end
  def test_outputs_emissions_z316; assert_equal("", worksheet.outputs_emissions_z316); end
  def test_outputs_emissions_aa316; assert_equal("", worksheet.outputs_emissions_aa316); end
  def test_outputs_emissions_ab316; assert_equal("", worksheet.outputs_emissions_ab316); end
  def test_outputs_emissions_ac316; assert_equal("", worksheet.outputs_emissions_ac316); end
  def test_outputs_emissions_ad316; assert_equal("", worksheet.outputs_emissions_ad316); end
  def test_outputs_emissions_ae316; assert_equal("", worksheet.outputs_emissions_ae316); end
  def test_outputs_emissions_af316; assert_equal("", worksheet.outputs_emissions_af316); end
  def test_outputs_emissions_ag316; assert_equal("", worksheet.outputs_emissions_ag316); end
  def test_outputs_emissions_ah316; assert_equal("", worksheet.outputs_emissions_ah316); end
  def test_outputs_emissions_c317; assert_equal("G.1B", worksheet.outputs_emissions_c317); end
  def test_outputs_emissions_d317; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d317); end
  def test_outputs_emissions_h317; assert_equal("", worksheet.outputs_emissions_h317); end
  def test_outputs_emissions_i317; assert_equal("", worksheet.outputs_emissions_i317); end
  def test_outputs_emissions_j317; assert_equal("", worksheet.outputs_emissions_j317); end
  def test_outputs_emissions_k317; assert_equal("", worksheet.outputs_emissions_k317); end
  def test_outputs_emissions_l317; assert_equal("", worksheet.outputs_emissions_l317); end
  def test_outputs_emissions_n317; assert_equal("", worksheet.outputs_emissions_n317); end
  def test_outputs_emissions_p317; assert_equal("", worksheet.outputs_emissions_p317); end
  def test_outputs_emissions_q317; assert_equal("", worksheet.outputs_emissions_q317); end
  def test_outputs_emissions_r317; assert_equal("", worksheet.outputs_emissions_r317); end
  def test_outputs_emissions_s317; assert_equal("", worksheet.outputs_emissions_s317); end
  def test_outputs_emissions_t317; assert_equal("", worksheet.outputs_emissions_t317); end
  def test_outputs_emissions_u317; assert_equal("", worksheet.outputs_emissions_u317); end
  def test_outputs_emissions_v317; assert_equal("", worksheet.outputs_emissions_v317); end
  def test_outputs_emissions_w317; assert_equal("", worksheet.outputs_emissions_w317); end
  def test_outputs_emissions_x317; assert_equal("", worksheet.outputs_emissions_x317); end
  def test_outputs_emissions_y317; assert_equal("", worksheet.outputs_emissions_y317); end
  def test_outputs_emissions_z317; assert_equal("", worksheet.outputs_emissions_z317); end
  def test_outputs_emissions_aa317; assert_equal("", worksheet.outputs_emissions_aa317); end
  def test_outputs_emissions_ab317; assert_equal("", worksheet.outputs_emissions_ab317); end
  def test_outputs_emissions_ac317; assert_equal("", worksheet.outputs_emissions_ac317); end
  def test_outputs_emissions_ad317; assert_equal("", worksheet.outputs_emissions_ad317); end
  def test_outputs_emissions_ae317; assert_equal("", worksheet.outputs_emissions_ae317); end
  def test_outputs_emissions_af317; assert_equal("", worksheet.outputs_emissions_af317); end
  def test_outputs_emissions_ag317; assert_equal("", worksheet.outputs_emissions_ag317); end
  def test_outputs_emissions_ah317; assert_equal("", worksheet.outputs_emissions_ah317); end
  def test_outputs_emissions_c318; assert_equal("G.2", worksheet.outputs_emissions_c318); end
  def test_outputs_emissions_d318; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d318); end
  def test_outputs_emissions_h318; assert_equal("", worksheet.outputs_emissions_h318); end
  def test_outputs_emissions_i318; assert_equal("", worksheet.outputs_emissions_i318); end
  def test_outputs_emissions_j318; assert_equal("", worksheet.outputs_emissions_j318); end
  def test_outputs_emissions_k318; assert_equal("", worksheet.outputs_emissions_k318); end
  def test_outputs_emissions_l318; assert_equal("", worksheet.outputs_emissions_l318); end
  def test_outputs_emissions_n318; assert_equal("", worksheet.outputs_emissions_n318); end
  def test_outputs_emissions_p318; assert_equal("", worksheet.outputs_emissions_p318); end
  def test_outputs_emissions_q318; assert_equal("", worksheet.outputs_emissions_q318); end
  def test_outputs_emissions_r318; assert_equal("", worksheet.outputs_emissions_r318); end
  def test_outputs_emissions_s318; assert_equal("", worksheet.outputs_emissions_s318); end
  def test_outputs_emissions_t318; assert_equal("", worksheet.outputs_emissions_t318); end
  def test_outputs_emissions_u318; assert_equal("", worksheet.outputs_emissions_u318); end
  def test_outputs_emissions_v318; assert_equal("", worksheet.outputs_emissions_v318); end
  def test_outputs_emissions_w318; assert_equal("", worksheet.outputs_emissions_w318); end
  def test_outputs_emissions_x318; assert_equal("", worksheet.outputs_emissions_x318); end
  def test_outputs_emissions_y318; assert_equal("", worksheet.outputs_emissions_y318); end
  def test_outputs_emissions_z318; assert_equal("", worksheet.outputs_emissions_z318); end
  def test_outputs_emissions_aa318; assert_equal("", worksheet.outputs_emissions_aa318); end
  def test_outputs_emissions_ab318; assert_equal("", worksheet.outputs_emissions_ab318); end
  def test_outputs_emissions_ac318; assert_equal("", worksheet.outputs_emissions_ac318); end
  def test_outputs_emissions_ad318; assert_equal("", worksheet.outputs_emissions_ad318); end
  def test_outputs_emissions_ae318; assert_equal("", worksheet.outputs_emissions_ae318); end
  def test_outputs_emissions_af318; assert_equal("", worksheet.outputs_emissions_af318); end
  def test_outputs_emissions_ag318; assert_equal("", worksheet.outputs_emissions_ag318); end
  def test_outputs_emissions_ah318; assert_equal("", worksheet.outputs_emissions_ah318); end
  def test_outputs_emissions_c319; assert_equal("G.3", worksheet.outputs_emissions_c319); end
  def test_outputs_emissions_d319; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d319); end
  def test_outputs_emissions_h319; assert_equal("", worksheet.outputs_emissions_h319); end
  def test_outputs_emissions_i319; assert_equal("", worksheet.outputs_emissions_i319); end
  def test_outputs_emissions_j319; assert_equal("", worksheet.outputs_emissions_j319); end
  def test_outputs_emissions_k319; assert_equal("", worksheet.outputs_emissions_k319); end
  def test_outputs_emissions_l319; assert_equal("", worksheet.outputs_emissions_l319); end
  def test_outputs_emissions_n319; assert_equal("", worksheet.outputs_emissions_n319); end
  def test_outputs_emissions_p319; assert_equal("", worksheet.outputs_emissions_p319); end
  def test_outputs_emissions_q319; assert_equal("", worksheet.outputs_emissions_q319); end
  def test_outputs_emissions_r319; assert_equal("", worksheet.outputs_emissions_r319); end
  def test_outputs_emissions_s319; assert_equal("", worksheet.outputs_emissions_s319); end
  def test_outputs_emissions_t319; assert_equal("", worksheet.outputs_emissions_t319); end
  def test_outputs_emissions_u319; assert_equal("", worksheet.outputs_emissions_u319); end
  def test_outputs_emissions_v319; assert_equal("", worksheet.outputs_emissions_v319); end
  def test_outputs_emissions_w319; assert_equal("", worksheet.outputs_emissions_w319); end
  def test_outputs_emissions_x319; assert_equal("", worksheet.outputs_emissions_x319); end
  def test_outputs_emissions_y319; assert_equal("", worksheet.outputs_emissions_y319); end
  def test_outputs_emissions_z319; assert_equal("", worksheet.outputs_emissions_z319); end
  def test_outputs_emissions_aa319; assert_equal("", worksheet.outputs_emissions_aa319); end
  def test_outputs_emissions_ab319; assert_equal("", worksheet.outputs_emissions_ab319); end
  def test_outputs_emissions_ac319; assert_equal("", worksheet.outputs_emissions_ac319); end
  def test_outputs_emissions_ad319; assert_equal("", worksheet.outputs_emissions_ad319); end
  def test_outputs_emissions_ae319; assert_equal("", worksheet.outputs_emissions_ae319); end
  def test_outputs_emissions_af319; assert_equal("", worksheet.outputs_emissions_af319); end
  def test_outputs_emissions_ag319; assert_equal("", worksheet.outputs_emissions_ag319); end
  def test_outputs_emissions_ah319; assert_equal("", worksheet.outputs_emissions_ah319); end
  def test_outputs_emissions_c320; assert_equal("G.4", worksheet.outputs_emissions_c320); end
  def test_outputs_emissions_d320; assert_equal("Global Agriculture", worksheet.outputs_emissions_d320); end
  def test_outputs_emissions_h320; assert_equal("", worksheet.outputs_emissions_h320); end
  def test_outputs_emissions_i320; assert_equal("", worksheet.outputs_emissions_i320); end
  def test_outputs_emissions_j320; assert_equal("", worksheet.outputs_emissions_j320); end
  def test_outputs_emissions_k320; assert_equal("", worksheet.outputs_emissions_k320); end
  def test_outputs_emissions_l320; assert_equal("", worksheet.outputs_emissions_l320); end
  def test_outputs_emissions_n320; assert_equal("", worksheet.outputs_emissions_n320); end
  def test_outputs_emissions_p320; assert_equal("", worksheet.outputs_emissions_p320); end
  def test_outputs_emissions_q320; assert_equal("", worksheet.outputs_emissions_q320); end
  def test_outputs_emissions_r320; assert_equal("", worksheet.outputs_emissions_r320); end
  def test_outputs_emissions_s320; assert_equal("", worksheet.outputs_emissions_s320); end
  def test_outputs_emissions_t320; assert_equal("", worksheet.outputs_emissions_t320); end
  def test_outputs_emissions_u320; assert_equal("", worksheet.outputs_emissions_u320); end
  def test_outputs_emissions_v320; assert_equal("", worksheet.outputs_emissions_v320); end
  def test_outputs_emissions_w320; assert_equal("", worksheet.outputs_emissions_w320); end
  def test_outputs_emissions_x320; assert_equal("", worksheet.outputs_emissions_x320); end
  def test_outputs_emissions_y320; assert_equal("", worksheet.outputs_emissions_y320); end
  def test_outputs_emissions_z320; assert_equal("", worksheet.outputs_emissions_z320); end
  def test_outputs_emissions_aa320; assert_equal("", worksheet.outputs_emissions_aa320); end
  def test_outputs_emissions_ab320; assert_equal("", worksheet.outputs_emissions_ab320); end
  def test_outputs_emissions_ac320; assert_equal("", worksheet.outputs_emissions_ac320); end
  def test_outputs_emissions_ad320; assert_equal("", worksheet.outputs_emissions_ad320); end
  def test_outputs_emissions_ae320; assert_equal("", worksheet.outputs_emissions_ae320); end
  def test_outputs_emissions_af320; assert_equal("", worksheet.outputs_emissions_af320); end
  def test_outputs_emissions_ag320; assert_equal("", worksheet.outputs_emissions_ag320); end
  def test_outputs_emissions_ah320; assert_equal("", worksheet.outputs_emissions_ah320); end
  def test_outputs_emissions_c321; assert_equal("G.5", worksheet.outputs_emissions_c321); end
  def test_outputs_emissions_d321; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d321); end
  def test_outputs_emissions_h321; assert_equal("", worksheet.outputs_emissions_h321); end
  def test_outputs_emissions_i321; assert_equal("", worksheet.outputs_emissions_i321); end
  def test_outputs_emissions_j321; assert_equal("", worksheet.outputs_emissions_j321); end
  def test_outputs_emissions_k321; assert_equal("", worksheet.outputs_emissions_k321); end
  def test_outputs_emissions_l321; assert_equal("", worksheet.outputs_emissions_l321); end
  def test_outputs_emissions_n321; assert_equal("", worksheet.outputs_emissions_n321); end
  def test_outputs_emissions_p321; assert_equal("", worksheet.outputs_emissions_p321); end
  def test_outputs_emissions_q321; assert_equal("", worksheet.outputs_emissions_q321); end
  def test_outputs_emissions_r321; assert_equal("", worksheet.outputs_emissions_r321); end
  def test_outputs_emissions_s321; assert_equal("", worksheet.outputs_emissions_s321); end
  def test_outputs_emissions_t321; assert_equal("", worksheet.outputs_emissions_t321); end
  def test_outputs_emissions_u321; assert_equal("", worksheet.outputs_emissions_u321); end
  def test_outputs_emissions_v321; assert_equal("", worksheet.outputs_emissions_v321); end
  def test_outputs_emissions_w321; assert_equal("", worksheet.outputs_emissions_w321); end
  def test_outputs_emissions_x321; assert_equal("", worksheet.outputs_emissions_x321); end
  def test_outputs_emissions_y321; assert_equal("", worksheet.outputs_emissions_y321); end
  def test_outputs_emissions_z321; assert_equal("", worksheet.outputs_emissions_z321); end
  def test_outputs_emissions_aa321; assert_equal("", worksheet.outputs_emissions_aa321); end
  def test_outputs_emissions_ab321; assert_equal("", worksheet.outputs_emissions_ab321); end
  def test_outputs_emissions_ac321; assert_equal("", worksheet.outputs_emissions_ac321); end
  def test_outputs_emissions_ad321; assert_equal("", worksheet.outputs_emissions_ad321); end
  def test_outputs_emissions_ae321; assert_equal("", worksheet.outputs_emissions_ae321); end
  def test_outputs_emissions_af321; assert_equal("", worksheet.outputs_emissions_af321); end
  def test_outputs_emissions_ag321; assert_equal("", worksheet.outputs_emissions_ag321); end
  def test_outputs_emissions_ah321; assert_equal("", worksheet.outputs_emissions_ah321); end
  def test_outputs_emissions_c322; assert_equal("G.6", worksheet.outputs_emissions_c322); end
  def test_outputs_emissions_d322; assert_equal("Global Waste", worksheet.outputs_emissions_d322); end
  def test_outputs_emissions_h322; assert_equal("", worksheet.outputs_emissions_h322); end
  def test_outputs_emissions_i322; assert_equal("", worksheet.outputs_emissions_i322); end
  def test_outputs_emissions_j322; assert_equal("", worksheet.outputs_emissions_j322); end
  def test_outputs_emissions_k322; assert_equal("", worksheet.outputs_emissions_k322); end
  def test_outputs_emissions_l322; assert_equal("", worksheet.outputs_emissions_l322); end
  def test_outputs_emissions_n322; assert_equal("", worksheet.outputs_emissions_n322); end
  def test_outputs_emissions_p322; assert_equal("", worksheet.outputs_emissions_p322); end
  def test_outputs_emissions_q322; assert_equal("", worksheet.outputs_emissions_q322); end
  def test_outputs_emissions_r322; assert_equal("", worksheet.outputs_emissions_r322); end
  def test_outputs_emissions_s322; assert_equal("", worksheet.outputs_emissions_s322); end
  def test_outputs_emissions_t322; assert_equal("", worksheet.outputs_emissions_t322); end
  def test_outputs_emissions_u322; assert_equal("", worksheet.outputs_emissions_u322); end
  def test_outputs_emissions_v322; assert_equal("", worksheet.outputs_emissions_v322); end
  def test_outputs_emissions_w322; assert_equal("", worksheet.outputs_emissions_w322); end
  def test_outputs_emissions_x322; assert_equal("", worksheet.outputs_emissions_x322); end
  def test_outputs_emissions_y322; assert_equal("", worksheet.outputs_emissions_y322); end
  def test_outputs_emissions_z322; assert_equal("", worksheet.outputs_emissions_z322); end
  def test_outputs_emissions_aa322; assert_equal("", worksheet.outputs_emissions_aa322); end
  def test_outputs_emissions_ab322; assert_equal("", worksheet.outputs_emissions_ab322); end
  def test_outputs_emissions_ac322; assert_equal("", worksheet.outputs_emissions_ac322); end
  def test_outputs_emissions_ad322; assert_equal("", worksheet.outputs_emissions_ad322); end
  def test_outputs_emissions_ae322; assert_equal("", worksheet.outputs_emissions_ae322); end
  def test_outputs_emissions_af322; assert_equal("", worksheet.outputs_emissions_af322); end
  def test_outputs_emissions_ag322; assert_equal("", worksheet.outputs_emissions_ag322); end
  def test_outputs_emissions_ah322; assert_equal("", worksheet.outputs_emissions_ah322); end
  def test_outputs_emissions_c323; assert_equal("G.7", worksheet.outputs_emissions_c323); end
  def test_outputs_emissions_d323; assert_equal("Global Other", worksheet.outputs_emissions_d323); end
  def test_outputs_emissions_h323; assert_equal("", worksheet.outputs_emissions_h323); end
  def test_outputs_emissions_i323; assert_equal("", worksheet.outputs_emissions_i323); end
  def test_outputs_emissions_j323; assert_equal("", worksheet.outputs_emissions_j323); end
  def test_outputs_emissions_k323; assert_equal("", worksheet.outputs_emissions_k323); end
  def test_outputs_emissions_l323; assert_equal("", worksheet.outputs_emissions_l323); end
  def test_outputs_emissions_n323; assert_equal("", worksheet.outputs_emissions_n323); end
  def test_outputs_emissions_p323; assert_equal("", worksheet.outputs_emissions_p323); end
  def test_outputs_emissions_q323; assert_equal("", worksheet.outputs_emissions_q323); end
  def test_outputs_emissions_r323; assert_equal("", worksheet.outputs_emissions_r323); end
  def test_outputs_emissions_s323; assert_equal("", worksheet.outputs_emissions_s323); end
  def test_outputs_emissions_t323; assert_equal("", worksheet.outputs_emissions_t323); end
  def test_outputs_emissions_u323; assert_equal("", worksheet.outputs_emissions_u323); end
  def test_outputs_emissions_v323; assert_equal("", worksheet.outputs_emissions_v323); end
  def test_outputs_emissions_w323; assert_equal("", worksheet.outputs_emissions_w323); end
  def test_outputs_emissions_x323; assert_equal("", worksheet.outputs_emissions_x323); end
  def test_outputs_emissions_y323; assert_equal("", worksheet.outputs_emissions_y323); end
  def test_outputs_emissions_z323; assert_equal("", worksheet.outputs_emissions_z323); end
  def test_outputs_emissions_aa323; assert_equal("", worksheet.outputs_emissions_aa323); end
  def test_outputs_emissions_ab323; assert_equal("", worksheet.outputs_emissions_ab323); end
  def test_outputs_emissions_ac323; assert_equal("", worksheet.outputs_emissions_ac323); end
  def test_outputs_emissions_ad323; assert_equal("", worksheet.outputs_emissions_ad323); end
  def test_outputs_emissions_ae323; assert_equal("", worksheet.outputs_emissions_ae323); end
  def test_outputs_emissions_af323; assert_equal("", worksheet.outputs_emissions_af323); end
  def test_outputs_emissions_ag323; assert_equal("", worksheet.outputs_emissions_ag323); end
  def test_outputs_emissions_ah323; assert_equal("", worksheet.outputs_emissions_ah323); end
  def test_outputs_emissions_d324; assert_equal("total", worksheet.outputs_emissions_d324); end
  def test_outputs_emissions_h324; assert_equal("", worksheet.outputs_emissions_h324); end
  def test_outputs_emissions_i324; assert_equal("", worksheet.outputs_emissions_i324); end
  def test_outputs_emissions_j324; assert_equal("", worksheet.outputs_emissions_j324); end
  def test_outputs_emissions_k324; assert_equal("", worksheet.outputs_emissions_k324); end
  def test_outputs_emissions_l324; assert_equal("", worksheet.outputs_emissions_l324); end
  def test_outputs_emissions_n324; assert_equal("", worksheet.outputs_emissions_n324); end
  def test_outputs_emissions_p324; assert_equal("", worksheet.outputs_emissions_p324); end
  def test_outputs_emissions_q324; assert_equal("", worksheet.outputs_emissions_q324); end
  def test_outputs_emissions_r324; assert_equal("", worksheet.outputs_emissions_r324); end
  def test_outputs_emissions_s324; assert_equal("", worksheet.outputs_emissions_s324); end
  def test_outputs_emissions_t324; assert_equal("", worksheet.outputs_emissions_t324); end
  def test_outputs_emissions_u324; assert_equal("", worksheet.outputs_emissions_u324); end
  def test_outputs_emissions_v324; assert_equal("", worksheet.outputs_emissions_v324); end
  def test_outputs_emissions_w324; assert_equal("", worksheet.outputs_emissions_w324); end
  def test_outputs_emissions_x324; assert_equal("", worksheet.outputs_emissions_x324); end
  def test_outputs_emissions_y324; assert_equal("", worksheet.outputs_emissions_y324); end
  def test_outputs_emissions_z324; assert_equal("", worksheet.outputs_emissions_z324); end
  def test_outputs_emissions_aa324; assert_equal("", worksheet.outputs_emissions_aa324); end
  def test_outputs_emissions_ab324; assert_equal("", worksheet.outputs_emissions_ab324); end
  def test_outputs_emissions_ac324; assert_equal("", worksheet.outputs_emissions_ac324); end
  def test_outputs_emissions_ad324; assert_equal("", worksheet.outputs_emissions_ad324); end
  def test_outputs_emissions_ae324; assert_equal("", worksheet.outputs_emissions_ae324); end
  def test_outputs_emissions_af324; assert_equal("", worksheet.outputs_emissions_af324); end
  def test_outputs_emissions_ag324; assert_equal("", worksheet.outputs_emissions_ag324); end
  def test_outputs_emissions_ah324; assert_equal("", worksheet.outputs_emissions_ah324); end
  def test_outputs_emissions_c327; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c327); end
  def test_outputs_emissions_ah327; assert_equal("t", worksheet.outputs_emissions_ah327); end
  def test_outputs_emissions_h328; assert_equal("Historic actuals", worksheet.outputs_emissions_h328); end
  def test_outputs_emissions_p328; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p328); end
  def test_outputs_emissions_y328; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y328); end
  def test_outputs_emissions_d329; assert_equal("IPCC Sector", worksheet.outputs_emissions_d329); end
  def test_outputs_emissions_h329; assert_equal("1990", worksheet.outputs_emissions_h329); end
  def test_outputs_emissions_i329; assert_equal("1995", worksheet.outputs_emissions_i329); end
  def test_outputs_emissions_j329; assert_equal("2000", worksheet.outputs_emissions_j329); end
  def test_outputs_emissions_k329; assert_equal("2005", worksheet.outputs_emissions_k329); end
  def test_outputs_emissions_l329; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l329, 0.002); end
  def test_outputs_emissions_n329; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n329, 0.002); end
  def test_outputs_emissions_p329; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p329, 0.002); end
  def test_outputs_emissions_q329; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q329, 0.002); end
  def test_outputs_emissions_r329; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r329, 0.002); end
  def test_outputs_emissions_s329; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s329, 0.002); end
  def test_outputs_emissions_t329; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t329, 0.002); end
  def test_outputs_emissions_u329; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u329, 0.002); end
  def test_outputs_emissions_v329; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v329, 0.002); end
  def test_outputs_emissions_w329; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w329, 0.002); end
  def test_outputs_emissions_x329; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x329, 0.002); end
  def test_outputs_emissions_y329; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y329, 0.002); end
  def test_outputs_emissions_z329; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z329, 0.002); end
  def test_outputs_emissions_aa329; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa329, 0.002); end
  def test_outputs_emissions_ab329; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab329, 0.002); end
  def test_outputs_emissions_ac329; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac329, 0.002); end
  def test_outputs_emissions_ad329; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad329, 0.002); end
  def test_outputs_emissions_ae329; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae329, 0.002); end
  def test_outputs_emissions_af329; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af329, 0.002); end
  def test_outputs_emissions_ag329; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag329, 0.002); end
  def test_outputs_emissions_ah329; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah329, 0.002); end
  def test_outputs_emissions_c330; assert_equal("G.1A", worksheet.outputs_emissions_c330); end
  def test_outputs_emissions_d330; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d330); end
  def test_outputs_emissions_c331; assert_equal("G.1B", worksheet.outputs_emissions_c331); end
  def test_outputs_emissions_d331; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d331); end
  def test_outputs_emissions_c332; assert_equal("G.2", worksheet.outputs_emissions_c332); end
  def test_outputs_emissions_d332; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d332); end
  def test_outputs_emissions_h332; assert_equal(:value, worksheet.outputs_emissions_h332); end
  def test_outputs_emissions_i332; assert_equal(:value, worksheet.outputs_emissions_i332); end
  def test_outputs_emissions_j332; assert_equal(:value, worksheet.outputs_emissions_j332); end
  def test_outputs_emissions_k332; assert_equal(:value, worksheet.outputs_emissions_k332); end
  def test_outputs_emissions_l332; assert_equal(:value, worksheet.outputs_emissions_l332); end
  def test_outputs_emissions_c333; assert_equal("G.3", worksheet.outputs_emissions_c333); end
  def test_outputs_emissions_d333; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d333); end
  def test_outputs_emissions_c334; assert_equal("G.4", worksheet.outputs_emissions_c334); end
  def test_outputs_emissions_d334; assert_equal("Global Agriculture", worksheet.outputs_emissions_d334); end
  def test_outputs_emissions_c335; assert_equal("G.5", worksheet.outputs_emissions_c335); end
  def test_outputs_emissions_d335; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d335); end
  def test_outputs_emissions_c336; assert_equal("G.6", worksheet.outputs_emissions_c336); end
  def test_outputs_emissions_d336; assert_equal("Global Waste", worksheet.outputs_emissions_d336); end
  def test_outputs_emissions_c337; assert_equal("G.7", worksheet.outputs_emissions_c337); end
  def test_outputs_emissions_d337; assert_equal("Global Other", worksheet.outputs_emissions_d337); end
  def test_outputs_emissions_d338; assert_equal("total", worksheet.outputs_emissions_d338); end
  def test_outputs_emissions_c339; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c339); end
  def test_outputs_emissions_d339; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d339); end
  def test_outputs_emissions_c341; assert_equal("G.X2.A", worksheet.outputs_emissions_c341); end
  def test_outputs_emissions_d341; assert_equal("Global Carbon capture combustion", worksheet.outputs_emissions_d341); end
  def test_outputs_emissions_p341; assert_in_delta(0.0, (worksheet.outputs_emissions_p341||0), 0.002); end
  def test_outputs_emissions_q341; assert_in_delta(0.0, (worksheet.outputs_emissions_q341||0), 0.002); end
  def test_outputs_emissions_r341; assert_in_delta(0.0, (worksheet.outputs_emissions_r341||0), 0.002); end
  def test_outputs_emissions_s341; assert_in_delta(0.0, (worksheet.outputs_emissions_s341||0), 0.002); end
  def test_outputs_emissions_t341; assert_in_delta(0.0, (worksheet.outputs_emissions_t341||0), 0.002); end
  def test_outputs_emissions_u341; assert_in_delta(0.0, (worksheet.outputs_emissions_u341||0), 0.002); end
  def test_outputs_emissions_v341; assert_in_delta(0.0, (worksheet.outputs_emissions_v341||0), 0.002); end
  def test_outputs_emissions_w341; assert_in_delta(0.0, (worksheet.outputs_emissions_w341||0), 0.002); end
  def test_outputs_emissions_x341; assert_in_delta(0.0, (worksheet.outputs_emissions_x341||0), 0.002); end
  def test_outputs_emissions_c342; assert_equal("G.X2.B", worksheet.outputs_emissions_c342); end
  def test_outputs_emissions_d342; assert_equal("Global Carbon capture industrial process", worksheet.outputs_emissions_d342); end
  def test_outputs_emissions_p342; assert_in_delta(0.0, (worksheet.outputs_emissions_p342||0), 0.002); end
  def test_outputs_emissions_q342; assert_in_delta(0.0, (worksheet.outputs_emissions_q342||0), 0.002); end
  def test_outputs_emissions_r342; assert_in_delta(0.0, (worksheet.outputs_emissions_r342||0), 0.002); end
  def test_outputs_emissions_s342; assert_in_delta(0.0, (worksheet.outputs_emissions_s342||0), 0.002); end
  def test_outputs_emissions_t342; assert_in_delta(0.0, (worksheet.outputs_emissions_t342||0), 0.002); end
  def test_outputs_emissions_u342; assert_in_delta(0.0, (worksheet.outputs_emissions_u342||0), 0.002); end
  def test_outputs_emissions_v342; assert_in_delta(0.0, (worksheet.outputs_emissions_v342||0), 0.002); end
  def test_outputs_emissions_w342; assert_in_delta(0.0, (worksheet.outputs_emissions_w342||0), 0.002); end
  def test_outputs_emissions_x342; assert_in_delta(0.0, (worksheet.outputs_emissions_x342||0), 0.002); end
  def test_outputs_emissions_c343; assert_equal("G.X2.C", worksheet.outputs_emissions_c343); end
  def test_outputs_emissions_d343; assert_equal("Global Carbon capture from air", worksheet.outputs_emissions_d343); end
  def test_outputs_emissions_p343; assert_in_delta(0.0, (worksheet.outputs_emissions_p343||0), 0.002); end
  def test_outputs_emissions_q343; assert_in_delta(0.0, (worksheet.outputs_emissions_q343||0), 0.002); end
  def test_outputs_emissions_r343; assert_in_delta(0.0, (worksheet.outputs_emissions_r343||0), 0.002); end
  def test_outputs_emissions_s343; assert_in_delta(0.0, (worksheet.outputs_emissions_s343||0), 0.002); end
  def test_outputs_emissions_t343; assert_in_delta(0.0, (worksheet.outputs_emissions_t343||0), 0.002); end
  def test_outputs_emissions_u343; assert_in_delta(0.0, (worksheet.outputs_emissions_u343||0), 0.002); end
  def test_outputs_emissions_v343; assert_in_delta(0.0, (worksheet.outputs_emissions_v343||0), 0.002); end
  def test_outputs_emissions_w343; assert_in_delta(0.0, (worksheet.outputs_emissions_w343||0), 0.002); end
  def test_outputs_emissions_x343; assert_in_delta(0.0, (worksheet.outputs_emissions_x343||0), 0.002); end
  def test_outputs_emissions_c345; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c345); end
  def test_outputs_emissions_ah345; assert_equal("t", worksheet.outputs_emissions_ah345); end
  def test_outputs_emissions_h346; assert_equal("Historic actuals", worksheet.outputs_emissions_h346); end
  def test_outputs_emissions_p346; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p346); end
  def test_outputs_emissions_y346; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y346); end
  def test_outputs_emissions_c347; assert_equal("Emissions by sector", worksheet.outputs_emissions_c347); end
  def test_outputs_emissions_d347; assert_equal("Calculator Sector", worksheet.outputs_emissions_d347); end
  def test_outputs_emissions_h347; assert_equal("1990", worksheet.outputs_emissions_h347); end
  def test_outputs_emissions_i347; assert_equal("1995", worksheet.outputs_emissions_i347); end
  def test_outputs_emissions_j347; assert_equal("2000", worksheet.outputs_emissions_j347); end
  def test_outputs_emissions_k347; assert_equal("2005", worksheet.outputs_emissions_k347); end
  def test_outputs_emissions_l347; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l347, 0.002); end
  def test_outputs_emissions_n347; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n347, 0.002); end
  def test_outputs_emissions_p347; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p347, 0.002); end
  def test_outputs_emissions_q347; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q347, 0.002); end
  def test_outputs_emissions_r347; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r347, 0.002); end
  def test_outputs_emissions_s347; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s347, 0.002); end
  def test_outputs_emissions_t347; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t347, 0.002); end
  def test_outputs_emissions_u347; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u347, 0.002); end
  def test_outputs_emissions_v347; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v347, 0.002); end
  def test_outputs_emissions_w347; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w347, 0.002); end
  def test_outputs_emissions_x347; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x347, 0.002); end
  def test_outputs_emissions_y347; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y347, 0.002); end
  def test_outputs_emissions_z347; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z347, 0.002); end
  def test_outputs_emissions_aa347; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa347, 0.002); end
  def test_outputs_emissions_ab347; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab347, 0.002); end
  def test_outputs_emissions_ac347; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac347, 0.002); end
  def test_outputs_emissions_ad347; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad347, 0.002); end
  def test_outputs_emissions_ae347; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae347, 0.002); end
  def test_outputs_emissions_af347; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af347, 0.002); end
  def test_outputs_emissions_ag347; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag347, 0.002); end
  def test_outputs_emissions_ah347; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah347, 0.002); end
  def test_outputs_emissions_c348; assert_equal("G.10", worksheet.outputs_emissions_c348); end
  def test_outputs_emissions_d348; assert_equal("Global Transport", worksheet.outputs_emissions_d348); end
  def test_outputs_emissions_c349; assert_equal("G.20", worksheet.outputs_emissions_c349); end
  def test_outputs_emissions_d349; assert_equal("Global Buildings", worksheet.outputs_emissions_d349); end
  def test_outputs_emissions_c350; assert_equal("G.30", worksheet.outputs_emissions_c350); end
  def test_outputs_emissions_d350; assert_equal("Global Materials", worksheet.outputs_emissions_d350); end
  def test_outputs_emissions_h350; assert_equal(:value, worksheet.outputs_emissions_h350); end
  def test_outputs_emissions_i350; assert_equal(:value, worksheet.outputs_emissions_i350); end
  def test_outputs_emissions_j350; assert_equal(:value, worksheet.outputs_emissions_j350); end
  def test_outputs_emissions_k350; assert_equal(:value, worksheet.outputs_emissions_k350); end
  def test_outputs_emissions_l350; assert_equal(:value, worksheet.outputs_emissions_l350); end
  def test_outputs_emissions_c351; assert_equal("G.40", worksheet.outputs_emissions_c351); end
  def test_outputs_emissions_d351; assert_equal("Global Electricity Generation and Global Fuel production", worksheet.outputs_emissions_d351); end
  def test_outputs_emissions_e351; assert_equal("Global Electricity Generation", worksheet.outputs_emissions_e351); end
  def test_outputs_emissions_c352; assert_equal("G.60", worksheet.outputs_emissions_c352); end
  def test_outputs_emissions_d352; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d352); end
  def test_outputs_emissions_d353; assert_equal("total", worksheet.outputs_emissions_d353); end
  def test_outputs_emissions_c354; assert_equal("Dummy data added (Erica)", worksheet.outputs_emissions_c354); end
  def test_outputs_emissions_d354; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d354); end
  def test_outputs_emissions_c356; assert_equal("G.50", worksheet.outputs_emissions_c356); end
  def test_outputs_emissions_d356; assert_equal("Global Fuel production", worksheet.outputs_emissions_d356); end
  def test_outputs_emissions_p356; assert_in_delta(0.0, (worksheet.outputs_emissions_p356||0), 0.002); end
  def test_outputs_emissions_q356; assert_in_delta(0.0, (worksheet.outputs_emissions_q356||0), 0.002); end
  def test_outputs_emissions_r356; assert_in_delta(0.0, (worksheet.outputs_emissions_r356||0), 0.002); end
  def test_outputs_emissions_s356; assert_in_delta(0.0, (worksheet.outputs_emissions_s356||0), 0.002); end
  def test_outputs_emissions_t356; assert_in_delta(0.0, (worksheet.outputs_emissions_t356||0), 0.002); end
  def test_outputs_emissions_u356; assert_in_delta(0.0, (worksheet.outputs_emissions_u356||0), 0.002); end
  def test_outputs_emissions_v356; assert_in_delta(0.0, (worksheet.outputs_emissions_v356||0), 0.002); end
  def test_outputs_emissions_w356; assert_in_delta(0.0, (worksheet.outputs_emissions_w356||0), 0.002); end
  def test_outputs_emissions_x356; assert_in_delta(0.0, (worksheet.outputs_emissions_x356||0), 0.002); end
  def test_outputs_emissions_c359; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c359); end
  def test_outputs_emissions_ah359; assert_equal("t", worksheet.outputs_emissions_ah359); end
  def test_outputs_emissions_h360; assert_equal("Historic actuals", worksheet.outputs_emissions_h360); end
  def test_outputs_emissions_p360; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_p360); end
  def test_outputs_emissions_y360; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_y360); end
  def test_outputs_emissions_c361; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c361); end
  def test_outputs_emissions_h361; assert_equal("1990", worksheet.outputs_emissions_h361); end
  def test_outputs_emissions_i361; assert_equal("1995", worksheet.outputs_emissions_i361); end
  def test_outputs_emissions_j361; assert_equal("2000", worksheet.outputs_emissions_j361); end
  def test_outputs_emissions_k361; assert_equal("2005", worksheet.outputs_emissions_k361); end
  def test_outputs_emissions_l361; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l361, 0.002); end
  def test_outputs_emissions_n361; assert_in_epsilon(2011.0, worksheet.outputs_emissions_n361, 0.002); end
  def test_outputs_emissions_p361; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p361, 0.002); end
  def test_outputs_emissions_q361; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q361, 0.002); end
  def test_outputs_emissions_r361; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r361, 0.002); end
  def test_outputs_emissions_s361; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s361, 0.002); end
  def test_outputs_emissions_t361; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t361, 0.002); end
  def test_outputs_emissions_u361; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u361, 0.002); end
  def test_outputs_emissions_v361; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v361, 0.002); end
  def test_outputs_emissions_w361; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w361, 0.002); end
  def test_outputs_emissions_x361; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x361, 0.002); end
  def test_outputs_emissions_y361; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y361, 0.002); end
  def test_outputs_emissions_z361; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z361, 0.002); end
  def test_outputs_emissions_aa361; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa361, 0.002); end
  def test_outputs_emissions_ab361; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab361, 0.002); end
  def test_outputs_emissions_ac361; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac361, 0.002); end
  def test_outputs_emissions_ad361; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad361, 0.002); end
  def test_outputs_emissions_ae361; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae361, 0.002); end
  def test_outputs_emissions_af361; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af361, 0.002); end
  def test_outputs_emissions_ag361; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag361, 0.002); end
  def test_outputs_emissions_ah361; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah361, 0.002); end
  def test_outputs_emissions_c362; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_emissions_c362); end
  def test_outputs_emissions_d362; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d362); end
  def test_outputs_emissions_c363; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_emissions_c363); end
  def test_outputs_emissions_d363; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_emissions_d363); end
  def test_outputs_emissions_c364; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_emissions_c364); end
  def test_outputs_emissions_d364; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_emissions_d364); end
  def test_outputs_emissions_c365; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_emissions_c365); end
  def test_outputs_emissions_d365; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_emissions_d365); end
  def test_outputs_emissions_c366; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_emissions_c366); end
  def test_outputs_emissions_d366; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_emissions_d366); end
  def test_outputs_emissions_c367; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_emissions_c367); end
  def test_outputs_emissions_d367; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_emissions_d367); end
  def test_outputs_emissions_c368; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_emissions_c368); end
  def test_outputs_emissions_d368; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_emissions_d368); end
  def test_outputs_emissions_c369; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_emissions_c369); end
  def test_outputs_emissions_d369; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_emissions_d369); end
  def test_outputs_emissions_c370; assert_equal(".CCS.solid.super.elec", worksheet.outputs_emissions_c370); end
  def test_outputs_emissions_d370; assert_equal(:na, worksheet.outputs_emissions_d370); end
  def test_outputs_emissions_c371; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_emissions_c371); end
  def test_outputs_emissions_d371; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_emissions_d371); end
  def test_outputs_emissions_c372; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_emissions_c372); end
  def test_outputs_emissions_d372; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_emissions_d372); end
  def test_outputs_emissions_c373; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_emissions_c373); end
  def test_outputs_emissions_d373; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_emissions_d373); end
  def test_outputs_emissions_c374; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_emissions_c374); end
  def test_outputs_emissions_d374; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_emissions_d374); end
  def test_outputs_emissions_c375; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_emissions_c375); end
  def test_outputs_emissions_d375; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_emissions_d375); end
  def test_outputs_emissions_d376; assert_equal("Total emissions from power", worksheet.outputs_emissions_d376); end
  def test_outputs_emissions_h376; assert_in_delta(0.0, (worksheet.outputs_emissions_h376||0), 0.002); end
  def test_outputs_emissions_i376; assert_in_delta(0.0, (worksheet.outputs_emissions_i376||0), 0.002); end
  def test_outputs_emissions_j376; assert_in_delta(0.0, (worksheet.outputs_emissions_j376||0), 0.002); end
  def test_outputs_emissions_k376; assert_in_delta(0.0, (worksheet.outputs_emissions_k376||0), 0.002); end
  def test_outputs_emissions_l376; assert_in_delta(0.0, (worksheet.outputs_emissions_l376||0), 0.002); end
  def test_outputs_emissions_p376; assert_in_delta(0.0, (worksheet.outputs_emissions_p376||0), 0.002); end
  def test_outputs_emissions_q376; assert_in_delta(0.0, (worksheet.outputs_emissions_q376||0), 0.002); end
  def test_outputs_emissions_r376; assert_in_delta(0.0, (worksheet.outputs_emissions_r376||0), 0.002); end
  def test_outputs_emissions_s376; assert_in_delta(0.0, (worksheet.outputs_emissions_s376||0), 0.002); end
  def test_outputs_emissions_t376; assert_in_delta(0.0, (worksheet.outputs_emissions_t376||0), 0.002); end
  def test_outputs_emissions_u376; assert_in_delta(0.0, (worksheet.outputs_emissions_u376||0), 0.002); end
  def test_outputs_emissions_v376; assert_in_delta(0.0, (worksheet.outputs_emissions_v376||0), 0.002); end
  def test_outputs_emissions_w376; assert_in_delta(0.0, (worksheet.outputs_emissions_w376||0), 0.002); end
  def test_outputs_emissions_x376; assert_in_delta(0.0, (worksheet.outputs_emissions_x376||0), 0.002); end
  def test_outputs_emissions_c377; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c377); end
  def test_outputs_emissions_c380; assert_equal("Emissions intensity", worksheet.outputs_emissions_c380); end
  def test_outputs_emissions_d380; assert_equal("Mt/TWh", worksheet.outputs_emissions_d380); end
  def test_outputs_emissions_d381; assert_equal("g/KWh", worksheet.outputs_emissions_d381); end
  def test_outputs_climate_impacts_b2; assert_equal("G", worksheet.outputs_climate_impacts_b2); end
  def test_outputs_climate_impacts_c2; assert_equal("Global", worksheet.outputs_climate_impacts_c2); end
  def test_outputs_climate_impacts_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_climate_impacts_e2); end
  def test_outputs_climate_impacts_b3; assert_equal("Climate impacts", worksheet.outputs_climate_impacts_b3); end
  def test_outputs_climate_impacts_c5; assert_equal("Global Warming (simple model calculation)", worksheet.outputs_climate_impacts_c5); end
  def test_outputs_climate_impacts_d7; assert_equal("Change in models' global mean temperature from own baseline", worksheet.outputs_climate_impacts_d7); end
  def test_outputs_climate_impacts_d9; assert_equal("Scenario", worksheet.outputs_climate_impacts_d9); end
  def test_outputs_climate_impacts_e9; assert_in_epsilon(2050.0, worksheet.outputs_climate_impacts_e9, 0.002); end
  def test_outputs_climate_impacts_f9; assert_in_epsilon(2100.0, worksheet.outputs_climate_impacts_f9, 0.002); end
  def test_outputs_climate_impacts_g9; assert_equal("Units", worksheet.outputs_climate_impacts_g9); end
  def test_outputs_climate_impacts_d10; assert_equal("High", worksheet.outputs_climate_impacts_d10); end
  def test_outputs_climate_impacts_e10; assert_in_epsilon(2.431359791517281, worksheet.outputs_climate_impacts_e10, 0.002); end
  def test_outputs_climate_impacts_f10; assert_in_epsilon(3.232107281422814, worksheet.outputs_climate_impacts_f10, 0.002); end
  def test_outputs_climate_impacts_g10; assert_equal("degrees C", worksheet.outputs_climate_impacts_g10); end
  def test_outputs_climate_impacts_d11; assert_equal("Mid", worksheet.outputs_climate_impacts_d11); end
  def test_outputs_climate_impacts_e11; assert_in_epsilon(1.3960702665710598, worksheet.outputs_climate_impacts_e11, 0.002); end
  def test_outputs_climate_impacts_f11; assert_in_epsilon(1.908548660110601, worksheet.outputs_climate_impacts_f11, 0.002); end
  def test_outputs_climate_impacts_g11; assert_equal("degrees C", worksheet.outputs_climate_impacts_g11); end
  def test_outputs_climate_impacts_d12; assert_equal("Low", worksheet.outputs_climate_impacts_d12); end
  def test_outputs_climate_impacts_e12; assert_in_delta(0.4480351332855299, worksheet.outputs_climate_impacts_e12, 0.002); end
  def test_outputs_climate_impacts_f12; assert_in_delta(0.7042743300553005, worksheet.outputs_climate_impacts_f12, 0.002); end
  def test_outputs_climate_impacts_g12; assert_equal("degrees C", worksheet.outputs_climate_impacts_g12); end
  def test_outputs_climate_impacts_c15; assert_equal("Back of the envelope calculation", worksheet.outputs_climate_impacts_c15); end
  def test_outputs_climate_impacts_d17; assert_equal("Extra energy trapped by the extra carbon dioxide in atmosphere (over pre-industrial levels):", worksheet.outputs_climate_impacts_d17); end
  def test_outputs_climate_impacts_d19; assert_in_epsilon(2050.0, worksheet.outputs_climate_impacts_d19, 0.002); end
  def test_outputs_climate_impacts_e19; assert_in_epsilon(2100.0, worksheet.outputs_climate_impacts_e19, 0.002); end
  def test_outputs_climate_impacts_f19; assert_equal("Units", worksheet.outputs_climate_impacts_f19); end
  def test_outputs_climate_impacts_d20; assert_in_epsilon(4398278.138150311, worksheet.outputs_climate_impacts_d20, 0.002); end
  def test_outputs_climate_impacts_e20; assert_in_epsilon(5140693.796253677, worksheet.outputs_climate_impacts_e20, 0.002); end
  def test_outputs_climate_impacts_f20; assert_equal("EJ", worksheet.outputs_climate_impacts_f20); end
  def test_outputs_climate_impacts_g20; assert_equal("Makes most sense in big units (TWh)", worksheet.outputs_climate_impacts_g20); end
  def test_outputs_climate_impacts_d22; assert_equal("Order of magnitude mass of ice melted:", worksheet.outputs_climate_impacts_d22); end
  def test_outputs_climate_impacts_d24; assert_in_epsilon(2050.0, worksheet.outputs_climate_impacts_d24, 0.002); end
  def test_outputs_climate_impacts_e24; assert_in_epsilon(2100.0, worksheet.outputs_climate_impacts_e24, 0.002); end
  def test_outputs_climate_impacts_f24; assert_equal("Units", worksheet.outputs_climate_impacts_f24); end
  def test_outputs_climate_impacts_g24; assert_equal("Equivalent to % of Greenland by 2100", worksheet.outputs_climate_impacts_g24); end
  def test_outputs_climate_impacts_d25; assert_in_epsilon(351114723680245.3, worksheet.outputs_climate_impacts_d25, 0.002); end
  def test_outputs_climate_impacts_e25; assert_in_epsilon(410381796035173.0, worksheet.outputs_climate_impacts_e25, 0.002); end
  def test_outputs_climate_impacts_f25; assert_equal("t", worksheet.outputs_climate_impacts_f25); end
  def test_outputs_climate_impacts_g25; assert_in_delta(0.15273941813346423, worksheet.outputs_climate_impacts_g25, 0.002); end
  def test_outputs_climate_impacts_d27; assert_equal("Sea level rise due to this ice melting:", worksheet.outputs_climate_impacts_d27); end
  def test_outputs_climate_impacts_d29; assert_in_epsilon(2050.0, worksheet.outputs_climate_impacts_d29, 0.002); end
  def test_outputs_climate_impacts_e29; assert_in_epsilon(2100.0, worksheet.outputs_climate_impacts_e29, 0.002); end
  def test_outputs_climate_impacts_f29; assert_equal("Units", worksheet.outputs_climate_impacts_f29); end
  def test_outputs_climate_impacts_d30; assert_in_delta(0.9753186768895702, worksheet.outputs_climate_impacts_d30, 0.002); end
  def test_outputs_climate_impacts_e30; assert_in_epsilon(1.1399494334310358, worksheet.outputs_climate_impacts_e30, 0.002); end
  def test_outputs_climate_impacts_f30; assert_equal("m", worksheet.outputs_climate_impacts_f30); end
  def test_outputs_climate_impacts_d32; assert_equal("Order of magnitude sea level rise due to thermal expansion of the oceans:", worksheet.outputs_climate_impacts_d32); end
  def test_outputs_climate_impacts_d34; assert_in_epsilon(2050.0, worksheet.outputs_climate_impacts_d34, 0.002); end
  def test_outputs_climate_impacts_e34; assert_in_epsilon(2100.0, worksheet.outputs_climate_impacts_e34, 0.002); end
  def test_outputs_climate_impacts_f34; assert_equal("Units", worksheet.outputs_climate_impacts_f34); end
  def test_outputs_climate_impacts_d35; assert_in_delta(0.2104327160999217, worksheet.outputs_climate_impacts_d35, 0.002); end
  def test_outputs_climate_impacts_e35; assert_in_delta(0.2459531035112335, worksheet.outputs_climate_impacts_e35, 0.002); end
  def test_outputs_climate_impacts_f35; assert_equal("m", worksheet.outputs_climate_impacts_f35); end
  def test_outputs_climate_impacts_c38; assert_equal("Simple model outputs", worksheet.outputs_climate_impacts_c38); end
  def test_outputs_climate_impacts_d40; assert_equal("Temperature patterns: see folder with pictures (emailed to Markus).  Display those with GMT between low and high values above.", worksheet.outputs_climate_impacts_d40); end
  def test_outputs_climate_impacts_d41; assert_equal("For the first iteration of the calculator this will not be user-interactive but will show only a 2-degree animation (range from 1.9 to 2.1 degrees above each model's own baseline).", worksheet.outputs_climate_impacts_d41); end
  def test_outputs_climate_impacts_d43; assert_equal("Pictures to include in animation:", worksheet.outputs_climate_impacts_d43); end
  def test_outputs_climate_impacts_d45; assert_equal("Model name", worksheet.outputs_climate_impacts_d45); end
  def test_outputs_climate_impacts_e45; assert_equal("RCP scenario", worksheet.outputs_climate_impacts_e45); end
  def test_outputs_climate_impacts_f45; assert_equal("Central year", worksheet.outputs_climate_impacts_f45); end
  def test_outputs_climate_impacts_g45; assert_equal("Change from baseline (K)", worksheet.outputs_climate_impacts_g45); end
  def test_outputs_climate_impacts_d46; assert_equal("NorESM1-M", worksheet.outputs_climate_impacts_d46); end
  def test_outputs_climate_impacts_e46; assert_equal("rcp45", worksheet.outputs_climate_impacts_e46); end
  def test_outputs_climate_impacts_f46; assert_in_epsilon(2070.0, worksheet.outputs_climate_impacts_f46, 0.002); end
  def test_outputs_climate_impacts_g46; assert_in_epsilon(1.9083, worksheet.outputs_climate_impacts_g46, 0.002); end
  def test_outputs_climate_impacts_d47; assert_equal("MIROC5", worksheet.outputs_climate_impacts_d47); end
  def test_outputs_climate_impacts_e47; assert_equal("rcp45", worksheet.outputs_climate_impacts_e47); end
  def test_outputs_climate_impacts_f47; assert_in_epsilon(2070.0, worksheet.outputs_climate_impacts_f47, 0.002); end
  def test_outputs_climate_impacts_g47; assert_in_epsilon(1.9481, worksheet.outputs_climate_impacts_g47, 0.002); end
  def test_outputs_climate_impacts_d48; assert_equal("NorESM1-M", worksheet.outputs_climate_impacts_d48); end
  def test_outputs_climate_impacts_e48; assert_equal("rcp85", worksheet.outputs_climate_impacts_e48); end
  def test_outputs_climate_impacts_f48; assert_in_epsilon(2050.0, worksheet.outputs_climate_impacts_f48, 0.002); end
  def test_outputs_climate_impacts_g48; assert_in_epsilon(1.9763, worksheet.outputs_climate_impacts_g48, 0.002); end
  def test_outputs_climate_impacts_d49; assert_equal("MIROC5", worksheet.outputs_climate_impacts_d49); end
  def test_outputs_climate_impacts_e49; assert_equal("rcp85", worksheet.outputs_climate_impacts_e49); end
  def test_outputs_climate_impacts_f49; assert_in_epsilon(2050.0, worksheet.outputs_climate_impacts_f49, 0.002); end
  def test_outputs_climate_impacts_g49; assert_in_epsilon(2.0023, worksheet.outputs_climate_impacts_g49, 0.002); end
  def test_outputs_climate_impacts_d50; assert_equal("NorESM1-M", worksheet.outputs_climate_impacts_d50); end
  def test_outputs_climate_impacts_e50; assert_equal("rcp45", worksheet.outputs_climate_impacts_e50); end
  def test_outputs_climate_impacts_f50; assert_in_epsilon(2080.0, worksheet.outputs_climate_impacts_f50, 0.002); end
  def test_outputs_climate_impacts_g50; assert_in_epsilon(2.0056, worksheet.outputs_climate_impacts_g50, 0.002); end
  def test_outputs_climate_impacts_d51; assert_equal("IPSL-CM5A-LR", worksheet.outputs_climate_impacts_d51); end
  def test_outputs_climate_impacts_e51; assert_equal("rcp85", worksheet.outputs_climate_impacts_e51); end
  def test_outputs_climate_impacts_f51; assert_in_epsilon(2030.0, worksheet.outputs_climate_impacts_f51, 0.002); end
  def test_outputs_climate_impacts_g51; assert_in_epsilon(2.0311, worksheet.outputs_climate_impacts_g51, 0.002); end
  def test_outputs_climate_impacts_d52; assert_equal("CanESM2", worksheet.outputs_climate_impacts_d52); end
  def test_outputs_climate_impacts_e52; assert_equal("rcp85", worksheet.outputs_climate_impacts_e52); end
  def test_outputs_climate_impacts_f52; assert_in_epsilon(2030.0, worksheet.outputs_climate_impacts_f52, 0.002); end
  def test_outputs_climate_impacts_g52; assert_in_epsilon(2.0604, worksheet.outputs_climate_impacts_g52, 0.002); end
  def test_outputs_climate_impacts_d53; assert_equal("MIROC5", worksheet.outputs_climate_impacts_d53); end
  def test_outputs_climate_impacts_e53; assert_equal("rcp45", worksheet.outputs_climate_impacts_e53); end
  def test_outputs_climate_impacts_f53; assert_in_epsilon(2080.0, worksheet.outputs_climate_impacts_f53, 0.002); end
  def test_outputs_climate_impacts_g53; assert_in_epsilon(2.0721, worksheet.outputs_climate_impacts_g53, 0.002); end
  def test_outputs_climate_impacts_c58; assert_equal("End of sheet", worksheet.outputs_climate_impacts_c58); end
  def test_outputs_land_use_technology_b2; assert_equal("G", worksheet.outputs_land_use_technology_b2); end
  def test_outputs_land_use_technology_c2; assert_equal("Global", worksheet.outputs_land_use_technology_c2); end
  def test_outputs_land_use_technology_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_land_use_technology_e2); end
  def test_outputs_land_use_technology_b3; assert_equal("Land use and technology output", worksheet.outputs_land_use_technology_b3); end
  def test_outputs_land_use_technology_e3; assert_equal("Note: need to update so that this uses the latest workbook naming conventions and sector structures, and so that it pulls in data from the year sheets", worksheet.outputs_land_use_technology_e3); end
  def test_outputs_land_use_technology_b5; assert_equal("Land use implications", worksheet.outputs_land_use_technology_b5); end
  def test_outputs_land_use_technology_w5; assert_equal("The unit for area is:  ha", worksheet.outputs_land_use_technology_w5); end
  def test_outputs_land_use_technology_f7; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f7); end
  def test_outputs_land_use_technology_q7; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q7); end
  def test_outputs_land_use_technology_c8; assert_equal("Type of land", worksheet.outputs_land_use_technology_c8); end
  def test_outputs_land_use_technology_d8; assert_equal("Description", worksheet.outputs_land_use_technology_d8); end
  def test_outputs_land_use_technology_f8; assert_equal("1970", worksheet.outputs_land_use_technology_f8); end
  def test_outputs_land_use_technology_g8; assert_equal("1975", worksheet.outputs_land_use_technology_g8); end
  def test_outputs_land_use_technology_h8; assert_equal("1980", worksheet.outputs_land_use_technology_h8); end
  def test_outputs_land_use_technology_i8; assert_equal("1985", worksheet.outputs_land_use_technology_i8); end
  def test_outputs_land_use_technology_j8; assert_equal("1990", worksheet.outputs_land_use_technology_j8); end
  def test_outputs_land_use_technology_k8; assert_equal("1995", worksheet.outputs_land_use_technology_k8); end
  def test_outputs_land_use_technology_l8; assert_equal("2000", worksheet.outputs_land_use_technology_l8); end
  def test_outputs_land_use_technology_m8; assert_equal("2005", worksheet.outputs_land_use_technology_m8); end
  def test_outputs_land_use_technology_n8; assert_in_epsilon(2010.0, worksheet.outputs_land_use_technology_n8, 0.002); end
  def test_outputs_land_use_technology_q8; assert_in_epsilon(2011.0, worksheet.outputs_land_use_technology_q8, 0.002); end
  def test_outputs_land_use_technology_r8; assert_equal("2015", worksheet.outputs_land_use_technology_r8); end
  def test_outputs_land_use_technology_s8; assert_equal("2020", worksheet.outputs_land_use_technology_s8); end
  def test_outputs_land_use_technology_t8; assert_equal("2025", worksheet.outputs_land_use_technology_t8); end
  def test_outputs_land_use_technology_u8; assert_equal("2030", worksheet.outputs_land_use_technology_u8); end
  def test_outputs_land_use_technology_v8; assert_equal("2035", worksheet.outputs_land_use_technology_v8); end
  def test_outputs_land_use_technology_w8; assert_equal("2040", worksheet.outputs_land_use_technology_w8); end
  def test_outputs_land_use_technology_x8; assert_equal("2045", worksheet.outputs_land_use_technology_x8); end
  def test_outputs_land_use_technology_y8; assert_equal("2050", worksheet.outputs_land_use_technology_y8); end
  def test_outputs_land_use_technology_c9; assert_equal("forest", worksheet.outputs_land_use_technology_c9); end
  def test_outputs_land_use_technology_d9; assert_equal("Global Forest", worksheet.outputs_land_use_technology_d9); end
  def test_outputs_land_use_technology_q9; assert_in_epsilon(4027468010.0, worksheet.outputs_land_use_technology_q9, 0.002); end
  def test_outputs_land_use_technology_r9; assert_in_epsilon(3494123246.4715595, worksheet.outputs_land_use_technology_r9, 0.002); end
  def test_outputs_land_use_technology_s9; assert_in_epsilon(2936010624.168928, worksheet.outputs_land_use_technology_s9, 0.002); end
  def test_outputs_land_use_technology_t9; assert_in_epsilon(2519666761.833025, worksheet.outputs_land_use_technology_t9, 0.002); end
  def test_outputs_land_use_technology_u9; assert_in_epsilon(2199101025.2209024, worksheet.outputs_land_use_technology_u9, 0.002); end
  def test_outputs_land_use_technology_v9; assert_in_epsilon(1962422374.8569508, worksheet.outputs_land_use_technology_v9, 0.002); end
  def test_outputs_land_use_technology_w9; assert_in_epsilon(1799300912.8926373, worksheet.outputs_land_use_technology_w9, 0.002); end
  def test_outputs_land_use_technology_x9; assert_in_epsilon(1700726774.6183128, worksheet.outputs_land_use_technology_x9, 0.002); end
  def test_outputs_land_use_technology_y9; assert_in_epsilon(1658530979.795681, worksheet.outputs_land_use_technology_y9, 0.002); end
  def test_outputs_land_use_technology_c10; assert_equal("arable.food", worksheet.outputs_land_use_technology_c10); end
  def test_outputs_land_use_technology_d10; assert_equal("Global Arable land for food crops", worksheet.outputs_land_use_technology_d10); end
  def test_outputs_land_use_technology_q10; assert_in_epsilon(1449835240.0, worksheet.outputs_land_use_technology_q10, 0.002); end
  def test_outputs_land_use_technology_r10; assert_in_epsilon(1488928239.1964858, worksheet.outputs_land_use_technology_r10, 0.002); end
  def test_outputs_land_use_technology_s10; assert_in_epsilon(1527678836.6472492, worksheet.outputs_land_use_technology_s10, 0.002); end
  def test_outputs_land_use_technology_t10; assert_in_epsilon(1554982617.6360211, worksheet.outputs_land_use_technology_t10, 0.002); end
  def test_outputs_land_use_technology_u10; assert_in_epsilon(1571932398.7369096, worksheet.outputs_land_use_technology_u10, 0.002); end
  def test_outputs_land_use_technology_v10; assert_in_epsilon(1579853755.1428835, worksheet.outputs_land_use_technology_v10, 0.002); end
  def test_outputs_land_use_technology_w10; assert_in_epsilon(1579612235.6693954, worksheet.outputs_land_use_technology_w10, 0.002); end
  def test_outputs_land_use_technology_x10; assert_in_epsilon(1571748871.2407174, worksheet.outputs_land_use_technology_x10, 0.002); end
  def test_outputs_land_use_technology_y10; assert_in_epsilon(1556863367.8350644, worksheet.outputs_land_use_technology_y10, 0.002); end
  def test_outputs_land_use_technology_c11; assert_equal("arable.bio", worksheet.outputs_land_use_technology_c11); end
  def test_outputs_land_use_technology_d11; assert_equal("Global Arable land for bioenergy", worksheet.outputs_land_use_technology_d11); end
  def test_outputs_land_use_technology_q11; assert_in_epsilon(80000000.0, worksheet.outputs_land_use_technology_q11, 0.002); end
  def test_outputs_land_use_technology_r11; assert_in_epsilon(103761482.66666667, worksheet.outputs_land_use_technology_r11, 0.002); end
  def test_outputs_land_use_technology_s11; assert_in_epsilon(131552851.76923077, worksheet.outputs_land_use_technology_s11, 0.002); end
  def test_outputs_land_use_technology_t11; assert_in_epsilon(127078264.97435898, worksheet.outputs_land_use_technology_t11, 0.002); end
  def test_outputs_land_use_technology_u11; assert_in_epsilon(122603678.17948718, worksheet.outputs_land_use_technology_u11, 0.002); end
  def test_outputs_land_use_technology_v11; assert_in_epsilon(118129091.38461538, worksheet.outputs_land_use_technology_v11, 0.002); end
  def test_outputs_land_use_technology_w11; assert_in_epsilon(113654504.58974358, worksheet.outputs_land_use_technology_w11, 0.002); end
  def test_outputs_land_use_technology_x11; assert_in_epsilon(109179917.79487179, worksheet.outputs_land_use_technology_x11, 0.002); end
  def test_outputs_land_use_technology_y11; assert_in_epsilon(104705331.0, worksheet.outputs_land_use_technology_y11, 0.002); end
  def test_outputs_land_use_technology_c12; assert_equal("arable.other", worksheet.outputs_land_use_technology_c12); end
  def test_outputs_land_use_technology_d12; assert_equal("Global Arable land for other ", worksheet.outputs_land_use_technology_d12); end
  def test_outputs_land_use_technology_q12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_q12, 0.002); end
  def test_outputs_land_use_technology_r12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_r12, 0.002); end
  def test_outputs_land_use_technology_s12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_s12, 0.002); end
  def test_outputs_land_use_technology_t12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_t12, 0.002); end
  def test_outputs_land_use_technology_u12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_u12, 0.002); end
  def test_outputs_land_use_technology_v12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_v12, 0.002); end
  def test_outputs_land_use_technology_w12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_w12, 0.002); end
  def test_outputs_land_use_technology_x12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_x12, 0.002); end
  def test_outputs_land_use_technology_y12; assert_in_epsilon(8000000.0, worksheet.outputs_land_use_technology_y12, 0.002); end
  def test_outputs_land_use_technology_c13; assert_equal("pasture.food", worksheet.outputs_land_use_technology_c13); end
  def test_outputs_land_use_technology_d13; assert_equal("Global Pasture for livestock", worksheet.outputs_land_use_technology_d13); end
  def test_outputs_land_use_technology_q13; assert_in_epsilon(4038640800.0, worksheet.outputs_land_use_technology_q13, 0.002); end
  def test_outputs_land_use_technology_r13; assert_in_epsilon(4506400516.331955, worksheet.outputs_land_use_technology_r13, 0.002); end
  def test_outputs_land_use_technology_s13; assert_in_epsilon(4992647481.183823, worksheet.outputs_land_use_technology_s13, 0.002); end
  def test_outputs_land_use_technology_t13; assert_in_epsilon(5381687562.530953, worksheet.outputs_land_use_technology_t13, 0.002); end
  def test_outputs_land_use_technology_u13; assert_in_epsilon(5685303518.042188, worksheet.outputs_land_use_technology_u13, 0.002); end
  def test_outputs_land_use_technology_v13; assert_in_epsilon(5914060812.000166, worksheet.outputs_land_use_technology_v13, 0.002); end
  def test_outputs_land_use_technology_w13; assert_in_epsilon(6077423793.437967, worksheet.outputs_land_use_technology_w13, 0.002); end
  def test_outputs_land_use_technology_x13; assert_in_epsilon(6183861296.14097, worksheet.outputs_land_use_technology_x13, 0.002); end
  def test_outputs_land_use_technology_y13; assert_in_epsilon(6240942594.369254, worksheet.outputs_land_use_technology_y13, 0.002); end
  def test_outputs_land_use_technology_c14; assert_equal("other.land.unproductive", worksheet.outputs_land_use_technology_c14); end
  def test_outputs_land_use_technology_d14; assert_equal("Global Other land (desert, settlements)", worksheet.outputs_land_use_technology_d14); end
  def test_outputs_land_use_technology_q14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_q14, 0.002); end
  def test_outputs_land_use_technology_r14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_r14, 0.002); end
  def test_outputs_land_use_technology_s14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_s14, 0.002); end
  def test_outputs_land_use_technology_t14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_t14, 0.002); end
  def test_outputs_land_use_technology_u14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_u14, 0.002); end
  def test_outputs_land_use_technology_v14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_v14, 0.002); end
  def test_outputs_land_use_technology_w14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_w14, 0.002); end
  def test_outputs_land_use_technology_x14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_x14, 0.002); end
  def test_outputs_land_use_technology_y14; assert_in_epsilon(4076305710.0, worksheet.outputs_land_use_technology_y14, 0.002); end
  def test_outputs_land_use_technology_c15; assert_equal("other.land.productive", worksheet.outputs_land_use_technology_c15); end
  def test_outputs_land_use_technology_d15; assert_equal("Global Remainder of productive terestial land after bioenergy and food", worksheet.outputs_land_use_technology_d15); end
  def test_outputs_land_use_technology_q15; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_q15||0), 0.002); end
  def test_outputs_land_use_technology_r15; assert_in_epsilon(2730565.3333337307, worksheet.outputs_land_use_technology_r15, 0.002); end
  def test_outputs_land_use_technology_s15; assert_in_epsilon(8054256.230770111, worksheet.outputs_land_use_technology_s15, 0.002); end
  def test_outputs_land_use_technology_t15; assert_in_epsilon(12528843.025640965, worksheet.outputs_land_use_technology_t15, 0.002); end
  def test_outputs_land_use_technology_u15; assert_in_epsilon(17003429.82051301, worksheet.outputs_land_use_technology_u15, 0.002); end
  def test_outputs_land_use_technology_v15; assert_in_epsilon(21478016.615384817, worksheet.outputs_land_use_technology_v15, 0.002); end
  def test_outputs_land_use_technology_w15; assert_in_epsilon(25952603.41025734, worksheet.outputs_land_use_technology_w15, 0.002); end
  def test_outputs_land_use_technology_x15; assert_in_epsilon(30427190.20512724, worksheet.outputs_land_use_technology_x15, 0.002); end
  def test_outputs_land_use_technology_y15; assert_in_epsilon(34901777.00000048, worksheet.outputs_land_use_technology_y15, 0.002); end
  def test_outputs_land_use_technology_c16; assert_equal("Total global land available", worksheet.outputs_land_use_technology_c16); end
  def test_outputs_land_use_technology_q16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_q16, 0.002); end
  def test_outputs_land_use_technology_r16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_r16, 0.002); end
  def test_outputs_land_use_technology_s16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_s16, 0.002); end
  def test_outputs_land_use_technology_t16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_t16, 0.002); end
  def test_outputs_land_use_technology_u16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_u16, 0.002); end
  def test_outputs_land_use_technology_v16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_v16, 0.002); end
  def test_outputs_land_use_technology_w16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_w16, 0.002); end
  def test_outputs_land_use_technology_x16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_x16, 0.002); end
  def test_outputs_land_use_technology_y16; assert_in_epsilon(13680249760.0, worksheet.outputs_land_use_technology_y16, 0.002); end
  def test_outputs_land_use_technology_q17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_q17||0), 0.002); end
  def test_outputs_land_use_technology_r17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_r17||0), 0.002); end
  def test_outputs_land_use_technology_s17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_s17||0), 0.002); end
  def test_outputs_land_use_technology_t17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_t17||0), 0.002); end
  def test_outputs_land_use_technology_u17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_u17||0), 0.002); end
  def test_outputs_land_use_technology_v17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_v17||0), 0.002); end
  def test_outputs_land_use_technology_w17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_w17||0), 0.002); end
  def test_outputs_land_use_technology_x17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_x17||0), 0.002); end
  def test_outputs_land_use_technology_y17; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_y17||0), 0.002); end
  def test_outputs_land_use_technology_f19; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f19); end
  def test_outputs_land_use_technology_q19; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q19); end
  def test_outputs_land_use_technology_c20; assert_equal("Type of land", worksheet.outputs_land_use_technology_c20); end
  def test_outputs_land_use_technology_f20; assert_equal("1970", worksheet.outputs_land_use_technology_f20); end
  def test_outputs_land_use_technology_g20; assert_equal("1975", worksheet.outputs_land_use_technology_g20); end
  def test_outputs_land_use_technology_h20; assert_equal("1980", worksheet.outputs_land_use_technology_h20); end
  def test_outputs_land_use_technology_i20; assert_equal("1985", worksheet.outputs_land_use_technology_i20); end
  def test_outputs_land_use_technology_j20; assert_equal("1990", worksheet.outputs_land_use_technology_j20); end
  def test_outputs_land_use_technology_k20; assert_equal("1995", worksheet.outputs_land_use_technology_k20); end
  def test_outputs_land_use_technology_l20; assert_equal("2000", worksheet.outputs_land_use_technology_l20); end
  def test_outputs_land_use_technology_m20; assert_equal("2005", worksheet.outputs_land_use_technology_m20); end
  def test_outputs_land_use_technology_n20; assert_in_epsilon(2010.0, worksheet.outputs_land_use_technology_n20, 0.002); end
  def test_outputs_land_use_technology_q20; assert_in_epsilon(2011.0, worksheet.outputs_land_use_technology_q20, 0.002); end
  def test_outputs_land_use_technology_r20; assert_equal("2015", worksheet.outputs_land_use_technology_r20); end
  def test_outputs_land_use_technology_s20; assert_equal("2020", worksheet.outputs_land_use_technology_s20); end
  def test_outputs_land_use_technology_t20; assert_equal("2025", worksheet.outputs_land_use_technology_t20); end
  def test_outputs_land_use_technology_u20; assert_equal("2030", worksheet.outputs_land_use_technology_u20); end
  def test_outputs_land_use_technology_v20; assert_equal("2035", worksheet.outputs_land_use_technology_v20); end
  def test_outputs_land_use_technology_w20; assert_equal("2040", worksheet.outputs_land_use_technology_w20); end
  def test_outputs_land_use_technology_x20; assert_equal("2045", worksheet.outputs_land_use_technology_x20); end
  def test_outputs_land_use_technology_y20; assert_equal("2050", worksheet.outputs_land_use_technology_y20); end
  def test_outputs_land_use_technology_c21; assert_equal("forest", worksheet.outputs_land_use_technology_c21); end
  def test_outputs_land_use_technology_d21; assert_equal("Global Forest", worksheet.outputs_land_use_technology_d21); end
  def test_outputs_land_use_technology_q21; assert_in_delta(0.2944001813311923, worksheet.outputs_land_use_technology_q21, 0.002); end
  def test_outputs_land_use_technology_r21; assert_in_delta(0.25541370280300785, worksheet.outputs_land_use_technology_r21, 0.002); end
  def test_outputs_land_use_technology_s21; assert_in_delta(0.21461674133710612, worksheet.outputs_land_use_technology_s21, 0.002); end
  def test_outputs_land_use_technology_t21; assert_in_delta(0.18418280411811905, worksheet.outputs_land_use_technology_t21, 0.002); end
  def test_outputs_land_use_technology_u21; assert_in_delta(0.16075006405591402, worksheet.outputs_land_use_technology_u21, 0.002); end
  def test_outputs_land_use_technology_v21; assert_in_delta(0.1434493089881241, worksheet.outputs_land_use_technology_v21, 0.002); end
  def test_outputs_land_use_technology_w21; assert_in_delta(0.13152544320891385, worksheet.outputs_land_use_technology_w21, 0.002); end
  def test_outputs_land_use_technology_x21; assert_in_delta(0.12431986290126862, worksheet.outputs_land_use_technology_x21, 0.002); end
  def test_outputs_land_use_technology_y21; assert_in_delta(0.12123543128906157, worksheet.outputs_land_use_technology_y21, 0.002); end
  def test_outputs_land_use_technology_c22; assert_equal("arable.food", worksheet.outputs_land_use_technology_c22); end
  def test_outputs_land_use_technology_d22; assert_equal("Global Arable land for food crops", worksheet.outputs_land_use_technology_d22); end
  def test_outputs_land_use_technology_q22; assert_in_delta(0.10598017327426337, worksheet.outputs_land_use_technology_q22, 0.002); end
  def test_outputs_land_use_technology_r22; assert_in_delta(0.10883779648161086, worksheet.outputs_land_use_technology_r22, 0.002); end
  def test_outputs_land_use_technology_s22; assert_in_delta(0.11167039077854155, worksheet.outputs_land_use_technology_s22, 0.002); end
  def test_outputs_land_use_technology_t22; assert_in_delta(0.1136662447627726, worksheet.outputs_land_use_technology_t22, 0.002); end
  def test_outputs_land_use_technology_u22; assert_in_delta(0.11490524122835237, worksheet.outputs_land_use_technology_u22, 0.002); end
  def test_outputs_land_use_technology_v22; assert_in_delta(0.1154842771776181, worksheet.outputs_land_use_technology_v22, 0.002); end
  def test_outputs_land_use_technology_w22; assert_in_delta(0.11546662256767126, worksheet.outputs_land_use_technology_w22, 0.002); end
  def test_outputs_land_use_technology_x22; assert_in_delta(0.11489182572063783, worksheet.outputs_land_use_technology_x22, 0.002); end
  def test_outputs_land_use_technology_y22; assert_in_delta(0.11380372399246784, worksheet.outputs_land_use_technology_y22, 0.002); end
  def test_outputs_land_use_technology_c23; assert_equal("arable.bio", worksheet.outputs_land_use_technology_c23); end
  def test_outputs_land_use_technology_d23; assert_equal("Global Arable land for bioenergy", worksheet.outputs_land_use_technology_d23); end
  def test_outputs_land_use_technology_q23; assert_in_delta(0.0058478464504291335, worksheet.outputs_land_use_technology_q23, 0.002); end
  def test_outputs_land_use_technology_r23; assert_in_delta(0.007584765226294134, worksheet.outputs_land_use_technology_r23, 0.002); end
  def test_outputs_land_use_technology_s23; assert_in_delta(0.009616260965781576, worksheet.outputs_land_use_technology_s23, 0.002); end
  def test_outputs_land_use_technology_t23; assert_in_delta(0.009289177259462475, worksheet.outputs_land_use_technology_t23, 0.002); end
  def test_outputs_land_use_technology_u23; assert_in_delta(0.008962093553143374, worksheet.outputs_land_use_technology_u23, 0.002); end
  def test_outputs_land_use_technology_v23; assert_in_delta(0.008635009846824271, worksheet.outputs_land_use_technology_v23, 0.002); end
  def test_outputs_land_use_technology_w23; assert_in_delta(0.00830792614050517, worksheet.outputs_land_use_technology_w23, 0.002); end
  def test_outputs_land_use_technology_x23; assert_in_delta(0.00798084243418607, worksheet.outputs_land_use_technology_x23, 0.002); end
  def test_outputs_land_use_technology_y23; assert_in_delta(0.007653758727866968, worksheet.outputs_land_use_technology_y23, 0.002); end
  def test_outputs_land_use_technology_c24; assert_equal("arable.other", worksheet.outputs_land_use_technology_c24); end
  def test_outputs_land_use_technology_d24; assert_equal("Global Arable land for other ", worksheet.outputs_land_use_technology_d24); end
  def test_outputs_land_use_technology_q24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_q24, 0.002); end
  def test_outputs_land_use_technology_r24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_r24, 0.002); end
  def test_outputs_land_use_technology_s24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_s24, 0.002); end
  def test_outputs_land_use_technology_t24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_t24, 0.002); end
  def test_outputs_land_use_technology_u24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_u24, 0.002); end
  def test_outputs_land_use_technology_v24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_v24, 0.002); end
  def test_outputs_land_use_technology_w24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_w24, 0.002); end
  def test_outputs_land_use_technology_x24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_x24, 0.002); end
  def test_outputs_land_use_technology_y24; assert_in_delta(0.0005847846450429133, worksheet.outputs_land_use_technology_y24, 0.002); end
  def test_outputs_land_use_technology_c25; assert_equal("pasture.food", worksheet.outputs_land_use_technology_c25); end
  def test_outputs_land_use_technology_d25; assert_equal("Global Pasture for livestock", worksheet.outputs_land_use_technology_d25); end
  def test_outputs_land_use_technology_q25; assert_in_delta(0.2952168908354784, worksheet.outputs_land_use_technology_q25, 0.002); end
  def test_outputs_land_use_technology_r25; assert_in_delta(0.3294092282955479, worksheet.outputs_land_use_technology_r25, 0.002); end
  def test_outputs_land_use_technology_s25; assert_in_delta(0.3649529481385596, worksheet.outputs_land_use_technology_s25, 0.002); end
  def test_outputs_land_use_technology_t25; assert_in_delta(0.3933910313733156, worksheet.outputs_land_use_technology_t25, 0.002); end
  def test_outputs_land_use_technology_u25; assert_in_delta(0.4155847749699409, worksheet.outputs_land_use_technology_u25, 0.002); end
  def test_outputs_land_use_technology_v25; assert_in_delta(0.4323064940884651, worksheet.outputs_land_use_technology_v25, 0.002); end
  def test_outputs_land_use_technology_w25; assert_in_delta(0.4442480144776222, worksheet.outputs_land_use_technology_w25, 0.002); end
  def test_outputs_land_use_technology_x25; assert_in_delta(0.4520283916323009, worksheet.outputs_land_use_technology_x25, 0.002); end
  def test_outputs_land_use_technology_y25; assert_in_delta(0.45620092497267783, worksheet.outputs_land_use_technology_y25, 0.002); end
  def test_outputs_land_use_technology_c26; assert_equal("other.land.unproductive", worksheet.outputs_land_use_technology_c26); end
  def test_outputs_land_use_technology_d26; assert_equal("Global Other land (desert, settlements)", worksheet.outputs_land_use_technology_d26); end
  def test_outputs_land_use_technology_q26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_q26, 0.002); end
  def test_outputs_land_use_technology_r26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_r26, 0.002); end
  def test_outputs_land_use_technology_s26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_s26, 0.002); end
  def test_outputs_land_use_technology_t26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_t26, 0.002); end
  def test_outputs_land_use_technology_u26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_u26, 0.002); end
  def test_outputs_land_use_technology_v26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_v26, 0.002); end
  def test_outputs_land_use_technology_w26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_w26, 0.002); end
  def test_outputs_land_use_technology_x26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_x26, 0.002); end
  def test_outputs_land_use_technology_y26; assert_in_delta(0.29797012346359386, worksheet.outputs_land_use_technology_y26, 0.002); end
  def test_outputs_land_use_technology_c27; assert_equal("other.land.productive", worksheet.outputs_land_use_technology_c27); end
  def test_outputs_land_use_technology_d27; assert_equal("Global Remainder of productive terestial land after bioenergy and food", worksheet.outputs_land_use_technology_d27); end
  def test_outputs_land_use_technology_q27; assert_in_delta(0.0, (worksheet.outputs_land_use_technology_q27||0), 0.002); end
  def test_outputs_land_use_technology_r27; assert_in_delta(0.00019959908490250623, worksheet.outputs_land_use_technology_r27, 0.002); end
  def test_outputs_land_use_technology_s27; assert_in_delta(0.0005887506713744466, worksheet.outputs_land_use_technology_s27, 0.002); end
  def test_outputs_land_use_technology_t27; assert_in_delta(0.000915834377693479, worksheet.outputs_land_use_technology_t27, 0.002); end
  def test_outputs_land_use_technology_u27; assert_in_delta(0.0012429180840125985, worksheet.outputs_land_use_technology_u27, 0.002); end
  def test_outputs_land_use_technology_v27; assert_in_delta(0.0015700017903317006, worksheet.outputs_land_use_technology_v27, 0.002); end
  def test_outputs_land_use_technology_w27; assert_in_delta(0.001897085496650855, worksheet.outputs_land_use_technology_w27, 0.002); end
  def test_outputs_land_use_technology_x27; assert_in_delta(0.002224169202969818, worksheet.outputs_land_use_technology_x27, 0.002); end
  def test_outputs_land_use_technology_y27; assert_in_delta(0.0025512529092890242, worksheet.outputs_land_use_technology_y27, 0.002); end
  def test_outputs_land_use_technology_c28; assert_equal("Total global land available", worksheet.outputs_land_use_technology_c28); end
  def test_outputs_land_use_technology_b33; assert_equal("Diet", worksheet.outputs_land_use_technology_b33); end
  def test_outputs_land_use_technology_f35; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f35); end
  def test_outputs_land_use_technology_q35; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q35); end
  def test_outputs_land_use_technology_c36; assert_equal("Calories per person", worksheet.outputs_land_use_technology_c36); end
  def test_outputs_land_use_technology_f36; assert_equal("1970", worksheet.outputs_land_use_technology_f36); end
  def test_outputs_land_use_technology_g36; assert_equal("1975", worksheet.outputs_land_use_technology_g36); end
  def test_outputs_land_use_technology_h36; assert_equal("1980", worksheet.outputs_land_use_technology_h36); end
  def test_outputs_land_use_technology_i36; assert_equal("1985", worksheet.outputs_land_use_technology_i36); end
  def test_outputs_land_use_technology_j36; assert_equal("1990", worksheet.outputs_land_use_technology_j36); end
  def test_outputs_land_use_technology_k36; assert_equal("1995", worksheet.outputs_land_use_technology_k36); end
  def test_outputs_land_use_technology_l36; assert_equal("2000", worksheet.outputs_land_use_technology_l36); end
  def test_outputs_land_use_technology_m36; assert_equal("2005", worksheet.outputs_land_use_technology_m36); end
  def test_outputs_land_use_technology_n36; assert_in_epsilon(2010.0, worksheet.outputs_land_use_technology_n36, 0.002); end
  def test_outputs_land_use_technology_q36; assert_in_epsilon(2011.0, worksheet.outputs_land_use_technology_q36, 0.002); end
  def test_outputs_land_use_technology_r36; assert_equal("2015", worksheet.outputs_land_use_technology_r36); end
  def test_outputs_land_use_technology_s36; assert_equal("2020", worksheet.outputs_land_use_technology_s36); end
  def test_outputs_land_use_technology_t36; assert_equal("2025", worksheet.outputs_land_use_technology_t36); end
  def test_outputs_land_use_technology_u36; assert_equal("2030", worksheet.outputs_land_use_technology_u36); end
  def test_outputs_land_use_technology_v36; assert_equal("2035", worksheet.outputs_land_use_technology_v36); end
  def test_outputs_land_use_technology_w36; assert_equal("2040", worksheet.outputs_land_use_technology_w36); end
  def test_outputs_land_use_technology_x36; assert_equal("2045", worksheet.outputs_land_use_technology_x36); end
  def test_outputs_land_use_technology_y36; assert_equal("2050", worksheet.outputs_land_use_technology_y36); end
  def test_outputs_land_use_technology_c37; assert_equal("Meat ", worksheet.outputs_land_use_technology_c37); end
  def test_outputs_land_use_technology_q37; assert_in_epsilon(234.879342349509, worksheet.outputs_land_use_technology_q37, 0.002); end
  def test_outputs_land_use_technology_r37; assert_in_epsilon(266.35783218511267, worksheet.outputs_land_use_technology_r37, 0.002); end
  def test_outputs_land_use_technology_s37; assert_in_epsilon(302.6145937650634, worksheet.outputs_land_use_technology_s37, 0.002); end
  def test_outputs_land_use_technology_t37; assert_in_epsilon(336.4159016612652, worksheet.outputs_land_use_technology_t37, 0.002); end
  def test_outputs_land_use_technology_u37; assert_in_epsilon(368.37978515077526, worksheet.outputs_land_use_technology_u37, 0.002); end
  def test_outputs_land_use_technology_v37; assert_in_epsilon(398.90037545172333, worksheet.outputs_land_use_technology_v37, 0.002); end
  def test_outputs_land_use_technology_w37; assert_in_epsilon(428.37550410979793, worksheet.outputs_land_use_technology_w37, 0.002); end
  def test_outputs_land_use_technology_x37; assert_in_epsilon(457.2345982418427, worksheet.outputs_land_use_technology_x37, 0.002); end
  def test_outputs_land_use_technology_y37; assert_in_epsilon(485.85011412614426, worksheet.outputs_land_use_technology_y37, 0.002); end
  def test_outputs_land_use_technology_c38; assert_equal("Non meat", worksheet.outputs_land_use_technology_c38); end
  def test_outputs_land_use_technology_q38; assert_in_epsilon(2615.720657650491, worksheet.outputs_land_use_technology_q38, 0.002); end
  def test_outputs_land_use_technology_r38; assert_in_epsilon(2636.693449866167, worksheet.outputs_land_use_technology_r38, 0.002); end
  def test_outputs_land_use_technology_s38; assert_in_epsilon(2666.0007908503167, worksheet.outputs_land_use_technology_s38, 0.002); end
  def test_outputs_land_use_technology_t38; assert_in_epsilon(2697.7635855182248, worksheet.outputs_land_use_technology_t38, 0.002); end
  def test_outputs_land_use_technology_u38; assert_in_epsilon(2731.3638045928146, worksheet.outputs_land_use_technology_u38, 0.002); end
  def test_outputs_land_use_technology_v38; assert_in_epsilon(2766.4073168559667, worksheet.outputs_land_use_technology_v38, 0.002); end
  def test_outputs_land_use_technology_w38; assert_in_epsilon(2802.496290761992, worksheet.outputs_land_use_technology_w38, 0.002); end
  def test_outputs_land_use_technology_x38; assert_in_epsilon(2839.2012991940574, worksheet.outputs_land_use_technology_x38, 0.002); end
  def test_outputs_land_use_technology_y38; assert_in_epsilon(2876.149885873856, worksheet.outputs_land_use_technology_y38, 0.002); end
  def test_outputs_land_use_technology_c39; assert_equal("total", worksheet.outputs_land_use_technology_c39); end
  def test_outputs_land_use_technology_q39; assert_in_epsilon(2850.6, worksheet.outputs_land_use_technology_q39, 0.002); end
  def test_outputs_land_use_technology_r39; assert_in_epsilon(2903.05128205128, worksheet.outputs_land_use_technology_r39, 0.002); end
  def test_outputs_land_use_technology_s39; assert_in_epsilon(2968.61538461538, worksheet.outputs_land_use_technology_s39, 0.002); end
  def test_outputs_land_use_technology_t39; assert_in_epsilon(3034.17948717949, worksheet.outputs_land_use_technology_t39, 0.002); end
  def test_outputs_land_use_technology_u39; assert_in_epsilon(3099.74358974359, worksheet.outputs_land_use_technology_u39, 0.002); end
  def test_outputs_land_use_technology_v39; assert_in_epsilon(3165.30769230769, worksheet.outputs_land_use_technology_v39, 0.002); end
  def test_outputs_land_use_technology_w39; assert_in_epsilon(3230.87179487179, worksheet.outputs_land_use_technology_w39, 0.002); end
  def test_outputs_land_use_technology_x39; assert_in_epsilon(3296.4358974359, worksheet.outputs_land_use_technology_x39, 0.002); end
  def test_outputs_land_use_technology_y39; assert_in_epsilon(3362.0, worksheet.outputs_land_use_technology_y39, 0.002); end
  def test_outputs_land_use_technology_b44; assert_equal("Length / area / amount / population", worksheet.outputs_land_use_technology_b44); end
  def test_outputs_land_use_technology_f46; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f46); end
  def test_outputs_land_use_technology_q46; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q46); end
  def test_outputs_land_use_technology_c47; assert_equal("Description", worksheet.outputs_land_use_technology_c47); end
  def test_outputs_land_use_technology_f47; assert_equal("1970", worksheet.outputs_land_use_technology_f47); end
  def test_outputs_land_use_technology_g47; assert_equal("1975", worksheet.outputs_land_use_technology_g47); end
  def test_outputs_land_use_technology_h47; assert_equal("1980", worksheet.outputs_land_use_technology_h47); end
  def test_outputs_land_use_technology_i47; assert_equal("1985", worksheet.outputs_land_use_technology_i47); end
  def test_outputs_land_use_technology_j47; assert_equal("1990", worksheet.outputs_land_use_technology_j47); end
  def test_outputs_land_use_technology_k47; assert_equal("1995", worksheet.outputs_land_use_technology_k47); end
  def test_outputs_land_use_technology_l47; assert_equal("2000", worksheet.outputs_land_use_technology_l47); end
  def test_outputs_land_use_technology_m47; assert_equal("2005", worksheet.outputs_land_use_technology_m47); end
  def test_outputs_land_use_technology_n47; assert_in_epsilon(2010.0, worksheet.outputs_land_use_technology_n47, 0.002); end
  def test_outputs_land_use_technology_q47; assert_in_epsilon(2011.0, worksheet.outputs_land_use_technology_q47, 0.002); end
  def test_outputs_land_use_technology_r47; assert_equal("2015", worksheet.outputs_land_use_technology_r47); end
  def test_outputs_land_use_technology_s47; assert_equal("2020", worksheet.outputs_land_use_technology_s47); end
  def test_outputs_land_use_technology_t47; assert_equal("2025", worksheet.outputs_land_use_technology_t47); end
  def test_outputs_land_use_technology_u47; assert_equal("2030", worksheet.outputs_land_use_technology_u47); end
  def test_outputs_land_use_technology_v47; assert_equal("2035", worksheet.outputs_land_use_technology_v47); end
  def test_outputs_land_use_technology_w47; assert_equal("2040", worksheet.outputs_land_use_technology_w47); end
  def test_outputs_land_use_technology_x47; assert_equal("2045", worksheet.outputs_land_use_technology_x47); end
  def test_outputs_land_use_technology_y47; assert_equal("2050", worksheet.outputs_land_use_technology_y47); end
  def test_outputs_land_use_technology_c48; assert_equal("Number of products produced", worksheet.outputs_land_use_technology_c48); end
  def test_outputs_land_use_technology_c49; assert_equal("Amount of materials manufactured", worksheet.outputs_land_use_technology_c49); end
  def test_outputs_land_use_technology_c50; assert_equal("Amount of resources extracted", worksheet.outputs_land_use_technology_c50); end
  def test_outputs_land_use_technology_c51; assert_equal("Amount of food consumed", worksheet.outputs_land_use_technology_c51); end
  def test_outputs_land_use_technology_c52; assert_equal("Number of people", worksheet.outputs_land_use_technology_c52); end
  def test_outputs_land_use_technology_c53; assert_equal("Amount of CO2 sequestered", worksheet.outputs_land_use_technology_c53); end
  def test_outputs_land_use_technology_b58; assert_equal("Stock of technology units", worksheet.outputs_land_use_technology_b58); end
  def test_outputs_land_use_technology_ab58; assert_equal("Data sources and comments for the historic data", worksheet.outputs_land_use_technology_ab58); end
  def test_outputs_land_use_technology_ab59; assert_equal("Source", worksheet.outputs_land_use_technology_ab59); end
  def test_outputs_land_use_technology_ac59; assert_equal("Link", worksheet.outputs_land_use_technology_ac59); end
  def test_outputs_land_use_technology_ad59; assert_equal("Risk (Green, Amber/Green, Amber, Red/Amber, Red)", worksheet.outputs_land_use_technology_ad59); end
  def test_outputs_land_use_technology_ae59; assert_equal("Comment / assumptions / caveats", worksheet.outputs_land_use_technology_ae59); end
  def test_outputs_land_use_technology_af59; assert_equal("Comment author", worksheet.outputs_land_use_technology_af59); end
  def test_outputs_land_use_technology_c60; assert_equal("All technologies", worksheet.outputs_land_use_technology_c60); end
  def test_outputs_land_use_technology_y60; assert_equal("Number", worksheet.outputs_land_use_technology_y60); end
  def test_outputs_land_use_technology_f61; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f61); end
  def test_outputs_land_use_technology_q61; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q61); end
  def test_outputs_land_use_technology_c62; assert_equal("Technology", worksheet.outputs_land_use_technology_c62); end
  def test_outputs_land_use_technology_d62; assert_equal("Description", worksheet.outputs_land_use_technology_d62); end
  def test_outputs_land_use_technology_f62; assert_equal("1970", worksheet.outputs_land_use_technology_f62); end
  def test_outputs_land_use_technology_g62; assert_equal("1975", worksheet.outputs_land_use_technology_g62); end
  def test_outputs_land_use_technology_h62; assert_equal("1980", worksheet.outputs_land_use_technology_h62); end
  def test_outputs_land_use_technology_i62; assert_equal("1985", worksheet.outputs_land_use_technology_i62); end
  def test_outputs_land_use_technology_j62; assert_equal("1990", worksheet.outputs_land_use_technology_j62); end
  def test_outputs_land_use_technology_k62; assert_equal("1995", worksheet.outputs_land_use_technology_k62); end
  def test_outputs_land_use_technology_l62; assert_equal("2000", worksheet.outputs_land_use_technology_l62); end
  def test_outputs_land_use_technology_m62; assert_equal("2005", worksheet.outputs_land_use_technology_m62); end
  def test_outputs_land_use_technology_n62; assert_in_epsilon(2010.0, worksheet.outputs_land_use_technology_n62, 0.002); end
  def test_outputs_land_use_technology_q62; assert_in_epsilon(2011.0, worksheet.outputs_land_use_technology_q62, 0.002); end
  def test_outputs_land_use_technology_r62; assert_equal("2015", worksheet.outputs_land_use_technology_r62); end
  def test_outputs_land_use_technology_s62; assert_equal("2020", worksheet.outputs_land_use_technology_s62); end
  def test_outputs_land_use_technology_t62; assert_equal("2025", worksheet.outputs_land_use_technology_t62); end
  def test_outputs_land_use_technology_u62; assert_equal("2030", worksheet.outputs_land_use_technology_u62); end
  def test_outputs_land_use_technology_v62; assert_equal("2035", worksheet.outputs_land_use_technology_v62); end
  def test_outputs_land_use_technology_w62; assert_equal("2040", worksheet.outputs_land_use_technology_w62); end
  def test_outputs_land_use_technology_x62; assert_equal("2045", worksheet.outputs_land_use_technology_x62); end
  def test_outputs_land_use_technology_y62; assert_equal("2050", worksheet.outputs_land_use_technology_y62); end
  def test_outputs_land_use_technology_c63; assert_equal("G.motorbike.passenger.urban.fuel", worksheet.outputs_land_use_technology_c63); end
  def test_outputs_land_use_technology_d63; assert_equal("Global motorbike.passenger.urban.fuel", worksheet.outputs_land_use_technology_d63); end
  def test_outputs_land_use_technology_c64; assert_equal("G.motorbike.passenger.urban.elec", worksheet.outputs_land_use_technology_c64); end
  def test_outputs_land_use_technology_d64; assert_equal("Global motorbike.passenger.urban.elec", worksheet.outputs_land_use_technology_d64); end
  def test_outputs_land_use_technology_c65; assert_equal("G.car.passenger.urban.fuel", worksheet.outputs_land_use_technology_c65); end
  def test_outputs_land_use_technology_d65; assert_equal("Global car.passenger.urban.fuel", worksheet.outputs_land_use_technology_d65); end
  def test_outputs_land_use_technology_c66; assert_equal("G.car.passenger.urban.PH", worksheet.outputs_land_use_technology_c66); end
  def test_outputs_land_use_technology_d66; assert_equal("Global car.passenger.urban.PH", worksheet.outputs_land_use_technology_d66); end
  def test_outputs_land_use_technology_c67; assert_equal("G.car.passenger.urban.EV", worksheet.outputs_land_use_technology_c67); end
  def test_outputs_land_use_technology_d67; assert_equal("Global car.passenger.urban.EV", worksheet.outputs_land_use_technology_d67); end
  def test_outputs_land_use_technology_c68; assert_equal("G.car.passenger.urban.H2", worksheet.outputs_land_use_technology_c68); end
  def test_outputs_land_use_technology_d68; assert_equal("Global car.passenger.urban.H2", worksheet.outputs_land_use_technology_d68); end
  def test_outputs_land_use_technology_c69; assert_equal("G.bus.passenger.urban.fuel", worksheet.outputs_land_use_technology_c69); end
  def test_outputs_land_use_technology_d69; assert_equal("Global bus.passenger.urban.fuel", worksheet.outputs_land_use_technology_d69); end
  def test_outputs_land_use_technology_c70; assert_equal("G.bus.passenger.urban.PH", worksheet.outputs_land_use_technology_c70); end
  def test_outputs_land_use_technology_d70; assert_equal("Global bus.passenger.urban.PH", worksheet.outputs_land_use_technology_d70); end
  def test_outputs_land_use_technology_c71; assert_equal("G.bus.passenger.urban.EV", worksheet.outputs_land_use_technology_c71); end
  def test_outputs_land_use_technology_d71; assert_equal("Global bus.passenger.urban.EV", worksheet.outputs_land_use_technology_d71); end
  def test_outputs_land_use_technology_c72; assert_equal("G.bus.passenger.urban.H2", worksheet.outputs_land_use_technology_c72); end
  def test_outputs_land_use_technology_d72; assert_equal("Global bus.passenger.urban.H2", worksheet.outputs_land_use_technology_d72); end
  def test_outputs_land_use_technology_c73; assert_equal("G.train.passenger.urban.fuel", worksheet.outputs_land_use_technology_c73); end
  def test_outputs_land_use_technology_d73; assert_equal("Global train.passenger.urban.fuel", worksheet.outputs_land_use_technology_d73); end
  def test_outputs_land_use_technology_c74; assert_equal("G.train.passenger.urban.elec", worksheet.outputs_land_use_technology_c74); end
  def test_outputs_land_use_technology_d74; assert_equal("Global train.passenger.urban.elec", worksheet.outputs_land_use_technology_d74); end
  def test_outputs_land_use_technology_c75; assert_equal("G.motorbike.passenger.rural.fuel", worksheet.outputs_land_use_technology_c75); end
  def test_outputs_land_use_technology_d75; assert_equal("Global motorbike.passenger.rural.fuel", worksheet.outputs_land_use_technology_d75); end
  def test_outputs_land_use_technology_c76; assert_equal("G.motorbike.passenger.rural.elec", worksheet.outputs_land_use_technology_c76); end
  def test_outputs_land_use_technology_d76; assert_equal("Global motorbike.passenger.rural.elec", worksheet.outputs_land_use_technology_d76); end
  def test_outputs_land_use_technology_c77; assert_equal("G.car.passenger.rural.fuel", worksheet.outputs_land_use_technology_c77); end
  def test_outputs_land_use_technology_d77; assert_equal("Global car.passenger.rural.fuel", worksheet.outputs_land_use_technology_d77); end
  def test_outputs_land_use_technology_c78; assert_equal("G.car.passenger.rural.PH", worksheet.outputs_land_use_technology_c78); end
  def test_outputs_land_use_technology_d78; assert_equal("Global car.passenger.rural.PH", worksheet.outputs_land_use_technology_d78); end
  def test_outputs_land_use_technology_c79; assert_equal("G.car.passenger.rural.EV", worksheet.outputs_land_use_technology_c79); end
  def test_outputs_land_use_technology_d79; assert_equal("Global car.passenger.rural.EV", worksheet.outputs_land_use_technology_d79); end
  def test_outputs_land_use_technology_c80; assert_equal("G.car.passenger.rural.H2", worksheet.outputs_land_use_technology_c80); end
  def test_outputs_land_use_technology_d80; assert_equal("Global car.passenger.rural.H2", worksheet.outputs_land_use_technology_d80); end
  def test_outputs_land_use_technology_c81; assert_equal("G.bus.passenger.rural.fuel", worksheet.outputs_land_use_technology_c81); end
  def test_outputs_land_use_technology_d81; assert_equal("Global bus.passenger.rural.fuel", worksheet.outputs_land_use_technology_d81); end
  def test_outputs_land_use_technology_c82; assert_equal("G.bus.passenger.rural.PH", worksheet.outputs_land_use_technology_c82); end
  def test_outputs_land_use_technology_d82; assert_equal("Global bus.passenger.rural.PH", worksheet.outputs_land_use_technology_d82); end
  def test_outputs_land_use_technology_c83; assert_equal("G.bus.passenger.rural.EV", worksheet.outputs_land_use_technology_c83); end
  def test_outputs_land_use_technology_d83; assert_equal("Global bus.passenger.rural.EV", worksheet.outputs_land_use_technology_d83); end
  def test_outputs_land_use_technology_c84; assert_equal("G.bus.passenger.rural.H2", worksheet.outputs_land_use_technology_c84); end
  def test_outputs_land_use_technology_d84; assert_equal("Global bus.passenger.rural.H2", worksheet.outputs_land_use_technology_d84); end
  def test_outputs_land_use_technology_c85; assert_equal("G.train.passenger.rural.fuel", worksheet.outputs_land_use_technology_c85); end
  def test_outputs_land_use_technology_d85; assert_equal("Global train.passenger.rural.fuel", worksheet.outputs_land_use_technology_d85); end
  def test_outputs_land_use_technology_c86; assert_equal("G.train.passenger.rural.elec", worksheet.outputs_land_use_technology_c86); end
  def test_outputs_land_use_technology_d86; assert_equal("Global train.passenger.rural.elec", worksheet.outputs_land_use_technology_d86); end
  def test_outputs_land_use_technology_c87; assert_equal("G.plane.passenger.international.fuel", worksheet.outputs_land_use_technology_c87); end
  def test_outputs_land_use_technology_d87; assert_equal("Global plane.passenger.international.fuel", worksheet.outputs_land_use_technology_d87); end
  def test_outputs_land_use_technology_c88; assert_equal("G.plane.passenger.international.hydrogen", worksheet.outputs_land_use_technology_c88); end
  def test_outputs_land_use_technology_d88; assert_equal(:na, worksheet.outputs_land_use_technology_d88); end
  def test_outputs_land_use_technology_c89; assert_equal("G.ship.passenger.international.fuel", worksheet.outputs_land_use_technology_c89); end
  def test_outputs_land_use_technology_d89; assert_equal("Global ship.passenger.international.fuel", worksheet.outputs_land_use_technology_d89); end
  def test_outputs_land_use_technology_c90; assert_equal("G.ship.passenger.international.hydrogen", worksheet.outputs_land_use_technology_c90); end
  def test_outputs_land_use_technology_d90; assert_equal(:na, worksheet.outputs_land_use_technology_d90); end
  def test_outputs_land_use_technology_c91; assert_equal("G.train.passenger.international.fuel", worksheet.outputs_land_use_technology_c91); end
  def test_outputs_land_use_technology_d91; assert_equal("Global train.passenger.international.fuel", worksheet.outputs_land_use_technology_d91); end
  def test_outputs_land_use_technology_c92; assert_equal("G.train.passenger.international.elec", worksheet.outputs_land_use_technology_c92); end
  def test_outputs_land_use_technology_d92; assert_equal("Global train.passenger.international.elec", worksheet.outputs_land_use_technology_d92); end
  def test_outputs_land_use_technology_c93; assert_equal("G.solid.boiler.heat", worksheet.outputs_land_use_technology_c93); end
  def test_outputs_land_use_technology_d93; assert_equal("Global Solid fuel boiler", worksheet.outputs_land_use_technology_d93); end
  def test_outputs_land_use_technology_c94; assert_equal("G.liquid.boiler.heat", worksheet.outputs_land_use_technology_c94); end
  def test_outputs_land_use_technology_d94; assert_equal("Global Liquid fuel boiler", worksheet.outputs_land_use_technology_d94); end
  def test_outputs_land_use_technology_c95; assert_equal("G.gas.boiler.heat", worksheet.outputs_land_use_technology_c95); end
  def test_outputs_land_use_technology_d95; assert_equal("Global Gaseous fuel boiler", worksheet.outputs_land_use_technology_d95); end
  def test_outputs_land_use_technology_c96; assert_equal("G.micro.chp.heat", worksheet.outputs_land_use_technology_c96); end
  def test_outputs_land_use_technology_d96; assert_equal("Global Micro combined heat and power (for single domestic purpose)", worksheet.outputs_land_use_technology_d96); end
  def test_outputs_land_use_technology_c97; assert_equal("G.chp.heat", worksheet.outputs_land_use_technology_c97); end
  def test_outputs_land_use_technology_d97; assert_equal("Global Large scale combined heat and power", worksheet.outputs_land_use_technology_d97); end
  def test_outputs_land_use_technology_c98; assert_equal("G.solar.heat", worksheet.outputs_land_use_technology_c98); end
  def test_outputs_land_use_technology_d98; assert_equal("Global Solar thermal", worksheet.outputs_land_use_technology_d98); end
  def test_outputs_land_use_technology_c99; assert_equal("G.district.heat", worksheet.outputs_land_use_technology_c99); end
  def test_outputs_land_use_technology_d99; assert_equal("Global District heating", worksheet.outputs_land_use_technology_d99); end
  def test_outputs_land_use_technology_c100; assert_equal("G.air.pump.heat", worksheet.outputs_land_use_technology_c100); end
  def test_outputs_land_use_technology_d100; assert_equal("Global Air source heat pump", worksheet.outputs_land_use_technology_d100); end
  def test_outputs_land_use_technology_c101; assert_equal("G.ground.pump.heat", worksheet.outputs_land_use_technology_c101); end
  def test_outputs_land_use_technology_d101; assert_equal("Global Ground source heat pump", worksheet.outputs_land_use_technology_d101); end
  def test_outputs_land_use_technology_c102; assert_equal("G.elec.heat", worksheet.outputs_land_use_technology_c102); end
  def test_outputs_land_use_technology_d102; assert_equal("Global Electric heaters", worksheet.outputs_land_use_technology_d102); end
  def test_outputs_land_use_technology_c103; assert_equal("G.ac.cooling", worksheet.outputs_land_use_technology_c103); end
  def test_outputs_land_use_technology_d103; assert_equal("Global Air conditioning", worksheet.outputs_land_use_technology_d103); end
  def test_outputs_land_use_technology_c104; assert_equal("G.bulb.light", worksheet.outputs_land_use_technology_c104); end
  def test_outputs_land_use_technology_d104; assert_equal("Global Light bulb", worksheet.outputs_land_use_technology_d104); end
  def test_outputs_land_use_technology_c105; assert_equal("G.appliance", worksheet.outputs_land_use_technology_c105); end
  def test_outputs_land_use_technology_d105; assert_equal("Global Appliance", worksheet.outputs_land_use_technology_d105); end
  def test_outputs_land_use_technology_c106; assert_equal("G.oven.cook", worksheet.outputs_land_use_technology_c106); end
  def test_outputs_land_use_technology_d106; assert_equal("Global Oven", worksheet.outputs_land_use_technology_d106); end
  def test_outputs_land_use_technology_c107; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_land_use_technology_c107); end
  def test_outputs_land_use_technology_d107; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_land_use_technology_d107); end
  def test_outputs_land_use_technology_c108; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_land_use_technology_c108); end
  def test_outputs_land_use_technology_d108; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_land_use_technology_d108); end
  def test_outputs_land_use_technology_c109; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_land_use_technology_c109); end
  def test_outputs_land_use_technology_d109; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_land_use_technology_d109); end
  def test_outputs_land_use_technology_c110; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_land_use_technology_c110); end
  def test_outputs_land_use_technology_d110; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_land_use_technology_d110); end
  def test_outputs_land_use_technology_c111; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_land_use_technology_c111); end
  def test_outputs_land_use_technology_d111; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_land_use_technology_d111); end
  def test_outputs_land_use_technology_c112; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_land_use_technology_c112); end
  def test_outputs_land_use_technology_d112; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_land_use_technology_d112); end
  def test_outputs_land_use_technology_c113; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_land_use_technology_c113); end
  def test_outputs_land_use_technology_d113; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_land_use_technology_d113); end
  def test_outputs_land_use_technology_c114; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_land_use_technology_c114); end
  def test_outputs_land_use_technology_d114; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_land_use_technology_d114); end
  def test_outputs_land_use_technology_c115; assert_equal("G.CCS.solid.super.elec", worksheet.outputs_land_use_technology_c115); end
  def test_outputs_land_use_technology_d115; assert_equal("Global Carbon capture solid-fuel supercritical power plant", worksheet.outputs_land_use_technology_d115); end
  def test_outputs_land_use_technology_c116; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_land_use_technology_c116); end
  def test_outputs_land_use_technology_d116; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_land_use_technology_d116); end
  def test_outputs_land_use_technology_c117; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_land_use_technology_c117); end
  def test_outputs_land_use_technology_d117; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_land_use_technology_d117); end
  def test_outputs_land_use_technology_c118; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_land_use_technology_c118); end
  def test_outputs_land_use_technology_d118; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_land_use_technology_d118); end
  def test_outputs_land_use_technology_c119; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_land_use_technology_c119); end
  def test_outputs_land_use_technology_d119; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_land_use_technology_d119); end
  def test_outputs_land_use_technology_c120; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_land_use_technology_c120); end
  def test_outputs_land_use_technology_d120; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_land_use_technology_d120); end
  def test_outputs_land_use_technology_c121; assert_equal("G.nuclear.elec", worksheet.outputs_land_use_technology_c121); end
  def test_outputs_land_use_technology_d121; assert_equal("Global Nuclear power stations", worksheet.outputs_land_use_technology_d121); end
  def test_outputs_land_use_technology_c122; assert_equal("G.onshore.wind.elec", worksheet.outputs_land_use_technology_c122); end
  def test_outputs_land_use_technology_d122; assert_equal("Global On shore wind turbines", worksheet.outputs_land_use_technology_d122); end
  def test_outputs_land_use_technology_c123; assert_equal("G.offshore.wind.elec", worksheet.outputs_land_use_technology_c123); end
  def test_outputs_land_use_technology_d123; assert_equal("Global Off shore wind turbines", worksheet.outputs_land_use_technology_d123); end
  def test_outputs_land_use_technology_c124; assert_equal("G.hydro.elec", worksheet.outputs_land_use_technology_c124); end
  def test_outputs_land_use_technology_d124; assert_equal("Global Hydroelectric dam", worksheet.outputs_land_use_technology_d124); end
  def test_outputs_land_use_technology_c125; assert_equal("G.tidal.elec", worksheet.outputs_land_use_technology_c125); end
  def test_outputs_land_use_technology_d125; assert_equal("Global Tidal", worksheet.outputs_land_use_technology_d125); end
  def test_outputs_land_use_technology_c126; assert_equal("G.wave.elec", worksheet.outputs_land_use_technology_c126); end
  def test_outputs_land_use_technology_d126; assert_equal("Global Wave", worksheet.outputs_land_use_technology_d126); end
  def test_outputs_land_use_technology_c127; assert_equal("G.solarpv.elec", worksheet.outputs_land_use_technology_c127); end
  def test_outputs_land_use_technology_d127; assert_equal("Global Solar photovoltaic", worksheet.outputs_land_use_technology_d127); end
  def test_outputs_land_use_technology_c128; assert_equal("G.concentrated.solar.elec", worksheet.outputs_land_use_technology_c128); end
  def test_outputs_land_use_technology_d128; assert_equal("Global Concentrated solar", worksheet.outputs_land_use_technology_d128); end
  def test_outputs_land_use_technology_c129; assert_equal("G.geothermal.elec", worksheet.outputs_land_use_technology_c129); end
  def test_outputs_land_use_technology_d129; assert_equal("Global Geothermal", worksheet.outputs_land_use_technology_d129); end
  def test_outputs_land_use_technology_c130; assert_equal("G.storage.elec", worksheet.outputs_land_use_technology_c130); end
  def test_outputs_land_use_technology_d130; assert_equal("Global Storage unit", worksheet.outputs_land_use_technology_d130); end
  def test_outputs_land_use_technology_c131; assert_equal("G.SMR.hyd", worksheet.outputs_land_use_technology_c131); end
  def test_outputs_land_use_technology_d131; assert_equal("Global Production of hydrogen through SMR", worksheet.outputs_land_use_technology_d131); end
  def test_outputs_land_use_technology_c132; assert_equal("G.Coal.hyd", worksheet.outputs_land_use_technology_c132); end
  def test_outputs_land_use_technology_d132; assert_equal("Global Production of hydrogen through coal gasification", worksheet.outputs_land_use_technology_d132); end
  def test_outputs_land_use_technology_c133; assert_equal("G.Elec.hyd", worksheet.outputs_land_use_technology_c133); end
  def test_outputs_land_use_technology_d133; assert_equal("Global Production of hydrogen through electrolysis", worksheet.outputs_land_use_technology_d133); end
  def test_outputs_land_use_technology_c134; assert_equal("G.conversion.solidtoliquid", worksheet.outputs_land_use_technology_c134); end
  def test_outputs_land_use_technology_d134; assert_equal(:na, worksheet.outputs_land_use_technology_d134); end
  def test_outputs_land_use_technology_c135; assert_equal("G.conversion.liquidtogas", worksheet.outputs_land_use_technology_c135); end
  def test_outputs_land_use_technology_d135; assert_equal(:na, worksheet.outputs_land_use_technology_d135); end
  def test_outputs_land_use_technology_c136; assert_equal("G.conversion.gas", worksheet.outputs_land_use_technology_c136); end
  def test_outputs_land_use_technology_d136; assert_equal(:na, worksheet.outputs_land_use_technology_d136); end
  def test_outputs_land_use_technology_c137; assert_equal("G.GGR.tech", worksheet.outputs_land_use_technology_c137); end
  def test_outputs_land_use_technology_d137; assert_equal("Global Geosequestration units", worksheet.outputs_land_use_technology_d137); end
  def test_outputs_land_use_technology_c138; assert_equal("G.Forest", worksheet.outputs_land_use_technology_c138); end
  def test_outputs_land_use_technology_d138; assert_equal("Global Forest", worksheet.outputs_land_use_technology_d138); end
  def test_outputs_land_use_technology_c139; assert_equal("G.Arable.food", worksheet.outputs_land_use_technology_c139); end
  def test_outputs_land_use_technology_d139; assert_equal("Global Arable land for food crops", worksheet.outputs_land_use_technology_d139); end
  def test_outputs_land_use_technology_c140; assert_equal("G.Arable.bio", worksheet.outputs_land_use_technology_c140); end
  def test_outputs_land_use_technology_d140; assert_equal("Global Arable land for bioenergy", worksheet.outputs_land_use_technology_d140); end
  def test_outputs_land_use_technology_c141; assert_equal("G.Arable.other", worksheet.outputs_land_use_technology_c141); end
  def test_outputs_land_use_technology_d141; assert_equal("Global Arable land for other ", worksheet.outputs_land_use_technology_d141); end
  def test_outputs_land_use_technology_c142; assert_equal("G.Pasture.food", worksheet.outputs_land_use_technology_c142); end
  def test_outputs_land_use_technology_d142; assert_equal("Global Pasture for livestock", worksheet.outputs_land_use_technology_d142); end
  def test_outputs_land_use_technology_c143; assert_equal("G.Other.Land.unproductive", worksheet.outputs_land_use_technology_c143); end
  def test_outputs_land_use_technology_d143; assert_equal("Global Other land (desert, settlements)", worksheet.outputs_land_use_technology_d143); end
  def test_outputs_land_use_technology_c144; assert_equal("G.Other.Land.productive", worksheet.outputs_land_use_technology_c144); end
  def test_outputs_land_use_technology_d144; assert_equal("Global Remainder of productive terestial land after bioenergy and food", worksheet.outputs_land_use_technology_d144); end
  def test_outputs_land_use_technology_c145; assert_equal("G.Land.fill", worksheet.outputs_land_use_technology_c145); end
  def test_outputs_land_use_technology_d145; assert_equal("Global Land used for waste (buried or on surface)", worksheet.outputs_land_use_technology_d145); end
  def test_outputs_land_use_technology_c146; assert_equal("G.Humans", worksheet.outputs_land_use_technology_c146); end
  def test_outputs_land_use_technology_d146; assert_equal("Global Humans", worksheet.outputs_land_use_technology_d146); end
  def test_outputs_land_use_technology_c147; assert_equal("G.Steel.Oxygen.Electricity", worksheet.outputs_land_use_technology_c147); end
  def test_outputs_land_use_technology_d147; assert_equal("Global Electricity use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d147); end
  def test_outputs_land_use_technology_c148; assert_equal("G.Steel.Oxygen.Coal", worksheet.outputs_land_use_technology_c148); end
  def test_outputs_land_use_technology_d148; assert_equal("Global Coal use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d148); end
  def test_outputs_land_use_technology_c149; assert_equal("G.Steel.Oxygen.Oil", worksheet.outputs_land_use_technology_c149); end
  def test_outputs_land_use_technology_d149; assert_equal("Global Oil use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d149); end
  def test_outputs_land_use_technology_c150; assert_equal("G.Steel.Oxygen.NaturalGas", worksheet.outputs_land_use_technology_c150); end
  def test_outputs_land_use_technology_d150; assert_equal("Global Natural Gas use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d150); end
  def test_outputs_land_use_technology_c151; assert_equal("G.Steel.Oxygen.SolidHydrocarbons", worksheet.outputs_land_use_technology_c151); end
  def test_outputs_land_use_technology_d151; assert_equal("Global Solid Hydrocarbons use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d151); end
  def test_outputs_land_use_technology_c152; assert_equal("G.Steel.Oxygen.Heat", worksheet.outputs_land_use_technology_c152); end
  def test_outputs_land_use_technology_d152; assert_equal("Global Heat use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d152); end
  def test_outputs_land_use_technology_c153; assert_equal("G.Steel.OxygenHisarna.Electricity", worksheet.outputs_land_use_technology_c153); end
  def test_outputs_land_use_technology_d153; assert_equal("Global Electricity use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d153); end
  def test_outputs_land_use_technology_c154; assert_equal("G.Steel.OxygenHisarna.Coal", worksheet.outputs_land_use_technology_c154); end
  def test_outputs_land_use_technology_d154; assert_equal("Global Coal use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d154); end
  def test_outputs_land_use_technology_c155; assert_equal("G.Steel.OxygenHisarna.Oil", worksheet.outputs_land_use_technology_c155); end
  def test_outputs_land_use_technology_d155; assert_equal("Global Oil use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d155); end
  def test_outputs_land_use_technology_c156; assert_equal("G.Steel.OxygenHisarna.NaturalGas", worksheet.outputs_land_use_technology_c156); end
  def test_outputs_land_use_technology_d156; assert_equal("Global Natural Gas use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d156); end
  def test_outputs_land_use_technology_c157; assert_equal("G.Steel.OxygenHisarna.SolidHydrocarbons", worksheet.outputs_land_use_technology_c157); end
  def test_outputs_land_use_technology_d157; assert_equal("Global Solid Hydrocarbons use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d157); end
  def test_outputs_land_use_technology_c158; assert_equal("G.Steel.OxygenHisarna.Heat", worksheet.outputs_land_use_technology_c158); end
  def test_outputs_land_use_technology_d158; assert_equal("Global Heat use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d158); end
  def test_outputs_land_use_technology_c159; assert_equal("G.Steel.Electric.Electricity", worksheet.outputs_land_use_technology_c159); end
  def test_outputs_land_use_technology_d159; assert_equal("Global Electricity use in the Electric steel technology", worksheet.outputs_land_use_technology_d159); end
  def test_outputs_land_use_technology_c160; assert_equal("G.Steel.Electric.Coal", worksheet.outputs_land_use_technology_c160); end
  def test_outputs_land_use_technology_d160; assert_equal("Global Coal use in the Electric steel technology", worksheet.outputs_land_use_technology_d160); end
  def test_outputs_land_use_technology_c161; assert_equal("G.Steel.Electric.Oil", worksheet.outputs_land_use_technology_c161); end
  def test_outputs_land_use_technology_d161; assert_equal("Global Oil use in the Electric steel technology", worksheet.outputs_land_use_technology_d161); end
  def test_outputs_land_use_technology_c162; assert_equal("G.Steel.Electric.NaturalGas", worksheet.outputs_land_use_technology_c162); end
  def test_outputs_land_use_technology_d162; assert_equal("Global Natural Gas use in the Electric steel technology", worksheet.outputs_land_use_technology_d162); end
  def test_outputs_land_use_technology_c163; assert_equal("G.Steel.Electric.SolidHydrocarbons", worksheet.outputs_land_use_technology_c163); end
  def test_outputs_land_use_technology_d163; assert_equal("Global Solid Hydrocarbons use in the Electric steel technology", worksheet.outputs_land_use_technology_d163); end
  def test_outputs_land_use_technology_c164; assert_equal("G.Steel.Electric.Heat", worksheet.outputs_land_use_technology_c164); end
  def test_outputs_land_use_technology_d164; assert_equal("Global Heat use in the Electric steel technology", worksheet.outputs_land_use_technology_d164); end
  def test_outputs_land_use_technology_c165; assert_equal("G.Aluminium.Alumina.Electricity", worksheet.outputs_land_use_technology_c165); end
  def test_outputs_land_use_technology_d165; assert_equal("Global Electricity use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d165); end
  def test_outputs_land_use_technology_c166; assert_equal("G.Aluminium.Alumina.Coal", worksheet.outputs_land_use_technology_c166); end
  def test_outputs_land_use_technology_d166; assert_equal("Global Coal use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d166); end
  def test_outputs_land_use_technology_c167; assert_equal("G.Aluminium.Alumina.Oil", worksheet.outputs_land_use_technology_c167); end
  def test_outputs_land_use_technology_d167; assert_equal("Global Oil use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d167); end
  def test_outputs_land_use_technology_c168; assert_equal("G.Aluminium.Alumina.NaturalGas", worksheet.outputs_land_use_technology_c168); end
  def test_outputs_land_use_technology_d168; assert_equal("Global Natural Gas use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d168); end
  def test_outputs_land_use_technology_c169; assert_equal("G.Aluminium.Alumina.SolidHydrocarbons", worksheet.outputs_land_use_technology_c169); end
  def test_outputs_land_use_technology_d169; assert_equal("Global Solid Hydrocarbons use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d169); end
  def test_outputs_land_use_technology_c170; assert_equal("G.Aluminium.Alumina.Heat", worksheet.outputs_land_use_technology_c170); end
  def test_outputs_land_use_technology_d170; assert_equal("Global Heat use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d170); end
  def test_outputs_land_use_technology_c171; assert_equal("G.Aluminium.Primary.Electricity", worksheet.outputs_land_use_technology_c171); end
  def test_outputs_land_use_technology_d171; assert_equal("Global Electricity use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d171); end
  def test_outputs_land_use_technology_c172; assert_equal("G.Aluminium.Primary.Coal", worksheet.outputs_land_use_technology_c172); end
  def test_outputs_land_use_technology_d172; assert_equal("Global Coal use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d172); end
  def test_outputs_land_use_technology_c173; assert_equal("G.Aluminium.Primary.Oil", worksheet.outputs_land_use_technology_c173); end
  def test_outputs_land_use_technology_d173; assert_equal("Global Oil use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d173); end
  def test_outputs_land_use_technology_c174; assert_equal("G.Aluminium.Primary.NaturalGas", worksheet.outputs_land_use_technology_c174); end
  def test_outputs_land_use_technology_d174; assert_equal("Global Natural Gas use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d174); end
  def test_outputs_land_use_technology_c175; assert_equal("G.Aluminium.Primary.SolidHydrocarbons", worksheet.outputs_land_use_technology_c175); end
  def test_outputs_land_use_technology_d175; assert_equal("Global Solid Hydrocarbons use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d175); end
  def test_outputs_land_use_technology_c176; assert_equal("G.Aluminium.Primary.Heat", worksheet.outputs_land_use_technology_c176); end
  def test_outputs_land_use_technology_d176; assert_equal("Global Heat use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d176); end
  def test_outputs_land_use_technology_c177; assert_equal("G.Aluminium.Secondary.Electricity", worksheet.outputs_land_use_technology_c177); end
  def test_outputs_land_use_technology_d177; assert_equal("Global Electricity use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d177); end
  def test_outputs_land_use_technology_c178; assert_equal("G.Aluminium.Secondary.Coal", worksheet.outputs_land_use_technology_c178); end
  def test_outputs_land_use_technology_d178; assert_equal("Global Coal use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d178); end
  def test_outputs_land_use_technology_c179; assert_equal("G.Aluminium.Secondary.Oil", worksheet.outputs_land_use_technology_c179); end
  def test_outputs_land_use_technology_d179; assert_equal("Global Oil use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d179); end
  def test_outputs_land_use_technology_c180; assert_equal("G.Aluminium.Secondary.NaturalGas", worksheet.outputs_land_use_technology_c180); end
  def test_outputs_land_use_technology_d180; assert_equal("Global Natural Gas use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d180); end
  def test_outputs_land_use_technology_c181; assert_equal("G.Aluminium.Secondary.SolidHydrocarbons", worksheet.outputs_land_use_technology_c181); end
  def test_outputs_land_use_technology_d181; assert_equal("Global Solid Hydrocarbons use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d181); end
  def test_outputs_land_use_technology_c182; assert_equal("G.Aluminium.Secondary.Heat", worksheet.outputs_land_use_technology_c182); end
  def test_outputs_land_use_technology_d182; assert_equal("Global Heat use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d182); end
  def test_outputs_land_use_technology_c183; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Electricity", worksheet.outputs_land_use_technology_c183); end
  def test_outputs_land_use_technology_d183; assert_equal("Global Electricity use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d183); end
  def test_outputs_land_use_technology_c184; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Coal", worksheet.outputs_land_use_technology_c184); end
  def test_outputs_land_use_technology_d184; assert_equal("Global Coal use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d184); end
  def test_outputs_land_use_technology_c185; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Oil", worksheet.outputs_land_use_technology_c185); end
  def test_outputs_land_use_technology_d185; assert_equal("Global Oil use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d185); end
  def test_outputs_land_use_technology_c186; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.NaturalGas", worksheet.outputs_land_use_technology_c186); end
  def test_outputs_land_use_technology_d186; assert_equal("Global Natural Gas use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d186); end
  def test_outputs_land_use_technology_c187; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.SolidHydrocarbons", worksheet.outputs_land_use_technology_c187); end
  def test_outputs_land_use_technology_d187; assert_equal("Global Solid Hydrocarbons use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d187); end
  def test_outputs_land_use_technology_c188; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Heat", worksheet.outputs_land_use_technology_c188); end
  def test_outputs_land_use_technology_d188; assert_equal("Global Heat use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d188); end
  def test_outputs_land_use_technology_c189; assert_equal("G.Chemicals & petrochemicals.Ammonia.Electricity", worksheet.outputs_land_use_technology_c189); end
  def test_outputs_land_use_technology_d189; assert_equal("Global Electricity use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d189); end
  def test_outputs_land_use_technology_c190; assert_equal("G.Chemicals & petrochemicals.Ammonia.Coal", worksheet.outputs_land_use_technology_c190); end
  def test_outputs_land_use_technology_d190; assert_equal("Global Coal use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d190); end
  def test_outputs_land_use_technology_c191; assert_equal("G.Chemicals & petrochemicals.Ammonia.Oil", worksheet.outputs_land_use_technology_c191); end
  def test_outputs_land_use_technology_d191; assert_equal("Global Oil use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d191); end
  def test_outputs_land_use_technology_c192; assert_equal("G.Chemicals & petrochemicals.Ammonia.NaturalGas", worksheet.outputs_land_use_technology_c192); end
  def test_outputs_land_use_technology_d192; assert_equal("Global Natural Gas use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d192); end
  def test_outputs_land_use_technology_c193; assert_equal("G.Chemicals & petrochemicals.Ammonia.SolidHydrocarbons", worksheet.outputs_land_use_technology_c193); end
  def test_outputs_land_use_technology_d193; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d193); end
  def test_outputs_land_use_technology_c194; assert_equal("G.Chemicals & petrochemicals.Ammonia.Heat", worksheet.outputs_land_use_technology_c194); end
  def test_outputs_land_use_technology_d194; assert_equal("Global Heat use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d194); end
  def test_outputs_land_use_technology_c195; assert_equal("G.Chemicals & petrochemicals.Methanol.Electricity", worksheet.outputs_land_use_technology_c195); end
  def test_outputs_land_use_technology_d195; assert_equal("Global Electricity use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d195); end
  def test_outputs_land_use_technology_c196; assert_equal("G.Chemicals & petrochemicals.Methanol.Coal", worksheet.outputs_land_use_technology_c196); end
  def test_outputs_land_use_technology_d196; assert_equal("Global Coal use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d196); end
  def test_outputs_land_use_technology_c197; assert_equal("G.Chemicals & petrochemicals.Methanol.Oil", worksheet.outputs_land_use_technology_c197); end
  def test_outputs_land_use_technology_d197; assert_equal("Global Oil use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d197); end
  def test_outputs_land_use_technology_c198; assert_equal("G.Chemicals & petrochemicals.Methanol.NaturalGas", worksheet.outputs_land_use_technology_c198); end
  def test_outputs_land_use_technology_d198; assert_equal("Global Natural Gas use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d198); end
  def test_outputs_land_use_technology_c199; assert_equal("G.Chemicals & petrochemicals.Methanol.SolidHydrocarbons", worksheet.outputs_land_use_technology_c199); end
  def test_outputs_land_use_technology_d199; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d199); end
  def test_outputs_land_use_technology_c200; assert_equal("G.Chemicals & petrochemicals.Methanol.Heat", worksheet.outputs_land_use_technology_c200); end
  def test_outputs_land_use_technology_d200; assert_equal("Global Heat use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d200); end
  def test_outputs_land_use_technology_c201; assert_equal("G.Chemicals & petrochemicals.Others.Electricity", worksheet.outputs_land_use_technology_c201); end
  def test_outputs_land_use_technology_d201; assert_equal("Global Electricity use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d201); end
  def test_outputs_land_use_technology_c202; assert_equal("G.Chemicals & petrochemicals.Others.Coal", worksheet.outputs_land_use_technology_c202); end
  def test_outputs_land_use_technology_d202; assert_equal("Global Coal use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d202); end
  def test_outputs_land_use_technology_c203; assert_equal("G.Chemicals & petrochemicals.Others.Oil", worksheet.outputs_land_use_technology_c203); end
  def test_outputs_land_use_technology_d203; assert_equal("Global Oil use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d203); end
  def test_outputs_land_use_technology_c204; assert_equal("G.Chemicals & petrochemicals.Others.NaturalGas", worksheet.outputs_land_use_technology_c204); end
  def test_outputs_land_use_technology_d204; assert_equal("Global Natural Gas use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d204); end
  def test_outputs_land_use_technology_c205; assert_equal("G.Chemicals & petrochemicals.Others.SolidHydrocarbons", worksheet.outputs_land_use_technology_c205); end
  def test_outputs_land_use_technology_d205; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d205); end
  def test_outputs_land_use_technology_c206; assert_equal("G.Chemicals & petrochemicals.Others.Heat", worksheet.outputs_land_use_technology_c206); end
  def test_outputs_land_use_technology_d206; assert_equal("Global Heat use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d206); end
  def test_outputs_land_use_technology_c207; assert_equal("G.Pulp & paper.Pulp.Electricity", worksheet.outputs_land_use_technology_c207); end
  def test_outputs_land_use_technology_d207; assert_equal("Global Electricity use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d207); end
  def test_outputs_land_use_technology_c208; assert_equal("G.Pulp & paper.Pulp.Coal", worksheet.outputs_land_use_technology_c208); end
  def test_outputs_land_use_technology_d208; assert_equal("Global Coal use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d208); end
  def test_outputs_land_use_technology_c209; assert_equal("G.Pulp & paper.Pulp.Oil", worksheet.outputs_land_use_technology_c209); end
  def test_outputs_land_use_technology_d209; assert_equal("Global Oil use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d209); end
  def test_outputs_land_use_technology_c210; assert_equal("G.Pulp & paper.Pulp.NaturalGas", worksheet.outputs_land_use_technology_c210); end
  def test_outputs_land_use_technology_d210; assert_equal("Global Natural Gas use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d210); end
  def test_outputs_land_use_technology_c211; assert_equal("G.Pulp & paper.Pulp.SolidHydrocarbons", worksheet.outputs_land_use_technology_c211); end
  def test_outputs_land_use_technology_d211; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d211); end
  def test_outputs_land_use_technology_c212; assert_equal("G.Pulp & paper.Pulp.Heat", worksheet.outputs_land_use_technology_c212); end
  def test_outputs_land_use_technology_d212; assert_equal("Global Heat use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d212); end
  def test_outputs_land_use_technology_c213; assert_equal("G.Pulp & paper.Virgin.Electricity", worksheet.outputs_land_use_technology_c213); end
  def test_outputs_land_use_technology_d213; assert_equal("Global Electricity use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d213); end
  def test_outputs_land_use_technology_c214; assert_equal("G.Pulp & paper.Virgin.Coal", worksheet.outputs_land_use_technology_c214); end
  def test_outputs_land_use_technology_d214; assert_equal("Global Coal use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d214); end
  def test_outputs_land_use_technology_c215; assert_equal("G.Pulp & paper.Virgin.Oil", worksheet.outputs_land_use_technology_c215); end
  def test_outputs_land_use_technology_d215; assert_equal("Global Oil use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d215); end
  def test_outputs_land_use_technology_c216; assert_equal("G.Pulp & paper.Virgin.NaturalGas", worksheet.outputs_land_use_technology_c216); end
  def test_outputs_land_use_technology_d216; assert_equal("Global Natural Gas use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d216); end
  def test_outputs_land_use_technology_c217; assert_equal("G.Pulp & paper.Virgin.SolidHydrocarbons", worksheet.outputs_land_use_technology_c217); end
  def test_outputs_land_use_technology_d217; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d217); end
  def test_outputs_land_use_technology_c218; assert_equal("G.Pulp & paper.Virgin.Heat", worksheet.outputs_land_use_technology_c218); end
  def test_outputs_land_use_technology_d218; assert_equal("Global Heat use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d218); end
  def test_outputs_land_use_technology_c219; assert_equal("G.Pulp & paper.Recycled.Electricity", worksheet.outputs_land_use_technology_c219); end
  def test_outputs_land_use_technology_d219; assert_equal("Global Electricity use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d219); end
  def test_outputs_land_use_technology_c220; assert_equal("G.Pulp & paper.Recycled.Coal", worksheet.outputs_land_use_technology_c220); end
  def test_outputs_land_use_technology_d220; assert_equal("Global Coal use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d220); end
  def test_outputs_land_use_technology_c221; assert_equal("G.Pulp & paper.Recycled.Oil", worksheet.outputs_land_use_technology_c221); end
  def test_outputs_land_use_technology_d221; assert_equal("Global Oil use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d221); end
  def test_outputs_land_use_technology_c222; assert_equal("G.Pulp & paper.Recycled.NaturalGas", worksheet.outputs_land_use_technology_c222); end
  def test_outputs_land_use_technology_d222; assert_equal("Global Natural Gas use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d222); end
  def test_outputs_land_use_technology_c223; assert_equal("G.Pulp & paper.Recycled.SolidHydrocarbons", worksheet.outputs_land_use_technology_c223); end
  def test_outputs_land_use_technology_d223; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d223); end
  def test_outputs_land_use_technology_c224; assert_equal("G.Pulp & paper.Recycled.Heat", worksheet.outputs_land_use_technology_c224); end
  def test_outputs_land_use_technology_d224; assert_equal("Global Heat use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d224); end
  def test_outputs_land_use_technology_c225; assert_equal("G.Cement.Electricity", worksheet.outputs_land_use_technology_c225); end
  def test_outputs_land_use_technology_d225; assert_equal("Global Electricity use in the Cement technology", worksheet.outputs_land_use_technology_d225); end
  def test_outputs_land_use_technology_c226; assert_equal("G.Cement.Coal", worksheet.outputs_land_use_technology_c226); end
  def test_outputs_land_use_technology_d226; assert_equal("Global Coal use in the Cement technology", worksheet.outputs_land_use_technology_d226); end
  def test_outputs_land_use_technology_c227; assert_equal("G.Cement.Oil", worksheet.outputs_land_use_technology_c227); end
  def test_outputs_land_use_technology_d227; assert_equal("Global Oil use in the Cement technology", worksheet.outputs_land_use_technology_d227); end
  def test_outputs_land_use_technology_c228; assert_equal("G.Cement.NaturalGas", worksheet.outputs_land_use_technology_c228); end
  def test_outputs_land_use_technology_d228; assert_equal("Global Natural Gas use in the Cement technology", worksheet.outputs_land_use_technology_d228); end
  def test_outputs_land_use_technology_c229; assert_equal("G.Cement.SolidHydrocarbons", worksheet.outputs_land_use_technology_c229); end
  def test_outputs_land_use_technology_d229; assert_equal("Global Solid Hydrocarbons use in the Cement technology", worksheet.outputs_land_use_technology_d229); end
  def test_outputs_land_use_technology_c230; assert_equal("G.Cement.Heat", worksheet.outputs_land_use_technology_c230); end
  def test_outputs_land_use_technology_d230; assert_equal("Global Heat use in the Cement technology", worksheet.outputs_land_use_technology_d230); end
  def test_outputs_land_use_technology_c231; assert_equal("G.Other industries.Electricity", worksheet.outputs_land_use_technology_c231); end
  def test_outputs_land_use_technology_d231; assert_equal("Global Electricity use in the Other industries technology", worksheet.outputs_land_use_technology_d231); end
  def test_outputs_land_use_technology_c232; assert_equal("G.Other industries.Coal", worksheet.outputs_land_use_technology_c232); end
  def test_outputs_land_use_technology_d232; assert_equal("Global Coal use in the Other industries technology", worksheet.outputs_land_use_technology_d232); end
  def test_outputs_land_use_technology_c233; assert_equal("G.Other industries.Oil", worksheet.outputs_land_use_technology_c233); end
  def test_outputs_land_use_technology_d233; assert_equal("Global Oil use in the Other industries technology", worksheet.outputs_land_use_technology_d233); end
  def test_outputs_land_use_technology_c234; assert_equal("G.Other industries.NaturalGas", worksheet.outputs_land_use_technology_c234); end
  def test_outputs_land_use_technology_d234; assert_equal("Global Natural Gas use in the Other industries technology", worksheet.outputs_land_use_technology_d234); end
  def test_outputs_land_use_technology_c235; assert_equal("G.Other industries.SolidHydrocarbons", worksheet.outputs_land_use_technology_c235); end
  def test_outputs_land_use_technology_d235; assert_equal("Global Solid Hydrocarbons use in the Other industries technology", worksheet.outputs_land_use_technology_d235); end
  def test_outputs_land_use_technology_c236; assert_equal("G.Other industries.Heat", worksheet.outputs_land_use_technology_c236); end
  def test_outputs_land_use_technology_d236; assert_equal("Global Heat use in the Other industries technology", worksheet.outputs_land_use_technology_d236); end
  def test_outputs_land_use_technology_b242; assert_equal("In flow of technology units", worksheet.outputs_land_use_technology_b242); end
  def test_outputs_land_use_technology_ab242; assert_equal("Data sources and comments for the historic data", worksheet.outputs_land_use_technology_ab242); end
  def test_outputs_land_use_technology_ab243; assert_equal("Source", worksheet.outputs_land_use_technology_ab243); end
  def test_outputs_land_use_technology_ac243; assert_equal("Link", worksheet.outputs_land_use_technology_ac243); end
  def test_outputs_land_use_technology_ad243; assert_equal("Risk (Green, Amber/Green, Amber, Red/Amber, Red)", worksheet.outputs_land_use_technology_ad243); end
  def test_outputs_land_use_technology_ae243; assert_equal("Comment / assumptions / caveats", worksheet.outputs_land_use_technology_ae243); end
  def test_outputs_land_use_technology_af243; assert_equal("Comment author", worksheet.outputs_land_use_technology_af243); end
  def test_outputs_land_use_technology_c244; assert_equal("All technologies", worksheet.outputs_land_use_technology_c244); end
  def test_outputs_land_use_technology_y244; assert_equal("Number", worksheet.outputs_land_use_technology_y244); end
  def test_outputs_land_use_technology_f245; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f245); end
  def test_outputs_land_use_technology_q245; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q245); end
  def test_outputs_land_use_technology_c246; assert_equal("Technology", worksheet.outputs_land_use_technology_c246); end
  def test_outputs_land_use_technology_d246; assert_equal("Description", worksheet.outputs_land_use_technology_d246); end
  def test_outputs_land_use_technology_f246; assert_equal("1970", worksheet.outputs_land_use_technology_f246); end
  def test_outputs_land_use_technology_g246; assert_equal("1975", worksheet.outputs_land_use_technology_g246); end
  def test_outputs_land_use_technology_h246; assert_equal("1980", worksheet.outputs_land_use_technology_h246); end
  def test_outputs_land_use_technology_i246; assert_equal("1985", worksheet.outputs_land_use_technology_i246); end
  def test_outputs_land_use_technology_j246; assert_equal("1990", worksheet.outputs_land_use_technology_j246); end
  def test_outputs_land_use_technology_k246; assert_equal("1995", worksheet.outputs_land_use_technology_k246); end
  def test_outputs_land_use_technology_l246; assert_equal("2000", worksheet.outputs_land_use_technology_l246); end
  def test_outputs_land_use_technology_m246; assert_equal("2005", worksheet.outputs_land_use_technology_m246); end
  def test_outputs_land_use_technology_n246; assert_in_epsilon(2010.0, worksheet.outputs_land_use_technology_n246, 0.002); end
  def test_outputs_land_use_technology_q246; assert_in_epsilon(2011.0, worksheet.outputs_land_use_technology_q246, 0.002); end
  def test_outputs_land_use_technology_r246; assert_equal("2015", worksheet.outputs_land_use_technology_r246); end
  def test_outputs_land_use_technology_s246; assert_equal("2020", worksheet.outputs_land_use_technology_s246); end
  def test_outputs_land_use_technology_t246; assert_equal("2025", worksheet.outputs_land_use_technology_t246); end
  def test_outputs_land_use_technology_u246; assert_equal("2030", worksheet.outputs_land_use_technology_u246); end
  def test_outputs_land_use_technology_v246; assert_equal("2035", worksheet.outputs_land_use_technology_v246); end
  def test_outputs_land_use_technology_w246; assert_equal("2040", worksheet.outputs_land_use_technology_w246); end
  def test_outputs_land_use_technology_x246; assert_equal("2045", worksheet.outputs_land_use_technology_x246); end
  def test_outputs_land_use_technology_y246; assert_equal("2050", worksheet.outputs_land_use_technology_y246); end
  def test_outputs_land_use_technology_c247; assert_equal("G.motorbike.passenger.urban.fuel", worksheet.outputs_land_use_technology_c247); end
  def test_outputs_land_use_technology_d247; assert_equal("Global motorbike.passenger.urban.fuel", worksheet.outputs_land_use_technology_d247); end
  def test_outputs_land_use_technology_c248; assert_equal("G.motorbike.passenger.urban.elec", worksheet.outputs_land_use_technology_c248); end
  def test_outputs_land_use_technology_d248; assert_equal("Global motorbike.passenger.urban.elec", worksheet.outputs_land_use_technology_d248); end
  def test_outputs_land_use_technology_c249; assert_equal("G.car.passenger.urban.fuel", worksheet.outputs_land_use_technology_c249); end
  def test_outputs_land_use_technology_d249; assert_equal("Global car.passenger.urban.fuel", worksheet.outputs_land_use_technology_d249); end
  def test_outputs_land_use_technology_c250; assert_equal("G.car.passenger.urban.PH", worksheet.outputs_land_use_technology_c250); end
  def test_outputs_land_use_technology_d250; assert_equal("Global car.passenger.urban.PH", worksheet.outputs_land_use_technology_d250); end
  def test_outputs_land_use_technology_c251; assert_equal("G.car.passenger.urban.EV", worksheet.outputs_land_use_technology_c251); end
  def test_outputs_land_use_technology_d251; assert_equal("Global car.passenger.urban.EV", worksheet.outputs_land_use_technology_d251); end
  def test_outputs_land_use_technology_c252; assert_equal("G.car.passenger.urban.H2", worksheet.outputs_land_use_technology_c252); end
  def test_outputs_land_use_technology_d252; assert_equal("Global car.passenger.urban.H2", worksheet.outputs_land_use_technology_d252); end
  def test_outputs_land_use_technology_c253; assert_equal("G.bus.passenger.urban.fuel", worksheet.outputs_land_use_technology_c253); end
  def test_outputs_land_use_technology_d253; assert_equal("Global bus.passenger.urban.fuel", worksheet.outputs_land_use_technology_d253); end
  def test_outputs_land_use_technology_c254; assert_equal("G.bus.passenger.urban.PH", worksheet.outputs_land_use_technology_c254); end
  def test_outputs_land_use_technology_d254; assert_equal("Global bus.passenger.urban.PH", worksheet.outputs_land_use_technology_d254); end
  def test_outputs_land_use_technology_c255; assert_equal("G.bus.passenger.urban.EV", worksheet.outputs_land_use_technology_c255); end
  def test_outputs_land_use_technology_d255; assert_equal("Global bus.passenger.urban.EV", worksheet.outputs_land_use_technology_d255); end
  def test_outputs_land_use_technology_c256; assert_equal("G.bus.passenger.urban.H2", worksheet.outputs_land_use_technology_c256); end
  def test_outputs_land_use_technology_d256; assert_equal("Global bus.passenger.urban.H2", worksheet.outputs_land_use_technology_d256); end
  def test_outputs_land_use_technology_c257; assert_equal("G.train.passenger.urban.fuel", worksheet.outputs_land_use_technology_c257); end
  def test_outputs_land_use_technology_d257; assert_equal("Global train.passenger.urban.fuel", worksheet.outputs_land_use_technology_d257); end
  def test_outputs_land_use_technology_c258; assert_equal("G.train.passenger.urban.elec", worksheet.outputs_land_use_technology_c258); end
  def test_outputs_land_use_technology_d258; assert_equal("Global train.passenger.urban.elec", worksheet.outputs_land_use_technology_d258); end
  def test_outputs_land_use_technology_c259; assert_equal("G.motorbike.passenger.rural.fuel", worksheet.outputs_land_use_technology_c259); end
  def test_outputs_land_use_technology_d259; assert_equal("Global motorbike.passenger.rural.fuel", worksheet.outputs_land_use_technology_d259); end
  def test_outputs_land_use_technology_c260; assert_equal("G.motorbike.passenger.rural.elec", worksheet.outputs_land_use_technology_c260); end
  def test_outputs_land_use_technology_d260; assert_equal("Global motorbike.passenger.rural.elec", worksheet.outputs_land_use_technology_d260); end
  def test_outputs_land_use_technology_c261; assert_equal("G.car.passenger.rural.fuel", worksheet.outputs_land_use_technology_c261); end
  def test_outputs_land_use_technology_d261; assert_equal("Global car.passenger.rural.fuel", worksheet.outputs_land_use_technology_d261); end
  def test_outputs_land_use_technology_c262; assert_equal("G.car.passenger.rural.PH", worksheet.outputs_land_use_technology_c262); end
  def test_outputs_land_use_technology_d262; assert_equal("Global car.passenger.rural.PH", worksheet.outputs_land_use_technology_d262); end
  def test_outputs_land_use_technology_c263; assert_equal("G.car.passenger.rural.EV", worksheet.outputs_land_use_technology_c263); end
  def test_outputs_land_use_technology_d263; assert_equal("Global car.passenger.rural.EV", worksheet.outputs_land_use_technology_d263); end
  def test_outputs_land_use_technology_c264; assert_equal("G.car.passenger.rural.H2", worksheet.outputs_land_use_technology_c264); end
  def test_outputs_land_use_technology_d264; assert_equal("Global car.passenger.rural.H2", worksheet.outputs_land_use_technology_d264); end
  def test_outputs_land_use_technology_c265; assert_equal("G.bus.passenger.rural.fuel", worksheet.outputs_land_use_technology_c265); end
  def test_outputs_land_use_technology_d265; assert_equal("Global bus.passenger.rural.fuel", worksheet.outputs_land_use_technology_d265); end
  def test_outputs_land_use_technology_c266; assert_equal("G.bus.passenger.rural.PH", worksheet.outputs_land_use_technology_c266); end
  def test_outputs_land_use_technology_d266; assert_equal("Global bus.passenger.rural.PH", worksheet.outputs_land_use_technology_d266); end
  def test_outputs_land_use_technology_c267; assert_equal("G.bus.passenger.rural.EV", worksheet.outputs_land_use_technology_c267); end
  def test_outputs_land_use_technology_d267; assert_equal("Global bus.passenger.rural.EV", worksheet.outputs_land_use_technology_d267); end
  def test_outputs_land_use_technology_c268; assert_equal("G.bus.passenger.rural.H2", worksheet.outputs_land_use_technology_c268); end
  def test_outputs_land_use_technology_d268; assert_equal("Global bus.passenger.rural.H2", worksheet.outputs_land_use_technology_d268); end
  def test_outputs_land_use_technology_c269; assert_equal("G.train.passenger.rural.fuel", worksheet.outputs_land_use_technology_c269); end
  def test_outputs_land_use_technology_d269; assert_equal("Global train.passenger.rural.fuel", worksheet.outputs_land_use_technology_d269); end
  def test_outputs_land_use_technology_c270; assert_equal("G.train.passenger.rural.elec", worksheet.outputs_land_use_technology_c270); end
  def test_outputs_land_use_technology_d270; assert_equal("Global train.passenger.rural.elec", worksheet.outputs_land_use_technology_d270); end
  def test_outputs_land_use_technology_c271; assert_equal("G.plane.passenger.international.fuel", worksheet.outputs_land_use_technology_c271); end
  def test_outputs_land_use_technology_d271; assert_equal("Global plane.passenger.international.fuel", worksheet.outputs_land_use_technology_d271); end
  def test_outputs_land_use_technology_c272; assert_equal("G.plane.passenger.international.hydrogen", worksheet.outputs_land_use_technology_c272); end
  def test_outputs_land_use_technology_d272; assert_equal(:na, worksheet.outputs_land_use_technology_d272); end
  def test_outputs_land_use_technology_c273; assert_equal("G.ship.passenger.international.fuel", worksheet.outputs_land_use_technology_c273); end
  def test_outputs_land_use_technology_d273; assert_equal("Global ship.passenger.international.fuel", worksheet.outputs_land_use_technology_d273); end
  def test_outputs_land_use_technology_c274; assert_equal("G.ship.passenger.international.hydrogen", worksheet.outputs_land_use_technology_c274); end
  def test_outputs_land_use_technology_d274; assert_equal(:na, worksheet.outputs_land_use_technology_d274); end
  def test_outputs_land_use_technology_c275; assert_equal("G.train.passenger.international.fuel", worksheet.outputs_land_use_technology_c275); end
  def test_outputs_land_use_technology_d275; assert_equal("Global train.passenger.international.fuel", worksheet.outputs_land_use_technology_d275); end
  def test_outputs_land_use_technology_c276; assert_equal("G.train.passenger.international.elec", worksheet.outputs_land_use_technology_c276); end
  def test_outputs_land_use_technology_d276; assert_equal("Global train.passenger.international.elec", worksheet.outputs_land_use_technology_d276); end
  def test_outputs_land_use_technology_c277; assert_equal("G.solid.boiler.heat", worksheet.outputs_land_use_technology_c277); end
  def test_outputs_land_use_technology_d277; assert_equal("Global Solid fuel boiler", worksheet.outputs_land_use_technology_d277); end
  def test_outputs_land_use_technology_c278; assert_equal("G.liquid.boiler.heat", worksheet.outputs_land_use_technology_c278); end
  def test_outputs_land_use_technology_d278; assert_equal("Global Liquid fuel boiler", worksheet.outputs_land_use_technology_d278); end
  def test_outputs_land_use_technology_c279; assert_equal("G.gas.boiler.heat", worksheet.outputs_land_use_technology_c279); end
  def test_outputs_land_use_technology_d279; assert_equal("Global Gaseous fuel boiler", worksheet.outputs_land_use_technology_d279); end
  def test_outputs_land_use_technology_c280; assert_equal("G.micro.chp.heat", worksheet.outputs_land_use_technology_c280); end
  def test_outputs_land_use_technology_d280; assert_equal("Global Micro combined heat and power (for single domestic purpose)", worksheet.outputs_land_use_technology_d280); end
  def test_outputs_land_use_technology_c281; assert_equal("G.chp.heat", worksheet.outputs_land_use_technology_c281); end
  def test_outputs_land_use_technology_d281; assert_equal("Global Large scale combined heat and power", worksheet.outputs_land_use_technology_d281); end
  def test_outputs_land_use_technology_c282; assert_equal("G.solar.heat", worksheet.outputs_land_use_technology_c282); end
  def test_outputs_land_use_technology_d282; assert_equal("Global Solar thermal", worksheet.outputs_land_use_technology_d282); end
  def test_outputs_land_use_technology_c283; assert_equal("G.district.heat", worksheet.outputs_land_use_technology_c283); end
  def test_outputs_land_use_technology_d283; assert_equal("Global District heating", worksheet.outputs_land_use_technology_d283); end
  def test_outputs_land_use_technology_c284; assert_equal("G.air.pump.heat", worksheet.outputs_land_use_technology_c284); end
  def test_outputs_land_use_technology_d284; assert_equal("Global Air source heat pump", worksheet.outputs_land_use_technology_d284); end
  def test_outputs_land_use_technology_c285; assert_equal("G.ground.pump.heat", worksheet.outputs_land_use_technology_c285); end
  def test_outputs_land_use_technology_d285; assert_equal("Global Ground source heat pump", worksheet.outputs_land_use_technology_d285); end
  def test_outputs_land_use_technology_c286; assert_equal("G.elec.heat", worksheet.outputs_land_use_technology_c286); end
  def test_outputs_land_use_technology_d286; assert_equal("Global Electric heaters", worksheet.outputs_land_use_technology_d286); end
  def test_outputs_land_use_technology_c287; assert_equal("G.ac.cooling", worksheet.outputs_land_use_technology_c287); end
  def test_outputs_land_use_technology_d287; assert_equal("Global Air conditioning", worksheet.outputs_land_use_technology_d287); end
  def test_outputs_land_use_technology_c288; assert_equal("G.bulb.light", worksheet.outputs_land_use_technology_c288); end
  def test_outputs_land_use_technology_d288; assert_equal("Global Light bulb", worksheet.outputs_land_use_technology_d288); end
  def test_outputs_land_use_technology_c289; assert_equal("G.appliance", worksheet.outputs_land_use_technology_c289); end
  def test_outputs_land_use_technology_d289; assert_equal("Global Appliance", worksheet.outputs_land_use_technology_d289); end
  def test_outputs_land_use_technology_c290; assert_equal("G.oven.cook", worksheet.outputs_land_use_technology_c290); end
  def test_outputs_land_use_technology_d290; assert_equal("Global Oven", worksheet.outputs_land_use_technology_d290); end
  def test_outputs_land_use_technology_c291; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_land_use_technology_c291); end
  def test_outputs_land_use_technology_d291; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_land_use_technology_d291); end
  def test_outputs_land_use_technology_c292; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_land_use_technology_c292); end
  def test_outputs_land_use_technology_d292; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_land_use_technology_d292); end
  def test_outputs_land_use_technology_c293; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_land_use_technology_c293); end
  def test_outputs_land_use_technology_d293; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_land_use_technology_d293); end
  def test_outputs_land_use_technology_c294; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_land_use_technology_c294); end
  def test_outputs_land_use_technology_d294; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_land_use_technology_d294); end
  def test_outputs_land_use_technology_c295; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_land_use_technology_c295); end
  def test_outputs_land_use_technology_d295; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_land_use_technology_d295); end
  def test_outputs_land_use_technology_c296; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_land_use_technology_c296); end
  def test_outputs_land_use_technology_d296; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_land_use_technology_d296); end
  def test_outputs_land_use_technology_c297; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_land_use_technology_c297); end
  def test_outputs_land_use_technology_d297; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_land_use_technology_d297); end
  def test_outputs_land_use_technology_c298; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_land_use_technology_c298); end
  def test_outputs_land_use_technology_d298; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_land_use_technology_d298); end
  def test_outputs_land_use_technology_c299; assert_equal("G.CCS.solid.super.elec", worksheet.outputs_land_use_technology_c299); end
  def test_outputs_land_use_technology_d299; assert_equal("Global Carbon capture solid-fuel supercritical power plant", worksheet.outputs_land_use_technology_d299); end
  def test_outputs_land_use_technology_c300; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_land_use_technology_c300); end
  def test_outputs_land_use_technology_d300; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_land_use_technology_d300); end
  def test_outputs_land_use_technology_c301; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_land_use_technology_c301); end
  def test_outputs_land_use_technology_d301; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_land_use_technology_d301); end
  def test_outputs_land_use_technology_c302; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_land_use_technology_c302); end
  def test_outputs_land_use_technology_d302; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_land_use_technology_d302); end
  def test_outputs_land_use_technology_c303; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_land_use_technology_c303); end
  def test_outputs_land_use_technology_d303; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_land_use_technology_d303); end
  def test_outputs_land_use_technology_c304; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_land_use_technology_c304); end
  def test_outputs_land_use_technology_d304; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_land_use_technology_d304); end
  def test_outputs_land_use_technology_c305; assert_equal("G.nuclear.elec", worksheet.outputs_land_use_technology_c305); end
  def test_outputs_land_use_technology_d305; assert_equal("Global Nuclear power stations", worksheet.outputs_land_use_technology_d305); end
  def test_outputs_land_use_technology_c306; assert_equal("G.onshore.wind.elec", worksheet.outputs_land_use_technology_c306); end
  def test_outputs_land_use_technology_d306; assert_equal("Global On shore wind turbines", worksheet.outputs_land_use_technology_d306); end
  def test_outputs_land_use_technology_c307; assert_equal("G.offshore.wind.elec", worksheet.outputs_land_use_technology_c307); end
  def test_outputs_land_use_technology_d307; assert_equal("Global Off shore wind turbines", worksheet.outputs_land_use_technology_d307); end
  def test_outputs_land_use_technology_c308; assert_equal("G.hydro.elec", worksheet.outputs_land_use_technology_c308); end
  def test_outputs_land_use_technology_d308; assert_equal("Global Hydroelectric dam", worksheet.outputs_land_use_technology_d308); end
  def test_outputs_land_use_technology_c309; assert_equal("G.tidal.elec", worksheet.outputs_land_use_technology_c309); end
  def test_outputs_land_use_technology_d309; assert_equal("Global Tidal", worksheet.outputs_land_use_technology_d309); end
  def test_outputs_land_use_technology_c310; assert_equal("G.wave.elec", worksheet.outputs_land_use_technology_c310); end
  def test_outputs_land_use_technology_d310; assert_equal("Global Wave", worksheet.outputs_land_use_technology_d310); end
  def test_outputs_land_use_technology_c311; assert_equal("G.solarpv.elec", worksheet.outputs_land_use_technology_c311); end
  def test_outputs_land_use_technology_d311; assert_equal("Global Solar photovoltaic", worksheet.outputs_land_use_technology_d311); end
  def test_outputs_land_use_technology_c312; assert_equal("G.concentrated.solar.elec", worksheet.outputs_land_use_technology_c312); end
  def test_outputs_land_use_technology_d312; assert_equal("Global Concentrated solar", worksheet.outputs_land_use_technology_d312); end
  def test_outputs_land_use_technology_c313; assert_equal("G.geothermal.elec", worksheet.outputs_land_use_technology_c313); end
  def test_outputs_land_use_technology_d313; assert_equal("Global Geothermal", worksheet.outputs_land_use_technology_d313); end
  def test_outputs_land_use_technology_c314; assert_equal("G.storage.elec", worksheet.outputs_land_use_technology_c314); end
  def test_outputs_land_use_technology_d314; assert_equal("Global Storage unit", worksheet.outputs_land_use_technology_d314); end
  def test_outputs_land_use_technology_c315; assert_equal("G.SMR.hyd", worksheet.outputs_land_use_technology_c315); end
  def test_outputs_land_use_technology_d315; assert_equal("Global Production of hydrogen through SMR", worksheet.outputs_land_use_technology_d315); end
  def test_outputs_land_use_technology_c316; assert_equal("G.Coal.hyd", worksheet.outputs_land_use_technology_c316); end
  def test_outputs_land_use_technology_d316; assert_equal("Global Production of hydrogen through coal gasification", worksheet.outputs_land_use_technology_d316); end
  def test_outputs_land_use_technology_c317; assert_equal("G.Elec.hyd", worksheet.outputs_land_use_technology_c317); end
  def test_outputs_land_use_technology_d317; assert_equal("Global Production of hydrogen through electrolysis", worksheet.outputs_land_use_technology_d317); end
  def test_outputs_land_use_technology_c318; assert_equal("G.conversion.solidtoliquid", worksheet.outputs_land_use_technology_c318); end
  def test_outputs_land_use_technology_d318; assert_equal(:na, worksheet.outputs_land_use_technology_d318); end
  def test_outputs_land_use_technology_c319; assert_equal("G.conversion.liquidtogas", worksheet.outputs_land_use_technology_c319); end
  def test_outputs_land_use_technology_d319; assert_equal(:na, worksheet.outputs_land_use_technology_d319); end
  def test_outputs_land_use_technology_c320; assert_equal("G.conversion.gas", worksheet.outputs_land_use_technology_c320); end
  def test_outputs_land_use_technology_d320; assert_equal(:na, worksheet.outputs_land_use_technology_d320); end
  def test_outputs_land_use_technology_c321; assert_equal("G.GGR.tech", worksheet.outputs_land_use_technology_c321); end
  def test_outputs_land_use_technology_d321; assert_equal("Global Geosequestration units", worksheet.outputs_land_use_technology_d321); end
  def test_outputs_land_use_technology_c322; assert_equal("G.Forest", worksheet.outputs_land_use_technology_c322); end
  def test_outputs_land_use_technology_d322; assert_equal("Global Forest", worksheet.outputs_land_use_technology_d322); end
  def test_outputs_land_use_technology_c323; assert_equal("G.Arable.food", worksheet.outputs_land_use_technology_c323); end
  def test_outputs_land_use_technology_d323; assert_equal("Global Arable land for food crops", worksheet.outputs_land_use_technology_d323); end
  def test_outputs_land_use_technology_c324; assert_equal("G.Arable.bio", worksheet.outputs_land_use_technology_c324); end
  def test_outputs_land_use_technology_d324; assert_equal("Global Arable land for bioenergy", worksheet.outputs_land_use_technology_d324); end
  def test_outputs_land_use_technology_c325; assert_equal("G.Arable.other", worksheet.outputs_land_use_technology_c325); end
  def test_outputs_land_use_technology_d325; assert_equal("Global Arable land for other ", worksheet.outputs_land_use_technology_d325); end
  def test_outputs_land_use_technology_c326; assert_equal("G.Pasture.food", worksheet.outputs_land_use_technology_c326); end
  def test_outputs_land_use_technology_d326; assert_equal("Global Pasture for livestock", worksheet.outputs_land_use_technology_d326); end
  def test_outputs_land_use_technology_c327; assert_equal("G.Other.Land.unproductive", worksheet.outputs_land_use_technology_c327); end
  def test_outputs_land_use_technology_d327; assert_equal("Global Other land (desert, settlements)", worksheet.outputs_land_use_technology_d327); end
  def test_outputs_land_use_technology_c328; assert_equal("G.Other.Land.productive", worksheet.outputs_land_use_technology_c328); end
  def test_outputs_land_use_technology_d328; assert_equal("Global Remainder of productive terestial land after bioenergy and food", worksheet.outputs_land_use_technology_d328); end
  def test_outputs_land_use_technology_c329; assert_equal("G.Land.fill", worksheet.outputs_land_use_technology_c329); end
  def test_outputs_land_use_technology_d329; assert_equal("Global Land used for waste (buried or on surface)", worksheet.outputs_land_use_technology_d329); end
  def test_outputs_land_use_technology_c330; assert_equal("G.Humans", worksheet.outputs_land_use_technology_c330); end
  def test_outputs_land_use_technology_d330; assert_equal("Global Humans", worksheet.outputs_land_use_technology_d330); end
  def test_outputs_land_use_technology_c331; assert_equal("G.Steel.Oxygen.Electricity", worksheet.outputs_land_use_technology_c331); end
  def test_outputs_land_use_technology_d331; assert_equal("Global Electricity use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d331); end
  def test_outputs_land_use_technology_c332; assert_equal("G.Steel.Oxygen.Coal", worksheet.outputs_land_use_technology_c332); end
  def test_outputs_land_use_technology_d332; assert_equal("Global Coal use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d332); end
  def test_outputs_land_use_technology_c333; assert_equal("G.Steel.Oxygen.Oil", worksheet.outputs_land_use_technology_c333); end
  def test_outputs_land_use_technology_d333; assert_equal("Global Oil use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d333); end
  def test_outputs_land_use_technology_c334; assert_equal("G.Steel.Oxygen.NaturalGas", worksheet.outputs_land_use_technology_c334); end
  def test_outputs_land_use_technology_d334; assert_equal("Global Natural Gas use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d334); end
  def test_outputs_land_use_technology_c335; assert_equal("G.Steel.Oxygen.SolidHydrocarbons", worksheet.outputs_land_use_technology_c335); end
  def test_outputs_land_use_technology_d335; assert_equal("Global Solid Hydrocarbons use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d335); end
  def test_outputs_land_use_technology_c336; assert_equal("G.Steel.Oxygen.Heat", worksheet.outputs_land_use_technology_c336); end
  def test_outputs_land_use_technology_d336; assert_equal("Global Heat use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d336); end
  def test_outputs_land_use_technology_c337; assert_equal("G.Steel.OxygenHisarna.Electricity", worksheet.outputs_land_use_technology_c337); end
  def test_outputs_land_use_technology_d337; assert_equal("Global Electricity use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d337); end
  def test_outputs_land_use_technology_c338; assert_equal("G.Steel.OxygenHisarna.Coal", worksheet.outputs_land_use_technology_c338); end
  def test_outputs_land_use_technology_d338; assert_equal("Global Coal use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d338); end
  def test_outputs_land_use_technology_c339; assert_equal("G.Steel.OxygenHisarna.Oil", worksheet.outputs_land_use_technology_c339); end
  def test_outputs_land_use_technology_d339; assert_equal("Global Oil use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d339); end
  def test_outputs_land_use_technology_c340; assert_equal("G.Steel.OxygenHisarna.NaturalGas", worksheet.outputs_land_use_technology_c340); end
  def test_outputs_land_use_technology_d340; assert_equal("Global Natural Gas use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d340); end
  def test_outputs_land_use_technology_c341; assert_equal("G.Steel.OxygenHisarna.SolidHydrocarbons", worksheet.outputs_land_use_technology_c341); end
  def test_outputs_land_use_technology_d341; assert_equal("Global Solid Hydrocarbons use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d341); end
  def test_outputs_land_use_technology_c342; assert_equal("G.Steel.OxygenHisarna.Heat", worksheet.outputs_land_use_technology_c342); end
  def test_outputs_land_use_technology_d342; assert_equal("Global Heat use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d342); end
  def test_outputs_land_use_technology_c343; assert_equal("G.Steel.Electric.Electricity", worksheet.outputs_land_use_technology_c343); end
  def test_outputs_land_use_technology_d343; assert_equal("Global Electricity use in the Electric steel technology", worksheet.outputs_land_use_technology_d343); end
  def test_outputs_land_use_technology_c344; assert_equal("G.Steel.Electric.Coal", worksheet.outputs_land_use_technology_c344); end
  def test_outputs_land_use_technology_d344; assert_equal("Global Coal use in the Electric steel technology", worksheet.outputs_land_use_technology_d344); end
  def test_outputs_land_use_technology_c345; assert_equal("G.Steel.Electric.Oil", worksheet.outputs_land_use_technology_c345); end
  def test_outputs_land_use_technology_d345; assert_equal("Global Oil use in the Electric steel technology", worksheet.outputs_land_use_technology_d345); end
  def test_outputs_land_use_technology_c346; assert_equal("G.Steel.Electric.NaturalGas", worksheet.outputs_land_use_technology_c346); end
  def test_outputs_land_use_technology_d346; assert_equal("Global Natural Gas use in the Electric steel technology", worksheet.outputs_land_use_technology_d346); end
  def test_outputs_land_use_technology_c347; assert_equal("G.Steel.Electric.SolidHydrocarbons", worksheet.outputs_land_use_technology_c347); end
  def test_outputs_land_use_technology_d347; assert_equal("Global Solid Hydrocarbons use in the Electric steel technology", worksheet.outputs_land_use_technology_d347); end
  def test_outputs_land_use_technology_c348; assert_equal("G.Steel.Electric.Heat", worksheet.outputs_land_use_technology_c348); end
  def test_outputs_land_use_technology_d348; assert_equal("Global Heat use in the Electric steel technology", worksheet.outputs_land_use_technology_d348); end
  def test_outputs_land_use_technology_c349; assert_equal("G.Aluminium.Alumina.Electricity", worksheet.outputs_land_use_technology_c349); end
  def test_outputs_land_use_technology_d349; assert_equal("Global Electricity use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d349); end
  def test_outputs_land_use_technology_c350; assert_equal("G.Aluminium.Alumina.Coal", worksheet.outputs_land_use_technology_c350); end
  def test_outputs_land_use_technology_d350; assert_equal("Global Coal use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d350); end
  def test_outputs_land_use_technology_c351; assert_equal("G.Aluminium.Alumina.Oil", worksheet.outputs_land_use_technology_c351); end
  def test_outputs_land_use_technology_d351; assert_equal("Global Oil use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d351); end
  def test_outputs_land_use_technology_c352; assert_equal("G.Aluminium.Alumina.NaturalGas", worksheet.outputs_land_use_technology_c352); end
  def test_outputs_land_use_technology_d352; assert_equal("Global Natural Gas use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d352); end
  def test_outputs_land_use_technology_c353; assert_equal("G.Aluminium.Alumina.SolidHydrocarbons", worksheet.outputs_land_use_technology_c353); end
  def test_outputs_land_use_technology_d353; assert_equal("Global Solid Hydrocarbons use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d353); end
  def test_outputs_land_use_technology_c354; assert_equal("G.Aluminium.Alumina.Heat", worksheet.outputs_land_use_technology_c354); end
  def test_outputs_land_use_technology_d354; assert_equal("Global Heat use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d354); end
  def test_outputs_land_use_technology_c355; assert_equal("G.Aluminium.Primary.Electricity", worksheet.outputs_land_use_technology_c355); end
  def test_outputs_land_use_technology_d355; assert_equal("Global Electricity use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d355); end
  def test_outputs_land_use_technology_c356; assert_equal("G.Aluminium.Primary.Coal", worksheet.outputs_land_use_technology_c356); end
  def test_outputs_land_use_technology_d356; assert_equal("Global Coal use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d356); end
  def test_outputs_land_use_technology_c357; assert_equal("G.Aluminium.Primary.Oil", worksheet.outputs_land_use_technology_c357); end
  def test_outputs_land_use_technology_d357; assert_equal("Global Oil use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d357); end
  def test_outputs_land_use_technology_c358; assert_equal("G.Aluminium.Primary.NaturalGas", worksheet.outputs_land_use_technology_c358); end
  def test_outputs_land_use_technology_d358; assert_equal("Global Natural Gas use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d358); end
  def test_outputs_land_use_technology_c359; assert_equal("G.Aluminium.Primary.SolidHydrocarbons", worksheet.outputs_land_use_technology_c359); end
  def test_outputs_land_use_technology_d359; assert_equal("Global Solid Hydrocarbons use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d359); end
  def test_outputs_land_use_technology_c360; assert_equal("G.Aluminium.Primary.Heat", worksheet.outputs_land_use_technology_c360); end
  def test_outputs_land_use_technology_d360; assert_equal("Global Heat use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d360); end
  def test_outputs_land_use_technology_c361; assert_equal("G.Aluminium.Secondary.Electricity", worksheet.outputs_land_use_technology_c361); end
  def test_outputs_land_use_technology_d361; assert_equal("Global Electricity use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d361); end
  def test_outputs_land_use_technology_c362; assert_equal("G.Aluminium.Secondary.Coal", worksheet.outputs_land_use_technology_c362); end
  def test_outputs_land_use_technology_d362; assert_equal("Global Coal use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d362); end
  def test_outputs_land_use_technology_c363; assert_equal("G.Aluminium.Secondary.Oil", worksheet.outputs_land_use_technology_c363); end
  def test_outputs_land_use_technology_d363; assert_equal("Global Oil use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d363); end
  def test_outputs_land_use_technology_c364; assert_equal("G.Aluminium.Secondary.NaturalGas", worksheet.outputs_land_use_technology_c364); end
  def test_outputs_land_use_technology_d364; assert_equal("Global Natural Gas use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d364); end
  def test_outputs_land_use_technology_c365; assert_equal("G.Aluminium.Secondary.SolidHydrocarbons", worksheet.outputs_land_use_technology_c365); end
  def test_outputs_land_use_technology_d365; assert_equal("Global Solid Hydrocarbons use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d365); end
  def test_outputs_land_use_technology_c366; assert_equal("G.Aluminium.Secondary.Heat", worksheet.outputs_land_use_technology_c366); end
  def test_outputs_land_use_technology_d366; assert_equal("Global Heat use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d366); end
  def test_outputs_land_use_technology_c367; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Electricity", worksheet.outputs_land_use_technology_c367); end
  def test_outputs_land_use_technology_d367; assert_equal("Global Electricity use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d367); end
  def test_outputs_land_use_technology_c368; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Coal", worksheet.outputs_land_use_technology_c368); end
  def test_outputs_land_use_technology_d368; assert_equal("Global Coal use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d368); end
  def test_outputs_land_use_technology_c369; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Oil", worksheet.outputs_land_use_technology_c369); end
  def test_outputs_land_use_technology_d369; assert_equal("Global Oil use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d369); end
  def test_outputs_land_use_technology_c370; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.NaturalGas", worksheet.outputs_land_use_technology_c370); end
  def test_outputs_land_use_technology_d370; assert_equal("Global Natural Gas use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d370); end
  def test_outputs_land_use_technology_c371; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.SolidHydrocarbons", worksheet.outputs_land_use_technology_c371); end
  def test_outputs_land_use_technology_d371; assert_equal("Global Solid Hydrocarbons use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d371); end
  def test_outputs_land_use_technology_c372; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Heat", worksheet.outputs_land_use_technology_c372); end
  def test_outputs_land_use_technology_d372; assert_equal("Global Heat use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d372); end
  def test_outputs_land_use_technology_c373; assert_equal("G.Chemicals & petrochemicals.Ammonia.Electricity", worksheet.outputs_land_use_technology_c373); end
  def test_outputs_land_use_technology_d373; assert_equal("Global Electricity use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d373); end
  def test_outputs_land_use_technology_c374; assert_equal("G.Chemicals & petrochemicals.Ammonia.Coal", worksheet.outputs_land_use_technology_c374); end
  def test_outputs_land_use_technology_d374; assert_equal("Global Coal use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d374); end
  def test_outputs_land_use_technology_c375; assert_equal("G.Chemicals & petrochemicals.Ammonia.Oil", worksheet.outputs_land_use_technology_c375); end
  def test_outputs_land_use_technology_d375; assert_equal("Global Oil use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d375); end
  def test_outputs_land_use_technology_c376; assert_equal("G.Chemicals & petrochemicals.Ammonia.NaturalGas", worksheet.outputs_land_use_technology_c376); end
  def test_outputs_land_use_technology_d376; assert_equal("Global Natural Gas use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d376); end
  def test_outputs_land_use_technology_c377; assert_equal("G.Chemicals & petrochemicals.Ammonia.SolidHydrocarbons", worksheet.outputs_land_use_technology_c377); end
  def test_outputs_land_use_technology_d377; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d377); end
  def test_outputs_land_use_technology_c378; assert_equal("G.Chemicals & petrochemicals.Ammonia.Heat", worksheet.outputs_land_use_technology_c378); end
  def test_outputs_land_use_technology_d378; assert_equal("Global Heat use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d378); end
  def test_outputs_land_use_technology_c379; assert_equal("G.Chemicals & petrochemicals.Methanol.Electricity", worksheet.outputs_land_use_technology_c379); end
  def test_outputs_land_use_technology_d379; assert_equal("Global Electricity use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d379); end
  def test_outputs_land_use_technology_c380; assert_equal("G.Chemicals & petrochemicals.Methanol.Coal", worksheet.outputs_land_use_technology_c380); end
  def test_outputs_land_use_technology_d380; assert_equal("Global Coal use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d380); end
  def test_outputs_land_use_technology_c381; assert_equal("G.Chemicals & petrochemicals.Methanol.Oil", worksheet.outputs_land_use_technology_c381); end
  def test_outputs_land_use_technology_d381; assert_equal("Global Oil use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d381); end
  def test_outputs_land_use_technology_c382; assert_equal("G.Chemicals & petrochemicals.Methanol.NaturalGas", worksheet.outputs_land_use_technology_c382); end
  def test_outputs_land_use_technology_d382; assert_equal("Global Natural Gas use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d382); end
  def test_outputs_land_use_technology_c383; assert_equal("G.Chemicals & petrochemicals.Methanol.SolidHydrocarbons", worksheet.outputs_land_use_technology_c383); end
  def test_outputs_land_use_technology_d383; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d383); end
  def test_outputs_land_use_technology_c384; assert_equal("G.Chemicals & petrochemicals.Methanol.Heat", worksheet.outputs_land_use_technology_c384); end
  def test_outputs_land_use_technology_d384; assert_equal("Global Heat use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d384); end
  def test_outputs_land_use_technology_c385; assert_equal("G.Chemicals & petrochemicals.Others.Electricity", worksheet.outputs_land_use_technology_c385); end
  def test_outputs_land_use_technology_d385; assert_equal("Global Electricity use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d385); end
  def test_outputs_land_use_technology_c386; assert_equal("G.Chemicals & petrochemicals.Others.Coal", worksheet.outputs_land_use_technology_c386); end
  def test_outputs_land_use_technology_d386; assert_equal("Global Coal use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d386); end
  def test_outputs_land_use_technology_c387; assert_equal("G.Chemicals & petrochemicals.Others.Oil", worksheet.outputs_land_use_technology_c387); end
  def test_outputs_land_use_technology_d387; assert_equal("Global Oil use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d387); end
  def test_outputs_land_use_technology_c388; assert_equal("G.Chemicals & petrochemicals.Others.NaturalGas", worksheet.outputs_land_use_technology_c388); end
  def test_outputs_land_use_technology_d388; assert_equal("Global Natural Gas use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d388); end
  def test_outputs_land_use_technology_c389; assert_equal("G.Chemicals & petrochemicals.Others.SolidHydrocarbons", worksheet.outputs_land_use_technology_c389); end
  def test_outputs_land_use_technology_d389; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d389); end
  def test_outputs_land_use_technology_c390; assert_equal("G.Chemicals & petrochemicals.Others.Heat", worksheet.outputs_land_use_technology_c390); end
  def test_outputs_land_use_technology_d390; assert_equal("Global Heat use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d390); end
  def test_outputs_land_use_technology_c391; assert_equal("G.Pulp & paper.Pulp.Electricity", worksheet.outputs_land_use_technology_c391); end
  def test_outputs_land_use_technology_d391; assert_equal("Global Electricity use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d391); end
  def test_outputs_land_use_technology_c392; assert_equal("G.Pulp & paper.Pulp.Coal", worksheet.outputs_land_use_technology_c392); end
  def test_outputs_land_use_technology_d392; assert_equal("Global Coal use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d392); end
  def test_outputs_land_use_technology_c393; assert_equal("G.Pulp & paper.Pulp.Oil", worksheet.outputs_land_use_technology_c393); end
  def test_outputs_land_use_technology_d393; assert_equal("Global Oil use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d393); end
  def test_outputs_land_use_technology_c394; assert_equal("G.Pulp & paper.Pulp.NaturalGas", worksheet.outputs_land_use_technology_c394); end
  def test_outputs_land_use_technology_d394; assert_equal("Global Natural Gas use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d394); end
  def test_outputs_land_use_technology_c395; assert_equal("G.Pulp & paper.Pulp.SolidHydrocarbons", worksheet.outputs_land_use_technology_c395); end
  def test_outputs_land_use_technology_d395; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d395); end
  def test_outputs_land_use_technology_c396; assert_equal("G.Pulp & paper.Pulp.Heat", worksheet.outputs_land_use_technology_c396); end
  def test_outputs_land_use_technology_d396; assert_equal("Global Heat use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d396); end
  def test_outputs_land_use_technology_c397; assert_equal("G.Pulp & paper.Virgin.Electricity", worksheet.outputs_land_use_technology_c397); end
  def test_outputs_land_use_technology_d397; assert_equal("Global Electricity use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d397); end
  def test_outputs_land_use_technology_c398; assert_equal("G.Pulp & paper.Virgin.Coal", worksheet.outputs_land_use_technology_c398); end
  def test_outputs_land_use_technology_d398; assert_equal("Global Coal use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d398); end
  def test_outputs_land_use_technology_c399; assert_equal("G.Pulp & paper.Virgin.Oil", worksheet.outputs_land_use_technology_c399); end
  def test_outputs_land_use_technology_d399; assert_equal("Global Oil use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d399); end
  def test_outputs_land_use_technology_c400; assert_equal("G.Pulp & paper.Virgin.NaturalGas", worksheet.outputs_land_use_technology_c400); end
  def test_outputs_land_use_technology_d400; assert_equal("Global Natural Gas use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d400); end
  def test_outputs_land_use_technology_c401; assert_equal("G.Pulp & paper.Virgin.SolidHydrocarbons", worksheet.outputs_land_use_technology_c401); end
  def test_outputs_land_use_technology_d401; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d401); end
  def test_outputs_land_use_technology_c402; assert_equal("G.Pulp & paper.Virgin.Heat", worksheet.outputs_land_use_technology_c402); end
  def test_outputs_land_use_technology_d402; assert_equal("Global Heat use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d402); end
  def test_outputs_land_use_technology_c403; assert_equal("G.Pulp & paper.Recycled.Electricity", worksheet.outputs_land_use_technology_c403); end
  def test_outputs_land_use_technology_d403; assert_equal("Global Electricity use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d403); end
  def test_outputs_land_use_technology_c404; assert_equal("G.Pulp & paper.Recycled.Coal", worksheet.outputs_land_use_technology_c404); end
  def test_outputs_land_use_technology_d404; assert_equal("Global Coal use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d404); end
  def test_outputs_land_use_technology_c405; assert_equal("G.Pulp & paper.Recycled.Oil", worksheet.outputs_land_use_technology_c405); end
  def test_outputs_land_use_technology_d405; assert_equal("Global Oil use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d405); end
  def test_outputs_land_use_technology_c406; assert_equal("G.Pulp & paper.Recycled.NaturalGas", worksheet.outputs_land_use_technology_c406); end
  def test_outputs_land_use_technology_d406; assert_equal("Global Natural Gas use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d406); end
  def test_outputs_land_use_technology_c407; assert_equal("G.Pulp & paper.Recycled.SolidHydrocarbons", worksheet.outputs_land_use_technology_c407); end
  def test_outputs_land_use_technology_d407; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d407); end
  def test_outputs_land_use_technology_c408; assert_equal("G.Pulp & paper.Recycled.Heat", worksheet.outputs_land_use_technology_c408); end
  def test_outputs_land_use_technology_d408; assert_equal("Global Heat use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d408); end
  def test_outputs_land_use_technology_c409; assert_equal("G.Cement.Electricity", worksheet.outputs_land_use_technology_c409); end
  def test_outputs_land_use_technology_d409; assert_equal("Global Electricity use in the Cement technology", worksheet.outputs_land_use_technology_d409); end
  def test_outputs_land_use_technology_c410; assert_equal("G.Cement.Coal", worksheet.outputs_land_use_technology_c410); end
  def test_outputs_land_use_technology_d410; assert_equal("Global Coal use in the Cement technology", worksheet.outputs_land_use_technology_d410); end
  def test_outputs_land_use_technology_c411; assert_equal("G.Cement.Oil", worksheet.outputs_land_use_technology_c411); end
  def test_outputs_land_use_technology_d411; assert_equal("Global Oil use in the Cement technology", worksheet.outputs_land_use_technology_d411); end
  def test_outputs_land_use_technology_c412; assert_equal("G.Cement.NaturalGas", worksheet.outputs_land_use_technology_c412); end
  def test_outputs_land_use_technology_d412; assert_equal("Global Natural Gas use in the Cement technology", worksheet.outputs_land_use_technology_d412); end
  def test_outputs_land_use_technology_c413; assert_equal("G.Cement.SolidHydrocarbons", worksheet.outputs_land_use_technology_c413); end
  def test_outputs_land_use_technology_d413; assert_equal("Global Solid Hydrocarbons use in the Cement technology", worksheet.outputs_land_use_technology_d413); end
  def test_outputs_land_use_technology_c414; assert_equal("G.Cement.Heat", worksheet.outputs_land_use_technology_c414); end
  def test_outputs_land_use_technology_d414; assert_equal("Global Heat use in the Cement technology", worksheet.outputs_land_use_technology_d414); end
  def test_outputs_land_use_technology_c415; assert_equal("G.Other industries.Electricity", worksheet.outputs_land_use_technology_c415); end
  def test_outputs_land_use_technology_d415; assert_equal("Global Electricity use in the Other industries technology", worksheet.outputs_land_use_technology_d415); end
  def test_outputs_land_use_technology_c416; assert_equal("G.Other industries.Coal", worksheet.outputs_land_use_technology_c416); end
  def test_outputs_land_use_technology_d416; assert_equal("Global Coal use in the Other industries technology", worksheet.outputs_land_use_technology_d416); end
  def test_outputs_land_use_technology_c417; assert_equal("G.Other industries.Oil", worksheet.outputs_land_use_technology_c417); end
  def test_outputs_land_use_technology_d417; assert_equal("Global Oil use in the Other industries technology", worksheet.outputs_land_use_technology_d417); end
  def test_outputs_land_use_technology_c418; assert_equal("G.Other industries.NaturalGas", worksheet.outputs_land_use_technology_c418); end
  def test_outputs_land_use_technology_d418; assert_equal("Global Natural Gas use in the Other industries technology", worksheet.outputs_land_use_technology_d418); end
  def test_outputs_land_use_technology_c419; assert_equal("G.Other industries.SolidHydrocarbons", worksheet.outputs_land_use_technology_c419); end
  def test_outputs_land_use_technology_d419; assert_equal("Global Solid Hydrocarbons use in the Other industries technology", worksheet.outputs_land_use_technology_d419); end
  def test_outputs_land_use_technology_c420; assert_equal("G.Other industries.Heat", worksheet.outputs_land_use_technology_c420); end
  def test_outputs_land_use_technology_d420; assert_equal("Global Heat use in the Other industries technology", worksheet.outputs_land_use_technology_d420); end
  def test_outputs_land_use_technology_b425; assert_equal("Out flow of technology units", worksheet.outputs_land_use_technology_b425); end
  def test_outputs_land_use_technology_ab425; assert_equal("Data sources and comments for the historic data", worksheet.outputs_land_use_technology_ab425); end
  def test_outputs_land_use_technology_ab426; assert_equal("Source", worksheet.outputs_land_use_technology_ab426); end
  def test_outputs_land_use_technology_ac426; assert_equal("Link", worksheet.outputs_land_use_technology_ac426); end
  def test_outputs_land_use_technology_ad426; assert_equal("Risk (Green, Amber/Green, Amber, Red/Amber, Red)", worksheet.outputs_land_use_technology_ad426); end
  def test_outputs_land_use_technology_ae426; assert_equal("Comment / assumptions / caveats", worksheet.outputs_land_use_technology_ae426); end
  def test_outputs_land_use_technology_af426; assert_equal("Comment author", worksheet.outputs_land_use_technology_af426); end
  def test_outputs_land_use_technology_c427; assert_equal("All technologies", worksheet.outputs_land_use_technology_c427); end
  def test_outputs_land_use_technology_y427; assert_equal("Number", worksheet.outputs_land_use_technology_y427); end
  def test_outputs_land_use_technology_f428; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f428); end
  def test_outputs_land_use_technology_q428; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q428); end
  def test_outputs_land_use_technology_c429; assert_equal("Technology", worksheet.outputs_land_use_technology_c429); end
  def test_outputs_land_use_technology_d429; assert_equal("Description", worksheet.outputs_land_use_technology_d429); end
  def test_outputs_land_use_technology_f429; assert_equal("1970", worksheet.outputs_land_use_technology_f429); end
  def test_outputs_land_use_technology_g429; assert_equal("1975", worksheet.outputs_land_use_technology_g429); end
  def test_outputs_land_use_technology_h429; assert_equal("1980", worksheet.outputs_land_use_technology_h429); end
  def test_outputs_land_use_technology_i429; assert_equal("1985", worksheet.outputs_land_use_technology_i429); end
  def test_outputs_land_use_technology_j429; assert_equal("1990", worksheet.outputs_land_use_technology_j429); end
  def test_outputs_land_use_technology_k429; assert_equal("1995", worksheet.outputs_land_use_technology_k429); end
  def test_outputs_land_use_technology_l429; assert_equal("2000", worksheet.outputs_land_use_technology_l429); end
  def test_outputs_land_use_technology_m429; assert_equal("2005", worksheet.outputs_land_use_technology_m429); end
  def test_outputs_land_use_technology_n429; assert_in_epsilon(2010.0, worksheet.outputs_land_use_technology_n429, 0.002); end
  def test_outputs_land_use_technology_q429; assert_in_epsilon(2011.0, worksheet.outputs_land_use_technology_q429, 0.002); end
  def test_outputs_land_use_technology_r429; assert_equal("2015", worksheet.outputs_land_use_technology_r429); end
  def test_outputs_land_use_technology_s429; assert_equal("2020", worksheet.outputs_land_use_technology_s429); end
  def test_outputs_land_use_technology_t429; assert_equal("2025", worksheet.outputs_land_use_technology_t429); end
  def test_outputs_land_use_technology_u429; assert_equal("2030", worksheet.outputs_land_use_technology_u429); end
  def test_outputs_land_use_technology_v429; assert_equal("2035", worksheet.outputs_land_use_technology_v429); end
  def test_outputs_land_use_technology_w429; assert_equal("2040", worksheet.outputs_land_use_technology_w429); end
  def test_outputs_land_use_technology_x429; assert_equal("2045", worksheet.outputs_land_use_technology_x429); end
  def test_outputs_land_use_technology_y429; assert_equal("2050", worksheet.outputs_land_use_technology_y429); end
  def test_outputs_land_use_technology_c430; assert_equal("G.motorbike.passenger.urban.fuel", worksheet.outputs_land_use_technology_c430); end
  def test_outputs_land_use_technology_d430; assert_equal("Global motorbike.passenger.urban.fuel", worksheet.outputs_land_use_technology_d430); end
  def test_outputs_land_use_technology_c431; assert_equal("G.motorbike.passenger.urban.elec", worksheet.outputs_land_use_technology_c431); end
  def test_outputs_land_use_technology_d431; assert_equal("Global motorbike.passenger.urban.elec", worksheet.outputs_land_use_technology_d431); end
  def test_outputs_land_use_technology_c432; assert_equal("G.car.passenger.urban.fuel", worksheet.outputs_land_use_technology_c432); end
  def test_outputs_land_use_technology_d432; assert_equal("Global car.passenger.urban.fuel", worksheet.outputs_land_use_technology_d432); end
  def test_outputs_land_use_technology_c433; assert_equal("G.car.passenger.urban.PH", worksheet.outputs_land_use_technology_c433); end
  def test_outputs_land_use_technology_d433; assert_equal("Global car.passenger.urban.PH", worksheet.outputs_land_use_technology_d433); end
  def test_outputs_land_use_technology_c434; assert_equal("G.car.passenger.urban.EV", worksheet.outputs_land_use_technology_c434); end
  def test_outputs_land_use_technology_d434; assert_equal("Global car.passenger.urban.EV", worksheet.outputs_land_use_technology_d434); end
  def test_outputs_land_use_technology_c435; assert_equal("G.car.passenger.urban.H2", worksheet.outputs_land_use_technology_c435); end
  def test_outputs_land_use_technology_d435; assert_equal("Global car.passenger.urban.H2", worksheet.outputs_land_use_technology_d435); end
  def test_outputs_land_use_technology_c436; assert_equal("G.bus.passenger.urban.fuel", worksheet.outputs_land_use_technology_c436); end
  def test_outputs_land_use_technology_d436; assert_equal("Global bus.passenger.urban.fuel", worksheet.outputs_land_use_technology_d436); end
  def test_outputs_land_use_technology_c437; assert_equal("G.bus.passenger.urban.PH", worksheet.outputs_land_use_technology_c437); end
  def test_outputs_land_use_technology_d437; assert_equal("Global bus.passenger.urban.PH", worksheet.outputs_land_use_technology_d437); end
  def test_outputs_land_use_technology_c438; assert_equal("G.bus.passenger.urban.EV", worksheet.outputs_land_use_technology_c438); end
  def test_outputs_land_use_technology_d438; assert_equal("Global bus.passenger.urban.EV", worksheet.outputs_land_use_technology_d438); end
  def test_outputs_land_use_technology_c439; assert_equal("G.bus.passenger.urban.H2", worksheet.outputs_land_use_technology_c439); end
  def test_outputs_land_use_technology_d439; assert_equal("Global bus.passenger.urban.H2", worksheet.outputs_land_use_technology_d439); end
  def test_outputs_land_use_technology_c440; assert_equal("G.train.passenger.urban.fuel", worksheet.outputs_land_use_technology_c440); end
  def test_outputs_land_use_technology_d440; assert_equal("Global train.passenger.urban.fuel", worksheet.outputs_land_use_technology_d440); end
  def test_outputs_land_use_technology_c441; assert_equal("G.train.passenger.urban.elec", worksheet.outputs_land_use_technology_c441); end
  def test_outputs_land_use_technology_d441; assert_equal("Global train.passenger.urban.elec", worksheet.outputs_land_use_technology_d441); end
  def test_outputs_land_use_technology_c442; assert_equal("G.motorbike.passenger.rural.fuel", worksheet.outputs_land_use_technology_c442); end
  def test_outputs_land_use_technology_d442; assert_equal("Global motorbike.passenger.rural.fuel", worksheet.outputs_land_use_technology_d442); end
  def test_outputs_land_use_technology_c443; assert_equal("G.motorbike.passenger.rural.elec", worksheet.outputs_land_use_technology_c443); end
  def test_outputs_land_use_technology_d443; assert_equal("Global motorbike.passenger.rural.elec", worksheet.outputs_land_use_technology_d443); end
  def test_outputs_land_use_technology_c444; assert_equal("G.car.passenger.rural.fuel", worksheet.outputs_land_use_technology_c444); end
  def test_outputs_land_use_technology_d444; assert_equal("Global car.passenger.rural.fuel", worksheet.outputs_land_use_technology_d444); end
  def test_outputs_land_use_technology_c445; assert_equal("G.car.passenger.rural.PH", worksheet.outputs_land_use_technology_c445); end
  def test_outputs_land_use_technology_d445; assert_equal("Global car.passenger.rural.PH", worksheet.outputs_land_use_technology_d445); end
  def test_outputs_land_use_technology_c446; assert_equal("G.car.passenger.rural.EV", worksheet.outputs_land_use_technology_c446); end
  def test_outputs_land_use_technology_d446; assert_equal("Global car.passenger.rural.EV", worksheet.outputs_land_use_technology_d446); end
  def test_outputs_land_use_technology_c447; assert_equal("G.car.passenger.rural.H2", worksheet.outputs_land_use_technology_c447); end
  def test_outputs_land_use_technology_d447; assert_equal("Global car.passenger.rural.H2", worksheet.outputs_land_use_technology_d447); end
  def test_outputs_land_use_technology_c448; assert_equal("G.bus.passenger.rural.fuel", worksheet.outputs_land_use_technology_c448); end
  def test_outputs_land_use_technology_d448; assert_equal("Global bus.passenger.rural.fuel", worksheet.outputs_land_use_technology_d448); end
  def test_outputs_land_use_technology_c449; assert_equal("G.bus.passenger.rural.PH", worksheet.outputs_land_use_technology_c449); end
  def test_outputs_land_use_technology_d449; assert_equal("Global bus.passenger.rural.PH", worksheet.outputs_land_use_technology_d449); end
  def test_outputs_land_use_technology_c450; assert_equal("G.bus.passenger.rural.EV", worksheet.outputs_land_use_technology_c450); end
  def test_outputs_land_use_technology_d450; assert_equal("Global bus.passenger.rural.EV", worksheet.outputs_land_use_technology_d450); end
  def test_outputs_land_use_technology_c451; assert_equal("G.bus.passenger.rural.H2", worksheet.outputs_land_use_technology_c451); end
  def test_outputs_land_use_technology_d451; assert_equal("Global bus.passenger.rural.H2", worksheet.outputs_land_use_technology_d451); end
  def test_outputs_land_use_technology_c452; assert_equal("G.train.passenger.rural.fuel", worksheet.outputs_land_use_technology_c452); end
  def test_outputs_land_use_technology_d452; assert_equal("Global train.passenger.rural.fuel", worksheet.outputs_land_use_technology_d452); end
  def test_outputs_land_use_technology_c453; assert_equal("G.train.passenger.rural.elec", worksheet.outputs_land_use_technology_c453); end
  def test_outputs_land_use_technology_d453; assert_equal("Global train.passenger.rural.elec", worksheet.outputs_land_use_technology_d453); end
  def test_outputs_land_use_technology_c454; assert_equal("G.plane.passenger.international.fuel", worksheet.outputs_land_use_technology_c454); end
  def test_outputs_land_use_technology_d454; assert_equal("Global plane.passenger.international.fuel", worksheet.outputs_land_use_technology_d454); end
  def test_outputs_land_use_technology_c455; assert_equal("G.plane.passenger.international.hydrogen", worksheet.outputs_land_use_technology_c455); end
  def test_outputs_land_use_technology_d455; assert_equal(:na, worksheet.outputs_land_use_technology_d455); end
  def test_outputs_land_use_technology_c456; assert_equal("G.ship.passenger.international.fuel", worksheet.outputs_land_use_technology_c456); end
  def test_outputs_land_use_technology_d456; assert_equal("Global ship.passenger.international.fuel", worksheet.outputs_land_use_technology_d456); end
  def test_outputs_land_use_technology_c457; assert_equal("G.ship.passenger.international.hydrogen", worksheet.outputs_land_use_technology_c457); end
  def test_outputs_land_use_technology_d457; assert_equal(:na, worksheet.outputs_land_use_technology_d457); end
  def test_outputs_land_use_technology_c458; assert_equal("G.train.passenger.international.fuel", worksheet.outputs_land_use_technology_c458); end
  def test_outputs_land_use_technology_d458; assert_equal("Global train.passenger.international.fuel", worksheet.outputs_land_use_technology_d458); end
  def test_outputs_land_use_technology_c459; assert_equal("G.train.passenger.international.elec", worksheet.outputs_land_use_technology_c459); end
  def test_outputs_land_use_technology_d459; assert_equal("Global train.passenger.international.elec", worksheet.outputs_land_use_technology_d459); end
  def test_outputs_land_use_technology_c460; assert_equal("G.solid.boiler.heat", worksheet.outputs_land_use_technology_c460); end
  def test_outputs_land_use_technology_d460; assert_equal("Global Solid fuel boiler", worksheet.outputs_land_use_technology_d460); end
  def test_outputs_land_use_technology_c461; assert_equal("G.liquid.boiler.heat", worksheet.outputs_land_use_technology_c461); end
  def test_outputs_land_use_technology_d461; assert_equal("Global Liquid fuel boiler", worksheet.outputs_land_use_technology_d461); end
  def test_outputs_land_use_technology_c462; assert_equal("G.gas.boiler.heat", worksheet.outputs_land_use_technology_c462); end
  def test_outputs_land_use_technology_d462; assert_equal("Global Gaseous fuel boiler", worksheet.outputs_land_use_technology_d462); end
  def test_outputs_land_use_technology_c463; assert_equal("G.micro.chp.heat", worksheet.outputs_land_use_technology_c463); end
  def test_outputs_land_use_technology_d463; assert_equal("Global Micro combined heat and power (for single domestic purpose)", worksheet.outputs_land_use_technology_d463); end
  def test_outputs_land_use_technology_c464; assert_equal("G.chp.heat", worksheet.outputs_land_use_technology_c464); end
  def test_outputs_land_use_technology_d464; assert_equal("Global Large scale combined heat and power", worksheet.outputs_land_use_technology_d464); end
  def test_outputs_land_use_technology_c465; assert_equal("G.solar.heat", worksheet.outputs_land_use_technology_c465); end
  def test_outputs_land_use_technology_d465; assert_equal("Global Solar thermal", worksheet.outputs_land_use_technology_d465); end
  def test_outputs_land_use_technology_c466; assert_equal("G.district.heat", worksheet.outputs_land_use_technology_c466); end
  def test_outputs_land_use_technology_d466; assert_equal("Global District heating", worksheet.outputs_land_use_technology_d466); end
  def test_outputs_land_use_technology_c467; assert_equal("G.air.pump.heat", worksheet.outputs_land_use_technology_c467); end
  def test_outputs_land_use_technology_d467; assert_equal("Global Air source heat pump", worksheet.outputs_land_use_technology_d467); end
  def test_outputs_land_use_technology_c468; assert_equal("G.ground.pump.heat", worksheet.outputs_land_use_technology_c468); end
  def test_outputs_land_use_technology_d468; assert_equal("Global Ground source heat pump", worksheet.outputs_land_use_technology_d468); end
  def test_outputs_land_use_technology_c469; assert_equal("G.elec.heat", worksheet.outputs_land_use_technology_c469); end
  def test_outputs_land_use_technology_d469; assert_equal("Global Electric heaters", worksheet.outputs_land_use_technology_d469); end
  def test_outputs_land_use_technology_c470; assert_equal("G.ac.cooling", worksheet.outputs_land_use_technology_c470); end
  def test_outputs_land_use_technology_d470; assert_equal("Global Air conditioning", worksheet.outputs_land_use_technology_d470); end
  def test_outputs_land_use_technology_c471; assert_equal("G.bulb.light", worksheet.outputs_land_use_technology_c471); end
  def test_outputs_land_use_technology_d471; assert_equal("Global Light bulb", worksheet.outputs_land_use_technology_d471); end
  def test_outputs_land_use_technology_c472; assert_equal("G.appliance", worksheet.outputs_land_use_technology_c472); end
  def test_outputs_land_use_technology_d472; assert_equal("Global Appliance", worksheet.outputs_land_use_technology_d472); end
  def test_outputs_land_use_technology_c473; assert_equal("G.oven.cook", worksheet.outputs_land_use_technology_c473); end
  def test_outputs_land_use_technology_d473; assert_equal("Global Oven", worksheet.outputs_land_use_technology_d473); end
  def test_outputs_land_use_technology_c474; assert_equal("G.unabated.solid.ultra.elec", worksheet.outputs_land_use_technology_c474); end
  def test_outputs_land_use_technology_d474; assert_equal("Global Unabated solid-fuel ultrasupercritical power plant", worksheet.outputs_land_use_technology_d474); end
  def test_outputs_land_use_technology_c475; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_land_use_technology_c475); end
  def test_outputs_land_use_technology_d475; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_land_use_technology_d475); end
  def test_outputs_land_use_technology_c476; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_land_use_technology_c476); end
  def test_outputs_land_use_technology_d476; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_land_use_technology_d476); end
  def test_outputs_land_use_technology_c477; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_land_use_technology_c477); end
  def test_outputs_land_use_technology_d477; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_land_use_technology_d477); end
  def test_outputs_land_use_technology_c478; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_land_use_technology_c478); end
  def test_outputs_land_use_technology_d478; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_land_use_technology_d478); end
  def test_outputs_land_use_technology_c479; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_land_use_technology_c479); end
  def test_outputs_land_use_technology_d479; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_land_use_technology_d479); end
  def test_outputs_land_use_technology_c480; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_land_use_technology_c480); end
  def test_outputs_land_use_technology_d480; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_land_use_technology_d480); end
  def test_outputs_land_use_technology_c481; assert_equal("G.CCS.solid.ultra.elec", worksheet.outputs_land_use_technology_c481); end
  def test_outputs_land_use_technology_d481; assert_equal("Global Carbon capture solid-fuel ultrasupercritical power plant", worksheet.outputs_land_use_technology_d481); end
  def test_outputs_land_use_technology_c482; assert_equal("G.CCS.solid.super.elec", worksheet.outputs_land_use_technology_c482); end
  def test_outputs_land_use_technology_d482; assert_equal("Global Carbon capture solid-fuel supercritical power plant", worksheet.outputs_land_use_technology_d482); end
  def test_outputs_land_use_technology_c483; assert_equal("G.CCS.solid.sub.elec", worksheet.outputs_land_use_technology_c483); end
  def test_outputs_land_use_technology_d483; assert_equal("Global Carbon capture solid-fuel subcritical power plant", worksheet.outputs_land_use_technology_d483); end
  def test_outputs_land_use_technology_c484; assert_equal("G.CCS.liquid.new.tech.elec", worksheet.outputs_land_use_technology_c484); end
  def test_outputs_land_use_technology_d484; assert_equal("Global Carbon capture liquid-fuel efficient power plant", worksheet.outputs_land_use_technology_d484); end
  def test_outputs_land_use_technology_c485; assert_equal("G.CCS.liquid.old.tech.elec", worksheet.outputs_land_use_technology_c485); end
  def test_outputs_land_use_technology_d485; assert_equal("Global Carbon capture liquid-fuel inefficient power plant", worksheet.outputs_land_use_technology_d485); end
  def test_outputs_land_use_technology_c486; assert_equal("G.CCS.gas.OC.elec", worksheet.outputs_land_use_technology_c486); end
  def test_outputs_land_use_technology_d486; assert_equal("Global Carbon capture open-cycle gas turbine power plant", worksheet.outputs_land_use_technology_d486); end
  def test_outputs_land_use_technology_c487; assert_equal("G.CCS.gas.CC.elec", worksheet.outputs_land_use_technology_c487); end
  def test_outputs_land_use_technology_d487; assert_equal("Global Carbon capture combined cycle gas turbine power plant", worksheet.outputs_land_use_technology_d487); end
  def test_outputs_land_use_technology_c488; assert_equal("G.nuclear.elec", worksheet.outputs_land_use_technology_c488); end
  def test_outputs_land_use_technology_d488; assert_equal("Global Nuclear power stations", worksheet.outputs_land_use_technology_d488); end
  def test_outputs_land_use_technology_c489; assert_equal("G.onshore.wind.elec", worksheet.outputs_land_use_technology_c489); end
  def test_outputs_land_use_technology_d489; assert_equal("Global On shore wind turbines", worksheet.outputs_land_use_technology_d489); end
  def test_outputs_land_use_technology_c490; assert_equal("G.offshore.wind.elec", worksheet.outputs_land_use_technology_c490); end
  def test_outputs_land_use_technology_d490; assert_equal("Global Off shore wind turbines", worksheet.outputs_land_use_technology_d490); end
  def test_outputs_land_use_technology_c491; assert_equal("G.hydro.elec", worksheet.outputs_land_use_technology_c491); end
  def test_outputs_land_use_technology_d491; assert_equal("Global Hydroelectric dam", worksheet.outputs_land_use_technology_d491); end
  def test_outputs_land_use_technology_c492; assert_equal("G.tidal.elec", worksheet.outputs_land_use_technology_c492); end
  def test_outputs_land_use_technology_d492; assert_equal("Global Tidal", worksheet.outputs_land_use_technology_d492); end
  def test_outputs_land_use_technology_c493; assert_equal("G.wave.elec", worksheet.outputs_land_use_technology_c493); end
  def test_outputs_land_use_technology_d493; assert_equal("Global Wave", worksheet.outputs_land_use_technology_d493); end
  def test_outputs_land_use_technology_c494; assert_equal("G.solarpv.elec", worksheet.outputs_land_use_technology_c494); end
  def test_outputs_land_use_technology_d494; assert_equal("Global Solar photovoltaic", worksheet.outputs_land_use_technology_d494); end
  def test_outputs_land_use_technology_c495; assert_equal("G.concentrated.solar.elec", worksheet.outputs_land_use_technology_c495); end
  def test_outputs_land_use_technology_d495; assert_equal("Global Concentrated solar", worksheet.outputs_land_use_technology_d495); end
  def test_outputs_land_use_technology_c496; assert_equal("G.geothermal.elec", worksheet.outputs_land_use_technology_c496); end
  def test_outputs_land_use_technology_d496; assert_equal("Global Geothermal", worksheet.outputs_land_use_technology_d496); end
  def test_outputs_land_use_technology_c497; assert_equal("G.storage.elec", worksheet.outputs_land_use_technology_c497); end
  def test_outputs_land_use_technology_d497; assert_equal("Global Storage unit", worksheet.outputs_land_use_technology_d497); end
  def test_outputs_land_use_technology_c498; assert_equal("G.SMR.hyd", worksheet.outputs_land_use_technology_c498); end
  def test_outputs_land_use_technology_d498; assert_equal("Global Production of hydrogen through SMR", worksheet.outputs_land_use_technology_d498); end
  def test_outputs_land_use_technology_c499; assert_equal("G.Coal.hyd", worksheet.outputs_land_use_technology_c499); end
  def test_outputs_land_use_technology_d499; assert_equal("Global Production of hydrogen through coal gasification", worksheet.outputs_land_use_technology_d499); end
  def test_outputs_land_use_technology_c500; assert_equal("G.Elec.hyd", worksheet.outputs_land_use_technology_c500); end
  def test_outputs_land_use_technology_d500; assert_equal("Global Production of hydrogen through electrolysis", worksheet.outputs_land_use_technology_d500); end
  def test_outputs_land_use_technology_c501; assert_equal("G.conversion.solidtoliquid", worksheet.outputs_land_use_technology_c501); end
  def test_outputs_land_use_technology_d501; assert_equal(:na, worksheet.outputs_land_use_technology_d501); end
  def test_outputs_land_use_technology_c502; assert_equal("G.conversion.liquidtogas", worksheet.outputs_land_use_technology_c502); end
  def test_outputs_land_use_technology_d502; assert_equal(:na, worksheet.outputs_land_use_technology_d502); end
  def test_outputs_land_use_technology_c503; assert_equal("G.conversion.gas", worksheet.outputs_land_use_technology_c503); end
  def test_outputs_land_use_technology_d503; assert_equal(:na, worksheet.outputs_land_use_technology_d503); end
  def test_outputs_land_use_technology_c504; assert_equal("G.GGR.tech", worksheet.outputs_land_use_technology_c504); end
  def test_outputs_land_use_technology_d504; assert_equal("Global Geosequestration units", worksheet.outputs_land_use_technology_d504); end
  def test_outputs_land_use_technology_c505; assert_equal("G.Forest", worksheet.outputs_land_use_technology_c505); end
  def test_outputs_land_use_technology_d505; assert_equal("Global Forest", worksheet.outputs_land_use_technology_d505); end
  def test_outputs_land_use_technology_c506; assert_equal("G.Arable.food", worksheet.outputs_land_use_technology_c506); end
  def test_outputs_land_use_technology_d506; assert_equal("Global Arable land for food crops", worksheet.outputs_land_use_technology_d506); end
  def test_outputs_land_use_technology_c507; assert_equal("G.Arable.bio", worksheet.outputs_land_use_technology_c507); end
  def test_outputs_land_use_technology_d507; assert_equal("Global Arable land for bioenergy", worksheet.outputs_land_use_technology_d507); end
  def test_outputs_land_use_technology_c508; assert_equal("G.Arable.other", worksheet.outputs_land_use_technology_c508); end
  def test_outputs_land_use_technology_d508; assert_equal("Global Arable land for other ", worksheet.outputs_land_use_technology_d508); end
  def test_outputs_land_use_technology_c509; assert_equal("G.Pasture.food", worksheet.outputs_land_use_technology_c509); end
  def test_outputs_land_use_technology_d509; assert_equal("Global Pasture for livestock", worksheet.outputs_land_use_technology_d509); end
  def test_outputs_land_use_technology_c510; assert_equal("G.Other.Land.unproductive", worksheet.outputs_land_use_technology_c510); end
  def test_outputs_land_use_technology_d510; assert_equal("Global Other land (desert, settlements)", worksheet.outputs_land_use_technology_d510); end
  def test_outputs_land_use_technology_c511; assert_equal("G.Other.Land.productive", worksheet.outputs_land_use_technology_c511); end
  def test_outputs_land_use_technology_d511; assert_equal("Global Remainder of productive terestial land after bioenergy and food", worksheet.outputs_land_use_technology_d511); end
  def test_outputs_land_use_technology_c512; assert_equal("G.Land.fill", worksheet.outputs_land_use_technology_c512); end
  def test_outputs_land_use_technology_d512; assert_equal("Global Land used for waste (buried or on surface)", worksheet.outputs_land_use_technology_d512); end
  def test_outputs_land_use_technology_c513; assert_equal("G.Humans", worksheet.outputs_land_use_technology_c513); end
  def test_outputs_land_use_technology_d513; assert_equal("Global Humans", worksheet.outputs_land_use_technology_d513); end
  def test_outputs_land_use_technology_c514; assert_equal("G.Steel.Oxygen.Electricity", worksheet.outputs_land_use_technology_c514); end
  def test_outputs_land_use_technology_d514; assert_equal("Global Electricity use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d514); end
  def test_outputs_land_use_technology_c515; assert_equal("G.Steel.Oxygen.Coal", worksheet.outputs_land_use_technology_c515); end
  def test_outputs_land_use_technology_d515; assert_equal("Global Coal use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d515); end
  def test_outputs_land_use_technology_c516; assert_equal("G.Steel.Oxygen.Oil", worksheet.outputs_land_use_technology_c516); end
  def test_outputs_land_use_technology_d516; assert_equal("Global Oil use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d516); end
  def test_outputs_land_use_technology_c517; assert_equal("G.Steel.Oxygen.NaturalGas", worksheet.outputs_land_use_technology_c517); end
  def test_outputs_land_use_technology_d517; assert_equal("Global Natural Gas use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d517); end
  def test_outputs_land_use_technology_c518; assert_equal("G.Steel.Oxygen.SolidHydrocarbons", worksheet.outputs_land_use_technology_c518); end
  def test_outputs_land_use_technology_d518; assert_equal("Global Solid Hydrocarbons use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d518); end
  def test_outputs_land_use_technology_c519; assert_equal("G.Steel.Oxygen.Heat", worksheet.outputs_land_use_technology_c519); end
  def test_outputs_land_use_technology_d519; assert_equal("Global Heat use in the Oxygen steel technology", worksheet.outputs_land_use_technology_d519); end
  def test_outputs_land_use_technology_c520; assert_equal("G.Steel.OxygenHisarna.Electricity", worksheet.outputs_land_use_technology_c520); end
  def test_outputs_land_use_technology_d520; assert_equal("Global Electricity use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d520); end
  def test_outputs_land_use_technology_c521; assert_equal("G.Steel.OxygenHisarna.Coal", worksheet.outputs_land_use_technology_c521); end
  def test_outputs_land_use_technology_d521; assert_equal("Global Coal use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d521); end
  def test_outputs_land_use_technology_c522; assert_equal("G.Steel.OxygenHisarna.Oil", worksheet.outputs_land_use_technology_c522); end
  def test_outputs_land_use_technology_d522; assert_equal("Global Oil use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d522); end
  def test_outputs_land_use_technology_c523; assert_equal("G.Steel.OxygenHisarna.NaturalGas", worksheet.outputs_land_use_technology_c523); end
  def test_outputs_land_use_technology_d523; assert_equal("Global Natural Gas use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d523); end
  def test_outputs_land_use_technology_c524; assert_equal("G.Steel.OxygenHisarna.SolidHydrocarbons", worksheet.outputs_land_use_technology_c524); end
  def test_outputs_land_use_technology_d524; assert_equal("Global Solid Hydrocarbons use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d524); end
  def test_outputs_land_use_technology_c525; assert_equal("G.Steel.OxygenHisarna.Heat", worksheet.outputs_land_use_technology_c525); end
  def test_outputs_land_use_technology_d525; assert_equal("Global Heat use in the Hisarna Oxygen steel technology", worksheet.outputs_land_use_technology_d525); end
  def test_outputs_land_use_technology_c526; assert_equal("G.Steel.Electric.Electricity", worksheet.outputs_land_use_technology_c526); end
  def test_outputs_land_use_technology_d526; assert_equal("Global Electricity use in the Electric steel technology", worksheet.outputs_land_use_technology_d526); end
  def test_outputs_land_use_technology_c527; assert_equal("G.Steel.Electric.Coal", worksheet.outputs_land_use_technology_c527); end
  def test_outputs_land_use_technology_d527; assert_equal("Global Coal use in the Electric steel technology", worksheet.outputs_land_use_technology_d527); end
  def test_outputs_land_use_technology_c528; assert_equal("G.Steel.Electric.Oil", worksheet.outputs_land_use_technology_c528); end
  def test_outputs_land_use_technology_d528; assert_equal("Global Oil use in the Electric steel technology", worksheet.outputs_land_use_technology_d528); end
  def test_outputs_land_use_technology_c529; assert_equal("G.Steel.Electric.NaturalGas", worksheet.outputs_land_use_technology_c529); end
  def test_outputs_land_use_technology_d529; assert_equal("Global Natural Gas use in the Electric steel technology", worksheet.outputs_land_use_technology_d529); end
  def test_outputs_land_use_technology_c530; assert_equal("G.Steel.Electric.SolidHydrocarbons", worksheet.outputs_land_use_technology_c530); end
  def test_outputs_land_use_technology_d530; assert_equal("Global Solid Hydrocarbons use in the Electric steel technology", worksheet.outputs_land_use_technology_d530); end
  def test_outputs_land_use_technology_c531; assert_equal("G.Steel.Electric.Heat", worksheet.outputs_land_use_technology_c531); end
  def test_outputs_land_use_technology_d531; assert_equal("Global Heat use in the Electric steel technology", worksheet.outputs_land_use_technology_d531); end
  def test_outputs_land_use_technology_c532; assert_equal("G.Aluminium.Alumina.Electricity", worksheet.outputs_land_use_technology_c532); end
  def test_outputs_land_use_technology_d532; assert_equal("Global Electricity use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d532); end
  def test_outputs_land_use_technology_c533; assert_equal("G.Aluminium.Alumina.Coal", worksheet.outputs_land_use_technology_c533); end
  def test_outputs_land_use_technology_d533; assert_equal("Global Coal use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d533); end
  def test_outputs_land_use_technology_c534; assert_equal("G.Aluminium.Alumina.Oil", worksheet.outputs_land_use_technology_c534); end
  def test_outputs_land_use_technology_d534; assert_equal("Global Oil use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d534); end
  def test_outputs_land_use_technology_c535; assert_equal("G.Aluminium.Alumina.NaturalGas", worksheet.outputs_land_use_technology_c535); end
  def test_outputs_land_use_technology_d535; assert_equal("Global Natural Gas use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d535); end
  def test_outputs_land_use_technology_c536; assert_equal("G.Aluminium.Alumina.SolidHydrocarbons", worksheet.outputs_land_use_technology_c536); end
  def test_outputs_land_use_technology_d536; assert_equal("Global Solid Hydrocarbons use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d536); end
  def test_outputs_land_use_technology_c537; assert_equal("G.Aluminium.Alumina.Heat", worksheet.outputs_land_use_technology_c537); end
  def test_outputs_land_use_technology_d537; assert_equal("Global Heat use in the Alumina Aluminium technology", worksheet.outputs_land_use_technology_d537); end
  def test_outputs_land_use_technology_c538; assert_equal("G.Aluminium.Primary.Electricity", worksheet.outputs_land_use_technology_c538); end
  def test_outputs_land_use_technology_d538; assert_equal("Global Electricity use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d538); end
  def test_outputs_land_use_technology_c539; assert_equal("G.Aluminium.Primary.Coal", worksheet.outputs_land_use_technology_c539); end
  def test_outputs_land_use_technology_d539; assert_equal("Global Coal use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d539); end
  def test_outputs_land_use_technology_c540; assert_equal("G.Aluminium.Primary.Oil", worksheet.outputs_land_use_technology_c540); end
  def test_outputs_land_use_technology_d540; assert_equal("Global Oil use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d540); end
  def test_outputs_land_use_technology_c541; assert_equal("G.Aluminium.Primary.NaturalGas", worksheet.outputs_land_use_technology_c541); end
  def test_outputs_land_use_technology_d541; assert_equal("Global Natural Gas use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d541); end
  def test_outputs_land_use_technology_c542; assert_equal("G.Aluminium.Primary.SolidHydrocarbons", worksheet.outputs_land_use_technology_c542); end
  def test_outputs_land_use_technology_d542; assert_equal("Global Solid Hydrocarbons use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d542); end
  def test_outputs_land_use_technology_c543; assert_equal("G.Aluminium.Primary.Heat", worksheet.outputs_land_use_technology_c543); end
  def test_outputs_land_use_technology_d543; assert_equal("Global Heat use in the Primary Aluminium technology", worksheet.outputs_land_use_technology_d543); end
  def test_outputs_land_use_technology_c544; assert_equal("G.Aluminium.Secondary.Electricity", worksheet.outputs_land_use_technology_c544); end
  def test_outputs_land_use_technology_d544; assert_equal("Global Electricity use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d544); end
  def test_outputs_land_use_technology_c545; assert_equal("G.Aluminium.Secondary.Coal", worksheet.outputs_land_use_technology_c545); end
  def test_outputs_land_use_technology_d545; assert_equal("Global Coal use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d545); end
  def test_outputs_land_use_technology_c546; assert_equal("G.Aluminium.Secondary.Oil", worksheet.outputs_land_use_technology_c546); end
  def test_outputs_land_use_technology_d546; assert_equal("Global Oil use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d546); end
  def test_outputs_land_use_technology_c547; assert_equal("G.Aluminium.Secondary.NaturalGas", worksheet.outputs_land_use_technology_c547); end
  def test_outputs_land_use_technology_d547; assert_equal("Global Natural Gas use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d547); end
  def test_outputs_land_use_technology_c548; assert_equal("G.Aluminium.Secondary.SolidHydrocarbons", worksheet.outputs_land_use_technology_c548); end
  def test_outputs_land_use_technology_d548; assert_equal("Global Solid Hydrocarbons use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d548); end
  def test_outputs_land_use_technology_c549; assert_equal("G.Aluminium.Secondary.Heat", worksheet.outputs_land_use_technology_c549); end
  def test_outputs_land_use_technology_d549; assert_equal("Global Heat use in the Secondary Aluminium technology", worksheet.outputs_land_use_technology_d549); end
  def test_outputs_land_use_technology_c550; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Electricity", worksheet.outputs_land_use_technology_c550); end
  def test_outputs_land_use_technology_d550; assert_equal("Global Electricity use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d550); end
  def test_outputs_land_use_technology_c551; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Coal", worksheet.outputs_land_use_technology_c551); end
  def test_outputs_land_use_technology_d551; assert_equal("Global Coal use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d551); end
  def test_outputs_land_use_technology_c552; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Oil", worksheet.outputs_land_use_technology_c552); end
  def test_outputs_land_use_technology_d552; assert_equal("Global Oil use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d552); end
  def test_outputs_land_use_technology_c553; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.NaturalGas", worksheet.outputs_land_use_technology_c553); end
  def test_outputs_land_use_technology_d553; assert_equal("Global Natural Gas use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d553); end
  def test_outputs_land_use_technology_c554; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.SolidHydrocarbons", worksheet.outputs_land_use_technology_c554); end
  def test_outputs_land_use_technology_d554; assert_equal("Global Solid Hydrocarbons use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d554); end
  def test_outputs_land_use_technology_c555; assert_equal("G.Chemicals & petrochemicals.HighValueChemicals.Heat", worksheet.outputs_land_use_technology_c555); end
  def test_outputs_land_use_technology_d555; assert_equal("Global Heat use in the Chemicals: High Value Chemicals  technology", worksheet.outputs_land_use_technology_d555); end
  def test_outputs_land_use_technology_c556; assert_equal("G.Chemicals & petrochemicals.Ammonia.Electricity", worksheet.outputs_land_use_technology_c556); end
  def test_outputs_land_use_technology_d556; assert_equal("Global Electricity use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d556); end
  def test_outputs_land_use_technology_c557; assert_equal("G.Chemicals & petrochemicals.Ammonia.Coal", worksheet.outputs_land_use_technology_c557); end
  def test_outputs_land_use_technology_d557; assert_equal("Global Coal use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d557); end
  def test_outputs_land_use_technology_c558; assert_equal("G.Chemicals & petrochemicals.Ammonia.Oil", worksheet.outputs_land_use_technology_c558); end
  def test_outputs_land_use_technology_d558; assert_equal("Global Oil use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d558); end
  def test_outputs_land_use_technology_c559; assert_equal("G.Chemicals & petrochemicals.Ammonia.NaturalGas", worksheet.outputs_land_use_technology_c559); end
  def test_outputs_land_use_technology_d559; assert_equal("Global Natural Gas use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d559); end
  def test_outputs_land_use_technology_c560; assert_equal("G.Chemicals & petrochemicals.Ammonia.SolidHydrocarbons", worksheet.outputs_land_use_technology_c560); end
  def test_outputs_land_use_technology_d560; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d560); end
  def test_outputs_land_use_technology_c561; assert_equal("G.Chemicals & petrochemicals.Ammonia.Heat", worksheet.outputs_land_use_technology_c561); end
  def test_outputs_land_use_technology_d561; assert_equal("Global Heat use in the Chemicals: Ammonia technology", worksheet.outputs_land_use_technology_d561); end
  def test_outputs_land_use_technology_c562; assert_equal("G.Chemicals & petrochemicals.Methanol.Electricity", worksheet.outputs_land_use_technology_c562); end
  def test_outputs_land_use_technology_d562; assert_equal("Global Electricity use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d562); end
  def test_outputs_land_use_technology_c563; assert_equal("G.Chemicals & petrochemicals.Methanol.Coal", worksheet.outputs_land_use_technology_c563); end
  def test_outputs_land_use_technology_d563; assert_equal("Global Coal use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d563); end
  def test_outputs_land_use_technology_c564; assert_equal("G.Chemicals & petrochemicals.Methanol.Oil", worksheet.outputs_land_use_technology_c564); end
  def test_outputs_land_use_technology_d564; assert_equal("Global Oil use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d564); end
  def test_outputs_land_use_technology_c565; assert_equal("G.Chemicals & petrochemicals.Methanol.NaturalGas", worksheet.outputs_land_use_technology_c565); end
  def test_outputs_land_use_technology_d565; assert_equal("Global Natural Gas use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d565); end
  def test_outputs_land_use_technology_c566; assert_equal("G.Chemicals & petrochemicals.Methanol.SolidHydrocarbons", worksheet.outputs_land_use_technology_c566); end
  def test_outputs_land_use_technology_d566; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d566); end
  def test_outputs_land_use_technology_c567; assert_equal("G.Chemicals & petrochemicals.Methanol.Heat", worksheet.outputs_land_use_technology_c567); end
  def test_outputs_land_use_technology_d567; assert_equal("Global Heat use in the Chemicals: Methanol technology", worksheet.outputs_land_use_technology_d567); end
  def test_outputs_land_use_technology_c568; assert_equal("G.Chemicals & petrochemicals.Others.Electricity", worksheet.outputs_land_use_technology_c568); end
  def test_outputs_land_use_technology_d568; assert_equal("Global Electricity use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d568); end
  def test_outputs_land_use_technology_c569; assert_equal("G.Chemicals & petrochemicals.Others.Coal", worksheet.outputs_land_use_technology_c569); end
  def test_outputs_land_use_technology_d569; assert_equal("Global Coal use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d569); end
  def test_outputs_land_use_technology_c570; assert_equal("G.Chemicals & petrochemicals.Others.Oil", worksheet.outputs_land_use_technology_c570); end
  def test_outputs_land_use_technology_d570; assert_equal("Global Oil use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d570); end
  def test_outputs_land_use_technology_c571; assert_equal("G.Chemicals & petrochemicals.Others.NaturalGas", worksheet.outputs_land_use_technology_c571); end
  def test_outputs_land_use_technology_d571; assert_equal("Global Natural Gas use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d571); end
  def test_outputs_land_use_technology_c572; assert_equal("G.Chemicals & petrochemicals.Others.SolidHydrocarbons", worksheet.outputs_land_use_technology_c572); end
  def test_outputs_land_use_technology_d572; assert_equal("Global Solid Hydrocarbons use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d572); end
  def test_outputs_land_use_technology_c573; assert_equal("G.Chemicals & petrochemicals.Others.Heat", worksheet.outputs_land_use_technology_c573); end
  def test_outputs_land_use_technology_d573; assert_equal("Global Heat use in the Chemicals: Others technology", worksheet.outputs_land_use_technology_d573); end
  def test_outputs_land_use_technology_c574; assert_equal("G.Pulp & paper.Pulp.Electricity", worksheet.outputs_land_use_technology_c574); end
  def test_outputs_land_use_technology_d574; assert_equal("Global Electricity use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d574); end
  def test_outputs_land_use_technology_c575; assert_equal("G.Pulp & paper.Pulp.Coal", worksheet.outputs_land_use_technology_c575); end
  def test_outputs_land_use_technology_d575; assert_equal("Global Coal use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d575); end
  def test_outputs_land_use_technology_c576; assert_equal("G.Pulp & paper.Pulp.Oil", worksheet.outputs_land_use_technology_c576); end
  def test_outputs_land_use_technology_d576; assert_equal("Global Oil use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d576); end
  def test_outputs_land_use_technology_c577; assert_equal("G.Pulp & paper.Pulp.NaturalGas", worksheet.outputs_land_use_technology_c577); end
  def test_outputs_land_use_technology_d577; assert_equal("Global Natural Gas use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d577); end
  def test_outputs_land_use_technology_c578; assert_equal("G.Pulp & paper.Pulp.SolidHydrocarbons", worksheet.outputs_land_use_technology_c578); end
  def test_outputs_land_use_technology_d578; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d578); end
  def test_outputs_land_use_technology_c579; assert_equal("G.Pulp & paper.Pulp.Heat", worksheet.outputs_land_use_technology_c579); end
  def test_outputs_land_use_technology_d579; assert_equal("Global Heat use in the Pulp & paper: Pulp technology", worksheet.outputs_land_use_technology_d579); end
  def test_outputs_land_use_technology_c580; assert_equal("G.Pulp & paper.Virgin.Electricity", worksheet.outputs_land_use_technology_c580); end
  def test_outputs_land_use_technology_d580; assert_equal("Global Electricity use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d580); end
  def test_outputs_land_use_technology_c581; assert_equal("G.Pulp & paper.Virgin.Coal", worksheet.outputs_land_use_technology_c581); end
  def test_outputs_land_use_technology_d581; assert_equal("Global Coal use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d581); end
  def test_outputs_land_use_technology_c582; assert_equal("G.Pulp & paper.Virgin.Oil", worksheet.outputs_land_use_technology_c582); end
  def test_outputs_land_use_technology_d582; assert_equal("Global Oil use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d582); end
  def test_outputs_land_use_technology_c583; assert_equal("G.Pulp & paper.Virgin.NaturalGas", worksheet.outputs_land_use_technology_c583); end
  def test_outputs_land_use_technology_d583; assert_equal("Global Natural Gas use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d583); end
  def test_outputs_land_use_technology_c584; assert_equal("G.Pulp & paper.Virgin.SolidHydrocarbons", worksheet.outputs_land_use_technology_c584); end
  def test_outputs_land_use_technology_d584; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d584); end
  def test_outputs_land_use_technology_c585; assert_equal("G.Pulp & paper.Virgin.Heat", worksheet.outputs_land_use_technology_c585); end
  def test_outputs_land_use_technology_d585; assert_equal("Global Heat use in the Pulp & paper: Virgin technology", worksheet.outputs_land_use_technology_d585); end
  def test_outputs_land_use_technology_c586; assert_equal("G.Pulp & paper.Recycled.Electricity", worksheet.outputs_land_use_technology_c586); end
  def test_outputs_land_use_technology_d586; assert_equal("Global Electricity use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d586); end
  def test_outputs_land_use_technology_c587; assert_equal("G.Pulp & paper.Recycled.Coal", worksheet.outputs_land_use_technology_c587); end
  def test_outputs_land_use_technology_d587; assert_equal("Global Coal use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d587); end
  def test_outputs_land_use_technology_c588; assert_equal("G.Pulp & paper.Recycled.Oil", worksheet.outputs_land_use_technology_c588); end
  def test_outputs_land_use_technology_d588; assert_equal("Global Oil use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d588); end
  def test_outputs_land_use_technology_c589; assert_equal("G.Pulp & paper.Recycled.NaturalGas", worksheet.outputs_land_use_technology_c589); end
  def test_outputs_land_use_technology_d589; assert_equal("Global Natural Gas use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d589); end
  def test_outputs_land_use_technology_c590; assert_equal("G.Pulp & paper.Recycled.SolidHydrocarbons", worksheet.outputs_land_use_technology_c590); end
  def test_outputs_land_use_technology_d590; assert_equal("Global Solid Hydrocarbons use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d590); end
  def test_outputs_land_use_technology_c591; assert_equal("G.Pulp & paper.Recycled.Heat", worksheet.outputs_land_use_technology_c591); end
  def test_outputs_land_use_technology_d591; assert_equal("Global Heat use in the Pulp & paper: Recycled technology", worksheet.outputs_land_use_technology_d591); end
  def test_outputs_land_use_technology_c592; assert_equal("G.Cement.Electricity", worksheet.outputs_land_use_technology_c592); end
  def test_outputs_land_use_technology_d592; assert_equal("Global Electricity use in the Cement technology", worksheet.outputs_land_use_technology_d592); end
  def test_outputs_land_use_technology_c593; assert_equal("G.Cement.Coal", worksheet.outputs_land_use_technology_c593); end
  def test_outputs_land_use_technology_d593; assert_equal("Global Coal use in the Cement technology", worksheet.outputs_land_use_technology_d593); end
  def test_outputs_land_use_technology_c594; assert_equal("G.Cement.Oil", worksheet.outputs_land_use_technology_c594); end
  def test_outputs_land_use_technology_d594; assert_equal("Global Oil use in the Cement technology", worksheet.outputs_land_use_technology_d594); end
  def test_outputs_land_use_technology_c595; assert_equal("G.Cement.NaturalGas", worksheet.outputs_land_use_technology_c595); end
  def test_outputs_land_use_technology_d595; assert_equal("Global Natural Gas use in the Cement technology", worksheet.outputs_land_use_technology_d595); end
  def test_outputs_land_use_technology_c596; assert_equal("G.Cement.SolidHydrocarbons", worksheet.outputs_land_use_technology_c596); end
  def test_outputs_land_use_technology_d596; assert_equal("Global Solid Hydrocarbons use in the Cement technology", worksheet.outputs_land_use_technology_d596); end
  def test_outputs_land_use_technology_c597; assert_equal("G.Cement.Heat", worksheet.outputs_land_use_technology_c597); end
  def test_outputs_land_use_technology_d597; assert_equal("Global Heat use in the Cement technology", worksheet.outputs_land_use_technology_d597); end
  def test_outputs_land_use_technology_c598; assert_equal("G.Other industries.Electricity", worksheet.outputs_land_use_technology_c598); end
  def test_outputs_land_use_technology_d598; assert_equal("Global Electricity use in the Other industries technology", worksheet.outputs_land_use_technology_d598); end
  def test_outputs_land_use_technology_c599; assert_equal("G.Other industries.Coal", worksheet.outputs_land_use_technology_c599); end
  def test_outputs_land_use_technology_d599; assert_equal("Global Coal use in the Other industries technology", worksheet.outputs_land_use_technology_d599); end
  def test_outputs_land_use_technology_c600; assert_equal("G.Other industries.Oil", worksheet.outputs_land_use_technology_c600); end
  def test_outputs_land_use_technology_d600; assert_equal("Global Oil use in the Other industries technology", worksheet.outputs_land_use_technology_d600); end
  def test_outputs_land_use_technology_c601; assert_equal("G.Other industries.NaturalGas", worksheet.outputs_land_use_technology_c601); end
  def test_outputs_land_use_technology_d601; assert_equal("Global Natural Gas use in the Other industries technology", worksheet.outputs_land_use_technology_d601); end
  def test_outputs_land_use_technology_c602; assert_equal("G.Other industries.SolidHydrocarbons", worksheet.outputs_land_use_technology_c602); end
  def test_outputs_land_use_technology_d602; assert_equal("Global Solid Hydrocarbons use in the Other industries technology", worksheet.outputs_land_use_technology_d602); end
  def test_outputs_land_use_technology_c603; assert_equal("G.Other industries.Heat", worksheet.outputs_land_use_technology_c603); end
  def test_outputs_land_use_technology_d603; assert_equal("Global Heat use in the Other industries technology", worksheet.outputs_land_use_technology_d603); end
  def test_outputs_costs_b2; assert_equal("G", worksheet.outputs_costs_b2); end
  def test_outputs_costs_c2; assert_equal("Global", worksheet.outputs_costs_c2); end
  def test_outputs_costs_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_costs_e2); end
  def test_outputs_costs_j2; assert_equal("Note: need to update so that this uses the latest workbook naming conventions and sector structures, and so that it pulls in data from the year sheets", worksheet.outputs_costs_j2); end
  def test_outputs_costs_b3; assert_equal("Costs", worksheet.outputs_costs_b3); end
  def test_outputs_energy_flows_b2; assert_equal("G", worksheet.outputs_energy_flows_b2); end
  def test_outputs_energy_flows_c2; assert_equal("Global", worksheet.outputs_energy_flows_c2); end
  def test_outputs_energy_flows_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_energy_flows_e2); end
  def test_outputs_energy_flows_j2; assert_equal("Note: needs to be done so that we have the data in one place for the Sankey diagram in the webtool", worksheet.outputs_energy_flows_j2); end
  def test_outputs_energy_flows_b3; assert_equal("Energy flows ", worksheet.outputs_energy_flows_b3); end
end
