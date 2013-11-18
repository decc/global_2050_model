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
  def test_user_inputs_b2; assert_equal("User inputs", worksheet.user_inputs_b2); end
  def test_user_inputs_c2; assert_equal("Click here to return to the \"contents\" page", worksheet.user_inputs_c2); end
  def test_user_inputs_g2; assert_equal("Annual emissions rise relative to 1990 levels", worksheet.user_inputs_g2); end
  def test_user_inputs_l2; assert_equal("Y", worksheet.user_inputs_l2); end
  def test_user_inputs_g3; assert_equal("Temperature rise relative to pre-industrial (1850)", worksheet.user_inputs_g3); end
  def test_user_inputs_l3; assert_equal("X", worksheet.user_inputs_l3); end
  def test_user_inputs_b5; assert_equal("Trajectory choices", worksheet.user_inputs_b5); end
  def test_user_inputs_f5; assert_equal("Trajectory description", worksheet.user_inputs_f5); end
  def test_user_inputs_g5; assert_equal("Example pathways", worksheet.user_inputs_g5); end
  def test_user_inputs_b6; assert_equal("Sector", worksheet.user_inputs_b6); end
  def test_user_inputs_c6; assert_equal("Lever", worksheet.user_inputs_c6); end
  def test_user_inputs_d6; assert_equal("Level", worksheet.user_inputs_d6); end
  def test_user_inputs_e6; assert_equal("Limit", worksheet.user_inputs_e6); end
  def test_user_inputs_f6; assert_equal("Description for the user's level choice", worksheet.user_inputs_f6); end
  def test_user_inputs_b7; assert_equal("Population", worksheet.user_inputs_b7); end
  def test_user_inputs_c7; assert_equal("Global population", worksheet.user_inputs_c7); end
  def test_user_inputs_d7; assert_in_delta(1, worksheet.user_inputs_d7, 0.001); end
  def test_user_inputs_e7; assert_in_epsilon(4, worksheet.user_inputs_e7, 0.001); end
  def test_user_inputs_f7; assert_in_delta(0, (worksheet.user_inputs_f7||0), 0.001); end
  def test_user_inputs_c8; assert_equal("Urbanisation and access to electricity", worksheet.user_inputs_c8); end
  def test_user_inputs_d8; assert_in_delta(1, worksheet.user_inputs_d8, 0.001); end
  def test_user_inputs_e8; assert_in_epsilon(3, worksheet.user_inputs_e8, 0.001); end
  def test_user_inputs_f8; assert_in_delta(0, (worksheet.user_inputs_f8||0), 0.001); end
  def test_user_inputs_b9; assert_equal("Transport", worksheet.user_inputs_b9); end
  def test_user_inputs_c9; assert_equal("Passenger distance", worksheet.user_inputs_c9); end
  def test_user_inputs_d9; assert_in_epsilon(3, worksheet.user_inputs_d9, 0.001); end
  def test_user_inputs_e9; assert_in_epsilon(4, worksheet.user_inputs_e9, 0.001); end
  def test_user_inputs_f9; assert_in_delta(0, (worksheet.user_inputs_f9||0), 0.001); end
  def test_user_inputs_c10; assert_equal("Freight demand", worksheet.user_inputs_c10); end
  def test_user_inputs_d10; assert_in_epsilon(3.5, worksheet.user_inputs_d10, 0.001); end
  def test_user_inputs_e10; assert_in_epsilon(4, worksheet.user_inputs_e10, 0.001); end
  def test_user_inputs_f10; assert_in_delta(0, (worksheet.user_inputs_f10||0), 0.001); end
  def test_user_inputs_c11; assert_equal("Passenger and freight mode and occupancy", worksheet.user_inputs_c11); end
  def test_user_inputs_d11; assert_in_epsilon(2, worksheet.user_inputs_d11, 0.001); end
  def test_user_inputs_e11; assert_in_epsilon(4, worksheet.user_inputs_e11, 0.001); end
  def test_user_inputs_f11; assert_in_delta(0, (worksheet.user_inputs_f11||0), 0.001); end
  def test_user_inputs_c12; assert_equal("Passenger and freight efficiency", worksheet.user_inputs_c12); end
  def test_user_inputs_d12; assert_in_epsilon(3, worksheet.user_inputs_d12, 0.001); end
  def test_user_inputs_e12; assert_in_epsilon(4, worksheet.user_inputs_e12, 0.001); end
  def test_user_inputs_f12; assert_in_delta(0, (worksheet.user_inputs_f12||0), 0.001); end
  def test_user_inputs_c13; assert_equal("Electrification of passenger and freight (electricity and hydrogen)", worksheet.user_inputs_c13); end
  def test_user_inputs_d13; assert_in_epsilon(4, worksheet.user_inputs_d13, 0.001); end
  def test_user_inputs_e13; assert_in_epsilon(4, worksheet.user_inputs_e13, 0.001); end
  def test_user_inputs_f13; assert_in_delta(0, (worksheet.user_inputs_f13||0), 0.001); end
  def test_user_inputs_b14; assert_equal("Buildings", worksheet.user_inputs_b14); end
  def test_user_inputs_c14; assert_equal("Building size (m2)", worksheet.user_inputs_c14); end
  def test_user_inputs_d14; assert_in_epsilon(3, worksheet.user_inputs_d14, 0.001); end
  def test_user_inputs_e14; assert_in_epsilon(4, worksheet.user_inputs_e14, 0.001); end
  def test_user_inputs_f14; assert_in_delta(0, (worksheet.user_inputs_f14||0), 0.001); end
  def test_user_inputs_c15; assert_equal("Heating / cooling per m2", worksheet.user_inputs_c15); end
  def test_user_inputs_d15; assert_in_epsilon(2, worksheet.user_inputs_d15, 0.001); end
  def test_user_inputs_e15; assert_in_epsilon(4, worksheet.user_inputs_e15, 0.001); end
  def test_user_inputs_f15; assert_in_delta(0, (worksheet.user_inputs_f15||0), 0.001); end
  def test_user_inputs_c16; assert_equal("Heating / cooling technology ", worksheet.user_inputs_c16); end
  def test_user_inputs_d16; assert_in_epsilon(3, worksheet.user_inputs_d16, 0.001); end
  def test_user_inputs_e16; assert_in_epsilon(4, worksheet.user_inputs_e16, 0.001); end
  def test_user_inputs_f16; assert_in_delta(0, (worksheet.user_inputs_f16||0), 0.001); end
  def test_user_inputs_c17; assert_equal("Lighting, appliances and cooking demand", worksheet.user_inputs_c17); end
  def test_user_inputs_d17; assert_in_epsilon(3, worksheet.user_inputs_d17, 0.001); end
  def test_user_inputs_e17; assert_in_epsilon(4, worksheet.user_inputs_e17, 0.001); end
  def test_user_inputs_f17; assert_in_delta(0, (worksheet.user_inputs_f17||0), 0.001); end
  def test_user_inputs_c18; assert_equal("Lighting, appliances and cooking efficiency", worksheet.user_inputs_c18); end
  def test_user_inputs_d18; assert_in_epsilon(3, worksheet.user_inputs_d18, 0.001); end
  def test_user_inputs_e18; assert_in_epsilon(4, worksheet.user_inputs_e18, 0.001); end
  def test_user_inputs_f18; assert_in_delta(0, (worksheet.user_inputs_f18||0), 0.001); end
  def test_user_inputs_c19; assert_equal("Energy intensity of non-residential buildings", worksheet.user_inputs_c19); end
  def test_user_inputs_d19; assert_in_epsilon(2, worksheet.user_inputs_d19, 0.001); end
  def test_user_inputs_e19; assert_in_epsilon(4, worksheet.user_inputs_e19, 0.001); end
  def test_user_inputs_f19; assert_in_delta(0, (worksheet.user_inputs_f19||0), 0.001); end
  def test_user_inputs_b20; assert_equal("Materials", worksheet.user_inputs_b20); end
  def test_user_inputs_c20; assert_equal("Demand for products", worksheet.user_inputs_c20); end
  def test_user_inputs_d20; assert_in_epsilon(2, worksheet.user_inputs_d20, 0.001); end
  def test_user_inputs_e20; assert_in_epsilon(4, worksheet.user_inputs_e20, 0.001); end
  def test_user_inputs_f20; assert_in_delta(0, (worksheet.user_inputs_f20||0), 0.001); end
  def test_user_inputs_c21; assert_equal("Efficiency of materials production", worksheet.user_inputs_c21); end
  def test_user_inputs_d21; assert_in_epsilon(2, worksheet.user_inputs_d21, 0.001); end
  def test_user_inputs_e21; assert_in_epsilon(4, worksheet.user_inputs_e21, 0.001); end
  def test_user_inputs_f21; assert_in_delta(0, (worksheet.user_inputs_f21||0), 0.001); end
  def test_user_inputs_c22; assert_equal("Carbon intensity of production (excl. CCS)", worksheet.user_inputs_c22); end
  def test_user_inputs_d22; assert_in_epsilon(3, worksheet.user_inputs_d22, 0.001); end
  def test_user_inputs_e22; assert_in_epsilon(4, worksheet.user_inputs_e22, 0.001); end
  def test_user_inputs_f22; assert_in_delta(0, (worksheet.user_inputs_f22||0), 0.001); end
  def test_user_inputs_c23; assert_equal("Carbon Capture & Storage", worksheet.user_inputs_c23); end
  def test_user_inputs_d23; assert_in_epsilon(3, worksheet.user_inputs_d23, 0.001); end
  def test_user_inputs_e23; assert_in_epsilon(4, worksheet.user_inputs_e23, 0.001); end
  def test_user_inputs_f23; assert_in_delta(0, (worksheet.user_inputs_f23||0), 0.001); end
  def test_user_inputs_b24; assert_equal("Electricity", worksheet.user_inputs_b24); end
  def test_user_inputs_c24; assert_equal("Power from solid vs  liquid vs gas hydrocarbons", worksheet.user_inputs_c24); end
  def test_user_inputs_d24; assert_in_epsilon(2, worksheet.user_inputs_d24, 0.001); end
  def test_user_inputs_e24; assert_equal("D", worksheet.user_inputs_e24); end
  def test_user_inputs_f24; assert_in_delta(0, (worksheet.user_inputs_f24||0), 0.001); end
  def test_user_inputs_c25; assert_equal("Technology of powerplant deployed", worksheet.user_inputs_c25); end
  def test_user_inputs_d25; assert_in_epsilon(4, worksheet.user_inputs_d25, 0.001); end
  def test_user_inputs_e25; assert_in_epsilon(4, worksheet.user_inputs_e25, 0.001); end
  def test_user_inputs_f25; assert_in_delta(0, (worksheet.user_inputs_f25||0), 0.001); end
  def test_user_inputs_c26; assert_equal("Power with Carbon Capture Storage (CCS) ", worksheet.user_inputs_c26); end
  def test_user_inputs_d26; assert_in_epsilon(2, worksheet.user_inputs_d26, 0.001); end
  def test_user_inputs_e26; assert_in_epsilon(4, worksheet.user_inputs_e26, 0.001); end
  def test_user_inputs_f26; assert_in_delta(0, (worksheet.user_inputs_f26||0), 0.001); end
  def test_user_inputs_c27; assert_equal("Nuclear power stations", worksheet.user_inputs_c27); end
  def test_user_inputs_e27; assert_in_epsilon(4, worksheet.user_inputs_e27, 0.001); end
  def test_user_inputs_d27; assert_in_epsilon(4, worksheet.user_inputs_d27, 0.001); end
  def test_user_inputs_f27; assert_equal("In 2050 there is 10000 GW of nuclear power, equivalent to 10000 power plants.", worksheet.user_inputs_f27); end
  def test_user_inputs_c28; assert_equal("Wind power", worksheet.user_inputs_c28); end
  def test_user_inputs_d28; assert_in_epsilon(2, worksheet.user_inputs_d28, 0.001); end
  def test_user_inputs_e28; assert_in_epsilon(4, worksheet.user_inputs_e28, 0.001); end
  def test_user_inputs_f28; assert_in_delta(0, (worksheet.user_inputs_f28||0), 0.001); end
  def test_user_inputs_c29; assert_equal("Hydroelectric power", worksheet.user_inputs_c29); end
  def test_user_inputs_d29; assert_in_delta(1, worksheet.user_inputs_d29, 0.001); end
  def test_user_inputs_e29; assert_in_epsilon(4, worksheet.user_inputs_e29, 0.001); end
  def test_user_inputs_f29; assert_in_delta(0, (worksheet.user_inputs_f29||0), 0.001); end
  def test_user_inputs_c30; assert_equal("Marine power", worksheet.user_inputs_c30); end
  def test_user_inputs_d30; assert_in_delta(1, worksheet.user_inputs_d30, 0.001); end
  def test_user_inputs_e30; assert_in_epsilon(4, worksheet.user_inputs_e30, 0.001); end
  def test_user_inputs_f30; assert_in_delta(0, (worksheet.user_inputs_f30||0), 0.001); end
  def test_user_inputs_c31; assert_equal("Solar power", worksheet.user_inputs_c31); end
  def test_user_inputs_d31; assert_in_epsilon(3, worksheet.user_inputs_d31, 0.001); end
  def test_user_inputs_e31; assert_in_epsilon(4, worksheet.user_inputs_e31, 0.001); end
  def test_user_inputs_f31; assert_in_delta(0, (worksheet.user_inputs_f31||0), 0.001); end
  def test_user_inputs_c32; assert_equal("Geothermal power", worksheet.user_inputs_c32); end
  def test_user_inputs_d32; assert_in_delta(1, worksheet.user_inputs_d32, 0.001); end
  def test_user_inputs_e32; assert_in_epsilon(4, worksheet.user_inputs_e32, 0.001); end
  def test_user_inputs_f32; assert_in_delta(0, (worksheet.user_inputs_f32||0), 0.001); end
  def test_user_inputs_c33; assert_equal("Storage, demand shifting & interconnection", worksheet.user_inputs_c33); end
  def test_user_inputs_d33; assert_in_epsilon(3, worksheet.user_inputs_d33, 0.001); end
  def test_user_inputs_e33; assert_in_epsilon(4, worksheet.user_inputs_e33, 0.001); end
  def test_user_inputs_f33; assert_in_delta(0, (worksheet.user_inputs_f33||0), 0.001); end
  def test_user_inputs_b34; assert_equal("Land / food / bioenergy / sequestration", worksheet.user_inputs_b34); end
  def test_user_inputs_c34; assert_equal("Calories consumed", worksheet.user_inputs_c34); end
  def test_user_inputs_d34; assert_in_delta(1, worksheet.user_inputs_d34, 0.001); end
  def test_user_inputs_e34; assert_in_epsilon(4, worksheet.user_inputs_e34, 0.001); end
  def test_user_inputs_f34; assert_in_delta(0, (worksheet.user_inputs_f34||0), 0.001); end
  def test_user_inputs_c35; assert_equal("Type of diet", worksheet.user_inputs_c35); end
  def test_user_inputs_d35; assert_in_delta(1, worksheet.user_inputs_d35, 0.001); end
  def test_user_inputs_e35; assert_in_epsilon(4, worksheet.user_inputs_e35, 0.001); end
  def test_user_inputs_f35; assert_in_delta(0, (worksheet.user_inputs_f35||0), 0.001); end
  def test_user_inputs_c36; assert_equal("Crop yields", worksheet.user_inputs_c36); end
  def test_user_inputs_d36; assert_in_delta(1, worksheet.user_inputs_d36, 0.001); end
  def test_user_inputs_e36; assert_in_epsilon(4, worksheet.user_inputs_e36, 0.001); end
  def test_user_inputs_f36; assert_in_delta(0, (worksheet.user_inputs_f36||0), 0.001); end
  def test_user_inputs_c37; assert_equal("Livestock yields", worksheet.user_inputs_c37); end
  def test_user_inputs_d37; assert_in_delta(1, worksheet.user_inputs_d37, 0.001); end
  def test_user_inputs_e37; assert_in_epsilon(4, worksheet.user_inputs_e37, 0.001); end
  def test_user_inputs_f37; assert_in_delta(0, (worksheet.user_inputs_f37||0), 0.001); end
  def test_user_inputs_c38; assert_equal("Bioenergy yields", worksheet.user_inputs_c38); end
  def test_user_inputs_d38; assert_in_delta(1, worksheet.user_inputs_d38, 0.001); end
  def test_user_inputs_e38; assert_in_epsilon(4, worksheet.user_inputs_e38, 0.001); end
  def test_user_inputs_f38; assert_in_delta(0, (worksheet.user_inputs_f38||0), 0.001); end
  def test_user_inputs_c39; assert_equal("Bioenergy production", worksheet.user_inputs_c39); end
  def test_user_inputs_d39; assert_in_epsilon(3, worksheet.user_inputs_d39, 0.001); end
  def test_user_inputs_e39; assert_in_epsilon(4, worksheet.user_inputs_e39, 0.001); end
  def test_user_inputs_f39; assert_in_delta(0, (worksheet.user_inputs_f39||0), 0.001); end
  def test_user_inputs_c40; assert_equal("Conservation areas", worksheet.user_inputs_c40); end
  def test_user_inputs_d40; assert_in_epsilon(4, worksheet.user_inputs_d40, 0.001); end
  def test_user_inputs_e40; assert_in_epsilon(4, worksheet.user_inputs_e40, 0.001); end
  def test_user_inputs_f40; assert_in_delta(0, (worksheet.user_inputs_f40||0), 0.001); end
  def test_user_inputs_c41; assert_equal("Land multiuse and synergies", worksheet.user_inputs_c41); end
  def test_user_inputs_d41; assert_in_delta(1, worksheet.user_inputs_d41, 0.001); end
  def test_user_inputs_e41; assert_in_epsilon(4, worksheet.user_inputs_e41, 0.001); end
  def test_user_inputs_f41; assert_in_delta(0, (worksheet.user_inputs_f41||0), 0.001); end
  def test_user_inputs_c42; assert_equal("Greenhouse gas removal technologies", worksheet.user_inputs_c42); end
  def test_user_inputs_d42; assert_in_epsilon(3.5, worksheet.user_inputs_d42, 0.001); end
  def test_user_inputs_e42; assert_in_epsilon(4, worksheet.user_inputs_e42, 0.001); end
  def test_user_inputs_f42; assert_in_delta(0, (worksheet.user_inputs_f42||0), 0.001); end
  def test_user_inputs_c43; assert_equal("Waste production and collection", worksheet.user_inputs_c43); end
  def test_user_inputs_d43; assert_in_epsilon(3.5, worksheet.user_inputs_d43, 0.001); end
  def test_user_inputs_e43; assert_in_epsilon(4, worksheet.user_inputs_e43, 0.001); end
  def test_user_inputs_f43; assert_in_delta(0, (worksheet.user_inputs_f43||0), 0.001); end
  def test_user_inputs_b44; assert_equal("Action post 2050", worksheet.user_inputs_b44); end
  def test_user_inputs_c44; assert_equal("Emissions trajectory", worksheet.user_inputs_c44); end
  def test_user_inputs_d44; assert_equal("A", worksheet.user_inputs_d44); end
  def test_user_inputs_e44; assert_equal("C", worksheet.user_inputs_e44); end
  def test_user_inputs_f44; assert_in_delta(0, (worksheet.user_inputs_f44||0), 0.001); end
  def test_user_inputs_b45; assert_equal("Climate uncertainty", worksheet.user_inputs_b45); end
  def test_user_inputs_c45; assert_equal("Atmospheric CO2 fraction", worksheet.user_inputs_c45); end
  def test_user_inputs_d45; assert_in_epsilon(2, worksheet.user_inputs_d45, 0.001); end
  def test_user_inputs_e45; assert_in_epsilon(4, worksheet.user_inputs_e45, 0.001); end
  def test_user_inputs_f45; assert_in_delta(0, (worksheet.user_inputs_f45||0), 0.001); end
  def test_user_inputs_c46; assert_equal("Climate model choice", worksheet.user_inputs_c46); end
  def test_user_inputs_d46; assert_in_delta(1, worksheet.user_inputs_d46, 0.001); end
  def test_user_inputs_e46; assert_equal("C", worksheet.user_inputs_e46); end
  def test_user_inputs_f46; assert_in_delta(0, (worksheet.user_inputs_f46||0), 0.001); end
  def test_outputs_climate_impacts_b2; assert_equal("G", worksheet.outputs_climate_impacts_b2); end
  def test_outputs_climate_impacts_c2; assert_equal("Global", worksheet.outputs_climate_impacts_c2); end
  def test_outputs_climate_impacts_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_climate_impacts_e2); end
  def test_outputs_climate_impacts_b3; assert_equal("Climate impacts", worksheet.outputs_climate_impacts_b3); end
  def test_outputs_climate_impacts_b4; assert_equal("To do", worksheet.outputs_climate_impacts_b4); end
  def test_outputs_emissions_b2; assert_equal("G", worksheet.outputs_emissions_b2); end
  def test_outputs_emissions_c2; assert_equal("Global", worksheet.outputs_emissions_c2); end
  def test_outputs_emissions_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_emissions_e2); end
  def test_outputs_emissions_k2; assert_equal("Note: we need \"emission year sheets\" for each year for this to work in its entirety", worksheet.outputs_emissions_k2); end
  def test_outputs_emissions_b3; assert_equal("Emissions ", worksheet.outputs_emissions_b3); end
  def test_outputs_emissions_k3; assert_equal("Do we need flourinate gases? (SFC, PFC, SF6s)", worksheet.outputs_emissions_k3); end
  def test_outputs_emissions_c5; assert_equal("LEVERS AND LEVELS ", worksheet.outputs_emissions_c5); end
  def test_outputs_emissions_k5; assert_equal("Emissions per person?", worksheet.outputs_emissions_k5); end
  def test_outputs_emissions_c7; assert_equal("Number", worksheet.outputs_emissions_c7); end
  def test_outputs_emissions_d7; assert_equal("Lever", worksheet.outputs_emissions_d7); end
  def test_outputs_emissions_f7; assert_equal("Level", worksheet.outputs_emissions_f7); end
  def test_outputs_emissions_k7; assert_equal("Need assumption on post 2050 emissions profile and historic data", worksheet.outputs_emissions_k7); end
  def test_outputs_emissions_c8; assert_in_delta(1, worksheet.outputs_emissions_c8, 0.001); end
  def test_outputs_emissions_d8; assert_equal("Emissions trajectory", worksheet.outputs_emissions_d8); end
  def test_outputs_emissions_f8; assert_equal("c", worksheet.outputs_emissions_f8); end
  def test_outputs_emissions_c11; assert_equal("DATA FOR LEVELS", worksheet.outputs_emissions_c11); end
  def test_outputs_emissions_c13; assert_equal("Level", worksheet.outputs_emissions_c13); end
  def test_outputs_emissions_c14; assert_equal("A", worksheet.outputs_emissions_c14); end
  def test_outputs_emissions_d14; assert_equal("Trend", worksheet.outputs_emissions_d14); end
  def test_outputs_emissions_c15; assert_equal("B", worksheet.outputs_emissions_c15); end
  def test_outputs_emissions_d15; assert_equal("Flat", worksheet.outputs_emissions_d15); end
  def test_outputs_emissions_c16; assert_equal("C", worksheet.outputs_emissions_c16); end
  def test_outputs_emissions_d16; assert_in_delta(0.5, worksheet.outputs_emissions_d16, 0.001); end
  def test_outputs_emissions_c19; assert_equal("FIXED ASSUMPTIONS", worksheet.outputs_emissions_c19); end
  def test_outputs_emissions_c21; assert_equal("Minimum possible emissions ", worksheet.outputs_emissions_c21); end
  def test_outputs_emissions_d21; assert_in_epsilon(-100, worksheet.outputs_emissions_d21, 0.001); end
  def test_outputs_emissions_g21; assert_equal("To determine", worksheet.outputs_emissions_g21); end
  def test_outputs_emissions_b26; assert_equal("CO2", worksheet.outputs_emissions_b26); end
  def test_outputs_emissions_c26; assert_equal("CARBON DIOXIDE", worksheet.outputs_emissions_c26); end
  def test_outputs_emissions_c28; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c28); end
  def test_outputs_emissions_aj28; assert_equal("%", worksheet.outputs_emissions_aj28); end
  def test_outputs_emissions_h29; assert_equal("Historic actuals", worksheet.outputs_emissions_h29); end
  def test_outputs_emissions_r29; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r29); end
  def test_outputs_emissions_aa29; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa29); end
  def test_outputs_emissions_d30; assert_equal("IPCC Sector", worksheet.outputs_emissions_d30); end
  def test_outputs_emissions_h30; assert_equal("1970", worksheet.outputs_emissions_h30); end
  def test_outputs_emissions_i30; assert_equal("1975", worksheet.outputs_emissions_i30); end
  def test_outputs_emissions_j30; assert_equal("1980", worksheet.outputs_emissions_j30); end
  def test_outputs_emissions_k30; assert_equal("1985", worksheet.outputs_emissions_k30); end
  def test_outputs_emissions_l30; assert_equal("1990", worksheet.outputs_emissions_l30); end
  def test_outputs_emissions_m30; assert_equal("1995", worksheet.outputs_emissions_m30); end
  def test_outputs_emissions_n30; assert_equal("2000", worksheet.outputs_emissions_n30); end
  def test_outputs_emissions_o30; assert_equal("2005", worksheet.outputs_emissions_o30); end
  def test_outputs_emissions_p30; assert_in_epsilon(2010, worksheet.outputs_emissions_p30, 0.001); end
  def test_outputs_emissions_r30; assert_in_epsilon(2011, worksheet.outputs_emissions_r30, 0.001); end
  def test_outputs_emissions_s30; assert_in_epsilon(2015, worksheet.outputs_emissions_s30, 0.001); end
  def test_outputs_emissions_t30; assert_in_epsilon(2020, worksheet.outputs_emissions_t30, 0.001); end
  def test_outputs_emissions_u30; assert_in_epsilon(2025, worksheet.outputs_emissions_u30, 0.001); end
  def test_outputs_emissions_v30; assert_in_epsilon(2030, worksheet.outputs_emissions_v30, 0.001); end
  def test_outputs_emissions_w30; assert_in_epsilon(2035, worksheet.outputs_emissions_w30, 0.001); end
  def test_outputs_emissions_x30; assert_in_epsilon(2040, worksheet.outputs_emissions_x30, 0.001); end
  def test_outputs_emissions_y30; assert_in_epsilon(2045, worksheet.outputs_emissions_y30, 0.001); end
  def test_outputs_emissions_z30; assert_in_epsilon(2050, worksheet.outputs_emissions_z30, 0.001); end
  def test_outputs_emissions_aa30; assert_in_epsilon(2055, worksheet.outputs_emissions_aa30, 0.001); end
  def test_outputs_emissions_ab30; assert_equal("2060", worksheet.outputs_emissions_ab30); end
  def test_outputs_emissions_ac30; assert_in_epsilon(2065, worksheet.outputs_emissions_ac30, 0.001); end
  def test_outputs_emissions_ad30; assert_in_epsilon(2070, worksheet.outputs_emissions_ad30, 0.001); end
  def test_outputs_emissions_ae30; assert_in_epsilon(2075, worksheet.outputs_emissions_ae30, 0.001); end
  def test_outputs_emissions_af30; assert_in_epsilon(2080, worksheet.outputs_emissions_af30, 0.001); end
  def test_outputs_emissions_ag30; assert_in_epsilon(2085, worksheet.outputs_emissions_ag30, 0.001); end
  def test_outputs_emissions_ah30; assert_in_epsilon(2090, worksheet.outputs_emissions_ah30, 0.001); end
  def test_outputs_emissions_ai30; assert_in_epsilon(2095, worksheet.outputs_emissions_ai30, 0.001); end
  def test_outputs_emissions_aj30; assert_in_epsilon(2100, worksheet.outputs_emissions_aj30, 0.001); end
  def test_outputs_emissions_c31; assert_equal("G.1A", worksheet.outputs_emissions_c31); end
  def test_outputs_emissions_d31; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d31); end
  def test_outputs_emissions_h31; assert_equal("n/a", worksheet.outputs_emissions_h31); end
  def test_outputs_emissions_i31; assert_equal("n/a", worksheet.outputs_emissions_i31); end
  def test_outputs_emissions_j31; assert_equal("n/a", worksheet.outputs_emissions_j31); end
  def test_outputs_emissions_k31; assert_equal("n/a", worksheet.outputs_emissions_k31); end
  def test_outputs_emissions_l31; assert_equal("n/a", worksheet.outputs_emissions_l31); end
  def test_outputs_emissions_m31; assert_equal("n/a", worksheet.outputs_emissions_m31); end
  def test_outputs_emissions_n31; assert_equal("n/a", worksheet.outputs_emissions_n31); end
  def test_outputs_emissions_o31; assert_equal("n/a", worksheet.outputs_emissions_o31); end
  def test_outputs_emissions_p31; assert_equal("n/a", worksheet.outputs_emissions_p31); end
  def test_outputs_emissions_r31; assert_equal("n/a", worksheet.outputs_emissions_r31); end
  def test_outputs_emissions_s31; assert_equal("n/a", worksheet.outputs_emissions_s31); end
  def test_outputs_emissions_t31; assert_equal("n/a", worksheet.outputs_emissions_t31); end
  def test_outputs_emissions_u31; assert_equal("n/a", worksheet.outputs_emissions_u31); end
  def test_outputs_emissions_v31; assert_equal("n/a", worksheet.outputs_emissions_v31); end
  def test_outputs_emissions_w31; assert_equal("n/a", worksheet.outputs_emissions_w31); end
  def test_outputs_emissions_x31; assert_equal("n/a", worksheet.outputs_emissions_x31); end
  def test_outputs_emissions_y31; assert_equal("n/a", worksheet.outputs_emissions_y31); end
  def test_outputs_emissions_z31; assert_equal("n/a", worksheet.outputs_emissions_z31); end
  def test_outputs_emissions_aa31; assert_equal("n/a", worksheet.outputs_emissions_aa31); end
  def test_outputs_emissions_ab31; assert_equal("n/a", worksheet.outputs_emissions_ab31); end
  def test_outputs_emissions_ac31; assert_equal("n/a", worksheet.outputs_emissions_ac31); end
  def test_outputs_emissions_ad31; assert_equal("n/a", worksheet.outputs_emissions_ad31); end
  def test_outputs_emissions_ae31; assert_equal("n/a", worksheet.outputs_emissions_ae31); end
  def test_outputs_emissions_af31; assert_equal("n/a", worksheet.outputs_emissions_af31); end
  def test_outputs_emissions_ag31; assert_equal("n/a", worksheet.outputs_emissions_ag31); end
  def test_outputs_emissions_ah31; assert_equal("n/a", worksheet.outputs_emissions_ah31); end
  def test_outputs_emissions_ai31; assert_equal("n/a", worksheet.outputs_emissions_ai31); end
  def test_outputs_emissions_aj31; assert_equal("n/a", worksheet.outputs_emissions_aj31); end
  def test_outputs_emissions_c32; assert_equal("G.1B", worksheet.outputs_emissions_c32); end
  def test_outputs_emissions_d32; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d32); end
  def test_outputs_emissions_h32; assert_equal("n/a", worksheet.outputs_emissions_h32); end
  def test_outputs_emissions_i32; assert_equal("n/a", worksheet.outputs_emissions_i32); end
  def test_outputs_emissions_j32; assert_equal("n/a", worksheet.outputs_emissions_j32); end
  def test_outputs_emissions_k32; assert_equal("n/a", worksheet.outputs_emissions_k32); end
  def test_outputs_emissions_l32; assert_equal("n/a", worksheet.outputs_emissions_l32); end
  def test_outputs_emissions_m32; assert_equal("n/a", worksheet.outputs_emissions_m32); end
  def test_outputs_emissions_n32; assert_equal("n/a", worksheet.outputs_emissions_n32); end
  def test_outputs_emissions_o32; assert_equal("n/a", worksheet.outputs_emissions_o32); end
  def test_outputs_emissions_p32; assert_equal("n/a", worksheet.outputs_emissions_p32); end
  def test_outputs_emissions_r32; assert_equal("n/a", worksheet.outputs_emissions_r32); end
  def test_outputs_emissions_s32; assert_equal("n/a", worksheet.outputs_emissions_s32); end
  def test_outputs_emissions_t32; assert_equal("n/a", worksheet.outputs_emissions_t32); end
  def test_outputs_emissions_u32; assert_equal("n/a", worksheet.outputs_emissions_u32); end
  def test_outputs_emissions_v32; assert_equal("n/a", worksheet.outputs_emissions_v32); end
  def test_outputs_emissions_w32; assert_equal("n/a", worksheet.outputs_emissions_w32); end
  def test_outputs_emissions_x32; assert_equal("n/a", worksheet.outputs_emissions_x32); end
  def test_outputs_emissions_y32; assert_equal("n/a", worksheet.outputs_emissions_y32); end
  def test_outputs_emissions_z32; assert_equal("n/a", worksheet.outputs_emissions_z32); end
  def test_outputs_emissions_aa32; assert_equal("n/a", worksheet.outputs_emissions_aa32); end
  def test_outputs_emissions_ab32; assert_equal("n/a", worksheet.outputs_emissions_ab32); end
  def test_outputs_emissions_ac32; assert_equal("n/a", worksheet.outputs_emissions_ac32); end
  def test_outputs_emissions_ad32; assert_equal("n/a", worksheet.outputs_emissions_ad32); end
  def test_outputs_emissions_ae32; assert_equal("n/a", worksheet.outputs_emissions_ae32); end
  def test_outputs_emissions_af32; assert_equal("n/a", worksheet.outputs_emissions_af32); end
  def test_outputs_emissions_ag32; assert_equal("n/a", worksheet.outputs_emissions_ag32); end
  def test_outputs_emissions_ah32; assert_equal("n/a", worksheet.outputs_emissions_ah32); end
  def test_outputs_emissions_ai32; assert_equal("n/a", worksheet.outputs_emissions_ai32); end
  def test_outputs_emissions_aj32; assert_equal("n/a", worksheet.outputs_emissions_aj32); end
  def test_outputs_emissions_c33; assert_equal("G.2", worksheet.outputs_emissions_c33); end
  def test_outputs_emissions_d33; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d33); end
  def test_outputs_emissions_h33; assert_equal("n/a", worksheet.outputs_emissions_h33); end
  def test_outputs_emissions_i33; assert_equal("n/a", worksheet.outputs_emissions_i33); end
  def test_outputs_emissions_j33; assert_equal("n/a", worksheet.outputs_emissions_j33); end
  def test_outputs_emissions_k33; assert_equal("n/a", worksheet.outputs_emissions_k33); end
  def test_outputs_emissions_l33; assert_equal("n/a", worksheet.outputs_emissions_l33); end
  def test_outputs_emissions_m33; assert_equal("n/a", worksheet.outputs_emissions_m33); end
  def test_outputs_emissions_n33; assert_equal("n/a", worksheet.outputs_emissions_n33); end
  def test_outputs_emissions_o33; assert_equal("n/a", worksheet.outputs_emissions_o33); end
  def test_outputs_emissions_p33; assert_equal("n/a", worksheet.outputs_emissions_p33); end
  def test_outputs_emissions_r33; assert_equal("n/a", worksheet.outputs_emissions_r33); end
  def test_outputs_emissions_s33; assert_equal("n/a", worksheet.outputs_emissions_s33); end
  def test_outputs_emissions_t33; assert_equal("n/a", worksheet.outputs_emissions_t33); end
  def test_outputs_emissions_u33; assert_equal("n/a", worksheet.outputs_emissions_u33); end
  def test_outputs_emissions_v33; assert_equal("n/a", worksheet.outputs_emissions_v33); end
  def test_outputs_emissions_w33; assert_equal("n/a", worksheet.outputs_emissions_w33); end
  def test_outputs_emissions_x33; assert_equal("n/a", worksheet.outputs_emissions_x33); end
  def test_outputs_emissions_y33; assert_equal("n/a", worksheet.outputs_emissions_y33); end
  def test_outputs_emissions_z33; assert_equal("n/a", worksheet.outputs_emissions_z33); end
  def test_outputs_emissions_aa33; assert_equal("n/a", worksheet.outputs_emissions_aa33); end
  def test_outputs_emissions_ab33; assert_equal("n/a", worksheet.outputs_emissions_ab33); end
  def test_outputs_emissions_ac33; assert_equal("n/a", worksheet.outputs_emissions_ac33); end
  def test_outputs_emissions_ad33; assert_equal("n/a", worksheet.outputs_emissions_ad33); end
  def test_outputs_emissions_ae33; assert_equal("n/a", worksheet.outputs_emissions_ae33); end
  def test_outputs_emissions_af33; assert_equal("n/a", worksheet.outputs_emissions_af33); end
  def test_outputs_emissions_ag33; assert_equal("n/a", worksheet.outputs_emissions_ag33); end
  def test_outputs_emissions_ah33; assert_equal("n/a", worksheet.outputs_emissions_ah33); end
  def test_outputs_emissions_ai33; assert_equal("n/a", worksheet.outputs_emissions_ai33); end
  def test_outputs_emissions_aj33; assert_equal("n/a", worksheet.outputs_emissions_aj33); end
  def test_outputs_emissions_c34; assert_equal("G.3", worksheet.outputs_emissions_c34); end
  def test_outputs_emissions_d34; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d34); end
  def test_outputs_emissions_h34; assert_equal("n/a", worksheet.outputs_emissions_h34); end
  def test_outputs_emissions_i34; assert_equal("n/a", worksheet.outputs_emissions_i34); end
  def test_outputs_emissions_j34; assert_equal("n/a", worksheet.outputs_emissions_j34); end
  def test_outputs_emissions_k34; assert_equal("n/a", worksheet.outputs_emissions_k34); end
  def test_outputs_emissions_l34; assert_equal("n/a", worksheet.outputs_emissions_l34); end
  def test_outputs_emissions_m34; assert_equal("n/a", worksheet.outputs_emissions_m34); end
  def test_outputs_emissions_n34; assert_equal("n/a", worksheet.outputs_emissions_n34); end
  def test_outputs_emissions_o34; assert_equal("n/a", worksheet.outputs_emissions_o34); end
  def test_outputs_emissions_p34; assert_equal("n/a", worksheet.outputs_emissions_p34); end
  def test_outputs_emissions_r34; assert_equal("n/a", worksheet.outputs_emissions_r34); end
  def test_outputs_emissions_s34; assert_equal("n/a", worksheet.outputs_emissions_s34); end
  def test_outputs_emissions_t34; assert_equal("n/a", worksheet.outputs_emissions_t34); end
  def test_outputs_emissions_u34; assert_equal("n/a", worksheet.outputs_emissions_u34); end
  def test_outputs_emissions_v34; assert_equal("n/a", worksheet.outputs_emissions_v34); end
  def test_outputs_emissions_w34; assert_equal("n/a", worksheet.outputs_emissions_w34); end
  def test_outputs_emissions_x34; assert_equal("n/a", worksheet.outputs_emissions_x34); end
  def test_outputs_emissions_y34; assert_equal("n/a", worksheet.outputs_emissions_y34); end
  def test_outputs_emissions_z34; assert_equal("n/a", worksheet.outputs_emissions_z34); end
  def test_outputs_emissions_aa34; assert_equal("n/a", worksheet.outputs_emissions_aa34); end
  def test_outputs_emissions_ab34; assert_equal("n/a", worksheet.outputs_emissions_ab34); end
  def test_outputs_emissions_ac34; assert_equal("n/a", worksheet.outputs_emissions_ac34); end
  def test_outputs_emissions_ad34; assert_equal("n/a", worksheet.outputs_emissions_ad34); end
  def test_outputs_emissions_ae34; assert_equal("n/a", worksheet.outputs_emissions_ae34); end
  def test_outputs_emissions_af34; assert_equal("n/a", worksheet.outputs_emissions_af34); end
  def test_outputs_emissions_ag34; assert_equal("n/a", worksheet.outputs_emissions_ag34); end
  def test_outputs_emissions_ah34; assert_equal("n/a", worksheet.outputs_emissions_ah34); end
  def test_outputs_emissions_ai34; assert_equal("n/a", worksheet.outputs_emissions_ai34); end
  def test_outputs_emissions_aj34; assert_equal("n/a", worksheet.outputs_emissions_aj34); end
  def test_outputs_emissions_c35; assert_equal("G.4", worksheet.outputs_emissions_c35); end
  def test_outputs_emissions_d35; assert_equal("Global Agriculture", worksheet.outputs_emissions_d35); end
  def test_outputs_emissions_h35; assert_equal("n/a", worksheet.outputs_emissions_h35); end
  def test_outputs_emissions_i35; assert_equal("n/a", worksheet.outputs_emissions_i35); end
  def test_outputs_emissions_j35; assert_equal("n/a", worksheet.outputs_emissions_j35); end
  def test_outputs_emissions_k35; assert_equal("n/a", worksheet.outputs_emissions_k35); end
  def test_outputs_emissions_l35; assert_equal("n/a", worksheet.outputs_emissions_l35); end
  def test_outputs_emissions_m35; assert_equal("n/a", worksheet.outputs_emissions_m35); end
  def test_outputs_emissions_n35; assert_equal("n/a", worksheet.outputs_emissions_n35); end
  def test_outputs_emissions_o35; assert_equal("n/a", worksheet.outputs_emissions_o35); end
  def test_outputs_emissions_p35; assert_equal("n/a", worksheet.outputs_emissions_p35); end
  def test_outputs_emissions_r35; assert_equal("n/a", worksheet.outputs_emissions_r35); end
  def test_outputs_emissions_s35; assert_equal("n/a", worksheet.outputs_emissions_s35); end
  def test_outputs_emissions_t35; assert_equal("n/a", worksheet.outputs_emissions_t35); end
  def test_outputs_emissions_u35; assert_equal("n/a", worksheet.outputs_emissions_u35); end
  def test_outputs_emissions_v35; assert_equal("n/a", worksheet.outputs_emissions_v35); end
  def test_outputs_emissions_w35; assert_equal("n/a", worksheet.outputs_emissions_w35); end
  def test_outputs_emissions_x35; assert_equal("n/a", worksheet.outputs_emissions_x35); end
  def test_outputs_emissions_y35; assert_equal("n/a", worksheet.outputs_emissions_y35); end
  def test_outputs_emissions_z35; assert_equal("n/a", worksheet.outputs_emissions_z35); end
  def test_outputs_emissions_aa35; assert_equal("n/a", worksheet.outputs_emissions_aa35); end
  def test_outputs_emissions_ab35; assert_equal("n/a", worksheet.outputs_emissions_ab35); end
  def test_outputs_emissions_ac35; assert_equal("n/a", worksheet.outputs_emissions_ac35); end
  def test_outputs_emissions_ad35; assert_equal("n/a", worksheet.outputs_emissions_ad35); end
  def test_outputs_emissions_ae35; assert_equal("n/a", worksheet.outputs_emissions_ae35); end
  def test_outputs_emissions_af35; assert_equal("n/a", worksheet.outputs_emissions_af35); end
  def test_outputs_emissions_ag35; assert_equal("n/a", worksheet.outputs_emissions_ag35); end
  def test_outputs_emissions_ah35; assert_equal("n/a", worksheet.outputs_emissions_ah35); end
  def test_outputs_emissions_ai35; assert_equal("n/a", worksheet.outputs_emissions_ai35); end
  def test_outputs_emissions_aj35; assert_equal("n/a", worksheet.outputs_emissions_aj35); end
  def test_outputs_emissions_c36; assert_equal("G.5", worksheet.outputs_emissions_c36); end
  def test_outputs_emissions_d36; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d36); end
  def test_outputs_emissions_h36; assert_equal("n/a", worksheet.outputs_emissions_h36); end
  def test_outputs_emissions_i36; assert_equal("n/a", worksheet.outputs_emissions_i36); end
  def test_outputs_emissions_j36; assert_equal("n/a", worksheet.outputs_emissions_j36); end
  def test_outputs_emissions_k36; assert_equal("n/a", worksheet.outputs_emissions_k36); end
  def test_outputs_emissions_l36; assert_equal("n/a", worksheet.outputs_emissions_l36); end
  def test_outputs_emissions_m36; assert_equal("n/a", worksheet.outputs_emissions_m36); end
  def test_outputs_emissions_n36; assert_equal("n/a", worksheet.outputs_emissions_n36); end
  def test_outputs_emissions_o36; assert_equal("n/a", worksheet.outputs_emissions_o36); end
  def test_outputs_emissions_p36; assert_equal("n/a", worksheet.outputs_emissions_p36); end
  def test_outputs_emissions_r36; assert_equal("n/a", worksheet.outputs_emissions_r36); end
  def test_outputs_emissions_s36; assert_equal("n/a", worksheet.outputs_emissions_s36); end
  def test_outputs_emissions_t36; assert_equal("n/a", worksheet.outputs_emissions_t36); end
  def test_outputs_emissions_u36; assert_equal("n/a", worksheet.outputs_emissions_u36); end
  def test_outputs_emissions_v36; assert_equal("n/a", worksheet.outputs_emissions_v36); end
  def test_outputs_emissions_w36; assert_equal("n/a", worksheet.outputs_emissions_w36); end
  def test_outputs_emissions_x36; assert_equal("n/a", worksheet.outputs_emissions_x36); end
  def test_outputs_emissions_y36; assert_equal("n/a", worksheet.outputs_emissions_y36); end
  def test_outputs_emissions_z36; assert_equal("n/a", worksheet.outputs_emissions_z36); end
  def test_outputs_emissions_aa36; assert_equal("n/a", worksheet.outputs_emissions_aa36); end
  def test_outputs_emissions_ab36; assert_equal("n/a", worksheet.outputs_emissions_ab36); end
  def test_outputs_emissions_ac36; assert_equal("n/a", worksheet.outputs_emissions_ac36); end
  def test_outputs_emissions_ad36; assert_equal("n/a", worksheet.outputs_emissions_ad36); end
  def test_outputs_emissions_ae36; assert_equal("n/a", worksheet.outputs_emissions_ae36); end
  def test_outputs_emissions_af36; assert_equal("n/a", worksheet.outputs_emissions_af36); end
  def test_outputs_emissions_ag36; assert_equal("n/a", worksheet.outputs_emissions_ag36); end
  def test_outputs_emissions_ah36; assert_equal("n/a", worksheet.outputs_emissions_ah36); end
  def test_outputs_emissions_ai36; assert_equal("n/a", worksheet.outputs_emissions_ai36); end
  def test_outputs_emissions_aj36; assert_equal("n/a", worksheet.outputs_emissions_aj36); end
  def test_outputs_emissions_c37; assert_equal("G.6", worksheet.outputs_emissions_c37); end
  def test_outputs_emissions_d37; assert_equal("Global Waste", worksheet.outputs_emissions_d37); end
  def test_outputs_emissions_h37; assert_equal("n/a", worksheet.outputs_emissions_h37); end
  def test_outputs_emissions_i37; assert_equal("n/a", worksheet.outputs_emissions_i37); end
  def test_outputs_emissions_j37; assert_equal("n/a", worksheet.outputs_emissions_j37); end
  def test_outputs_emissions_k37; assert_equal("n/a", worksheet.outputs_emissions_k37); end
  def test_outputs_emissions_l37; assert_equal("n/a", worksheet.outputs_emissions_l37); end
  def test_outputs_emissions_m37; assert_equal("n/a", worksheet.outputs_emissions_m37); end
  def test_outputs_emissions_n37; assert_equal("n/a", worksheet.outputs_emissions_n37); end
  def test_outputs_emissions_o37; assert_equal("n/a", worksheet.outputs_emissions_o37); end
  def test_outputs_emissions_p37; assert_equal("n/a", worksheet.outputs_emissions_p37); end
  def test_outputs_emissions_r37; assert_equal("n/a", worksheet.outputs_emissions_r37); end
  def test_outputs_emissions_s37; assert_equal("n/a", worksheet.outputs_emissions_s37); end
  def test_outputs_emissions_t37; assert_equal("n/a", worksheet.outputs_emissions_t37); end
  def test_outputs_emissions_u37; assert_equal("n/a", worksheet.outputs_emissions_u37); end
  def test_outputs_emissions_v37; assert_equal("n/a", worksheet.outputs_emissions_v37); end
  def test_outputs_emissions_w37; assert_equal("n/a", worksheet.outputs_emissions_w37); end
  def test_outputs_emissions_x37; assert_equal("n/a", worksheet.outputs_emissions_x37); end
  def test_outputs_emissions_y37; assert_equal("n/a", worksheet.outputs_emissions_y37); end
  def test_outputs_emissions_z37; assert_equal("n/a", worksheet.outputs_emissions_z37); end
  def test_outputs_emissions_aa37; assert_equal("n/a", worksheet.outputs_emissions_aa37); end
  def test_outputs_emissions_ab37; assert_equal("n/a", worksheet.outputs_emissions_ab37); end
  def test_outputs_emissions_ac37; assert_equal("n/a", worksheet.outputs_emissions_ac37); end
  def test_outputs_emissions_ad37; assert_equal("n/a", worksheet.outputs_emissions_ad37); end
  def test_outputs_emissions_ae37; assert_equal("n/a", worksheet.outputs_emissions_ae37); end
  def test_outputs_emissions_af37; assert_equal("n/a", worksheet.outputs_emissions_af37); end
  def test_outputs_emissions_ag37; assert_equal("n/a", worksheet.outputs_emissions_ag37); end
  def test_outputs_emissions_ah37; assert_equal("n/a", worksheet.outputs_emissions_ah37); end
  def test_outputs_emissions_ai37; assert_equal("n/a", worksheet.outputs_emissions_ai37); end
  def test_outputs_emissions_aj37; assert_equal("n/a", worksheet.outputs_emissions_aj37); end
  def test_outputs_emissions_c38; assert_equal("G.7", worksheet.outputs_emissions_c38); end
  def test_outputs_emissions_d38; assert_equal("Global Other", worksheet.outputs_emissions_d38); end
  def test_outputs_emissions_h38; assert_equal("n/a", worksheet.outputs_emissions_h38); end
  def test_outputs_emissions_i38; assert_equal("n/a", worksheet.outputs_emissions_i38); end
  def test_outputs_emissions_j38; assert_equal("n/a", worksheet.outputs_emissions_j38); end
  def test_outputs_emissions_k38; assert_equal("n/a", worksheet.outputs_emissions_k38); end
  def test_outputs_emissions_l38; assert_equal("n/a", worksheet.outputs_emissions_l38); end
  def test_outputs_emissions_m38; assert_equal("n/a", worksheet.outputs_emissions_m38); end
  def test_outputs_emissions_n38; assert_equal("n/a", worksheet.outputs_emissions_n38); end
  def test_outputs_emissions_o38; assert_equal("n/a", worksheet.outputs_emissions_o38); end
  def test_outputs_emissions_p38; assert_equal("n/a", worksheet.outputs_emissions_p38); end
  def test_outputs_emissions_r38; assert_equal("n/a", worksheet.outputs_emissions_r38); end
  def test_outputs_emissions_s38; assert_equal("n/a", worksheet.outputs_emissions_s38); end
  def test_outputs_emissions_t38; assert_equal("n/a", worksheet.outputs_emissions_t38); end
  def test_outputs_emissions_u38; assert_equal("n/a", worksheet.outputs_emissions_u38); end
  def test_outputs_emissions_v38; assert_equal("n/a", worksheet.outputs_emissions_v38); end
  def test_outputs_emissions_w38; assert_equal("n/a", worksheet.outputs_emissions_w38); end
  def test_outputs_emissions_x38; assert_equal("n/a", worksheet.outputs_emissions_x38); end
  def test_outputs_emissions_y38; assert_equal("n/a", worksheet.outputs_emissions_y38); end
  def test_outputs_emissions_z38; assert_equal("n/a", worksheet.outputs_emissions_z38); end
  def test_outputs_emissions_aa38; assert_equal("n/a", worksheet.outputs_emissions_aa38); end
  def test_outputs_emissions_ab38; assert_equal("n/a", worksheet.outputs_emissions_ab38); end
  def test_outputs_emissions_ac38; assert_equal("n/a", worksheet.outputs_emissions_ac38); end
  def test_outputs_emissions_ad38; assert_equal("n/a", worksheet.outputs_emissions_ad38); end
  def test_outputs_emissions_ae38; assert_equal("n/a", worksheet.outputs_emissions_ae38); end
  def test_outputs_emissions_af38; assert_equal("n/a", worksheet.outputs_emissions_af38); end
  def test_outputs_emissions_ag38; assert_equal("n/a", worksheet.outputs_emissions_ag38); end
  def test_outputs_emissions_ah38; assert_equal("n/a", worksheet.outputs_emissions_ah38); end
  def test_outputs_emissions_ai38; assert_equal("n/a", worksheet.outputs_emissions_ai38); end
  def test_outputs_emissions_aj38; assert_equal("n/a", worksheet.outputs_emissions_aj38); end
  def test_outputs_emissions_c39; assert_equal("G.X1", worksheet.outputs_emissions_c39); end
  def test_outputs_emissions_d39; assert_equal("Global Bioenergy credit", worksheet.outputs_emissions_d39); end
  def test_outputs_emissions_h39; assert_equal("n/a", worksheet.outputs_emissions_h39); end
  def test_outputs_emissions_i39; assert_equal("n/a", worksheet.outputs_emissions_i39); end
  def test_outputs_emissions_j39; assert_equal("n/a", worksheet.outputs_emissions_j39); end
  def test_outputs_emissions_k39; assert_equal("n/a", worksheet.outputs_emissions_k39); end
  def test_outputs_emissions_l39; assert_equal("n/a", worksheet.outputs_emissions_l39); end
  def test_outputs_emissions_m39; assert_equal("n/a", worksheet.outputs_emissions_m39); end
  def test_outputs_emissions_n39; assert_equal("n/a", worksheet.outputs_emissions_n39); end
  def test_outputs_emissions_o39; assert_equal("n/a", worksheet.outputs_emissions_o39); end
  def test_outputs_emissions_p39; assert_equal("n/a", worksheet.outputs_emissions_p39); end
  def test_outputs_emissions_r39; assert_equal("n/a", worksheet.outputs_emissions_r39); end
  def test_outputs_emissions_s39; assert_equal("n/a", worksheet.outputs_emissions_s39); end
  def test_outputs_emissions_t39; assert_equal("n/a", worksheet.outputs_emissions_t39); end
  def test_outputs_emissions_u39; assert_equal("n/a", worksheet.outputs_emissions_u39); end
  def test_outputs_emissions_v39; assert_equal("n/a", worksheet.outputs_emissions_v39); end
  def test_outputs_emissions_w39; assert_equal("n/a", worksheet.outputs_emissions_w39); end
  def test_outputs_emissions_x39; assert_equal("n/a", worksheet.outputs_emissions_x39); end
  def test_outputs_emissions_y39; assert_equal("n/a", worksheet.outputs_emissions_y39); end
  def test_outputs_emissions_z39; assert_equal("n/a", worksheet.outputs_emissions_z39); end
  def test_outputs_emissions_aa39; assert_equal("n/a", worksheet.outputs_emissions_aa39); end
  def test_outputs_emissions_ab39; assert_equal("n/a", worksheet.outputs_emissions_ab39); end
  def test_outputs_emissions_ac39; assert_equal("n/a", worksheet.outputs_emissions_ac39); end
  def test_outputs_emissions_ad39; assert_equal("n/a", worksheet.outputs_emissions_ad39); end
  def test_outputs_emissions_ae39; assert_equal("n/a", worksheet.outputs_emissions_ae39); end
  def test_outputs_emissions_af39; assert_equal("n/a", worksheet.outputs_emissions_af39); end
  def test_outputs_emissions_ag39; assert_equal("n/a", worksheet.outputs_emissions_ag39); end
  def test_outputs_emissions_ah39; assert_equal("n/a", worksheet.outputs_emissions_ah39); end
  def test_outputs_emissions_ai39; assert_equal("n/a", worksheet.outputs_emissions_ai39); end
  def test_outputs_emissions_aj39; assert_equal("n/a", worksheet.outputs_emissions_aj39); end
  def test_outputs_emissions_c40; assert_equal("G.X2", worksheet.outputs_emissions_c40); end
  def test_outputs_emissions_d40; assert_equal("Global Carbon capture", worksheet.outputs_emissions_d40); end
  def test_outputs_emissions_h40; assert_equal("n/a", worksheet.outputs_emissions_h40); end
  def test_outputs_emissions_i40; assert_equal("n/a", worksheet.outputs_emissions_i40); end
  def test_outputs_emissions_j40; assert_equal("n/a", worksheet.outputs_emissions_j40); end
  def test_outputs_emissions_k40; assert_equal("n/a", worksheet.outputs_emissions_k40); end
  def test_outputs_emissions_l40; assert_equal("n/a", worksheet.outputs_emissions_l40); end
  def test_outputs_emissions_m40; assert_equal("n/a", worksheet.outputs_emissions_m40); end
  def test_outputs_emissions_n40; assert_equal("n/a", worksheet.outputs_emissions_n40); end
  def test_outputs_emissions_o40; assert_equal("n/a", worksheet.outputs_emissions_o40); end
  def test_outputs_emissions_p40; assert_equal("n/a", worksheet.outputs_emissions_p40); end
  def test_outputs_emissions_r40; assert_equal("n/a", worksheet.outputs_emissions_r40); end
  def test_outputs_emissions_s40; assert_equal("n/a", worksheet.outputs_emissions_s40); end
  def test_outputs_emissions_t40; assert_equal("n/a", worksheet.outputs_emissions_t40); end
  def test_outputs_emissions_u40; assert_equal("n/a", worksheet.outputs_emissions_u40); end
  def test_outputs_emissions_v40; assert_equal("n/a", worksheet.outputs_emissions_v40); end
  def test_outputs_emissions_w40; assert_equal("n/a", worksheet.outputs_emissions_w40); end
  def test_outputs_emissions_x40; assert_equal("n/a", worksheet.outputs_emissions_x40); end
  def test_outputs_emissions_y40; assert_equal("n/a", worksheet.outputs_emissions_y40); end
  def test_outputs_emissions_z40; assert_equal("n/a", worksheet.outputs_emissions_z40); end
  def test_outputs_emissions_aa40; assert_equal("n/a", worksheet.outputs_emissions_aa40); end
  def test_outputs_emissions_ab40; assert_equal("n/a", worksheet.outputs_emissions_ab40); end
  def test_outputs_emissions_ac40; assert_equal("n/a", worksheet.outputs_emissions_ac40); end
  def test_outputs_emissions_ad40; assert_equal("n/a", worksheet.outputs_emissions_ad40); end
  def test_outputs_emissions_ae40; assert_equal("n/a", worksheet.outputs_emissions_ae40); end
  def test_outputs_emissions_af40; assert_equal("n/a", worksheet.outputs_emissions_af40); end
  def test_outputs_emissions_ag40; assert_equal("n/a", worksheet.outputs_emissions_ag40); end
  def test_outputs_emissions_ah40; assert_equal("n/a", worksheet.outputs_emissions_ah40); end
  def test_outputs_emissions_ai40; assert_equal("n/a", worksheet.outputs_emissions_ai40); end
  def test_outputs_emissions_aj40; assert_equal("n/a", worksheet.outputs_emissions_aj40); end
  def test_outputs_emissions_d41; assert_equal("Total", worksheet.outputs_emissions_d41); end
  def test_outputs_emissions_c45; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c45); end
  def test_outputs_emissions_h46; assert_equal("Historic actuals", worksheet.outputs_emissions_h46); end
  def test_outputs_emissions_r46; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r46); end
  def test_outputs_emissions_aa46; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa46); end
  def test_outputs_emissions_d47; assert_equal("IPCC Sector", worksheet.outputs_emissions_d47); end
  def test_outputs_emissions_h47; assert_equal("1970", worksheet.outputs_emissions_h47); end
  def test_outputs_emissions_i47; assert_equal("1975", worksheet.outputs_emissions_i47); end
  def test_outputs_emissions_j47; assert_equal("1980", worksheet.outputs_emissions_j47); end
  def test_outputs_emissions_k47; assert_equal("1985", worksheet.outputs_emissions_k47); end
  def test_outputs_emissions_l47; assert_equal("1990", worksheet.outputs_emissions_l47); end
  def test_outputs_emissions_m47; assert_equal("1995", worksheet.outputs_emissions_m47); end
  def test_outputs_emissions_n47; assert_equal("2000", worksheet.outputs_emissions_n47); end
  def test_outputs_emissions_o47; assert_equal("2005", worksheet.outputs_emissions_o47); end
  def test_outputs_emissions_p47; assert_in_epsilon(2010, worksheet.outputs_emissions_p47, 0.001); end
  def test_outputs_emissions_r47; assert_in_epsilon(2011, worksheet.outputs_emissions_r47, 0.001); end
  def test_outputs_emissions_s47; assert_in_epsilon(2015, worksheet.outputs_emissions_s47, 0.001); end
  def test_outputs_emissions_t47; assert_in_epsilon(2020, worksheet.outputs_emissions_t47, 0.001); end
  def test_outputs_emissions_u47; assert_in_epsilon(2025, worksheet.outputs_emissions_u47, 0.001); end
  def test_outputs_emissions_v47; assert_in_epsilon(2030, worksheet.outputs_emissions_v47, 0.001); end
  def test_outputs_emissions_w47; assert_in_epsilon(2035, worksheet.outputs_emissions_w47, 0.001); end
  def test_outputs_emissions_x47; assert_in_epsilon(2040, worksheet.outputs_emissions_x47, 0.001); end
  def test_outputs_emissions_y47; assert_in_epsilon(2045, worksheet.outputs_emissions_y47, 0.001); end
  def test_outputs_emissions_z47; assert_in_epsilon(2050, worksheet.outputs_emissions_z47, 0.001); end
  def test_outputs_emissions_aa47; assert_in_epsilon(2055, worksheet.outputs_emissions_aa47, 0.001); end
  def test_outputs_emissions_ab47; assert_in_epsilon(2060, worksheet.outputs_emissions_ab47, 0.001); end
  def test_outputs_emissions_ac47; assert_in_epsilon(2065, worksheet.outputs_emissions_ac47, 0.001); end
  def test_outputs_emissions_ad47; assert_in_epsilon(2070, worksheet.outputs_emissions_ad47, 0.001); end
  def test_outputs_emissions_ae47; assert_in_epsilon(2075, worksheet.outputs_emissions_ae47, 0.001); end
  def test_outputs_emissions_af47; assert_in_epsilon(2080, worksheet.outputs_emissions_af47, 0.001); end
  def test_outputs_emissions_ag47; assert_in_epsilon(2085, worksheet.outputs_emissions_ag47, 0.001); end
  def test_outputs_emissions_ah47; assert_in_epsilon(2090, worksheet.outputs_emissions_ah47, 0.001); end
  def test_outputs_emissions_ai47; assert_in_epsilon(2095, worksheet.outputs_emissions_ai47, 0.001); end
  def test_outputs_emissions_aj47; assert_in_epsilon(2100, worksheet.outputs_emissions_aj47, 0.001); end
  def test_outputs_emissions_c48; assert_equal("G.1A", worksheet.outputs_emissions_c48); end
  def test_outputs_emissions_d48; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d48); end
  def test_outputs_emissions_s48; assert_in_epsilon(60016.17528207385, worksheet.outputs_emissions_s48, 0.001); end
  def test_outputs_emissions_c49; assert_equal("G.1B", worksheet.outputs_emissions_c49); end
  def test_outputs_emissions_d49; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d49); end
  def test_outputs_emissions_s49; assert_in_delta(0, (worksheet.outputs_emissions_s49||0), 0.001); end
  def test_outputs_emissions_c50; assert_equal("G.2", worksheet.outputs_emissions_c50); end
  def test_outputs_emissions_d50; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d50); end
  def test_outputs_emissions_s50; assert_in_delta(0, (worksheet.outputs_emissions_s50||0), 0.001); end
  def test_outputs_emissions_c51; assert_equal("G.3", worksheet.outputs_emissions_c51); end
  def test_outputs_emissions_d51; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d51); end
  def test_outputs_emissions_s51; assert_in_delta(0, (worksheet.outputs_emissions_s51||0), 0.001); end
  def test_outputs_emissions_c52; assert_equal("G.4", worksheet.outputs_emissions_c52); end
  def test_outputs_emissions_d52; assert_equal("Global Agriculture", worksheet.outputs_emissions_d52); end
  def test_outputs_emissions_s52; assert_in_delta(0, (worksheet.outputs_emissions_s52||0), 0.001); end
  def test_outputs_emissions_c53; assert_equal("G.5", worksheet.outputs_emissions_c53); end
  def test_outputs_emissions_d53; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d53); end
  def test_outputs_emissions_s53; assert_in_delta(0, (worksheet.outputs_emissions_s53||0), 0.001); end
  def test_outputs_emissions_c54; assert_equal("G.6", worksheet.outputs_emissions_c54); end
  def test_outputs_emissions_d54; assert_equal("Global Waste", worksheet.outputs_emissions_d54); end
  def test_outputs_emissions_s54; assert_in_delta(0, (worksheet.outputs_emissions_s54||0), 0.001); end
  def test_outputs_emissions_c55; assert_equal("G.7", worksheet.outputs_emissions_c55); end
  def test_outputs_emissions_d55; assert_equal("Global Other", worksheet.outputs_emissions_d55); end
  def test_outputs_emissions_s55; assert_in_delta(0, (worksheet.outputs_emissions_s55||0), 0.001); end
  def test_outputs_emissions_c56; assert_equal("G.X1", worksheet.outputs_emissions_c56); end
  def test_outputs_emissions_d56; assert_equal("Global Bioenergy credit", worksheet.outputs_emissions_d56); end
  def test_outputs_emissions_s56; assert_in_delta(0, (worksheet.outputs_emissions_s56||0), 0.001); end
  def test_outputs_emissions_c57; assert_equal("G.X2", worksheet.outputs_emissions_c57); end
  def test_outputs_emissions_d57; assert_equal("Global Carbon capture", worksheet.outputs_emissions_d57); end
  def test_outputs_emissions_s57; assert_in_delta(0, (worksheet.outputs_emissions_s57||0), 0.001); end
  def test_outputs_emissions_d58; assert_equal("Total", worksheet.outputs_emissions_d58); end
  def test_outputs_emissions_h58; assert_in_delta(0, (worksheet.outputs_emissions_h58||0), 0.001); end
  def test_outputs_emissions_i58; assert_in_delta(0, (worksheet.outputs_emissions_i58||0), 0.001); end
  def test_outputs_emissions_j58; assert_in_delta(0, (worksheet.outputs_emissions_j58||0), 0.001); end
  def test_outputs_emissions_k58; assert_in_delta(0, (worksheet.outputs_emissions_k58||0), 0.001); end
  def test_outputs_emissions_l58; assert_in_delta(0, (worksheet.outputs_emissions_l58||0), 0.001); end
  def test_outputs_emissions_m58; assert_in_delta(0, (worksheet.outputs_emissions_m58||0), 0.001); end
  def test_outputs_emissions_n58; assert_in_delta(0, (worksheet.outputs_emissions_n58||0), 0.001); end
  def test_outputs_emissions_o58; assert_in_delta(0, (worksheet.outputs_emissions_o58||0), 0.001); end
  def test_outputs_emissions_p58; assert_in_delta(0, (worksheet.outputs_emissions_p58||0), 0.001); end
  def test_outputs_emissions_r58; assert_in_delta(0, (worksheet.outputs_emissions_r58||0), 0.001); end
  def test_outputs_emissions_s58; assert_in_epsilon(60016.17528207385, worksheet.outputs_emissions_s58, 0.001); end
  def test_outputs_emissions_t58; assert_in_delta(0, (worksheet.outputs_emissions_t58||0), 0.001); end
  def test_outputs_emissions_u58; assert_in_delta(0, (worksheet.outputs_emissions_u58||0), 0.001); end
  def test_outputs_emissions_v58; assert_in_delta(0, (worksheet.outputs_emissions_v58||0), 0.001); end
  def test_outputs_emissions_w58; assert_in_delta(0, (worksheet.outputs_emissions_w58||0), 0.001); end
  def test_outputs_emissions_x58; assert_in_delta(0, (worksheet.outputs_emissions_x58||0), 0.001); end
  def test_outputs_emissions_y58; assert_in_delta(0, (worksheet.outputs_emissions_y58||0), 0.001); end
  def test_outputs_emissions_z58; assert_in_delta(0, (worksheet.outputs_emissions_z58||0), 0.001); end
  def test_outputs_emissions_aa58; assert_in_delta(0, (worksheet.outputs_emissions_aa58||0), 0.001); end
  def test_outputs_emissions_ab58; assert_in_delta(0, (worksheet.outputs_emissions_ab58||0), 0.001); end
  def test_outputs_emissions_ac58; assert_in_delta(0, (worksheet.outputs_emissions_ac58||0), 0.001); end
  def test_outputs_emissions_ad58; assert_in_delta(0, (worksheet.outputs_emissions_ad58||0), 0.001); end
  def test_outputs_emissions_ae58; assert_in_delta(0, (worksheet.outputs_emissions_ae58||0), 0.001); end
  def test_outputs_emissions_af58; assert_in_delta(0, (worksheet.outputs_emissions_af58||0), 0.001); end
  def test_outputs_emissions_ag58; assert_in_delta(0, (worksheet.outputs_emissions_ag58||0), 0.001); end
  def test_outputs_emissions_ah58; assert_in_delta(0, (worksheet.outputs_emissions_ah58||0), 0.001); end
  def test_outputs_emissions_ai58; assert_in_delta(0, (worksheet.outputs_emissions_ai58||0), 0.001); end
  def test_outputs_emissions_aj58; assert_in_delta(0, (worksheet.outputs_emissions_aj58||0), 0.001); end
  def test_outputs_emissions_d59; assert_equal("Emissions in the time period (up to and including year above)", worksheet.outputs_emissions_d59); end
  def test_outputs_emissions_d60; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d60); end
  def test_outputs_emissions_c63; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c63); end
  def test_outputs_emissions_h64; assert_equal("Historic actuals", worksheet.outputs_emissions_h64); end
  def test_outputs_emissions_r64; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r64); end
  def test_outputs_emissions_aa64; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa64); end
  def test_outputs_emissions_c65; assert_equal("Emissions by sector", worksheet.outputs_emissions_c65); end
  def test_outputs_emissions_d65; assert_equal("Calculator Sector", worksheet.outputs_emissions_d65); end
  def test_outputs_emissions_h65; assert_equal("1970", worksheet.outputs_emissions_h65); end
  def test_outputs_emissions_i65; assert_equal("1975", worksheet.outputs_emissions_i65); end
  def test_outputs_emissions_j65; assert_equal("1980", worksheet.outputs_emissions_j65); end
  def test_outputs_emissions_k65; assert_equal("1985", worksheet.outputs_emissions_k65); end
  def test_outputs_emissions_l65; assert_equal("1990", worksheet.outputs_emissions_l65); end
  def test_outputs_emissions_m65; assert_equal("1995", worksheet.outputs_emissions_m65); end
  def test_outputs_emissions_n65; assert_equal("2000", worksheet.outputs_emissions_n65); end
  def test_outputs_emissions_o65; assert_equal("2005", worksheet.outputs_emissions_o65); end
  def test_outputs_emissions_p65; assert_in_epsilon(2010, worksheet.outputs_emissions_p65, 0.001); end
  def test_outputs_emissions_r65; assert_in_epsilon(2011, worksheet.outputs_emissions_r65, 0.001); end
  def test_outputs_emissions_s65; assert_in_epsilon(2015, worksheet.outputs_emissions_s65, 0.001); end
  def test_outputs_emissions_t65; assert_in_epsilon(2020, worksheet.outputs_emissions_t65, 0.001); end
  def test_outputs_emissions_u65; assert_in_epsilon(2025, worksheet.outputs_emissions_u65, 0.001); end
  def test_outputs_emissions_v65; assert_in_epsilon(2030, worksheet.outputs_emissions_v65, 0.001); end
  def test_outputs_emissions_w65; assert_in_epsilon(2035, worksheet.outputs_emissions_w65, 0.001); end
  def test_outputs_emissions_x65; assert_in_epsilon(2040, worksheet.outputs_emissions_x65, 0.001); end
  def test_outputs_emissions_y65; assert_in_epsilon(2045, worksheet.outputs_emissions_y65, 0.001); end
  def test_outputs_emissions_z65; assert_in_epsilon(2050, worksheet.outputs_emissions_z65, 0.001); end
  def test_outputs_emissions_aa65; assert_in_epsilon(2055, worksheet.outputs_emissions_aa65, 0.001); end
  def test_outputs_emissions_ab65; assert_in_epsilon(2060, worksheet.outputs_emissions_ab65, 0.001); end
  def test_outputs_emissions_ac65; assert_in_epsilon(2065, worksheet.outputs_emissions_ac65, 0.001); end
  def test_outputs_emissions_ad65; assert_in_epsilon(2070, worksheet.outputs_emissions_ad65, 0.001); end
  def test_outputs_emissions_ae65; assert_in_epsilon(2075, worksheet.outputs_emissions_ae65, 0.001); end
  def test_outputs_emissions_af65; assert_in_epsilon(2080, worksheet.outputs_emissions_af65, 0.001); end
  def test_outputs_emissions_ag65; assert_in_epsilon(2085, worksheet.outputs_emissions_ag65, 0.001); end
  def test_outputs_emissions_ah65; assert_in_epsilon(2090, worksheet.outputs_emissions_ah65, 0.001); end
  def test_outputs_emissions_ai65; assert_in_epsilon(2095, worksheet.outputs_emissions_ai65, 0.001); end
  def test_outputs_emissions_aj65; assert_in_epsilon(2100, worksheet.outputs_emissions_aj65, 0.001); end
  def test_outputs_emissions_c66; assert_equal("G.10", worksheet.outputs_emissions_c66); end
  def test_outputs_emissions_d66; assert_equal("Global Transport", worksheet.outputs_emissions_d66); end
  def test_outputs_emissions_s66; assert_in_delta(0, (worksheet.outputs_emissions_s66||0), 0.001); end
  def test_outputs_emissions_c67; assert_equal("G.20", worksheet.outputs_emissions_c67); end
  def test_outputs_emissions_d67; assert_equal("Global Buildings", worksheet.outputs_emissions_d67); end
  def test_outputs_emissions_s67; assert_in_delta(0, (worksheet.outputs_emissions_s67||0), 0.001); end
  def test_outputs_emissions_c68; assert_equal("G.30", worksheet.outputs_emissions_c68); end
  def test_outputs_emissions_d68; assert_equal("Global Materials", worksheet.outputs_emissions_d68); end
  def test_outputs_emissions_s68; assert_in_delta(0, (worksheet.outputs_emissions_s68||0), 0.001); end
  def test_outputs_emissions_c69; assert_equal("G.40", worksheet.outputs_emissions_c69); end
  def test_outputs_emissions_d69; assert_equal("Global Electricity Generation", worksheet.outputs_emissions_d69); end
  def test_outputs_emissions_s69; assert_in_epsilon(60016.17528207385, worksheet.outputs_emissions_s69, 0.001); end
  def test_outputs_emissions_c70; assert_equal("G.50", worksheet.outputs_emissions_c70); end
  def test_outputs_emissions_d70; assert_equal("Global Synthetic Fuel ", worksheet.outputs_emissions_d70); end
  def test_outputs_emissions_s70; assert_in_delta(0, (worksheet.outputs_emissions_s70||0), 0.001); end
  def test_outputs_emissions_c71; assert_equal("G.60", worksheet.outputs_emissions_c71); end
  def test_outputs_emissions_d71; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d71); end
  def test_outputs_emissions_s71; assert_in_delta(0, (worksheet.outputs_emissions_s71||0), 0.001); end
  def test_outputs_emissions_d72; assert_equal("Total", worksheet.outputs_emissions_d72); end
  def test_outputs_emissions_h72; assert_in_delta(0, (worksheet.outputs_emissions_h72||0), 0.001); end
  def test_outputs_emissions_i72; assert_in_delta(0, (worksheet.outputs_emissions_i72||0), 0.001); end
  def test_outputs_emissions_j72; assert_in_delta(0, (worksheet.outputs_emissions_j72||0), 0.001); end
  def test_outputs_emissions_k72; assert_in_delta(0, (worksheet.outputs_emissions_k72||0), 0.001); end
  def test_outputs_emissions_l72; assert_in_delta(0, (worksheet.outputs_emissions_l72||0), 0.001); end
  def test_outputs_emissions_m72; assert_in_delta(0, (worksheet.outputs_emissions_m72||0), 0.001); end
  def test_outputs_emissions_n72; assert_in_delta(0, (worksheet.outputs_emissions_n72||0), 0.001); end
  def test_outputs_emissions_o72; assert_in_delta(0, (worksheet.outputs_emissions_o72||0), 0.001); end
  def test_outputs_emissions_p72; assert_in_delta(0, (worksheet.outputs_emissions_p72||0), 0.001); end
  def test_outputs_emissions_r72; assert_in_delta(0, (worksheet.outputs_emissions_r72||0), 0.001); end
  def test_outputs_emissions_s72; assert_in_epsilon(60016.17528207385, worksheet.outputs_emissions_s72, 0.001); end
  def test_outputs_emissions_t72; assert_in_delta(0, (worksheet.outputs_emissions_t72||0), 0.001); end
  def test_outputs_emissions_u72; assert_in_delta(0, (worksheet.outputs_emissions_u72||0), 0.001); end
  def test_outputs_emissions_v72; assert_in_delta(0, (worksheet.outputs_emissions_v72||0), 0.001); end
  def test_outputs_emissions_w72; assert_in_delta(0, (worksheet.outputs_emissions_w72||0), 0.001); end
  def test_outputs_emissions_x72; assert_in_delta(0, (worksheet.outputs_emissions_x72||0), 0.001); end
  def test_outputs_emissions_y72; assert_in_delta(0, (worksheet.outputs_emissions_y72||0), 0.001); end
  def test_outputs_emissions_z72; assert_in_delta(0, (worksheet.outputs_emissions_z72||0), 0.001); end
  def test_outputs_emissions_aa72; assert_in_delta(0, (worksheet.outputs_emissions_aa72||0), 0.001); end
  def test_outputs_emissions_ab72; assert_in_delta(0, (worksheet.outputs_emissions_ab72||0), 0.001); end
  def test_outputs_emissions_ac72; assert_in_delta(0, (worksheet.outputs_emissions_ac72||0), 0.001); end
  def test_outputs_emissions_ad72; assert_in_delta(0, (worksheet.outputs_emissions_ad72||0), 0.001); end
  def test_outputs_emissions_ae72; assert_in_delta(0, (worksheet.outputs_emissions_ae72||0), 0.001); end
  def test_outputs_emissions_af72; assert_in_delta(0, (worksheet.outputs_emissions_af72||0), 0.001); end
  def test_outputs_emissions_ag72; assert_in_delta(0, (worksheet.outputs_emissions_ag72||0), 0.001); end
  def test_outputs_emissions_ah72; assert_in_delta(0, (worksheet.outputs_emissions_ah72||0), 0.001); end
  def test_outputs_emissions_ai72; assert_in_delta(0, (worksheet.outputs_emissions_ai72||0), 0.001); end
  def test_outputs_emissions_aj72; assert_in_delta(0, (worksheet.outputs_emissions_aj72||0), 0.001); end
  def test_outputs_emissions_d73; assert_equal("Emissions in the time period (up to and including year above)", worksheet.outputs_emissions_d73); end
  def test_outputs_emissions_d74; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d74); end
  def test_outputs_emissions_c77; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c77); end
  def test_outputs_emissions_h78; assert_equal("Historic actuals", worksheet.outputs_emissions_h78); end
  def test_outputs_emissions_r78; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r78); end
  def test_outputs_emissions_aa78; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa78); end
  def test_outputs_emissions_c79; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c79); end
  def test_outputs_emissions_h79; assert_equal("1970", worksheet.outputs_emissions_h79); end
  def test_outputs_emissions_i79; assert_equal("1975", worksheet.outputs_emissions_i79); end
  def test_outputs_emissions_j79; assert_equal("1980", worksheet.outputs_emissions_j79); end
  def test_outputs_emissions_k79; assert_equal("1985", worksheet.outputs_emissions_k79); end
  def test_outputs_emissions_l79; assert_equal("1990", worksheet.outputs_emissions_l79); end
  def test_outputs_emissions_m79; assert_equal("1995", worksheet.outputs_emissions_m79); end
  def test_outputs_emissions_n79; assert_equal("2000", worksheet.outputs_emissions_n79); end
  def test_outputs_emissions_o79; assert_equal("2005", worksheet.outputs_emissions_o79); end
  def test_outputs_emissions_p79; assert_in_epsilon(2010, worksheet.outputs_emissions_p79, 0.001); end
  def test_outputs_emissions_r79; assert_in_epsilon(2011, worksheet.outputs_emissions_r79, 0.001); end
  def test_outputs_emissions_s79; assert_in_epsilon(2015, worksheet.outputs_emissions_s79, 0.001); end
  def test_outputs_emissions_t79; assert_in_epsilon(2020, worksheet.outputs_emissions_t79, 0.001); end
  def test_outputs_emissions_u79; assert_in_epsilon(2025, worksheet.outputs_emissions_u79, 0.001); end
  def test_outputs_emissions_v79; assert_in_epsilon(2030, worksheet.outputs_emissions_v79, 0.001); end
  def test_outputs_emissions_w79; assert_in_epsilon(2035, worksheet.outputs_emissions_w79, 0.001); end
  def test_outputs_emissions_x79; assert_in_epsilon(2040, worksheet.outputs_emissions_x79, 0.001); end
  def test_outputs_emissions_y79; assert_in_epsilon(2045, worksheet.outputs_emissions_y79, 0.001); end
  def test_outputs_emissions_z79; assert_in_epsilon(2050, worksheet.outputs_emissions_z79, 0.001); end
  def test_outputs_emissions_aa79; assert_in_epsilon(2055, worksheet.outputs_emissions_aa79, 0.001); end
  def test_outputs_emissions_ab79; assert_in_epsilon(2060, worksheet.outputs_emissions_ab79, 0.001); end
  def test_outputs_emissions_ac79; assert_in_epsilon(2065, worksheet.outputs_emissions_ac79, 0.001); end
  def test_outputs_emissions_ad79; assert_in_epsilon(2070, worksheet.outputs_emissions_ad79, 0.001); end
  def test_outputs_emissions_ae79; assert_in_epsilon(2075, worksheet.outputs_emissions_ae79, 0.001); end
  def test_outputs_emissions_af79; assert_in_epsilon(2080, worksheet.outputs_emissions_af79, 0.001); end
  def test_outputs_emissions_ag79; assert_in_epsilon(2085, worksheet.outputs_emissions_ag79, 0.001); end
  def test_outputs_emissions_ah79; assert_in_epsilon(2090, worksheet.outputs_emissions_ah79, 0.001); end
  def test_outputs_emissions_ai79; assert_in_epsilon(2095, worksheet.outputs_emissions_ai79, 0.001); end
  def test_outputs_emissions_aj79; assert_in_epsilon(2100, worksheet.outputs_emissions_aj79, 0.001); end
  def test_outputs_emissions_c80; assert_equal("G.efficient.solid.elec", worksheet.outputs_emissions_c80); end
  def test_outputs_emissions_d80; assert_equal(:na, worksheet.outputs_emissions_d80); end
  def test_outputs_emissions_s80; assert_equal(:na, worksheet.outputs_emissions_s80); end
  def test_outputs_emissions_c81; assert_equal("G.inefficient.solid.elec", worksheet.outputs_emissions_c81); end
  def test_outputs_emissions_d81; assert_equal(:na, worksheet.outputs_emissions_d81); end
  def test_outputs_emissions_s81; assert_equal(:na, worksheet.outputs_emissions_s81); end
  def test_outputs_emissions_c82; assert_equal("G.efficient.liquid.elec", worksheet.outputs_emissions_c82); end
  def test_outputs_emissions_d82; assert_equal(:na, worksheet.outputs_emissions_d82); end
  def test_outputs_emissions_s82; assert_equal(:na, worksheet.outputs_emissions_s82); end
  def test_outputs_emissions_c83; assert_equal("G.inefficient.liquid.elec", worksheet.outputs_emissions_c83); end
  def test_outputs_emissions_d83; assert_equal(:na, worksheet.outputs_emissions_d83); end
  def test_outputs_emissions_s83; assert_equal(:na, worksheet.outputs_emissions_s83); end
  def test_outputs_emissions_c84; assert_equal("G.efficient.gas.elec", worksheet.outputs_emissions_c84); end
  def test_outputs_emissions_d84; assert_equal(:na, worksheet.outputs_emissions_d84); end
  def test_outputs_emissions_s84; assert_equal(:na, worksheet.outputs_emissions_s84); end
  def test_outputs_emissions_c85; assert_equal("G.inefficient.gas.elec", worksheet.outputs_emissions_c85); end
  def test_outputs_emissions_d85; assert_equal(:na, worksheet.outputs_emissions_d85); end
  def test_outputs_emissions_s85; assert_equal(:na, worksheet.outputs_emissions_s85); end
  def test_outputs_emissions_c86; assert_equal("G.CCS.soild.elec", worksheet.outputs_emissions_c86); end
  def test_outputs_emissions_d86; assert_equal(:na, worksheet.outputs_emissions_d86); end
  def test_outputs_emissions_s86; assert_equal(:na, worksheet.outputs_emissions_s86); end
  def test_outputs_emissions_c87; assert_equal("G.CCS.liquid.elec", worksheet.outputs_emissions_c87); end
  def test_outputs_emissions_d87; assert_equal(:na, worksheet.outputs_emissions_d87); end
  def test_outputs_emissions_s87; assert_equal(:na, worksheet.outputs_emissions_s87); end
  def test_outputs_emissions_c88; assert_equal("G.CCS.gas.elec", worksheet.outputs_emissions_c88); end
  def test_outputs_emissions_d88; assert_equal(:na, worksheet.outputs_emissions_d88); end
  def test_outputs_emissions_s88; assert_equal(:na, worksheet.outputs_emissions_s88); end
  def test_outputs_emissions_d89; assert_equal("Total emissions from power", worksheet.outputs_emissions_d89); end
  def test_outputs_emissions_h89; assert_in_delta(0, (worksheet.outputs_emissions_h89||0), 0.001); end
  def test_outputs_emissions_i89; assert_in_delta(0, (worksheet.outputs_emissions_i89||0), 0.001); end
  def test_outputs_emissions_j89; assert_in_delta(0, (worksheet.outputs_emissions_j89||0), 0.001); end
  def test_outputs_emissions_k89; assert_in_delta(0, (worksheet.outputs_emissions_k89||0), 0.001); end
  def test_outputs_emissions_l89; assert_in_delta(0, (worksheet.outputs_emissions_l89||0), 0.001); end
  def test_outputs_emissions_m89; assert_in_delta(0, (worksheet.outputs_emissions_m89||0), 0.001); end
  def test_outputs_emissions_n89; assert_in_delta(0, (worksheet.outputs_emissions_n89||0), 0.001); end
  def test_outputs_emissions_o89; assert_in_delta(0, (worksheet.outputs_emissions_o89||0), 0.001); end
  def test_outputs_emissions_p89; assert_in_delta(0, (worksheet.outputs_emissions_p89||0), 0.001); end
  def test_outputs_emissions_r89; assert_in_delta(0, (worksheet.outputs_emissions_r89||0), 0.001); end
  def test_outputs_emissions_s89; assert_equal(:na, worksheet.outputs_emissions_s89); end
  def test_outputs_emissions_t89; assert_in_delta(0, (worksheet.outputs_emissions_t89||0), 0.001); end
  def test_outputs_emissions_u89; assert_in_delta(0, (worksheet.outputs_emissions_u89||0), 0.001); end
  def test_outputs_emissions_v89; assert_in_delta(0, (worksheet.outputs_emissions_v89||0), 0.001); end
  def test_outputs_emissions_w89; assert_in_delta(0, (worksheet.outputs_emissions_w89||0), 0.001); end
  def test_outputs_emissions_x89; assert_in_delta(0, (worksheet.outputs_emissions_x89||0), 0.001); end
  def test_outputs_emissions_y89; assert_in_delta(0, (worksheet.outputs_emissions_y89||0), 0.001); end
  def test_outputs_emissions_z89; assert_in_delta(0, (worksheet.outputs_emissions_z89||0), 0.001); end
  def test_outputs_emissions_aa89; assert_in_delta(0, (worksheet.outputs_emissions_aa89||0), 0.001); end
  def test_outputs_emissions_ab89; assert_in_delta(0, (worksheet.outputs_emissions_ab89||0), 0.001); end
  def test_outputs_emissions_ac89; assert_in_delta(0, (worksheet.outputs_emissions_ac89||0), 0.001); end
  def test_outputs_emissions_ad89; assert_in_delta(0, (worksheet.outputs_emissions_ad89||0), 0.001); end
  def test_outputs_emissions_ae89; assert_in_delta(0, (worksheet.outputs_emissions_ae89||0), 0.001); end
  def test_outputs_emissions_af89; assert_in_delta(0, (worksheet.outputs_emissions_af89||0), 0.001); end
  def test_outputs_emissions_ag89; assert_in_delta(0, (worksheet.outputs_emissions_ag89||0), 0.001); end
  def test_outputs_emissions_ah89; assert_in_delta(0, (worksheet.outputs_emissions_ah89||0), 0.001); end
  def test_outputs_emissions_ai89; assert_in_delta(0, (worksheet.outputs_emissions_ai89||0), 0.001); end
  def test_outputs_emissions_aj89; assert_in_delta(0, (worksheet.outputs_emissions_aj89||0), 0.001); end
  def test_outputs_emissions_c90; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c90); end
  def test_outputs_emissions_c93; assert_equal("Emissions intensity", worksheet.outputs_emissions_c93); end
  def test_outputs_emissions_d93; assert_equal("Mt/TWh", worksheet.outputs_emissions_d93); end
  def test_outputs_emissions_d94; assert_equal("g/KWh", worksheet.outputs_emissions_d94); end
  def test_outputs_emissions_b99; assert_equal("CH4", worksheet.outputs_emissions_b99); end
  def test_outputs_emissions_c99; assert_equal("METHANE", worksheet.outputs_emissions_c99); end
  def test_outputs_emissions_c101; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c101); end
  def test_outputs_emissions_aj101; assert_equal("%", worksheet.outputs_emissions_aj101); end
  def test_outputs_emissions_h102; assert_equal("Historic actuals", worksheet.outputs_emissions_h102); end
  def test_outputs_emissions_r102; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r102); end
  def test_outputs_emissions_aa102; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa102); end
  def test_outputs_emissions_d103; assert_equal("IPCC Sector", worksheet.outputs_emissions_d103); end
  def test_outputs_emissions_h103; assert_equal("1970", worksheet.outputs_emissions_h103); end
  def test_outputs_emissions_i103; assert_equal("1975", worksheet.outputs_emissions_i103); end
  def test_outputs_emissions_j103; assert_equal("1980", worksheet.outputs_emissions_j103); end
  def test_outputs_emissions_k103; assert_equal("1985", worksheet.outputs_emissions_k103); end
  def test_outputs_emissions_l103; assert_equal("1990", worksheet.outputs_emissions_l103); end
  def test_outputs_emissions_m103; assert_equal("1995", worksheet.outputs_emissions_m103); end
  def test_outputs_emissions_n103; assert_equal("2000", worksheet.outputs_emissions_n103); end
  def test_outputs_emissions_o103; assert_equal("2005", worksheet.outputs_emissions_o103); end
  def test_outputs_emissions_p103; assert_in_epsilon(2010, worksheet.outputs_emissions_p103, 0.001); end
  def test_outputs_emissions_r103; assert_in_epsilon(2011, worksheet.outputs_emissions_r103, 0.001); end
  def test_outputs_emissions_s103; assert_in_epsilon(2015, worksheet.outputs_emissions_s103, 0.001); end
  def test_outputs_emissions_t103; assert_in_epsilon(2020, worksheet.outputs_emissions_t103, 0.001); end
  def test_outputs_emissions_u103; assert_in_epsilon(2025, worksheet.outputs_emissions_u103, 0.001); end
  def test_outputs_emissions_v103; assert_in_epsilon(2030, worksheet.outputs_emissions_v103, 0.001); end
  def test_outputs_emissions_w103; assert_in_epsilon(2035, worksheet.outputs_emissions_w103, 0.001); end
  def test_outputs_emissions_x103; assert_in_epsilon(2040, worksheet.outputs_emissions_x103, 0.001); end
  def test_outputs_emissions_y103; assert_in_epsilon(2045, worksheet.outputs_emissions_y103, 0.001); end
  def test_outputs_emissions_z103; assert_in_epsilon(2050, worksheet.outputs_emissions_z103, 0.001); end
  def test_outputs_emissions_aa103; assert_in_epsilon(2055, worksheet.outputs_emissions_aa103, 0.001); end
  def test_outputs_emissions_ab103; assert_equal("2060", worksheet.outputs_emissions_ab103); end
  def test_outputs_emissions_ac103; assert_in_epsilon(2065, worksheet.outputs_emissions_ac103, 0.001); end
  def test_outputs_emissions_ad103; assert_in_epsilon(2070, worksheet.outputs_emissions_ad103, 0.001); end
  def test_outputs_emissions_ae103; assert_in_epsilon(2075, worksheet.outputs_emissions_ae103, 0.001); end
  def test_outputs_emissions_af103; assert_in_epsilon(2080, worksheet.outputs_emissions_af103, 0.001); end
  def test_outputs_emissions_ag103; assert_in_epsilon(2085, worksheet.outputs_emissions_ag103, 0.001); end
  def test_outputs_emissions_ah103; assert_in_epsilon(2090, worksheet.outputs_emissions_ah103, 0.001); end
  def test_outputs_emissions_ai103; assert_in_epsilon(2095, worksheet.outputs_emissions_ai103, 0.001); end
  def test_outputs_emissions_aj103; assert_in_epsilon(2100, worksheet.outputs_emissions_aj103, 0.001); end
  def test_outputs_emissions_c104; assert_equal("G.1A", worksheet.outputs_emissions_c104); end
  def test_outputs_emissions_d104; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d104); end
  def test_outputs_emissions_h104; assert_equal("n/a", worksheet.outputs_emissions_h104); end
  def test_outputs_emissions_i104; assert_equal("n/a", worksheet.outputs_emissions_i104); end
  def test_outputs_emissions_j104; assert_equal("n/a", worksheet.outputs_emissions_j104); end
  def test_outputs_emissions_k104; assert_equal("n/a", worksheet.outputs_emissions_k104); end
  def test_outputs_emissions_l104; assert_equal("n/a", worksheet.outputs_emissions_l104); end
  def test_outputs_emissions_m104; assert_equal("n/a", worksheet.outputs_emissions_m104); end
  def test_outputs_emissions_n104; assert_equal("n/a", worksheet.outputs_emissions_n104); end
  def test_outputs_emissions_o104; assert_equal("n/a", worksheet.outputs_emissions_o104); end
  def test_outputs_emissions_p104; assert_equal("n/a", worksheet.outputs_emissions_p104); end
  def test_outputs_emissions_r104; assert_equal("n/a", worksheet.outputs_emissions_r104); end
  def test_outputs_emissions_s104; assert_equal("n/a", worksheet.outputs_emissions_s104); end
  def test_outputs_emissions_t104; assert_equal("n/a", worksheet.outputs_emissions_t104); end
  def test_outputs_emissions_u104; assert_equal("n/a", worksheet.outputs_emissions_u104); end
  def test_outputs_emissions_v104; assert_equal("n/a", worksheet.outputs_emissions_v104); end
  def test_outputs_emissions_w104; assert_equal("n/a", worksheet.outputs_emissions_w104); end
  def test_outputs_emissions_x104; assert_equal("n/a", worksheet.outputs_emissions_x104); end
  def test_outputs_emissions_y104; assert_equal("n/a", worksheet.outputs_emissions_y104); end
  def test_outputs_emissions_z104; assert_equal("n/a", worksheet.outputs_emissions_z104); end
  def test_outputs_emissions_aa104; assert_equal("n/a", worksheet.outputs_emissions_aa104); end
  def test_outputs_emissions_ab104; assert_equal("n/a", worksheet.outputs_emissions_ab104); end
  def test_outputs_emissions_ac104; assert_equal("n/a", worksheet.outputs_emissions_ac104); end
  def test_outputs_emissions_ad104; assert_equal("n/a", worksheet.outputs_emissions_ad104); end
  def test_outputs_emissions_ae104; assert_equal("n/a", worksheet.outputs_emissions_ae104); end
  def test_outputs_emissions_af104; assert_equal("n/a", worksheet.outputs_emissions_af104); end
  def test_outputs_emissions_ag104; assert_equal("n/a", worksheet.outputs_emissions_ag104); end
  def test_outputs_emissions_ah104; assert_equal("n/a", worksheet.outputs_emissions_ah104); end
  def test_outputs_emissions_ai104; assert_equal("n/a", worksheet.outputs_emissions_ai104); end
  def test_outputs_emissions_aj104; assert_equal("n/a", worksheet.outputs_emissions_aj104); end
  def test_outputs_emissions_c105; assert_equal("G.1B", worksheet.outputs_emissions_c105); end
  def test_outputs_emissions_d105; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d105); end
  def test_outputs_emissions_h105; assert_equal("n/a", worksheet.outputs_emissions_h105); end
  def test_outputs_emissions_i105; assert_equal("n/a", worksheet.outputs_emissions_i105); end
  def test_outputs_emissions_j105; assert_equal("n/a", worksheet.outputs_emissions_j105); end
  def test_outputs_emissions_k105; assert_equal("n/a", worksheet.outputs_emissions_k105); end
  def test_outputs_emissions_l105; assert_equal("n/a", worksheet.outputs_emissions_l105); end
  def test_outputs_emissions_m105; assert_equal("n/a", worksheet.outputs_emissions_m105); end
  def test_outputs_emissions_n105; assert_equal("n/a", worksheet.outputs_emissions_n105); end
  def test_outputs_emissions_o105; assert_equal("n/a", worksheet.outputs_emissions_o105); end
  def test_outputs_emissions_p105; assert_equal("n/a", worksheet.outputs_emissions_p105); end
  def test_outputs_emissions_r105; assert_equal("n/a", worksheet.outputs_emissions_r105); end
  def test_outputs_emissions_s105; assert_equal("n/a", worksheet.outputs_emissions_s105); end
  def test_outputs_emissions_t105; assert_equal("n/a", worksheet.outputs_emissions_t105); end
  def test_outputs_emissions_u105; assert_equal("n/a", worksheet.outputs_emissions_u105); end
  def test_outputs_emissions_v105; assert_equal("n/a", worksheet.outputs_emissions_v105); end
  def test_outputs_emissions_w105; assert_equal("n/a", worksheet.outputs_emissions_w105); end
  def test_outputs_emissions_x105; assert_equal("n/a", worksheet.outputs_emissions_x105); end
  def test_outputs_emissions_y105; assert_equal("n/a", worksheet.outputs_emissions_y105); end
  def test_outputs_emissions_z105; assert_equal("n/a", worksheet.outputs_emissions_z105); end
  def test_outputs_emissions_aa105; assert_equal("n/a", worksheet.outputs_emissions_aa105); end
  def test_outputs_emissions_ab105; assert_equal("n/a", worksheet.outputs_emissions_ab105); end
  def test_outputs_emissions_ac105; assert_equal("n/a", worksheet.outputs_emissions_ac105); end
  def test_outputs_emissions_ad105; assert_equal("n/a", worksheet.outputs_emissions_ad105); end
  def test_outputs_emissions_ae105; assert_equal("n/a", worksheet.outputs_emissions_ae105); end
  def test_outputs_emissions_af105; assert_equal("n/a", worksheet.outputs_emissions_af105); end
  def test_outputs_emissions_ag105; assert_equal("n/a", worksheet.outputs_emissions_ag105); end
  def test_outputs_emissions_ah105; assert_equal("n/a", worksheet.outputs_emissions_ah105); end
  def test_outputs_emissions_ai105; assert_equal("n/a", worksheet.outputs_emissions_ai105); end
  def test_outputs_emissions_aj105; assert_equal("n/a", worksheet.outputs_emissions_aj105); end
  def test_outputs_emissions_c106; assert_equal("G.2", worksheet.outputs_emissions_c106); end
  def test_outputs_emissions_d106; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d106); end
  def test_outputs_emissions_h106; assert_equal("n/a", worksheet.outputs_emissions_h106); end
  def test_outputs_emissions_i106; assert_equal("n/a", worksheet.outputs_emissions_i106); end
  def test_outputs_emissions_j106; assert_equal("n/a", worksheet.outputs_emissions_j106); end
  def test_outputs_emissions_k106; assert_equal("n/a", worksheet.outputs_emissions_k106); end
  def test_outputs_emissions_l106; assert_equal("n/a", worksheet.outputs_emissions_l106); end
  def test_outputs_emissions_m106; assert_equal("n/a", worksheet.outputs_emissions_m106); end
  def test_outputs_emissions_n106; assert_equal("n/a", worksheet.outputs_emissions_n106); end
  def test_outputs_emissions_o106; assert_equal("n/a", worksheet.outputs_emissions_o106); end
  def test_outputs_emissions_p106; assert_equal("n/a", worksheet.outputs_emissions_p106); end
  def test_outputs_emissions_r106; assert_equal("n/a", worksheet.outputs_emissions_r106); end
  def test_outputs_emissions_s106; assert_equal("n/a", worksheet.outputs_emissions_s106); end
  def test_outputs_emissions_t106; assert_equal("n/a", worksheet.outputs_emissions_t106); end
  def test_outputs_emissions_u106; assert_equal("n/a", worksheet.outputs_emissions_u106); end
  def test_outputs_emissions_v106; assert_equal("n/a", worksheet.outputs_emissions_v106); end
  def test_outputs_emissions_w106; assert_equal("n/a", worksheet.outputs_emissions_w106); end
  def test_outputs_emissions_x106; assert_equal("n/a", worksheet.outputs_emissions_x106); end
  def test_outputs_emissions_y106; assert_equal("n/a", worksheet.outputs_emissions_y106); end
  def test_outputs_emissions_z106; assert_equal("n/a", worksheet.outputs_emissions_z106); end
  def test_outputs_emissions_aa106; assert_equal("n/a", worksheet.outputs_emissions_aa106); end
  def test_outputs_emissions_ab106; assert_equal("n/a", worksheet.outputs_emissions_ab106); end
  def test_outputs_emissions_ac106; assert_equal("n/a", worksheet.outputs_emissions_ac106); end
  def test_outputs_emissions_ad106; assert_equal("n/a", worksheet.outputs_emissions_ad106); end
  def test_outputs_emissions_ae106; assert_equal("n/a", worksheet.outputs_emissions_ae106); end
  def test_outputs_emissions_af106; assert_equal("n/a", worksheet.outputs_emissions_af106); end
  def test_outputs_emissions_ag106; assert_equal("n/a", worksheet.outputs_emissions_ag106); end
  def test_outputs_emissions_ah106; assert_equal("n/a", worksheet.outputs_emissions_ah106); end
  def test_outputs_emissions_ai106; assert_equal("n/a", worksheet.outputs_emissions_ai106); end
  def test_outputs_emissions_aj106; assert_equal("n/a", worksheet.outputs_emissions_aj106); end
  def test_outputs_emissions_c107; assert_equal("G.3", worksheet.outputs_emissions_c107); end
  def test_outputs_emissions_d107; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d107); end
  def test_outputs_emissions_h107; assert_equal("n/a", worksheet.outputs_emissions_h107); end
  def test_outputs_emissions_i107; assert_equal("n/a", worksheet.outputs_emissions_i107); end
  def test_outputs_emissions_j107; assert_equal("n/a", worksheet.outputs_emissions_j107); end
  def test_outputs_emissions_k107; assert_equal("n/a", worksheet.outputs_emissions_k107); end
  def test_outputs_emissions_l107; assert_equal("n/a", worksheet.outputs_emissions_l107); end
  def test_outputs_emissions_m107; assert_equal("n/a", worksheet.outputs_emissions_m107); end
  def test_outputs_emissions_n107; assert_equal("n/a", worksheet.outputs_emissions_n107); end
  def test_outputs_emissions_o107; assert_equal("n/a", worksheet.outputs_emissions_o107); end
  def test_outputs_emissions_p107; assert_equal("n/a", worksheet.outputs_emissions_p107); end
  def test_outputs_emissions_r107; assert_equal("n/a", worksheet.outputs_emissions_r107); end
  def test_outputs_emissions_s107; assert_equal("n/a", worksheet.outputs_emissions_s107); end
  def test_outputs_emissions_t107; assert_equal("n/a", worksheet.outputs_emissions_t107); end
  def test_outputs_emissions_u107; assert_equal("n/a", worksheet.outputs_emissions_u107); end
  def test_outputs_emissions_v107; assert_equal("n/a", worksheet.outputs_emissions_v107); end
  def test_outputs_emissions_w107; assert_equal("n/a", worksheet.outputs_emissions_w107); end
  def test_outputs_emissions_x107; assert_equal("n/a", worksheet.outputs_emissions_x107); end
  def test_outputs_emissions_y107; assert_equal("n/a", worksheet.outputs_emissions_y107); end
  def test_outputs_emissions_z107; assert_equal("n/a", worksheet.outputs_emissions_z107); end
  def test_outputs_emissions_aa107; assert_equal("n/a", worksheet.outputs_emissions_aa107); end
  def test_outputs_emissions_ab107; assert_equal("n/a", worksheet.outputs_emissions_ab107); end
  def test_outputs_emissions_ac107; assert_equal("n/a", worksheet.outputs_emissions_ac107); end
  def test_outputs_emissions_ad107; assert_equal("n/a", worksheet.outputs_emissions_ad107); end
  def test_outputs_emissions_ae107; assert_equal("n/a", worksheet.outputs_emissions_ae107); end
  def test_outputs_emissions_af107; assert_equal("n/a", worksheet.outputs_emissions_af107); end
  def test_outputs_emissions_ag107; assert_equal("n/a", worksheet.outputs_emissions_ag107); end
  def test_outputs_emissions_ah107; assert_equal("n/a", worksheet.outputs_emissions_ah107); end
  def test_outputs_emissions_ai107; assert_equal("n/a", worksheet.outputs_emissions_ai107); end
  def test_outputs_emissions_aj107; assert_equal("n/a", worksheet.outputs_emissions_aj107); end
  def test_outputs_emissions_c108; assert_equal("G.4", worksheet.outputs_emissions_c108); end
  def test_outputs_emissions_d108; assert_equal("Global Agriculture", worksheet.outputs_emissions_d108); end
  def test_outputs_emissions_h108; assert_equal("n/a", worksheet.outputs_emissions_h108); end
  def test_outputs_emissions_i108; assert_equal("n/a", worksheet.outputs_emissions_i108); end
  def test_outputs_emissions_j108; assert_equal("n/a", worksheet.outputs_emissions_j108); end
  def test_outputs_emissions_k108; assert_equal("n/a", worksheet.outputs_emissions_k108); end
  def test_outputs_emissions_l108; assert_equal("n/a", worksheet.outputs_emissions_l108); end
  def test_outputs_emissions_m108; assert_equal("n/a", worksheet.outputs_emissions_m108); end
  def test_outputs_emissions_n108; assert_equal("n/a", worksheet.outputs_emissions_n108); end
  def test_outputs_emissions_o108; assert_equal("n/a", worksheet.outputs_emissions_o108); end
  def test_outputs_emissions_p108; assert_equal("n/a", worksheet.outputs_emissions_p108); end
  def test_outputs_emissions_r108; assert_equal("n/a", worksheet.outputs_emissions_r108); end
  def test_outputs_emissions_s108; assert_equal("n/a", worksheet.outputs_emissions_s108); end
  def test_outputs_emissions_t108; assert_equal("n/a", worksheet.outputs_emissions_t108); end
  def test_outputs_emissions_u108; assert_equal("n/a", worksheet.outputs_emissions_u108); end
  def test_outputs_emissions_v108; assert_equal("n/a", worksheet.outputs_emissions_v108); end
  def test_outputs_emissions_w108; assert_equal("n/a", worksheet.outputs_emissions_w108); end
  def test_outputs_emissions_x108; assert_equal("n/a", worksheet.outputs_emissions_x108); end
  def test_outputs_emissions_y108; assert_equal("n/a", worksheet.outputs_emissions_y108); end
  def test_outputs_emissions_z108; assert_equal("n/a", worksheet.outputs_emissions_z108); end
  def test_outputs_emissions_aa108; assert_equal("n/a", worksheet.outputs_emissions_aa108); end
  def test_outputs_emissions_ab108; assert_equal("n/a", worksheet.outputs_emissions_ab108); end
  def test_outputs_emissions_ac108; assert_equal("n/a", worksheet.outputs_emissions_ac108); end
  def test_outputs_emissions_ad108; assert_equal("n/a", worksheet.outputs_emissions_ad108); end
  def test_outputs_emissions_ae108; assert_equal("n/a", worksheet.outputs_emissions_ae108); end
  def test_outputs_emissions_af108; assert_equal("n/a", worksheet.outputs_emissions_af108); end
  def test_outputs_emissions_ag108; assert_equal("n/a", worksheet.outputs_emissions_ag108); end
  def test_outputs_emissions_ah108; assert_equal("n/a", worksheet.outputs_emissions_ah108); end
  def test_outputs_emissions_ai108; assert_equal("n/a", worksheet.outputs_emissions_ai108); end
  def test_outputs_emissions_aj108; assert_equal("n/a", worksheet.outputs_emissions_aj108); end
  def test_outputs_emissions_c109; assert_equal("G.5", worksheet.outputs_emissions_c109); end
  def test_outputs_emissions_d109; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d109); end
  def test_outputs_emissions_h109; assert_equal("n/a", worksheet.outputs_emissions_h109); end
  def test_outputs_emissions_i109; assert_equal("n/a", worksheet.outputs_emissions_i109); end
  def test_outputs_emissions_j109; assert_equal("n/a", worksheet.outputs_emissions_j109); end
  def test_outputs_emissions_k109; assert_equal("n/a", worksheet.outputs_emissions_k109); end
  def test_outputs_emissions_l109; assert_equal("n/a", worksheet.outputs_emissions_l109); end
  def test_outputs_emissions_m109; assert_equal("n/a", worksheet.outputs_emissions_m109); end
  def test_outputs_emissions_n109; assert_equal("n/a", worksheet.outputs_emissions_n109); end
  def test_outputs_emissions_o109; assert_equal("n/a", worksheet.outputs_emissions_o109); end
  def test_outputs_emissions_p109; assert_equal("n/a", worksheet.outputs_emissions_p109); end
  def test_outputs_emissions_r109; assert_equal("n/a", worksheet.outputs_emissions_r109); end
  def test_outputs_emissions_s109; assert_equal("n/a", worksheet.outputs_emissions_s109); end
  def test_outputs_emissions_t109; assert_equal("n/a", worksheet.outputs_emissions_t109); end
  def test_outputs_emissions_u109; assert_equal("n/a", worksheet.outputs_emissions_u109); end
  def test_outputs_emissions_v109; assert_equal("n/a", worksheet.outputs_emissions_v109); end
  def test_outputs_emissions_w109; assert_equal("n/a", worksheet.outputs_emissions_w109); end
  def test_outputs_emissions_x109; assert_equal("n/a", worksheet.outputs_emissions_x109); end
  def test_outputs_emissions_y109; assert_equal("n/a", worksheet.outputs_emissions_y109); end
  def test_outputs_emissions_z109; assert_equal("n/a", worksheet.outputs_emissions_z109); end
  def test_outputs_emissions_aa109; assert_equal("n/a", worksheet.outputs_emissions_aa109); end
  def test_outputs_emissions_ab109; assert_equal("n/a", worksheet.outputs_emissions_ab109); end
  def test_outputs_emissions_ac109; assert_equal("n/a", worksheet.outputs_emissions_ac109); end
  def test_outputs_emissions_ad109; assert_equal("n/a", worksheet.outputs_emissions_ad109); end
  def test_outputs_emissions_ae109; assert_equal("n/a", worksheet.outputs_emissions_ae109); end
  def test_outputs_emissions_af109; assert_equal("n/a", worksheet.outputs_emissions_af109); end
  def test_outputs_emissions_ag109; assert_equal("n/a", worksheet.outputs_emissions_ag109); end
  def test_outputs_emissions_ah109; assert_equal("n/a", worksheet.outputs_emissions_ah109); end
  def test_outputs_emissions_ai109; assert_equal("n/a", worksheet.outputs_emissions_ai109); end
  def test_outputs_emissions_aj109; assert_equal("n/a", worksheet.outputs_emissions_aj109); end
  def test_outputs_emissions_c110; assert_equal("G.6", worksheet.outputs_emissions_c110); end
  def test_outputs_emissions_d110; assert_equal("Global Waste", worksheet.outputs_emissions_d110); end
  def test_outputs_emissions_h110; assert_equal("n/a", worksheet.outputs_emissions_h110); end
  def test_outputs_emissions_i110; assert_equal("n/a", worksheet.outputs_emissions_i110); end
  def test_outputs_emissions_j110; assert_equal("n/a", worksheet.outputs_emissions_j110); end
  def test_outputs_emissions_k110; assert_equal("n/a", worksheet.outputs_emissions_k110); end
  def test_outputs_emissions_l110; assert_equal("n/a", worksheet.outputs_emissions_l110); end
  def test_outputs_emissions_m110; assert_equal("n/a", worksheet.outputs_emissions_m110); end
  def test_outputs_emissions_n110; assert_equal("n/a", worksheet.outputs_emissions_n110); end
  def test_outputs_emissions_o110; assert_equal("n/a", worksheet.outputs_emissions_o110); end
  def test_outputs_emissions_p110; assert_equal("n/a", worksheet.outputs_emissions_p110); end
  def test_outputs_emissions_r110; assert_equal("n/a", worksheet.outputs_emissions_r110); end
  def test_outputs_emissions_s110; assert_equal("n/a", worksheet.outputs_emissions_s110); end
  def test_outputs_emissions_t110; assert_equal("n/a", worksheet.outputs_emissions_t110); end
  def test_outputs_emissions_u110; assert_equal("n/a", worksheet.outputs_emissions_u110); end
  def test_outputs_emissions_v110; assert_equal("n/a", worksheet.outputs_emissions_v110); end
  def test_outputs_emissions_w110; assert_equal("n/a", worksheet.outputs_emissions_w110); end
  def test_outputs_emissions_x110; assert_equal("n/a", worksheet.outputs_emissions_x110); end
  def test_outputs_emissions_y110; assert_equal("n/a", worksheet.outputs_emissions_y110); end
  def test_outputs_emissions_z110; assert_equal("n/a", worksheet.outputs_emissions_z110); end
  def test_outputs_emissions_aa110; assert_equal("n/a", worksheet.outputs_emissions_aa110); end
  def test_outputs_emissions_ab110; assert_equal("n/a", worksheet.outputs_emissions_ab110); end
  def test_outputs_emissions_ac110; assert_equal("n/a", worksheet.outputs_emissions_ac110); end
  def test_outputs_emissions_ad110; assert_equal("n/a", worksheet.outputs_emissions_ad110); end
  def test_outputs_emissions_ae110; assert_equal("n/a", worksheet.outputs_emissions_ae110); end
  def test_outputs_emissions_af110; assert_equal("n/a", worksheet.outputs_emissions_af110); end
  def test_outputs_emissions_ag110; assert_equal("n/a", worksheet.outputs_emissions_ag110); end
  def test_outputs_emissions_ah110; assert_equal("n/a", worksheet.outputs_emissions_ah110); end
  def test_outputs_emissions_ai110; assert_equal("n/a", worksheet.outputs_emissions_ai110); end
  def test_outputs_emissions_aj110; assert_equal("n/a", worksheet.outputs_emissions_aj110); end
  def test_outputs_emissions_c111; assert_equal("G.7", worksheet.outputs_emissions_c111); end
  def test_outputs_emissions_d111; assert_equal("Global Other", worksheet.outputs_emissions_d111); end
  def test_outputs_emissions_h111; assert_equal("n/a", worksheet.outputs_emissions_h111); end
  def test_outputs_emissions_i111; assert_equal("n/a", worksheet.outputs_emissions_i111); end
  def test_outputs_emissions_j111; assert_equal("n/a", worksheet.outputs_emissions_j111); end
  def test_outputs_emissions_k111; assert_equal("n/a", worksheet.outputs_emissions_k111); end
  def test_outputs_emissions_l111; assert_equal("n/a", worksheet.outputs_emissions_l111); end
  def test_outputs_emissions_m111; assert_equal("n/a", worksheet.outputs_emissions_m111); end
  def test_outputs_emissions_n111; assert_equal("n/a", worksheet.outputs_emissions_n111); end
  def test_outputs_emissions_o111; assert_equal("n/a", worksheet.outputs_emissions_o111); end
  def test_outputs_emissions_p111; assert_equal("n/a", worksheet.outputs_emissions_p111); end
  def test_outputs_emissions_r111; assert_equal("n/a", worksheet.outputs_emissions_r111); end
  def test_outputs_emissions_s111; assert_equal("n/a", worksheet.outputs_emissions_s111); end
  def test_outputs_emissions_t111; assert_equal("n/a", worksheet.outputs_emissions_t111); end
  def test_outputs_emissions_u111; assert_equal("n/a", worksheet.outputs_emissions_u111); end
  def test_outputs_emissions_v111; assert_equal("n/a", worksheet.outputs_emissions_v111); end
  def test_outputs_emissions_w111; assert_equal("n/a", worksheet.outputs_emissions_w111); end
  def test_outputs_emissions_x111; assert_equal("n/a", worksheet.outputs_emissions_x111); end
  def test_outputs_emissions_y111; assert_equal("n/a", worksheet.outputs_emissions_y111); end
  def test_outputs_emissions_z111; assert_equal("n/a", worksheet.outputs_emissions_z111); end
  def test_outputs_emissions_aa111; assert_equal("n/a", worksheet.outputs_emissions_aa111); end
  def test_outputs_emissions_ab111; assert_equal("n/a", worksheet.outputs_emissions_ab111); end
  def test_outputs_emissions_ac111; assert_equal("n/a", worksheet.outputs_emissions_ac111); end
  def test_outputs_emissions_ad111; assert_equal("n/a", worksheet.outputs_emissions_ad111); end
  def test_outputs_emissions_ae111; assert_equal("n/a", worksheet.outputs_emissions_ae111); end
  def test_outputs_emissions_af111; assert_equal("n/a", worksheet.outputs_emissions_af111); end
  def test_outputs_emissions_ag111; assert_equal("n/a", worksheet.outputs_emissions_ag111); end
  def test_outputs_emissions_ah111; assert_equal("n/a", worksheet.outputs_emissions_ah111); end
  def test_outputs_emissions_ai111; assert_equal("n/a", worksheet.outputs_emissions_ai111); end
  def test_outputs_emissions_aj111; assert_equal("n/a", worksheet.outputs_emissions_aj111); end
  def test_outputs_emissions_c112; assert_equal("G.X1", worksheet.outputs_emissions_c112); end
  def test_outputs_emissions_d112; assert_equal("Global Bioenergy credit", worksheet.outputs_emissions_d112); end
  def test_outputs_emissions_h112; assert_equal("n/a", worksheet.outputs_emissions_h112); end
  def test_outputs_emissions_i112; assert_equal("n/a", worksheet.outputs_emissions_i112); end
  def test_outputs_emissions_j112; assert_equal("n/a", worksheet.outputs_emissions_j112); end
  def test_outputs_emissions_k112; assert_equal("n/a", worksheet.outputs_emissions_k112); end
  def test_outputs_emissions_l112; assert_equal("n/a", worksheet.outputs_emissions_l112); end
  def test_outputs_emissions_m112; assert_equal("n/a", worksheet.outputs_emissions_m112); end
  def test_outputs_emissions_n112; assert_equal("n/a", worksheet.outputs_emissions_n112); end
  def test_outputs_emissions_o112; assert_equal("n/a", worksheet.outputs_emissions_o112); end
  def test_outputs_emissions_p112; assert_equal("n/a", worksheet.outputs_emissions_p112); end
  def test_outputs_emissions_r112; assert_equal("n/a", worksheet.outputs_emissions_r112); end
  def test_outputs_emissions_s112; assert_equal("n/a", worksheet.outputs_emissions_s112); end
  def test_outputs_emissions_t112; assert_equal("n/a", worksheet.outputs_emissions_t112); end
  def test_outputs_emissions_u112; assert_equal("n/a", worksheet.outputs_emissions_u112); end
  def test_outputs_emissions_v112; assert_equal("n/a", worksheet.outputs_emissions_v112); end
  def test_outputs_emissions_w112; assert_equal("n/a", worksheet.outputs_emissions_w112); end
  def test_outputs_emissions_x112; assert_equal("n/a", worksheet.outputs_emissions_x112); end
  def test_outputs_emissions_y112; assert_equal("n/a", worksheet.outputs_emissions_y112); end
  def test_outputs_emissions_z112; assert_equal("n/a", worksheet.outputs_emissions_z112); end
  def test_outputs_emissions_aa112; assert_equal("n/a", worksheet.outputs_emissions_aa112); end
  def test_outputs_emissions_ab112; assert_equal("n/a", worksheet.outputs_emissions_ab112); end
  def test_outputs_emissions_ac112; assert_equal("n/a", worksheet.outputs_emissions_ac112); end
  def test_outputs_emissions_ad112; assert_equal("n/a", worksheet.outputs_emissions_ad112); end
  def test_outputs_emissions_ae112; assert_equal("n/a", worksheet.outputs_emissions_ae112); end
  def test_outputs_emissions_af112; assert_equal("n/a", worksheet.outputs_emissions_af112); end
  def test_outputs_emissions_ag112; assert_equal("n/a", worksheet.outputs_emissions_ag112); end
  def test_outputs_emissions_ah112; assert_equal("n/a", worksheet.outputs_emissions_ah112); end
  def test_outputs_emissions_ai112; assert_equal("n/a", worksheet.outputs_emissions_ai112); end
  def test_outputs_emissions_aj112; assert_equal("n/a", worksheet.outputs_emissions_aj112); end
  def test_outputs_emissions_c113; assert_equal("G.X2", worksheet.outputs_emissions_c113); end
  def test_outputs_emissions_d113; assert_equal("Global Carbon capture", worksheet.outputs_emissions_d113); end
  def test_outputs_emissions_h113; assert_equal("n/a", worksheet.outputs_emissions_h113); end
  def test_outputs_emissions_i113; assert_equal("n/a", worksheet.outputs_emissions_i113); end
  def test_outputs_emissions_j113; assert_equal("n/a", worksheet.outputs_emissions_j113); end
  def test_outputs_emissions_k113; assert_equal("n/a", worksheet.outputs_emissions_k113); end
  def test_outputs_emissions_l113; assert_equal("n/a", worksheet.outputs_emissions_l113); end
  def test_outputs_emissions_m113; assert_equal("n/a", worksheet.outputs_emissions_m113); end
  def test_outputs_emissions_n113; assert_equal("n/a", worksheet.outputs_emissions_n113); end
  def test_outputs_emissions_o113; assert_equal("n/a", worksheet.outputs_emissions_o113); end
  def test_outputs_emissions_p113; assert_equal("n/a", worksheet.outputs_emissions_p113); end
  def test_outputs_emissions_r113; assert_equal("n/a", worksheet.outputs_emissions_r113); end
  def test_outputs_emissions_s113; assert_equal("n/a", worksheet.outputs_emissions_s113); end
  def test_outputs_emissions_t113; assert_equal("n/a", worksheet.outputs_emissions_t113); end
  def test_outputs_emissions_u113; assert_equal("n/a", worksheet.outputs_emissions_u113); end
  def test_outputs_emissions_v113; assert_equal("n/a", worksheet.outputs_emissions_v113); end
  def test_outputs_emissions_w113; assert_equal("n/a", worksheet.outputs_emissions_w113); end
  def test_outputs_emissions_x113; assert_equal("n/a", worksheet.outputs_emissions_x113); end
  def test_outputs_emissions_y113; assert_equal("n/a", worksheet.outputs_emissions_y113); end
  def test_outputs_emissions_z113; assert_equal("n/a", worksheet.outputs_emissions_z113); end
  def test_outputs_emissions_aa113; assert_equal("n/a", worksheet.outputs_emissions_aa113); end
  def test_outputs_emissions_ab113; assert_equal("n/a", worksheet.outputs_emissions_ab113); end
  def test_outputs_emissions_ac113; assert_equal("n/a", worksheet.outputs_emissions_ac113); end
  def test_outputs_emissions_ad113; assert_equal("n/a", worksheet.outputs_emissions_ad113); end
  def test_outputs_emissions_ae113; assert_equal("n/a", worksheet.outputs_emissions_ae113); end
  def test_outputs_emissions_af113; assert_equal("n/a", worksheet.outputs_emissions_af113); end
  def test_outputs_emissions_ag113; assert_equal("n/a", worksheet.outputs_emissions_ag113); end
  def test_outputs_emissions_ah113; assert_equal("n/a", worksheet.outputs_emissions_ah113); end
  def test_outputs_emissions_ai113; assert_equal("n/a", worksheet.outputs_emissions_ai113); end
  def test_outputs_emissions_aj113; assert_equal("n/a", worksheet.outputs_emissions_aj113); end
  def test_outputs_emissions_d114; assert_equal("Total", worksheet.outputs_emissions_d114); end
  def test_outputs_emissions_c118; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c118); end
  def test_outputs_emissions_h119; assert_equal("Historic actuals", worksheet.outputs_emissions_h119); end
  def test_outputs_emissions_r119; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r119); end
  def test_outputs_emissions_aa119; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa119); end
  def test_outputs_emissions_d120; assert_equal("IPCC Sector", worksheet.outputs_emissions_d120); end
  def test_outputs_emissions_h120; assert_equal("1970", worksheet.outputs_emissions_h120); end
  def test_outputs_emissions_i120; assert_equal("1975", worksheet.outputs_emissions_i120); end
  def test_outputs_emissions_j120; assert_equal("1980", worksheet.outputs_emissions_j120); end
  def test_outputs_emissions_k120; assert_equal("1985", worksheet.outputs_emissions_k120); end
  def test_outputs_emissions_l120; assert_equal("1990", worksheet.outputs_emissions_l120); end
  def test_outputs_emissions_m120; assert_equal("1995", worksheet.outputs_emissions_m120); end
  def test_outputs_emissions_n120; assert_equal("2000", worksheet.outputs_emissions_n120); end
  def test_outputs_emissions_o120; assert_equal("2005", worksheet.outputs_emissions_o120); end
  def test_outputs_emissions_p120; assert_in_epsilon(2010, worksheet.outputs_emissions_p120, 0.001); end
  def test_outputs_emissions_r120; assert_in_epsilon(2011, worksheet.outputs_emissions_r120, 0.001); end
  def test_outputs_emissions_s120; assert_in_epsilon(2015, worksheet.outputs_emissions_s120, 0.001); end
  def test_outputs_emissions_t120; assert_in_epsilon(2020, worksheet.outputs_emissions_t120, 0.001); end
  def test_outputs_emissions_u120; assert_in_epsilon(2025, worksheet.outputs_emissions_u120, 0.001); end
  def test_outputs_emissions_v120; assert_in_epsilon(2030, worksheet.outputs_emissions_v120, 0.001); end
  def test_outputs_emissions_w120; assert_in_epsilon(2035, worksheet.outputs_emissions_w120, 0.001); end
  def test_outputs_emissions_x120; assert_in_epsilon(2040, worksheet.outputs_emissions_x120, 0.001); end
  def test_outputs_emissions_y120; assert_in_epsilon(2045, worksheet.outputs_emissions_y120, 0.001); end
  def test_outputs_emissions_z120; assert_in_epsilon(2050, worksheet.outputs_emissions_z120, 0.001); end
  def test_outputs_emissions_aa120; assert_in_epsilon(2055, worksheet.outputs_emissions_aa120, 0.001); end
  def test_outputs_emissions_ab120; assert_in_epsilon(2060, worksheet.outputs_emissions_ab120, 0.001); end
  def test_outputs_emissions_ac120; assert_in_epsilon(2065, worksheet.outputs_emissions_ac120, 0.001); end
  def test_outputs_emissions_ad120; assert_in_epsilon(2070, worksheet.outputs_emissions_ad120, 0.001); end
  def test_outputs_emissions_ae120; assert_in_epsilon(2075, worksheet.outputs_emissions_ae120, 0.001); end
  def test_outputs_emissions_af120; assert_in_epsilon(2080, worksheet.outputs_emissions_af120, 0.001); end
  def test_outputs_emissions_ag120; assert_in_epsilon(2085, worksheet.outputs_emissions_ag120, 0.001); end
  def test_outputs_emissions_ah120; assert_in_epsilon(2090, worksheet.outputs_emissions_ah120, 0.001); end
  def test_outputs_emissions_ai120; assert_in_epsilon(2095, worksheet.outputs_emissions_ai120, 0.001); end
  def test_outputs_emissions_aj120; assert_in_epsilon(2100, worksheet.outputs_emissions_aj120, 0.001); end
  def test_outputs_emissions_c121; assert_equal("G.1A", worksheet.outputs_emissions_c121); end
  def test_outputs_emissions_d121; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d121); end
  def test_outputs_emissions_s121; assert_in_epsilon(5.936687841394841, worksheet.outputs_emissions_s121, 0.001); end
  def test_outputs_emissions_c122; assert_equal("G.1B", worksheet.outputs_emissions_c122); end
  def test_outputs_emissions_d122; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d122); end
  def test_outputs_emissions_s122; assert_in_delta(0, (worksheet.outputs_emissions_s122||0), 0.001); end
  def test_outputs_emissions_c123; assert_equal("G.2", worksheet.outputs_emissions_c123); end
  def test_outputs_emissions_d123; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d123); end
  def test_outputs_emissions_s123; assert_in_delta(0, (worksheet.outputs_emissions_s123||0), 0.001); end
  def test_outputs_emissions_c124; assert_equal("G.3", worksheet.outputs_emissions_c124); end
  def test_outputs_emissions_d124; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d124); end
  def test_outputs_emissions_s124; assert_in_delta(0, (worksheet.outputs_emissions_s124||0), 0.001); end
  def test_outputs_emissions_c125; assert_equal("G.4", worksheet.outputs_emissions_c125); end
  def test_outputs_emissions_d125; assert_equal("Global Agriculture", worksheet.outputs_emissions_d125); end
  def test_outputs_emissions_s125; assert_in_delta(0, (worksheet.outputs_emissions_s125||0), 0.001); end
  def test_outputs_emissions_c126; assert_equal("G.5", worksheet.outputs_emissions_c126); end
  def test_outputs_emissions_d126; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d126); end
  def test_outputs_emissions_s126; assert_in_delta(0, (worksheet.outputs_emissions_s126||0), 0.001); end
  def test_outputs_emissions_c127; assert_equal("G.6", worksheet.outputs_emissions_c127); end
  def test_outputs_emissions_d127; assert_equal("Global Waste", worksheet.outputs_emissions_d127); end
  def test_outputs_emissions_s127; assert_in_delta(0, (worksheet.outputs_emissions_s127||0), 0.001); end
  def test_outputs_emissions_c128; assert_equal("G.7", worksheet.outputs_emissions_c128); end
  def test_outputs_emissions_d128; assert_equal("Global Other", worksheet.outputs_emissions_d128); end
  def test_outputs_emissions_s128; assert_in_delta(0, (worksheet.outputs_emissions_s128||0), 0.001); end
  def test_outputs_emissions_c129; assert_equal("G.X1", worksheet.outputs_emissions_c129); end
  def test_outputs_emissions_d129; assert_equal("Global Bioenergy credit", worksheet.outputs_emissions_d129); end
  def test_outputs_emissions_s129; assert_in_delta(0, (worksheet.outputs_emissions_s129||0), 0.001); end
  def test_outputs_emissions_c130; assert_equal("G.X2", worksheet.outputs_emissions_c130); end
  def test_outputs_emissions_d130; assert_equal("Global Carbon capture", worksheet.outputs_emissions_d130); end
  def test_outputs_emissions_s130; assert_in_delta(0, (worksheet.outputs_emissions_s130||0), 0.001); end
  def test_outputs_emissions_d131; assert_equal("Total", worksheet.outputs_emissions_d131); end
  def test_outputs_emissions_h131; assert_in_delta(0, (worksheet.outputs_emissions_h131||0), 0.001); end
  def test_outputs_emissions_i131; assert_in_delta(0, (worksheet.outputs_emissions_i131||0), 0.001); end
  def test_outputs_emissions_j131; assert_in_delta(0, (worksheet.outputs_emissions_j131||0), 0.001); end
  def test_outputs_emissions_k131; assert_in_delta(0, (worksheet.outputs_emissions_k131||0), 0.001); end
  def test_outputs_emissions_l131; assert_in_delta(0, (worksheet.outputs_emissions_l131||0), 0.001); end
  def test_outputs_emissions_m131; assert_in_delta(0, (worksheet.outputs_emissions_m131||0), 0.001); end
  def test_outputs_emissions_n131; assert_in_delta(0, (worksheet.outputs_emissions_n131||0), 0.001); end
  def test_outputs_emissions_o131; assert_in_delta(0, (worksheet.outputs_emissions_o131||0), 0.001); end
  def test_outputs_emissions_p131; assert_in_delta(0, (worksheet.outputs_emissions_p131||0), 0.001); end
  def test_outputs_emissions_r131; assert_in_delta(0, (worksheet.outputs_emissions_r131||0), 0.001); end
  def test_outputs_emissions_s131; assert_in_epsilon(5.936687841394841, worksheet.outputs_emissions_s131, 0.001); end
  def test_outputs_emissions_t131; assert_in_delta(0, (worksheet.outputs_emissions_t131||0), 0.001); end
  def test_outputs_emissions_u131; assert_in_delta(0, (worksheet.outputs_emissions_u131||0), 0.001); end
  def test_outputs_emissions_v131; assert_in_delta(0, (worksheet.outputs_emissions_v131||0), 0.001); end
  def test_outputs_emissions_w131; assert_in_delta(0, (worksheet.outputs_emissions_w131||0), 0.001); end
  def test_outputs_emissions_x131; assert_in_delta(0, (worksheet.outputs_emissions_x131||0), 0.001); end
  def test_outputs_emissions_y131; assert_in_delta(0, (worksheet.outputs_emissions_y131||0), 0.001); end
  def test_outputs_emissions_z131; assert_in_delta(0, (worksheet.outputs_emissions_z131||0), 0.001); end
  def test_outputs_emissions_aa131; assert_in_delta(0, (worksheet.outputs_emissions_aa131||0), 0.001); end
  def test_outputs_emissions_ab131; assert_in_delta(0, (worksheet.outputs_emissions_ab131||0), 0.001); end
  def test_outputs_emissions_ac131; assert_in_delta(0, (worksheet.outputs_emissions_ac131||0), 0.001); end
  def test_outputs_emissions_ad131; assert_in_delta(0, (worksheet.outputs_emissions_ad131||0), 0.001); end
  def test_outputs_emissions_ae131; assert_in_delta(0, (worksheet.outputs_emissions_ae131||0), 0.001); end
  def test_outputs_emissions_af131; assert_in_delta(0, (worksheet.outputs_emissions_af131||0), 0.001); end
  def test_outputs_emissions_ag131; assert_in_delta(0, (worksheet.outputs_emissions_ag131||0), 0.001); end
  def test_outputs_emissions_ah131; assert_in_delta(0, (worksheet.outputs_emissions_ah131||0), 0.001); end
  def test_outputs_emissions_ai131; assert_in_delta(0, (worksheet.outputs_emissions_ai131||0), 0.001); end
  def test_outputs_emissions_aj131; assert_in_delta(0, (worksheet.outputs_emissions_aj131||0), 0.001); end
  def test_outputs_emissions_d132; assert_equal("Emissions in the time period (up to and including year above)", worksheet.outputs_emissions_d132); end
  def test_outputs_emissions_d133; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d133); end
  def test_outputs_emissions_c136; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c136); end
  def test_outputs_emissions_h137; assert_equal("Historic actuals", worksheet.outputs_emissions_h137); end
  def test_outputs_emissions_r137; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r137); end
  def test_outputs_emissions_aa137; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa137); end
  def test_outputs_emissions_c138; assert_equal("Emissions by sector", worksheet.outputs_emissions_c138); end
  def test_outputs_emissions_d138; assert_equal("Calculator Sector", worksheet.outputs_emissions_d138); end
  def test_outputs_emissions_h138; assert_equal("1970", worksheet.outputs_emissions_h138); end
  def test_outputs_emissions_i138; assert_equal("1975", worksheet.outputs_emissions_i138); end
  def test_outputs_emissions_j138; assert_equal("1980", worksheet.outputs_emissions_j138); end
  def test_outputs_emissions_k138; assert_equal("1985", worksheet.outputs_emissions_k138); end
  def test_outputs_emissions_l138; assert_equal("1990", worksheet.outputs_emissions_l138); end
  def test_outputs_emissions_m138; assert_equal("1995", worksheet.outputs_emissions_m138); end
  def test_outputs_emissions_n138; assert_equal("2000", worksheet.outputs_emissions_n138); end
  def test_outputs_emissions_o138; assert_equal("2005", worksheet.outputs_emissions_o138); end
  def test_outputs_emissions_p138; assert_in_epsilon(2010, worksheet.outputs_emissions_p138, 0.001); end
  def test_outputs_emissions_r138; assert_in_epsilon(2011, worksheet.outputs_emissions_r138, 0.001); end
  def test_outputs_emissions_s138; assert_in_epsilon(2015, worksheet.outputs_emissions_s138, 0.001); end
  def test_outputs_emissions_t138; assert_in_epsilon(2020, worksheet.outputs_emissions_t138, 0.001); end
  def test_outputs_emissions_u138; assert_in_epsilon(2025, worksheet.outputs_emissions_u138, 0.001); end
  def test_outputs_emissions_v138; assert_in_epsilon(2030, worksheet.outputs_emissions_v138, 0.001); end
  def test_outputs_emissions_w138; assert_in_epsilon(2035, worksheet.outputs_emissions_w138, 0.001); end
  def test_outputs_emissions_x138; assert_in_epsilon(2040, worksheet.outputs_emissions_x138, 0.001); end
  def test_outputs_emissions_y138; assert_in_epsilon(2045, worksheet.outputs_emissions_y138, 0.001); end
  def test_outputs_emissions_z138; assert_in_epsilon(2050, worksheet.outputs_emissions_z138, 0.001); end
  def test_outputs_emissions_aa138; assert_in_epsilon(2055, worksheet.outputs_emissions_aa138, 0.001); end
  def test_outputs_emissions_ab138; assert_in_epsilon(2060, worksheet.outputs_emissions_ab138, 0.001); end
  def test_outputs_emissions_ac138; assert_in_epsilon(2065, worksheet.outputs_emissions_ac138, 0.001); end
  def test_outputs_emissions_ad138; assert_in_epsilon(2070, worksheet.outputs_emissions_ad138, 0.001); end
  def test_outputs_emissions_ae138; assert_in_epsilon(2075, worksheet.outputs_emissions_ae138, 0.001); end
  def test_outputs_emissions_af138; assert_in_epsilon(2080, worksheet.outputs_emissions_af138, 0.001); end
  def test_outputs_emissions_ag138; assert_in_epsilon(2085, worksheet.outputs_emissions_ag138, 0.001); end
  def test_outputs_emissions_ah138; assert_in_epsilon(2090, worksheet.outputs_emissions_ah138, 0.001); end
  def test_outputs_emissions_ai138; assert_in_epsilon(2095, worksheet.outputs_emissions_ai138, 0.001); end
  def test_outputs_emissions_aj138; assert_in_epsilon(2100, worksheet.outputs_emissions_aj138, 0.001); end
  def test_outputs_emissions_c139; assert_equal("G.10", worksheet.outputs_emissions_c139); end
  def test_outputs_emissions_d139; assert_equal("Global Transport", worksheet.outputs_emissions_d139); end
  def test_outputs_emissions_s139; assert_in_delta(0, (worksheet.outputs_emissions_s139||0), 0.001); end
  def test_outputs_emissions_c140; assert_equal("G.20", worksheet.outputs_emissions_c140); end
  def test_outputs_emissions_d140; assert_equal("Global Buildings", worksheet.outputs_emissions_d140); end
  def test_outputs_emissions_s140; assert_in_delta(0, (worksheet.outputs_emissions_s140||0), 0.001); end
  def test_outputs_emissions_c141; assert_equal("G.30", worksheet.outputs_emissions_c141); end
  def test_outputs_emissions_d141; assert_equal("Global Materials", worksheet.outputs_emissions_d141); end
  def test_outputs_emissions_s141; assert_in_delta(0, (worksheet.outputs_emissions_s141||0), 0.001); end
  def test_outputs_emissions_c142; assert_equal("G.40", worksheet.outputs_emissions_c142); end
  def test_outputs_emissions_d142; assert_equal("Global Electricity Generation", worksheet.outputs_emissions_d142); end
  def test_outputs_emissions_s142; assert_in_epsilon(5.936687841394841, worksheet.outputs_emissions_s142, 0.001); end
  def test_outputs_emissions_c143; assert_equal("G.50", worksheet.outputs_emissions_c143); end
  def test_outputs_emissions_d143; assert_equal("Global Synthetic Fuel ", worksheet.outputs_emissions_d143); end
  def test_outputs_emissions_s143; assert_in_delta(0, (worksheet.outputs_emissions_s143||0), 0.001); end
  def test_outputs_emissions_c144; assert_equal("G.60", worksheet.outputs_emissions_c144); end
  def test_outputs_emissions_d144; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d144); end
  def test_outputs_emissions_s144; assert_in_delta(0, (worksheet.outputs_emissions_s144||0), 0.001); end
  def test_outputs_emissions_d145; assert_equal("Total", worksheet.outputs_emissions_d145); end
  def test_outputs_emissions_h145; assert_in_delta(0, (worksheet.outputs_emissions_h145||0), 0.001); end
  def test_outputs_emissions_i145; assert_in_delta(0, (worksheet.outputs_emissions_i145||0), 0.001); end
  def test_outputs_emissions_j145; assert_in_delta(0, (worksheet.outputs_emissions_j145||0), 0.001); end
  def test_outputs_emissions_k145; assert_in_delta(0, (worksheet.outputs_emissions_k145||0), 0.001); end
  def test_outputs_emissions_l145; assert_in_delta(0, (worksheet.outputs_emissions_l145||0), 0.001); end
  def test_outputs_emissions_m145; assert_in_delta(0, (worksheet.outputs_emissions_m145||0), 0.001); end
  def test_outputs_emissions_n145; assert_in_delta(0, (worksheet.outputs_emissions_n145||0), 0.001); end
  def test_outputs_emissions_o145; assert_in_delta(0, (worksheet.outputs_emissions_o145||0), 0.001); end
  def test_outputs_emissions_p145; assert_in_delta(0, (worksheet.outputs_emissions_p145||0), 0.001); end
  def test_outputs_emissions_r145; assert_in_delta(0, (worksheet.outputs_emissions_r145||0), 0.001); end
  def test_outputs_emissions_s145; assert_in_epsilon(5.936687841394841, worksheet.outputs_emissions_s145, 0.001); end
  def test_outputs_emissions_t145; assert_in_delta(0, (worksheet.outputs_emissions_t145||0), 0.001); end
  def test_outputs_emissions_u145; assert_in_delta(0, (worksheet.outputs_emissions_u145||0), 0.001); end
  def test_outputs_emissions_v145; assert_in_delta(0, (worksheet.outputs_emissions_v145||0), 0.001); end
  def test_outputs_emissions_w145; assert_in_delta(0, (worksheet.outputs_emissions_w145||0), 0.001); end
  def test_outputs_emissions_x145; assert_in_delta(0, (worksheet.outputs_emissions_x145||0), 0.001); end
  def test_outputs_emissions_y145; assert_in_delta(0, (worksheet.outputs_emissions_y145||0), 0.001); end
  def test_outputs_emissions_z145; assert_in_delta(0, (worksheet.outputs_emissions_z145||0), 0.001); end
  def test_outputs_emissions_aa145; assert_in_delta(0, (worksheet.outputs_emissions_aa145||0), 0.001); end
  def test_outputs_emissions_ab145; assert_in_delta(0, (worksheet.outputs_emissions_ab145||0), 0.001); end
  def test_outputs_emissions_ac145; assert_in_delta(0, (worksheet.outputs_emissions_ac145||0), 0.001); end
  def test_outputs_emissions_ad145; assert_in_delta(0, (worksheet.outputs_emissions_ad145||0), 0.001); end
  def test_outputs_emissions_ae145; assert_in_delta(0, (worksheet.outputs_emissions_ae145||0), 0.001); end
  def test_outputs_emissions_af145; assert_in_delta(0, (worksheet.outputs_emissions_af145||0), 0.001); end
  def test_outputs_emissions_ag145; assert_in_delta(0, (worksheet.outputs_emissions_ag145||0), 0.001); end
  def test_outputs_emissions_ah145; assert_in_delta(0, (worksheet.outputs_emissions_ah145||0), 0.001); end
  def test_outputs_emissions_ai145; assert_in_delta(0, (worksheet.outputs_emissions_ai145||0), 0.001); end
  def test_outputs_emissions_aj145; assert_in_delta(0, (worksheet.outputs_emissions_aj145||0), 0.001); end
  def test_outputs_emissions_d146; assert_equal("Emissions in the time period (up to and including year above)", worksheet.outputs_emissions_d146); end
  def test_outputs_emissions_d147; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d147); end
  def test_outputs_emissions_c150; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c150); end
  def test_outputs_emissions_h151; assert_equal("Historic actuals", worksheet.outputs_emissions_h151); end
  def test_outputs_emissions_r151; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r151); end
  def test_outputs_emissions_aa151; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa151); end
  def test_outputs_emissions_c152; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c152); end
  def test_outputs_emissions_h152; assert_equal("1970", worksheet.outputs_emissions_h152); end
  def test_outputs_emissions_i152; assert_equal("1975", worksheet.outputs_emissions_i152); end
  def test_outputs_emissions_j152; assert_equal("1980", worksheet.outputs_emissions_j152); end
  def test_outputs_emissions_k152; assert_equal("1985", worksheet.outputs_emissions_k152); end
  def test_outputs_emissions_l152; assert_equal("1990", worksheet.outputs_emissions_l152); end
  def test_outputs_emissions_m152; assert_equal("1995", worksheet.outputs_emissions_m152); end
  def test_outputs_emissions_n152; assert_equal("2000", worksheet.outputs_emissions_n152); end
  def test_outputs_emissions_o152; assert_equal("2005", worksheet.outputs_emissions_o152); end
  def test_outputs_emissions_p152; assert_in_epsilon(2010, worksheet.outputs_emissions_p152, 0.001); end
  def test_outputs_emissions_r152; assert_in_epsilon(2011, worksheet.outputs_emissions_r152, 0.001); end
  def test_outputs_emissions_s152; assert_in_epsilon(2015, worksheet.outputs_emissions_s152, 0.001); end
  def test_outputs_emissions_t152; assert_in_epsilon(2020, worksheet.outputs_emissions_t152, 0.001); end
  def test_outputs_emissions_u152; assert_in_epsilon(2025, worksheet.outputs_emissions_u152, 0.001); end
  def test_outputs_emissions_v152; assert_in_epsilon(2030, worksheet.outputs_emissions_v152, 0.001); end
  def test_outputs_emissions_w152; assert_in_epsilon(2035, worksheet.outputs_emissions_w152, 0.001); end
  def test_outputs_emissions_x152; assert_in_epsilon(2040, worksheet.outputs_emissions_x152, 0.001); end
  def test_outputs_emissions_y152; assert_in_epsilon(2045, worksheet.outputs_emissions_y152, 0.001); end
  def test_outputs_emissions_z152; assert_in_epsilon(2050, worksheet.outputs_emissions_z152, 0.001); end
  def test_outputs_emissions_aa152; assert_in_epsilon(2055, worksheet.outputs_emissions_aa152, 0.001); end
  def test_outputs_emissions_ab152; assert_in_epsilon(2060, worksheet.outputs_emissions_ab152, 0.001); end
  def test_outputs_emissions_ac152; assert_in_epsilon(2065, worksheet.outputs_emissions_ac152, 0.001); end
  def test_outputs_emissions_ad152; assert_in_epsilon(2070, worksheet.outputs_emissions_ad152, 0.001); end
  def test_outputs_emissions_ae152; assert_in_epsilon(2075, worksheet.outputs_emissions_ae152, 0.001); end
  def test_outputs_emissions_af152; assert_in_epsilon(2080, worksheet.outputs_emissions_af152, 0.001); end
  def test_outputs_emissions_ag152; assert_in_epsilon(2085, worksheet.outputs_emissions_ag152, 0.001); end
  def test_outputs_emissions_ah152; assert_in_epsilon(2090, worksheet.outputs_emissions_ah152, 0.001); end
  def test_outputs_emissions_ai152; assert_in_epsilon(2095, worksheet.outputs_emissions_ai152, 0.001); end
  def test_outputs_emissions_aj152; assert_in_epsilon(2100, worksheet.outputs_emissions_aj152, 0.001); end
  def test_outputs_emissions_c153; assert_equal("G.efficient.solid.elec", worksheet.outputs_emissions_c153); end
  def test_outputs_emissions_d153; assert_equal(:na, worksheet.outputs_emissions_d153); end
  def test_outputs_emissions_s153; assert_equal(:na, worksheet.outputs_emissions_s153); end
  def test_outputs_emissions_c154; assert_equal("G.inefficient.solid.elec", worksheet.outputs_emissions_c154); end
  def test_outputs_emissions_d154; assert_equal(:na, worksheet.outputs_emissions_d154); end
  def test_outputs_emissions_s154; assert_equal(:na, worksheet.outputs_emissions_s154); end
  def test_outputs_emissions_c155; assert_equal("G.efficient.liquid.elec", worksheet.outputs_emissions_c155); end
  def test_outputs_emissions_d155; assert_equal(:na, worksheet.outputs_emissions_d155); end
  def test_outputs_emissions_s155; assert_equal(:na, worksheet.outputs_emissions_s155); end
  def test_outputs_emissions_c156; assert_equal("G.inefficient.liquid.elec", worksheet.outputs_emissions_c156); end
  def test_outputs_emissions_d156; assert_equal(:na, worksheet.outputs_emissions_d156); end
  def test_outputs_emissions_s156; assert_equal(:na, worksheet.outputs_emissions_s156); end
  def test_outputs_emissions_c157; assert_equal("G.efficient.gas.elec", worksheet.outputs_emissions_c157); end
  def test_outputs_emissions_d157; assert_equal(:na, worksheet.outputs_emissions_d157); end
  def test_outputs_emissions_s157; assert_equal(:na, worksheet.outputs_emissions_s157); end
  def test_outputs_emissions_c158; assert_equal("G.inefficient.gas.elec", worksheet.outputs_emissions_c158); end
  def test_outputs_emissions_d158; assert_equal(:na, worksheet.outputs_emissions_d158); end
  def test_outputs_emissions_s158; assert_equal(:na, worksheet.outputs_emissions_s158); end
  def test_outputs_emissions_c159; assert_equal("G.CCS.soild.elec", worksheet.outputs_emissions_c159); end
  def test_outputs_emissions_d159; assert_equal(:na, worksheet.outputs_emissions_d159); end
  def test_outputs_emissions_s159; assert_equal(:na, worksheet.outputs_emissions_s159); end
  def test_outputs_emissions_c160; assert_equal("G.CCS.liquid.elec", worksheet.outputs_emissions_c160); end
  def test_outputs_emissions_d160; assert_equal(:na, worksheet.outputs_emissions_d160); end
  def test_outputs_emissions_s160; assert_equal(:na, worksheet.outputs_emissions_s160); end
  def test_outputs_emissions_c161; assert_equal("G.CCS.gas.elec", worksheet.outputs_emissions_c161); end
  def test_outputs_emissions_d161; assert_equal(:na, worksheet.outputs_emissions_d161); end
  def test_outputs_emissions_s161; assert_equal(:na, worksheet.outputs_emissions_s161); end
  def test_outputs_emissions_d162; assert_equal("Total emissions from power", worksheet.outputs_emissions_d162); end
  def test_outputs_emissions_h162; assert_in_delta(0, (worksheet.outputs_emissions_h162||0), 0.001); end
  def test_outputs_emissions_i162; assert_in_delta(0, (worksheet.outputs_emissions_i162||0), 0.001); end
  def test_outputs_emissions_j162; assert_in_delta(0, (worksheet.outputs_emissions_j162||0), 0.001); end
  def test_outputs_emissions_k162; assert_in_delta(0, (worksheet.outputs_emissions_k162||0), 0.001); end
  def test_outputs_emissions_l162; assert_in_delta(0, (worksheet.outputs_emissions_l162||0), 0.001); end
  def test_outputs_emissions_m162; assert_in_delta(0, (worksheet.outputs_emissions_m162||0), 0.001); end
  def test_outputs_emissions_n162; assert_in_delta(0, (worksheet.outputs_emissions_n162||0), 0.001); end
  def test_outputs_emissions_o162; assert_in_delta(0, (worksheet.outputs_emissions_o162||0), 0.001); end
  def test_outputs_emissions_p162; assert_in_delta(0, (worksheet.outputs_emissions_p162||0), 0.001); end
  def test_outputs_emissions_r162; assert_in_delta(0, (worksheet.outputs_emissions_r162||0), 0.001); end
  def test_outputs_emissions_s162; assert_equal(:na, worksheet.outputs_emissions_s162); end
  def test_outputs_emissions_t162; assert_in_delta(0, (worksheet.outputs_emissions_t162||0), 0.001); end
  def test_outputs_emissions_u162; assert_in_delta(0, (worksheet.outputs_emissions_u162||0), 0.001); end
  def test_outputs_emissions_v162; assert_in_delta(0, (worksheet.outputs_emissions_v162||0), 0.001); end
  def test_outputs_emissions_w162; assert_in_delta(0, (worksheet.outputs_emissions_w162||0), 0.001); end
  def test_outputs_emissions_x162; assert_in_delta(0, (worksheet.outputs_emissions_x162||0), 0.001); end
  def test_outputs_emissions_y162; assert_in_delta(0, (worksheet.outputs_emissions_y162||0), 0.001); end
  def test_outputs_emissions_z162; assert_in_delta(0, (worksheet.outputs_emissions_z162||0), 0.001); end
  def test_outputs_emissions_aa162; assert_in_delta(0, (worksheet.outputs_emissions_aa162||0), 0.001); end
  def test_outputs_emissions_ab162; assert_in_delta(0, (worksheet.outputs_emissions_ab162||0), 0.001); end
  def test_outputs_emissions_ac162; assert_in_delta(0, (worksheet.outputs_emissions_ac162||0), 0.001); end
  def test_outputs_emissions_ad162; assert_in_delta(0, (worksheet.outputs_emissions_ad162||0), 0.001); end
  def test_outputs_emissions_ae162; assert_in_delta(0, (worksheet.outputs_emissions_ae162||0), 0.001); end
  def test_outputs_emissions_af162; assert_in_delta(0, (worksheet.outputs_emissions_af162||0), 0.001); end
  def test_outputs_emissions_ag162; assert_in_delta(0, (worksheet.outputs_emissions_ag162||0), 0.001); end
  def test_outputs_emissions_ah162; assert_in_delta(0, (worksheet.outputs_emissions_ah162||0), 0.001); end
  def test_outputs_emissions_ai162; assert_in_delta(0, (worksheet.outputs_emissions_ai162||0), 0.001); end
  def test_outputs_emissions_aj162; assert_in_delta(0, (worksheet.outputs_emissions_aj162||0), 0.001); end
  def test_outputs_emissions_c163; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c163); end
  def test_outputs_emissions_c166; assert_equal("Emissions intensity", worksheet.outputs_emissions_c166); end
  def test_outputs_emissions_d166; assert_equal("Mt/TWh", worksheet.outputs_emissions_d166); end
  def test_outputs_emissions_d167; assert_equal("g/KWh", worksheet.outputs_emissions_d167); end
  def test_outputs_emissions_b172; assert_equal("N2O", worksheet.outputs_emissions_b172); end
  def test_outputs_emissions_c172; assert_equal("NITROUS OXIDE", worksheet.outputs_emissions_c172); end
  def test_outputs_emissions_c174; assert_equal("Emissions as % of 1990", worksheet.outputs_emissions_c174); end
  def test_outputs_emissions_aj174; assert_equal("%", worksheet.outputs_emissions_aj174); end
  def test_outputs_emissions_h175; assert_equal("Historic actuals", worksheet.outputs_emissions_h175); end
  def test_outputs_emissions_r175; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r175); end
  def test_outputs_emissions_aa175; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa175); end
  def test_outputs_emissions_d176; assert_equal("IPCC Sector", worksheet.outputs_emissions_d176); end
  def test_outputs_emissions_h176; assert_equal("1970", worksheet.outputs_emissions_h176); end
  def test_outputs_emissions_i176; assert_equal("1975", worksheet.outputs_emissions_i176); end
  def test_outputs_emissions_j176; assert_equal("1980", worksheet.outputs_emissions_j176); end
  def test_outputs_emissions_k176; assert_equal("1985", worksheet.outputs_emissions_k176); end
  def test_outputs_emissions_l176; assert_equal("1990", worksheet.outputs_emissions_l176); end
  def test_outputs_emissions_m176; assert_equal("1995", worksheet.outputs_emissions_m176); end
  def test_outputs_emissions_n176; assert_equal("2000", worksheet.outputs_emissions_n176); end
  def test_outputs_emissions_o176; assert_equal("2005", worksheet.outputs_emissions_o176); end
  def test_outputs_emissions_p176; assert_in_epsilon(2010, worksheet.outputs_emissions_p176, 0.001); end
  def test_outputs_emissions_r176; assert_in_epsilon(2011, worksheet.outputs_emissions_r176, 0.001); end
  def test_outputs_emissions_s176; assert_in_epsilon(2015, worksheet.outputs_emissions_s176, 0.001); end
  def test_outputs_emissions_t176; assert_in_epsilon(2020, worksheet.outputs_emissions_t176, 0.001); end
  def test_outputs_emissions_u176; assert_in_epsilon(2025, worksheet.outputs_emissions_u176, 0.001); end
  def test_outputs_emissions_v176; assert_in_epsilon(2030, worksheet.outputs_emissions_v176, 0.001); end
  def test_outputs_emissions_w176; assert_in_epsilon(2035, worksheet.outputs_emissions_w176, 0.001); end
  def test_outputs_emissions_x176; assert_in_epsilon(2040, worksheet.outputs_emissions_x176, 0.001); end
  def test_outputs_emissions_y176; assert_in_epsilon(2045, worksheet.outputs_emissions_y176, 0.001); end
  def test_outputs_emissions_z176; assert_in_epsilon(2050, worksheet.outputs_emissions_z176, 0.001); end
  def test_outputs_emissions_aa176; assert_in_epsilon(2055, worksheet.outputs_emissions_aa176, 0.001); end
  def test_outputs_emissions_ab176; assert_equal("2060", worksheet.outputs_emissions_ab176); end
  def test_outputs_emissions_ac176; assert_in_epsilon(2065, worksheet.outputs_emissions_ac176, 0.001); end
  def test_outputs_emissions_ad176; assert_in_epsilon(2070, worksheet.outputs_emissions_ad176, 0.001); end
  def test_outputs_emissions_ae176; assert_in_epsilon(2075, worksheet.outputs_emissions_ae176, 0.001); end
  def test_outputs_emissions_af176; assert_in_epsilon(2080, worksheet.outputs_emissions_af176, 0.001); end
  def test_outputs_emissions_ag176; assert_in_epsilon(2085, worksheet.outputs_emissions_ag176, 0.001); end
  def test_outputs_emissions_ah176; assert_in_epsilon(2090, worksheet.outputs_emissions_ah176, 0.001); end
  def test_outputs_emissions_ai176; assert_in_epsilon(2095, worksheet.outputs_emissions_ai176, 0.001); end
  def test_outputs_emissions_aj176; assert_in_epsilon(2100, worksheet.outputs_emissions_aj176, 0.001); end
  def test_outputs_emissions_c177; assert_equal("G.1A", worksheet.outputs_emissions_c177); end
  def test_outputs_emissions_d177; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d177); end
  def test_outputs_emissions_h177; assert_equal("n/a", worksheet.outputs_emissions_h177); end
  def test_outputs_emissions_i177; assert_equal("n/a", worksheet.outputs_emissions_i177); end
  def test_outputs_emissions_j177; assert_equal("n/a", worksheet.outputs_emissions_j177); end
  def test_outputs_emissions_k177; assert_equal("n/a", worksheet.outputs_emissions_k177); end
  def test_outputs_emissions_l177; assert_equal("n/a", worksheet.outputs_emissions_l177); end
  def test_outputs_emissions_m177; assert_equal("n/a", worksheet.outputs_emissions_m177); end
  def test_outputs_emissions_n177; assert_equal("n/a", worksheet.outputs_emissions_n177); end
  def test_outputs_emissions_o177; assert_equal("n/a", worksheet.outputs_emissions_o177); end
  def test_outputs_emissions_p177; assert_equal("n/a", worksheet.outputs_emissions_p177); end
  def test_outputs_emissions_r177; assert_equal("n/a", worksheet.outputs_emissions_r177); end
  def test_outputs_emissions_s177; assert_equal("n/a", worksheet.outputs_emissions_s177); end
  def test_outputs_emissions_t177; assert_equal("n/a", worksheet.outputs_emissions_t177); end
  def test_outputs_emissions_u177; assert_equal("n/a", worksheet.outputs_emissions_u177); end
  def test_outputs_emissions_v177; assert_equal("n/a", worksheet.outputs_emissions_v177); end
  def test_outputs_emissions_w177; assert_equal("n/a", worksheet.outputs_emissions_w177); end
  def test_outputs_emissions_x177; assert_equal("n/a", worksheet.outputs_emissions_x177); end
  def test_outputs_emissions_y177; assert_equal("n/a", worksheet.outputs_emissions_y177); end
  def test_outputs_emissions_z177; assert_equal("n/a", worksheet.outputs_emissions_z177); end
  def test_outputs_emissions_aa177; assert_equal("n/a", worksheet.outputs_emissions_aa177); end
  def test_outputs_emissions_ab177; assert_equal("n/a", worksheet.outputs_emissions_ab177); end
  def test_outputs_emissions_ac177; assert_equal("n/a", worksheet.outputs_emissions_ac177); end
  def test_outputs_emissions_ad177; assert_equal("n/a", worksheet.outputs_emissions_ad177); end
  def test_outputs_emissions_ae177; assert_equal("n/a", worksheet.outputs_emissions_ae177); end
  def test_outputs_emissions_af177; assert_equal("n/a", worksheet.outputs_emissions_af177); end
  def test_outputs_emissions_ag177; assert_equal("n/a", worksheet.outputs_emissions_ag177); end
  def test_outputs_emissions_ah177; assert_equal("n/a", worksheet.outputs_emissions_ah177); end
  def test_outputs_emissions_ai177; assert_equal("n/a", worksheet.outputs_emissions_ai177); end
  def test_outputs_emissions_aj177; assert_equal("n/a", worksheet.outputs_emissions_aj177); end
  def test_outputs_emissions_c178; assert_equal("G.1B", worksheet.outputs_emissions_c178); end
  def test_outputs_emissions_d178; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d178); end
  def test_outputs_emissions_h178; assert_equal("n/a", worksheet.outputs_emissions_h178); end
  def test_outputs_emissions_i178; assert_equal("n/a", worksheet.outputs_emissions_i178); end
  def test_outputs_emissions_j178; assert_equal("n/a", worksheet.outputs_emissions_j178); end
  def test_outputs_emissions_k178; assert_equal("n/a", worksheet.outputs_emissions_k178); end
  def test_outputs_emissions_l178; assert_equal("n/a", worksheet.outputs_emissions_l178); end
  def test_outputs_emissions_m178; assert_equal("n/a", worksheet.outputs_emissions_m178); end
  def test_outputs_emissions_n178; assert_equal("n/a", worksheet.outputs_emissions_n178); end
  def test_outputs_emissions_o178; assert_equal("n/a", worksheet.outputs_emissions_o178); end
  def test_outputs_emissions_p178; assert_equal("n/a", worksheet.outputs_emissions_p178); end
  def test_outputs_emissions_r178; assert_equal("n/a", worksheet.outputs_emissions_r178); end
  def test_outputs_emissions_s178; assert_equal("n/a", worksheet.outputs_emissions_s178); end
  def test_outputs_emissions_t178; assert_equal("n/a", worksheet.outputs_emissions_t178); end
  def test_outputs_emissions_u178; assert_equal("n/a", worksheet.outputs_emissions_u178); end
  def test_outputs_emissions_v178; assert_equal("n/a", worksheet.outputs_emissions_v178); end
  def test_outputs_emissions_w178; assert_equal("n/a", worksheet.outputs_emissions_w178); end
  def test_outputs_emissions_x178; assert_equal("n/a", worksheet.outputs_emissions_x178); end
  def test_outputs_emissions_y178; assert_equal("n/a", worksheet.outputs_emissions_y178); end
  def test_outputs_emissions_z178; assert_equal("n/a", worksheet.outputs_emissions_z178); end
  def test_outputs_emissions_aa178; assert_equal("n/a", worksheet.outputs_emissions_aa178); end
  def test_outputs_emissions_ab178; assert_equal("n/a", worksheet.outputs_emissions_ab178); end
  def test_outputs_emissions_ac178; assert_equal("n/a", worksheet.outputs_emissions_ac178); end
  def test_outputs_emissions_ad178; assert_equal("n/a", worksheet.outputs_emissions_ad178); end
  def test_outputs_emissions_ae178; assert_equal("n/a", worksheet.outputs_emissions_ae178); end
  def test_outputs_emissions_af178; assert_equal("n/a", worksheet.outputs_emissions_af178); end
  def test_outputs_emissions_ag178; assert_equal("n/a", worksheet.outputs_emissions_ag178); end
  def test_outputs_emissions_ah178; assert_equal("n/a", worksheet.outputs_emissions_ah178); end
  def test_outputs_emissions_ai178; assert_equal("n/a", worksheet.outputs_emissions_ai178); end
  def test_outputs_emissions_aj178; assert_equal("n/a", worksheet.outputs_emissions_aj178); end
  def test_outputs_emissions_c179; assert_equal("G.2", worksheet.outputs_emissions_c179); end
  def test_outputs_emissions_d179; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d179); end
  def test_outputs_emissions_h179; assert_equal("n/a", worksheet.outputs_emissions_h179); end
  def test_outputs_emissions_i179; assert_equal("n/a", worksheet.outputs_emissions_i179); end
  def test_outputs_emissions_j179; assert_equal("n/a", worksheet.outputs_emissions_j179); end
  def test_outputs_emissions_k179; assert_equal("n/a", worksheet.outputs_emissions_k179); end
  def test_outputs_emissions_l179; assert_equal("n/a", worksheet.outputs_emissions_l179); end
  def test_outputs_emissions_m179; assert_equal("n/a", worksheet.outputs_emissions_m179); end
  def test_outputs_emissions_n179; assert_equal("n/a", worksheet.outputs_emissions_n179); end
  def test_outputs_emissions_o179; assert_equal("n/a", worksheet.outputs_emissions_o179); end
  def test_outputs_emissions_p179; assert_equal("n/a", worksheet.outputs_emissions_p179); end
  def test_outputs_emissions_r179; assert_equal("n/a", worksheet.outputs_emissions_r179); end
  def test_outputs_emissions_s179; assert_equal("n/a", worksheet.outputs_emissions_s179); end
  def test_outputs_emissions_t179; assert_equal("n/a", worksheet.outputs_emissions_t179); end
  def test_outputs_emissions_u179; assert_equal("n/a", worksheet.outputs_emissions_u179); end
  def test_outputs_emissions_v179; assert_equal("n/a", worksheet.outputs_emissions_v179); end
  def test_outputs_emissions_w179; assert_equal("n/a", worksheet.outputs_emissions_w179); end
  def test_outputs_emissions_x179; assert_equal("n/a", worksheet.outputs_emissions_x179); end
  def test_outputs_emissions_y179; assert_equal("n/a", worksheet.outputs_emissions_y179); end
  def test_outputs_emissions_z179; assert_equal("n/a", worksheet.outputs_emissions_z179); end
  def test_outputs_emissions_aa179; assert_equal("n/a", worksheet.outputs_emissions_aa179); end
  def test_outputs_emissions_ab179; assert_equal("n/a", worksheet.outputs_emissions_ab179); end
  def test_outputs_emissions_ac179; assert_equal("n/a", worksheet.outputs_emissions_ac179); end
  def test_outputs_emissions_ad179; assert_equal("n/a", worksheet.outputs_emissions_ad179); end
  def test_outputs_emissions_ae179; assert_equal("n/a", worksheet.outputs_emissions_ae179); end
  def test_outputs_emissions_af179; assert_equal("n/a", worksheet.outputs_emissions_af179); end
  def test_outputs_emissions_ag179; assert_equal("n/a", worksheet.outputs_emissions_ag179); end
  def test_outputs_emissions_ah179; assert_equal("n/a", worksheet.outputs_emissions_ah179); end
  def test_outputs_emissions_ai179; assert_equal("n/a", worksheet.outputs_emissions_ai179); end
  def test_outputs_emissions_aj179; assert_equal("n/a", worksheet.outputs_emissions_aj179); end
  def test_outputs_emissions_c180; assert_equal("G.3", worksheet.outputs_emissions_c180); end
  def test_outputs_emissions_d180; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d180); end
  def test_outputs_emissions_h180; assert_equal("n/a", worksheet.outputs_emissions_h180); end
  def test_outputs_emissions_i180; assert_equal("n/a", worksheet.outputs_emissions_i180); end
  def test_outputs_emissions_j180; assert_equal("n/a", worksheet.outputs_emissions_j180); end
  def test_outputs_emissions_k180; assert_equal("n/a", worksheet.outputs_emissions_k180); end
  def test_outputs_emissions_l180; assert_equal("n/a", worksheet.outputs_emissions_l180); end
  def test_outputs_emissions_m180; assert_equal("n/a", worksheet.outputs_emissions_m180); end
  def test_outputs_emissions_n180; assert_equal("n/a", worksheet.outputs_emissions_n180); end
  def test_outputs_emissions_o180; assert_equal("n/a", worksheet.outputs_emissions_o180); end
  def test_outputs_emissions_p180; assert_equal("n/a", worksheet.outputs_emissions_p180); end
  def test_outputs_emissions_r180; assert_equal("n/a", worksheet.outputs_emissions_r180); end
  def test_outputs_emissions_s180; assert_equal("n/a", worksheet.outputs_emissions_s180); end
  def test_outputs_emissions_t180; assert_equal("n/a", worksheet.outputs_emissions_t180); end
  def test_outputs_emissions_u180; assert_equal("n/a", worksheet.outputs_emissions_u180); end
  def test_outputs_emissions_v180; assert_equal("n/a", worksheet.outputs_emissions_v180); end
  def test_outputs_emissions_w180; assert_equal("n/a", worksheet.outputs_emissions_w180); end
  def test_outputs_emissions_x180; assert_equal("n/a", worksheet.outputs_emissions_x180); end
  def test_outputs_emissions_y180; assert_equal("n/a", worksheet.outputs_emissions_y180); end
  def test_outputs_emissions_z180; assert_equal("n/a", worksheet.outputs_emissions_z180); end
  def test_outputs_emissions_aa180; assert_equal("n/a", worksheet.outputs_emissions_aa180); end
  def test_outputs_emissions_ab180; assert_equal("n/a", worksheet.outputs_emissions_ab180); end
  def test_outputs_emissions_ac180; assert_equal("n/a", worksheet.outputs_emissions_ac180); end
  def test_outputs_emissions_ad180; assert_equal("n/a", worksheet.outputs_emissions_ad180); end
  def test_outputs_emissions_ae180; assert_equal("n/a", worksheet.outputs_emissions_ae180); end
  def test_outputs_emissions_af180; assert_equal("n/a", worksheet.outputs_emissions_af180); end
  def test_outputs_emissions_ag180; assert_equal("n/a", worksheet.outputs_emissions_ag180); end
  def test_outputs_emissions_ah180; assert_equal("n/a", worksheet.outputs_emissions_ah180); end
  def test_outputs_emissions_ai180; assert_equal("n/a", worksheet.outputs_emissions_ai180); end
  def test_outputs_emissions_aj180; assert_equal("n/a", worksheet.outputs_emissions_aj180); end
  def test_outputs_emissions_c181; assert_equal("G.4", worksheet.outputs_emissions_c181); end
  def test_outputs_emissions_d181; assert_equal("Global Agriculture", worksheet.outputs_emissions_d181); end
  def test_outputs_emissions_h181; assert_equal("n/a", worksheet.outputs_emissions_h181); end
  def test_outputs_emissions_i181; assert_equal("n/a", worksheet.outputs_emissions_i181); end
  def test_outputs_emissions_j181; assert_equal("n/a", worksheet.outputs_emissions_j181); end
  def test_outputs_emissions_k181; assert_equal("n/a", worksheet.outputs_emissions_k181); end
  def test_outputs_emissions_l181; assert_equal("n/a", worksheet.outputs_emissions_l181); end
  def test_outputs_emissions_m181; assert_equal("n/a", worksheet.outputs_emissions_m181); end
  def test_outputs_emissions_n181; assert_equal("n/a", worksheet.outputs_emissions_n181); end
  def test_outputs_emissions_o181; assert_equal("n/a", worksheet.outputs_emissions_o181); end
  def test_outputs_emissions_p181; assert_equal("n/a", worksheet.outputs_emissions_p181); end
  def test_outputs_emissions_r181; assert_equal("n/a", worksheet.outputs_emissions_r181); end
  def test_outputs_emissions_s181; assert_equal("n/a", worksheet.outputs_emissions_s181); end
  def test_outputs_emissions_t181; assert_equal("n/a", worksheet.outputs_emissions_t181); end
  def test_outputs_emissions_u181; assert_equal("n/a", worksheet.outputs_emissions_u181); end
  def test_outputs_emissions_v181; assert_equal("n/a", worksheet.outputs_emissions_v181); end
  def test_outputs_emissions_w181; assert_equal("n/a", worksheet.outputs_emissions_w181); end
  def test_outputs_emissions_x181; assert_equal("n/a", worksheet.outputs_emissions_x181); end
  def test_outputs_emissions_y181; assert_equal("n/a", worksheet.outputs_emissions_y181); end
  def test_outputs_emissions_z181; assert_equal("n/a", worksheet.outputs_emissions_z181); end
  def test_outputs_emissions_aa181; assert_equal("n/a", worksheet.outputs_emissions_aa181); end
  def test_outputs_emissions_ab181; assert_equal("n/a", worksheet.outputs_emissions_ab181); end
  def test_outputs_emissions_ac181; assert_equal("n/a", worksheet.outputs_emissions_ac181); end
  def test_outputs_emissions_ad181; assert_equal("n/a", worksheet.outputs_emissions_ad181); end
  def test_outputs_emissions_ae181; assert_equal("n/a", worksheet.outputs_emissions_ae181); end
  def test_outputs_emissions_af181; assert_equal("n/a", worksheet.outputs_emissions_af181); end
  def test_outputs_emissions_ag181; assert_equal("n/a", worksheet.outputs_emissions_ag181); end
  def test_outputs_emissions_ah181; assert_equal("n/a", worksheet.outputs_emissions_ah181); end
  def test_outputs_emissions_ai181; assert_equal("n/a", worksheet.outputs_emissions_ai181); end
  def test_outputs_emissions_aj181; assert_equal("n/a", worksheet.outputs_emissions_aj181); end
  def test_outputs_emissions_c182; assert_equal("G.5", worksheet.outputs_emissions_c182); end
  def test_outputs_emissions_d182; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d182); end
  def test_outputs_emissions_h182; assert_equal("n/a", worksheet.outputs_emissions_h182); end
  def test_outputs_emissions_i182; assert_equal("n/a", worksheet.outputs_emissions_i182); end
  def test_outputs_emissions_j182; assert_equal("n/a", worksheet.outputs_emissions_j182); end
  def test_outputs_emissions_k182; assert_equal("n/a", worksheet.outputs_emissions_k182); end
  def test_outputs_emissions_l182; assert_equal("n/a", worksheet.outputs_emissions_l182); end
  def test_outputs_emissions_m182; assert_equal("n/a", worksheet.outputs_emissions_m182); end
  def test_outputs_emissions_n182; assert_equal("n/a", worksheet.outputs_emissions_n182); end
  def test_outputs_emissions_o182; assert_equal("n/a", worksheet.outputs_emissions_o182); end
  def test_outputs_emissions_p182; assert_equal("n/a", worksheet.outputs_emissions_p182); end
  def test_outputs_emissions_r182; assert_equal("n/a", worksheet.outputs_emissions_r182); end
  def test_outputs_emissions_s182; assert_equal("n/a", worksheet.outputs_emissions_s182); end
  def test_outputs_emissions_t182; assert_equal("n/a", worksheet.outputs_emissions_t182); end
  def test_outputs_emissions_u182; assert_equal("n/a", worksheet.outputs_emissions_u182); end
  def test_outputs_emissions_v182; assert_equal("n/a", worksheet.outputs_emissions_v182); end
  def test_outputs_emissions_w182; assert_equal("n/a", worksheet.outputs_emissions_w182); end
  def test_outputs_emissions_x182; assert_equal("n/a", worksheet.outputs_emissions_x182); end
  def test_outputs_emissions_y182; assert_equal("n/a", worksheet.outputs_emissions_y182); end
  def test_outputs_emissions_z182; assert_equal("n/a", worksheet.outputs_emissions_z182); end
  def test_outputs_emissions_aa182; assert_equal("n/a", worksheet.outputs_emissions_aa182); end
  def test_outputs_emissions_ab182; assert_equal("n/a", worksheet.outputs_emissions_ab182); end
  def test_outputs_emissions_ac182; assert_equal("n/a", worksheet.outputs_emissions_ac182); end
  def test_outputs_emissions_ad182; assert_equal("n/a", worksheet.outputs_emissions_ad182); end
  def test_outputs_emissions_ae182; assert_equal("n/a", worksheet.outputs_emissions_ae182); end
  def test_outputs_emissions_af182; assert_equal("n/a", worksheet.outputs_emissions_af182); end
  def test_outputs_emissions_ag182; assert_equal("n/a", worksheet.outputs_emissions_ag182); end
  def test_outputs_emissions_ah182; assert_equal("n/a", worksheet.outputs_emissions_ah182); end
  def test_outputs_emissions_ai182; assert_equal("n/a", worksheet.outputs_emissions_ai182); end
  def test_outputs_emissions_aj182; assert_equal("n/a", worksheet.outputs_emissions_aj182); end
  def test_outputs_emissions_c183; assert_equal("G.6", worksheet.outputs_emissions_c183); end
  def test_outputs_emissions_d183; assert_equal("Global Waste", worksheet.outputs_emissions_d183); end
  def test_outputs_emissions_h183; assert_equal("n/a", worksheet.outputs_emissions_h183); end
  def test_outputs_emissions_i183; assert_equal("n/a", worksheet.outputs_emissions_i183); end
  def test_outputs_emissions_j183; assert_equal("n/a", worksheet.outputs_emissions_j183); end
  def test_outputs_emissions_k183; assert_equal("n/a", worksheet.outputs_emissions_k183); end
  def test_outputs_emissions_l183; assert_equal("n/a", worksheet.outputs_emissions_l183); end
  def test_outputs_emissions_m183; assert_equal("n/a", worksheet.outputs_emissions_m183); end
  def test_outputs_emissions_n183; assert_equal("n/a", worksheet.outputs_emissions_n183); end
  def test_outputs_emissions_o183; assert_equal("n/a", worksheet.outputs_emissions_o183); end
  def test_outputs_emissions_p183; assert_equal("n/a", worksheet.outputs_emissions_p183); end
  def test_outputs_emissions_r183; assert_equal("n/a", worksheet.outputs_emissions_r183); end
  def test_outputs_emissions_s183; assert_equal("n/a", worksheet.outputs_emissions_s183); end
  def test_outputs_emissions_t183; assert_equal("n/a", worksheet.outputs_emissions_t183); end
  def test_outputs_emissions_u183; assert_equal("n/a", worksheet.outputs_emissions_u183); end
  def test_outputs_emissions_v183; assert_equal("n/a", worksheet.outputs_emissions_v183); end
  def test_outputs_emissions_w183; assert_equal("n/a", worksheet.outputs_emissions_w183); end
  def test_outputs_emissions_x183; assert_equal("n/a", worksheet.outputs_emissions_x183); end
  def test_outputs_emissions_y183; assert_equal("n/a", worksheet.outputs_emissions_y183); end
  def test_outputs_emissions_z183; assert_equal("n/a", worksheet.outputs_emissions_z183); end
  def test_outputs_emissions_aa183; assert_equal("n/a", worksheet.outputs_emissions_aa183); end
  def test_outputs_emissions_ab183; assert_equal("n/a", worksheet.outputs_emissions_ab183); end
  def test_outputs_emissions_ac183; assert_equal("n/a", worksheet.outputs_emissions_ac183); end
  def test_outputs_emissions_ad183; assert_equal("n/a", worksheet.outputs_emissions_ad183); end
  def test_outputs_emissions_ae183; assert_equal("n/a", worksheet.outputs_emissions_ae183); end
  def test_outputs_emissions_af183; assert_equal("n/a", worksheet.outputs_emissions_af183); end
  def test_outputs_emissions_ag183; assert_equal("n/a", worksheet.outputs_emissions_ag183); end
  def test_outputs_emissions_ah183; assert_equal("n/a", worksheet.outputs_emissions_ah183); end
  def test_outputs_emissions_ai183; assert_equal("n/a", worksheet.outputs_emissions_ai183); end
  def test_outputs_emissions_aj183; assert_equal("n/a", worksheet.outputs_emissions_aj183); end
  def test_outputs_emissions_c184; assert_equal("G.7", worksheet.outputs_emissions_c184); end
  def test_outputs_emissions_d184; assert_equal("Global Other", worksheet.outputs_emissions_d184); end
  def test_outputs_emissions_h184; assert_equal("n/a", worksheet.outputs_emissions_h184); end
  def test_outputs_emissions_i184; assert_equal("n/a", worksheet.outputs_emissions_i184); end
  def test_outputs_emissions_j184; assert_equal("n/a", worksheet.outputs_emissions_j184); end
  def test_outputs_emissions_k184; assert_equal("n/a", worksheet.outputs_emissions_k184); end
  def test_outputs_emissions_l184; assert_equal("n/a", worksheet.outputs_emissions_l184); end
  def test_outputs_emissions_m184; assert_equal("n/a", worksheet.outputs_emissions_m184); end
  def test_outputs_emissions_n184; assert_equal("n/a", worksheet.outputs_emissions_n184); end
  def test_outputs_emissions_o184; assert_equal("n/a", worksheet.outputs_emissions_o184); end
  def test_outputs_emissions_p184; assert_equal("n/a", worksheet.outputs_emissions_p184); end
  def test_outputs_emissions_r184; assert_equal("n/a", worksheet.outputs_emissions_r184); end
  def test_outputs_emissions_s184; assert_equal("n/a", worksheet.outputs_emissions_s184); end
  def test_outputs_emissions_t184; assert_equal("n/a", worksheet.outputs_emissions_t184); end
  def test_outputs_emissions_u184; assert_equal("n/a", worksheet.outputs_emissions_u184); end
  def test_outputs_emissions_v184; assert_equal("n/a", worksheet.outputs_emissions_v184); end
  def test_outputs_emissions_w184; assert_equal("n/a", worksheet.outputs_emissions_w184); end
  def test_outputs_emissions_x184; assert_equal("n/a", worksheet.outputs_emissions_x184); end
  def test_outputs_emissions_y184; assert_equal("n/a", worksheet.outputs_emissions_y184); end
  def test_outputs_emissions_z184; assert_equal("n/a", worksheet.outputs_emissions_z184); end
  def test_outputs_emissions_aa184; assert_equal("n/a", worksheet.outputs_emissions_aa184); end
  def test_outputs_emissions_ab184; assert_equal("n/a", worksheet.outputs_emissions_ab184); end
  def test_outputs_emissions_ac184; assert_equal("n/a", worksheet.outputs_emissions_ac184); end
  def test_outputs_emissions_ad184; assert_equal("n/a", worksheet.outputs_emissions_ad184); end
  def test_outputs_emissions_ae184; assert_equal("n/a", worksheet.outputs_emissions_ae184); end
  def test_outputs_emissions_af184; assert_equal("n/a", worksheet.outputs_emissions_af184); end
  def test_outputs_emissions_ag184; assert_equal("n/a", worksheet.outputs_emissions_ag184); end
  def test_outputs_emissions_ah184; assert_equal("n/a", worksheet.outputs_emissions_ah184); end
  def test_outputs_emissions_ai184; assert_equal("n/a", worksheet.outputs_emissions_ai184); end
  def test_outputs_emissions_aj184; assert_equal("n/a", worksheet.outputs_emissions_aj184); end
  def test_outputs_emissions_c185; assert_equal("G.X1", worksheet.outputs_emissions_c185); end
  def test_outputs_emissions_d185; assert_equal("Global Bioenergy credit", worksheet.outputs_emissions_d185); end
  def test_outputs_emissions_h185; assert_equal("n/a", worksheet.outputs_emissions_h185); end
  def test_outputs_emissions_i185; assert_equal("n/a", worksheet.outputs_emissions_i185); end
  def test_outputs_emissions_j185; assert_equal("n/a", worksheet.outputs_emissions_j185); end
  def test_outputs_emissions_k185; assert_equal("n/a", worksheet.outputs_emissions_k185); end
  def test_outputs_emissions_l185; assert_equal("n/a", worksheet.outputs_emissions_l185); end
  def test_outputs_emissions_m185; assert_equal("n/a", worksheet.outputs_emissions_m185); end
  def test_outputs_emissions_n185; assert_equal("n/a", worksheet.outputs_emissions_n185); end
  def test_outputs_emissions_o185; assert_equal("n/a", worksheet.outputs_emissions_o185); end
  def test_outputs_emissions_p185; assert_equal("n/a", worksheet.outputs_emissions_p185); end
  def test_outputs_emissions_r185; assert_equal("n/a", worksheet.outputs_emissions_r185); end
  def test_outputs_emissions_s185; assert_equal("n/a", worksheet.outputs_emissions_s185); end
  def test_outputs_emissions_t185; assert_equal("n/a", worksheet.outputs_emissions_t185); end
  def test_outputs_emissions_u185; assert_equal("n/a", worksheet.outputs_emissions_u185); end
  def test_outputs_emissions_v185; assert_equal("n/a", worksheet.outputs_emissions_v185); end
  def test_outputs_emissions_w185; assert_equal("n/a", worksheet.outputs_emissions_w185); end
  def test_outputs_emissions_x185; assert_equal("n/a", worksheet.outputs_emissions_x185); end
  def test_outputs_emissions_y185; assert_equal("n/a", worksheet.outputs_emissions_y185); end
  def test_outputs_emissions_z185; assert_equal("n/a", worksheet.outputs_emissions_z185); end
  def test_outputs_emissions_aa185; assert_equal("n/a", worksheet.outputs_emissions_aa185); end
  def test_outputs_emissions_ab185; assert_equal("n/a", worksheet.outputs_emissions_ab185); end
  def test_outputs_emissions_ac185; assert_equal("n/a", worksheet.outputs_emissions_ac185); end
  def test_outputs_emissions_ad185; assert_equal("n/a", worksheet.outputs_emissions_ad185); end
  def test_outputs_emissions_ae185; assert_equal("n/a", worksheet.outputs_emissions_ae185); end
  def test_outputs_emissions_af185; assert_equal("n/a", worksheet.outputs_emissions_af185); end
  def test_outputs_emissions_ag185; assert_equal("n/a", worksheet.outputs_emissions_ag185); end
  def test_outputs_emissions_ah185; assert_equal("n/a", worksheet.outputs_emissions_ah185); end
  def test_outputs_emissions_ai185; assert_equal("n/a", worksheet.outputs_emissions_ai185); end
  def test_outputs_emissions_aj185; assert_equal("n/a", worksheet.outputs_emissions_aj185); end
  def test_outputs_emissions_c186; assert_equal("G.X2", worksheet.outputs_emissions_c186); end
  def test_outputs_emissions_d186; assert_equal("Global Carbon capture", worksheet.outputs_emissions_d186); end
  def test_outputs_emissions_h186; assert_equal("n/a", worksheet.outputs_emissions_h186); end
  def test_outputs_emissions_i186; assert_equal("n/a", worksheet.outputs_emissions_i186); end
  def test_outputs_emissions_j186; assert_equal("n/a", worksheet.outputs_emissions_j186); end
  def test_outputs_emissions_k186; assert_equal("n/a", worksheet.outputs_emissions_k186); end
  def test_outputs_emissions_l186; assert_equal("n/a", worksheet.outputs_emissions_l186); end
  def test_outputs_emissions_m186; assert_equal("n/a", worksheet.outputs_emissions_m186); end
  def test_outputs_emissions_n186; assert_equal("n/a", worksheet.outputs_emissions_n186); end
  def test_outputs_emissions_o186; assert_equal("n/a", worksheet.outputs_emissions_o186); end
  def test_outputs_emissions_p186; assert_equal("n/a", worksheet.outputs_emissions_p186); end
  def test_outputs_emissions_r186; assert_equal("n/a", worksheet.outputs_emissions_r186); end
  def test_outputs_emissions_s186; assert_equal("n/a", worksheet.outputs_emissions_s186); end
  def test_outputs_emissions_t186; assert_equal("n/a", worksheet.outputs_emissions_t186); end
  def test_outputs_emissions_u186; assert_equal("n/a", worksheet.outputs_emissions_u186); end
  def test_outputs_emissions_v186; assert_equal("n/a", worksheet.outputs_emissions_v186); end
  def test_outputs_emissions_w186; assert_equal("n/a", worksheet.outputs_emissions_w186); end
  def test_outputs_emissions_x186; assert_equal("n/a", worksheet.outputs_emissions_x186); end
  def test_outputs_emissions_y186; assert_equal("n/a", worksheet.outputs_emissions_y186); end
  def test_outputs_emissions_z186; assert_equal("n/a", worksheet.outputs_emissions_z186); end
  def test_outputs_emissions_aa186; assert_equal("n/a", worksheet.outputs_emissions_aa186); end
  def test_outputs_emissions_ab186; assert_equal("n/a", worksheet.outputs_emissions_ab186); end
  def test_outputs_emissions_ac186; assert_equal("n/a", worksheet.outputs_emissions_ac186); end
  def test_outputs_emissions_ad186; assert_equal("n/a", worksheet.outputs_emissions_ad186); end
  def test_outputs_emissions_ae186; assert_equal("n/a", worksheet.outputs_emissions_ae186); end
  def test_outputs_emissions_af186; assert_equal("n/a", worksheet.outputs_emissions_af186); end
  def test_outputs_emissions_ag186; assert_equal("n/a", worksheet.outputs_emissions_ag186); end
  def test_outputs_emissions_ah186; assert_equal("n/a", worksheet.outputs_emissions_ah186); end
  def test_outputs_emissions_ai186; assert_equal("n/a", worksheet.outputs_emissions_ai186); end
  def test_outputs_emissions_aj186; assert_equal("n/a", worksheet.outputs_emissions_aj186); end
  def test_outputs_emissions_d187; assert_equal("Total", worksheet.outputs_emissions_d187); end
  def test_outputs_emissions_c191; assert_equal("Emissions by sector (IPCC sectors)", worksheet.outputs_emissions_c191); end
  def test_outputs_emissions_h192; assert_equal("Historic actuals", worksheet.outputs_emissions_h192); end
  def test_outputs_emissions_r192; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r192); end
  def test_outputs_emissions_aa192; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa192); end
  def test_outputs_emissions_d193; assert_equal("IPCC Sector", worksheet.outputs_emissions_d193); end
  def test_outputs_emissions_h193; assert_equal("1970", worksheet.outputs_emissions_h193); end
  def test_outputs_emissions_i193; assert_equal("1975", worksheet.outputs_emissions_i193); end
  def test_outputs_emissions_j193; assert_equal("1980", worksheet.outputs_emissions_j193); end
  def test_outputs_emissions_k193; assert_equal("1985", worksheet.outputs_emissions_k193); end
  def test_outputs_emissions_l193; assert_equal("1990", worksheet.outputs_emissions_l193); end
  def test_outputs_emissions_m193; assert_equal("1995", worksheet.outputs_emissions_m193); end
  def test_outputs_emissions_n193; assert_equal("2000", worksheet.outputs_emissions_n193); end
  def test_outputs_emissions_o193; assert_equal("2005", worksheet.outputs_emissions_o193); end
  def test_outputs_emissions_p193; assert_in_epsilon(2010, worksheet.outputs_emissions_p193, 0.001); end
  def test_outputs_emissions_r193; assert_in_epsilon(2011, worksheet.outputs_emissions_r193, 0.001); end
  def test_outputs_emissions_s193; assert_in_epsilon(2015, worksheet.outputs_emissions_s193, 0.001); end
  def test_outputs_emissions_t193; assert_in_epsilon(2020, worksheet.outputs_emissions_t193, 0.001); end
  def test_outputs_emissions_u193; assert_in_epsilon(2025, worksheet.outputs_emissions_u193, 0.001); end
  def test_outputs_emissions_v193; assert_in_epsilon(2030, worksheet.outputs_emissions_v193, 0.001); end
  def test_outputs_emissions_w193; assert_in_epsilon(2035, worksheet.outputs_emissions_w193, 0.001); end
  def test_outputs_emissions_x193; assert_in_epsilon(2040, worksheet.outputs_emissions_x193, 0.001); end
  def test_outputs_emissions_y193; assert_in_epsilon(2045, worksheet.outputs_emissions_y193, 0.001); end
  def test_outputs_emissions_z193; assert_in_epsilon(2050, worksheet.outputs_emissions_z193, 0.001); end
  def test_outputs_emissions_aa193; assert_in_epsilon(2055, worksheet.outputs_emissions_aa193, 0.001); end
  def test_outputs_emissions_ab193; assert_in_epsilon(2060, worksheet.outputs_emissions_ab193, 0.001); end
  def test_outputs_emissions_ac193; assert_in_epsilon(2065, worksheet.outputs_emissions_ac193, 0.001); end
  def test_outputs_emissions_ad193; assert_in_epsilon(2070, worksheet.outputs_emissions_ad193, 0.001); end
  def test_outputs_emissions_ae193; assert_in_epsilon(2075, worksheet.outputs_emissions_ae193, 0.001); end
  def test_outputs_emissions_af193; assert_in_epsilon(2080, worksheet.outputs_emissions_af193, 0.001); end
  def test_outputs_emissions_ag193; assert_in_epsilon(2085, worksheet.outputs_emissions_ag193, 0.001); end
  def test_outputs_emissions_ah193; assert_in_epsilon(2090, worksheet.outputs_emissions_ah193, 0.001); end
  def test_outputs_emissions_ai193; assert_in_epsilon(2095, worksheet.outputs_emissions_ai193, 0.001); end
  def test_outputs_emissions_aj193; assert_in_epsilon(2100, worksheet.outputs_emissions_aj193, 0.001); end
  def test_outputs_emissions_c194; assert_equal("G.1A", worksheet.outputs_emissions_c194); end
  def test_outputs_emissions_d194; assert_equal("Global Fuel Combustion", worksheet.outputs_emissions_d194); end
  def test_outputs_emissions_s194; assert_in_delta(0, (worksheet.outputs_emissions_s194||0), 0.001); end
  def test_outputs_emissions_c195; assert_equal("G.1B", worksheet.outputs_emissions_c195); end
  def test_outputs_emissions_d195; assert_equal("Global Fugitive Emissions from Fuels", worksheet.outputs_emissions_d195); end
  def test_outputs_emissions_s195; assert_in_delta(0, (worksheet.outputs_emissions_s195||0), 0.001); end
  def test_outputs_emissions_c196; assert_equal("G.2", worksheet.outputs_emissions_c196); end
  def test_outputs_emissions_d196; assert_equal("Global Industrial Processes", worksheet.outputs_emissions_d196); end
  def test_outputs_emissions_s196; assert_in_delta(0, (worksheet.outputs_emissions_s196||0), 0.001); end
  def test_outputs_emissions_c197; assert_equal("G.3", worksheet.outputs_emissions_c197); end
  def test_outputs_emissions_d197; assert_equal("Global Solvent and Other Product Use", worksheet.outputs_emissions_d197); end
  def test_outputs_emissions_s197; assert_in_delta(0, (worksheet.outputs_emissions_s197||0), 0.001); end
  def test_outputs_emissions_c198; assert_equal("G.4", worksheet.outputs_emissions_c198); end
  def test_outputs_emissions_d198; assert_equal("Global Agriculture", worksheet.outputs_emissions_d198); end
  def test_outputs_emissions_s198; assert_in_delta(0, (worksheet.outputs_emissions_s198||0), 0.001); end
  def test_outputs_emissions_c199; assert_equal("G.5", worksheet.outputs_emissions_c199); end
  def test_outputs_emissions_d199; assert_equal("Global Land Use, Land-Use Change and Forestry", worksheet.outputs_emissions_d199); end
  def test_outputs_emissions_s199; assert_in_delta(0, (worksheet.outputs_emissions_s199||0), 0.001); end
  def test_outputs_emissions_c200; assert_equal("G.6", worksheet.outputs_emissions_c200); end
  def test_outputs_emissions_d200; assert_equal("Global Waste", worksheet.outputs_emissions_d200); end
  def test_outputs_emissions_s200; assert_in_delta(0, (worksheet.outputs_emissions_s200||0), 0.001); end
  def test_outputs_emissions_c201; assert_equal("G.7", worksheet.outputs_emissions_c201); end
  def test_outputs_emissions_d201; assert_equal("Global Other", worksheet.outputs_emissions_d201); end
  def test_outputs_emissions_s201; assert_in_delta(0, (worksheet.outputs_emissions_s201||0), 0.001); end
  def test_outputs_emissions_c202; assert_equal("G.X1", worksheet.outputs_emissions_c202); end
  def test_outputs_emissions_d202; assert_equal("Global Bioenergy credit", worksheet.outputs_emissions_d202); end
  def test_outputs_emissions_s202; assert_in_delta(0, (worksheet.outputs_emissions_s202||0), 0.001); end
  def test_outputs_emissions_c203; assert_equal("G.X2", worksheet.outputs_emissions_c203); end
  def test_outputs_emissions_d203; assert_equal("Global Carbon capture", worksheet.outputs_emissions_d203); end
  def test_outputs_emissions_s203; assert_in_delta(0, (worksheet.outputs_emissions_s203||0), 0.001); end
  def test_outputs_emissions_d204; assert_equal("Total", worksheet.outputs_emissions_d204); end
  def test_outputs_emissions_h204; assert_in_delta(0, (worksheet.outputs_emissions_h204||0), 0.001); end
  def test_outputs_emissions_i204; assert_in_delta(0, (worksheet.outputs_emissions_i204||0), 0.001); end
  def test_outputs_emissions_j204; assert_in_delta(0, (worksheet.outputs_emissions_j204||0), 0.001); end
  def test_outputs_emissions_k204; assert_in_delta(0, (worksheet.outputs_emissions_k204||0), 0.001); end
  def test_outputs_emissions_l204; assert_in_delta(0, (worksheet.outputs_emissions_l204||0), 0.001); end
  def test_outputs_emissions_m204; assert_in_delta(0, (worksheet.outputs_emissions_m204||0), 0.001); end
  def test_outputs_emissions_n204; assert_in_delta(0, (worksheet.outputs_emissions_n204||0), 0.001); end
  def test_outputs_emissions_o204; assert_in_delta(0, (worksheet.outputs_emissions_o204||0), 0.001); end
  def test_outputs_emissions_p204; assert_in_delta(0, (worksheet.outputs_emissions_p204||0), 0.001); end
  def test_outputs_emissions_r204; assert_in_delta(0, (worksheet.outputs_emissions_r204||0), 0.001); end
  def test_outputs_emissions_s204; assert_in_delta(0, (worksheet.outputs_emissions_s204||0), 0.001); end
  def test_outputs_emissions_t204; assert_in_delta(0, (worksheet.outputs_emissions_t204||0), 0.001); end
  def test_outputs_emissions_u204; assert_in_delta(0, (worksheet.outputs_emissions_u204||0), 0.001); end
  def test_outputs_emissions_v204; assert_in_delta(0, (worksheet.outputs_emissions_v204||0), 0.001); end
  def test_outputs_emissions_w204; assert_in_delta(0, (worksheet.outputs_emissions_w204||0), 0.001); end
  def test_outputs_emissions_x204; assert_in_delta(0, (worksheet.outputs_emissions_x204||0), 0.001); end
  def test_outputs_emissions_y204; assert_in_delta(0, (worksheet.outputs_emissions_y204||0), 0.001); end
  def test_outputs_emissions_z204; assert_in_delta(0, (worksheet.outputs_emissions_z204||0), 0.001); end
  def test_outputs_emissions_aa204; assert_in_delta(0, (worksheet.outputs_emissions_aa204||0), 0.001); end
  def test_outputs_emissions_ab204; assert_in_delta(0, (worksheet.outputs_emissions_ab204||0), 0.001); end
  def test_outputs_emissions_ac204; assert_in_delta(0, (worksheet.outputs_emissions_ac204||0), 0.001); end
  def test_outputs_emissions_ad204; assert_in_delta(0, (worksheet.outputs_emissions_ad204||0), 0.001); end
  def test_outputs_emissions_ae204; assert_in_delta(0, (worksheet.outputs_emissions_ae204||0), 0.001); end
  def test_outputs_emissions_af204; assert_in_delta(0, (worksheet.outputs_emissions_af204||0), 0.001); end
  def test_outputs_emissions_ag204; assert_in_delta(0, (worksheet.outputs_emissions_ag204||0), 0.001); end
  def test_outputs_emissions_ah204; assert_in_delta(0, (worksheet.outputs_emissions_ah204||0), 0.001); end
  def test_outputs_emissions_ai204; assert_in_delta(0, (worksheet.outputs_emissions_ai204||0), 0.001); end
  def test_outputs_emissions_aj204; assert_in_delta(0, (worksheet.outputs_emissions_aj204||0), 0.001); end
  def test_outputs_emissions_d205; assert_equal("Emissions in the time period (up to and including year above)", worksheet.outputs_emissions_d205); end
  def test_outputs_emissions_d206; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d206); end
  def test_outputs_emissions_c209; assert_equal("Emissions by sector (model sectors)", worksheet.outputs_emissions_c209); end
  def test_outputs_emissions_h210; assert_equal("Historic actuals", worksheet.outputs_emissions_h210); end
  def test_outputs_emissions_r210; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r210); end
  def test_outputs_emissions_aa210; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa210); end
  def test_outputs_emissions_c211; assert_equal("Emissions by sector", worksheet.outputs_emissions_c211); end
  def test_outputs_emissions_d211; assert_equal("Calculator Sector", worksheet.outputs_emissions_d211); end
  def test_outputs_emissions_h211; assert_equal("1970", worksheet.outputs_emissions_h211); end
  def test_outputs_emissions_i211; assert_equal("1975", worksheet.outputs_emissions_i211); end
  def test_outputs_emissions_j211; assert_equal("1980", worksheet.outputs_emissions_j211); end
  def test_outputs_emissions_k211; assert_equal("1985", worksheet.outputs_emissions_k211); end
  def test_outputs_emissions_l211; assert_equal("1990", worksheet.outputs_emissions_l211); end
  def test_outputs_emissions_m211; assert_equal("1995", worksheet.outputs_emissions_m211); end
  def test_outputs_emissions_n211; assert_equal("2000", worksheet.outputs_emissions_n211); end
  def test_outputs_emissions_o211; assert_equal("2005", worksheet.outputs_emissions_o211); end
  def test_outputs_emissions_p211; assert_in_epsilon(2010, worksheet.outputs_emissions_p211, 0.001); end
  def test_outputs_emissions_r211; assert_in_epsilon(2011, worksheet.outputs_emissions_r211, 0.001); end
  def test_outputs_emissions_s211; assert_in_epsilon(2015, worksheet.outputs_emissions_s211, 0.001); end
  def test_outputs_emissions_t211; assert_in_epsilon(2020, worksheet.outputs_emissions_t211, 0.001); end
  def test_outputs_emissions_u211; assert_in_epsilon(2025, worksheet.outputs_emissions_u211, 0.001); end
  def test_outputs_emissions_v211; assert_in_epsilon(2030, worksheet.outputs_emissions_v211, 0.001); end
  def test_outputs_emissions_w211; assert_in_epsilon(2035, worksheet.outputs_emissions_w211, 0.001); end
  def test_outputs_emissions_x211; assert_in_epsilon(2040, worksheet.outputs_emissions_x211, 0.001); end
  def test_outputs_emissions_y211; assert_in_epsilon(2045, worksheet.outputs_emissions_y211, 0.001); end
  def test_outputs_emissions_z211; assert_in_epsilon(2050, worksheet.outputs_emissions_z211, 0.001); end
  def test_outputs_emissions_aa211; assert_in_epsilon(2055, worksheet.outputs_emissions_aa211, 0.001); end
  def test_outputs_emissions_ab211; assert_in_epsilon(2060, worksheet.outputs_emissions_ab211, 0.001); end
  def test_outputs_emissions_ac211; assert_in_epsilon(2065, worksheet.outputs_emissions_ac211, 0.001); end
  def test_outputs_emissions_ad211; assert_in_epsilon(2070, worksheet.outputs_emissions_ad211, 0.001); end
  def test_outputs_emissions_ae211; assert_in_epsilon(2075, worksheet.outputs_emissions_ae211, 0.001); end
  def test_outputs_emissions_af211; assert_in_epsilon(2080, worksheet.outputs_emissions_af211, 0.001); end
  def test_outputs_emissions_ag211; assert_in_epsilon(2085, worksheet.outputs_emissions_ag211, 0.001); end
  def test_outputs_emissions_ah211; assert_in_epsilon(2090, worksheet.outputs_emissions_ah211, 0.001); end
  def test_outputs_emissions_ai211; assert_in_epsilon(2095, worksheet.outputs_emissions_ai211, 0.001); end
  def test_outputs_emissions_aj211; assert_in_epsilon(2100, worksheet.outputs_emissions_aj211, 0.001); end
  def test_outputs_emissions_c212; assert_equal("G.10", worksheet.outputs_emissions_c212); end
  def test_outputs_emissions_d212; assert_equal("Global Transport", worksheet.outputs_emissions_d212); end
  def test_outputs_emissions_s212; assert_in_delta(0, (worksheet.outputs_emissions_s212||0), 0.001); end
  def test_outputs_emissions_c213; assert_equal("G.20", worksheet.outputs_emissions_c213); end
  def test_outputs_emissions_d213; assert_equal("Global Buildings", worksheet.outputs_emissions_d213); end
  def test_outputs_emissions_s213; assert_in_delta(0, (worksheet.outputs_emissions_s213||0), 0.001); end
  def test_outputs_emissions_c214; assert_equal("G.30", worksheet.outputs_emissions_c214); end
  def test_outputs_emissions_d214; assert_equal("Global Materials", worksheet.outputs_emissions_d214); end
  def test_outputs_emissions_s214; assert_in_delta(0, (worksheet.outputs_emissions_s214||0), 0.001); end
  def test_outputs_emissions_c215; assert_equal("G.40", worksheet.outputs_emissions_c215); end
  def test_outputs_emissions_d215; assert_equal("Global Electricity Generation", worksheet.outputs_emissions_d215); end
  def test_outputs_emissions_s215; assert_in_delta(0, (worksheet.outputs_emissions_s215||0), 0.001); end
  def test_outputs_emissions_c216; assert_equal("G.50", worksheet.outputs_emissions_c216); end
  def test_outputs_emissions_d216; assert_equal("Global Synthetic Fuel ", worksheet.outputs_emissions_d216); end
  def test_outputs_emissions_s216; assert_in_delta(0, (worksheet.outputs_emissions_s216||0), 0.001); end
  def test_outputs_emissions_c217; assert_equal("G.60", worksheet.outputs_emissions_c217); end
  def test_outputs_emissions_d217; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_emissions_d217); end
  def test_outputs_emissions_s217; assert_in_delta(0, (worksheet.outputs_emissions_s217||0), 0.001); end
  def test_outputs_emissions_d218; assert_equal("Total", worksheet.outputs_emissions_d218); end
  def test_outputs_emissions_h218; assert_in_delta(0, (worksheet.outputs_emissions_h218||0), 0.001); end
  def test_outputs_emissions_i218; assert_in_delta(0, (worksheet.outputs_emissions_i218||0), 0.001); end
  def test_outputs_emissions_j218; assert_in_delta(0, (worksheet.outputs_emissions_j218||0), 0.001); end
  def test_outputs_emissions_k218; assert_in_delta(0, (worksheet.outputs_emissions_k218||0), 0.001); end
  def test_outputs_emissions_l218; assert_in_delta(0, (worksheet.outputs_emissions_l218||0), 0.001); end
  def test_outputs_emissions_m218; assert_in_delta(0, (worksheet.outputs_emissions_m218||0), 0.001); end
  def test_outputs_emissions_n218; assert_in_delta(0, (worksheet.outputs_emissions_n218||0), 0.001); end
  def test_outputs_emissions_o218; assert_in_delta(0, (worksheet.outputs_emissions_o218||0), 0.001); end
  def test_outputs_emissions_p218; assert_in_delta(0, (worksheet.outputs_emissions_p218||0), 0.001); end
  def test_outputs_emissions_r218; assert_in_delta(0, (worksheet.outputs_emissions_r218||0), 0.001); end
  def test_outputs_emissions_s218; assert_in_delta(0, (worksheet.outputs_emissions_s218||0), 0.001); end
  def test_outputs_emissions_t218; assert_in_delta(0, (worksheet.outputs_emissions_t218||0), 0.001); end
  def test_outputs_emissions_u218; assert_in_delta(0, (worksheet.outputs_emissions_u218||0), 0.001); end
  def test_outputs_emissions_v218; assert_in_delta(0, (worksheet.outputs_emissions_v218||0), 0.001); end
  def test_outputs_emissions_w218; assert_in_delta(0, (worksheet.outputs_emissions_w218||0), 0.001); end
  def test_outputs_emissions_x218; assert_in_delta(0, (worksheet.outputs_emissions_x218||0), 0.001); end
  def test_outputs_emissions_y218; assert_in_delta(0, (worksheet.outputs_emissions_y218||0), 0.001); end
  def test_outputs_emissions_z218; assert_in_delta(0, (worksheet.outputs_emissions_z218||0), 0.001); end
  def test_outputs_emissions_aa218; assert_in_delta(0, (worksheet.outputs_emissions_aa218||0), 0.001); end
  def test_outputs_emissions_ab218; assert_in_delta(0, (worksheet.outputs_emissions_ab218||0), 0.001); end
  def test_outputs_emissions_ac218; assert_in_delta(0, (worksheet.outputs_emissions_ac218||0), 0.001); end
  def test_outputs_emissions_ad218; assert_in_delta(0, (worksheet.outputs_emissions_ad218||0), 0.001); end
  def test_outputs_emissions_ae218; assert_in_delta(0, (worksheet.outputs_emissions_ae218||0), 0.001); end
  def test_outputs_emissions_af218; assert_in_delta(0, (worksheet.outputs_emissions_af218||0), 0.001); end
  def test_outputs_emissions_ag218; assert_in_delta(0, (worksheet.outputs_emissions_ag218||0), 0.001); end
  def test_outputs_emissions_ah218; assert_in_delta(0, (worksheet.outputs_emissions_ah218||0), 0.001); end
  def test_outputs_emissions_ai218; assert_in_delta(0, (worksheet.outputs_emissions_ai218||0), 0.001); end
  def test_outputs_emissions_aj218; assert_in_delta(0, (worksheet.outputs_emissions_aj218||0), 0.001); end
  def test_outputs_emissions_d219; assert_equal("Emissions in the time period (up to and including year above)", worksheet.outputs_emissions_d219); end
  def test_outputs_emissions_d220; assert_equal("Cumulative emissions", worksheet.outputs_emissions_d220); end
  def test_outputs_emissions_c223; assert_equal("Electricity Generation Emissions", worksheet.outputs_emissions_c223); end
  def test_outputs_emissions_h224; assert_equal("Historic actuals", worksheet.outputs_emissions_h224); end
  def test_outputs_emissions_r224; assert_equal("Emissions from 2011-2050 result from the levers (user choices)", worksheet.outputs_emissions_r224); end
  def test_outputs_emissions_aa224; assert_equal("Emissions from 2050 are projected from 2011-2050 emissions", worksheet.outputs_emissions_aa224); end
  def test_outputs_emissions_c225; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.outputs_emissions_c225); end
  def test_outputs_emissions_h225; assert_equal("1970", worksheet.outputs_emissions_h225); end
  def test_outputs_emissions_i225; assert_equal("1975", worksheet.outputs_emissions_i225); end
  def test_outputs_emissions_j225; assert_equal("1980", worksheet.outputs_emissions_j225); end
  def test_outputs_emissions_k225; assert_equal("1985", worksheet.outputs_emissions_k225); end
  def test_outputs_emissions_l225; assert_equal("1990", worksheet.outputs_emissions_l225); end
  def test_outputs_emissions_m225; assert_equal("1995", worksheet.outputs_emissions_m225); end
  def test_outputs_emissions_n225; assert_equal("2000", worksheet.outputs_emissions_n225); end
  def test_outputs_emissions_o225; assert_equal("2005", worksheet.outputs_emissions_o225); end
  def test_outputs_emissions_p225; assert_in_epsilon(2010, worksheet.outputs_emissions_p225, 0.001); end
  def test_outputs_emissions_r225; assert_in_epsilon(2011, worksheet.outputs_emissions_r225, 0.001); end
  def test_outputs_emissions_s225; assert_in_epsilon(2015, worksheet.outputs_emissions_s225, 0.001); end
  def test_outputs_emissions_t225; assert_in_epsilon(2020, worksheet.outputs_emissions_t225, 0.001); end
  def test_outputs_emissions_u225; assert_in_epsilon(2025, worksheet.outputs_emissions_u225, 0.001); end
  def test_outputs_emissions_v225; assert_in_epsilon(2030, worksheet.outputs_emissions_v225, 0.001); end
  def test_outputs_emissions_w225; assert_in_epsilon(2035, worksheet.outputs_emissions_w225, 0.001); end
  def test_outputs_emissions_x225; assert_in_epsilon(2040, worksheet.outputs_emissions_x225, 0.001); end
  def test_outputs_emissions_y225; assert_in_epsilon(2045, worksheet.outputs_emissions_y225, 0.001); end
  def test_outputs_emissions_z225; assert_in_epsilon(2050, worksheet.outputs_emissions_z225, 0.001); end
  def test_outputs_emissions_aa225; assert_in_epsilon(2055, worksheet.outputs_emissions_aa225, 0.001); end
  def test_outputs_emissions_ab225; assert_in_epsilon(2060, worksheet.outputs_emissions_ab225, 0.001); end
  def test_outputs_emissions_ac225; assert_in_epsilon(2065, worksheet.outputs_emissions_ac225, 0.001); end
  def test_outputs_emissions_ad225; assert_in_epsilon(2070, worksheet.outputs_emissions_ad225, 0.001); end
  def test_outputs_emissions_ae225; assert_in_epsilon(2075, worksheet.outputs_emissions_ae225, 0.001); end
  def test_outputs_emissions_af225; assert_in_epsilon(2080, worksheet.outputs_emissions_af225, 0.001); end
  def test_outputs_emissions_ag225; assert_in_epsilon(2085, worksheet.outputs_emissions_ag225, 0.001); end
  def test_outputs_emissions_ah225; assert_in_epsilon(2090, worksheet.outputs_emissions_ah225, 0.001); end
  def test_outputs_emissions_ai225; assert_in_epsilon(2095, worksheet.outputs_emissions_ai225, 0.001); end
  def test_outputs_emissions_aj225; assert_in_epsilon(2100, worksheet.outputs_emissions_aj225, 0.001); end
  def test_outputs_emissions_c226; assert_equal("G.efficient.solid.elec", worksheet.outputs_emissions_c226); end
  def test_outputs_emissions_d226; assert_equal(:na, worksheet.outputs_emissions_d226); end
  def test_outputs_emissions_s226; assert_equal(:na, worksheet.outputs_emissions_s226); end
  def test_outputs_emissions_c227; assert_equal("G.inefficient.solid.elec", worksheet.outputs_emissions_c227); end
  def test_outputs_emissions_d227; assert_equal(:na, worksheet.outputs_emissions_d227); end
  def test_outputs_emissions_s227; assert_equal(:na, worksheet.outputs_emissions_s227); end
  def test_outputs_emissions_c228; assert_equal("G.efficient.liquid.elec", worksheet.outputs_emissions_c228); end
  def test_outputs_emissions_d228; assert_equal(:na, worksheet.outputs_emissions_d228); end
  def test_outputs_emissions_s228; assert_equal(:na, worksheet.outputs_emissions_s228); end
  def test_outputs_emissions_c229; assert_equal("G.inefficient.liquid.elec", worksheet.outputs_emissions_c229); end
  def test_outputs_emissions_d229; assert_equal(:na, worksheet.outputs_emissions_d229); end
  def test_outputs_emissions_s229; assert_equal(:na, worksheet.outputs_emissions_s229); end
  def test_outputs_emissions_c230; assert_equal("G.efficient.gas.elec", worksheet.outputs_emissions_c230); end
  def test_outputs_emissions_d230; assert_equal(:na, worksheet.outputs_emissions_d230); end
  def test_outputs_emissions_s230; assert_equal(:na, worksheet.outputs_emissions_s230); end
  def test_outputs_emissions_c231; assert_equal("G.inefficient.gas.elec", worksheet.outputs_emissions_c231); end
  def test_outputs_emissions_d231; assert_equal(:na, worksheet.outputs_emissions_d231); end
  def test_outputs_emissions_s231; assert_equal(:na, worksheet.outputs_emissions_s231); end
  def test_outputs_emissions_c232; assert_equal("G.CCS.soild.elec", worksheet.outputs_emissions_c232); end
  def test_outputs_emissions_d232; assert_equal(:na, worksheet.outputs_emissions_d232); end
  def test_outputs_emissions_s232; assert_equal(:na, worksheet.outputs_emissions_s232); end
  def test_outputs_emissions_c233; assert_equal("G.CCS.liquid.elec", worksheet.outputs_emissions_c233); end
  def test_outputs_emissions_d233; assert_equal(:na, worksheet.outputs_emissions_d233); end
  def test_outputs_emissions_s233; assert_equal(:na, worksheet.outputs_emissions_s233); end
  def test_outputs_emissions_c234; assert_equal("G.CCS.gas.elec", worksheet.outputs_emissions_c234); end
  def test_outputs_emissions_d234; assert_equal(:na, worksheet.outputs_emissions_d234); end
  def test_outputs_emissions_s234; assert_equal(:na, worksheet.outputs_emissions_s234); end
  def test_outputs_emissions_d235; assert_equal("Total emissions from power", worksheet.outputs_emissions_d235); end
  def test_outputs_emissions_h235; assert_in_delta(0, (worksheet.outputs_emissions_h235||0), 0.001); end
  def test_outputs_emissions_i235; assert_in_delta(0, (worksheet.outputs_emissions_i235||0), 0.001); end
  def test_outputs_emissions_j235; assert_in_delta(0, (worksheet.outputs_emissions_j235||0), 0.001); end
  def test_outputs_emissions_k235; assert_in_delta(0, (worksheet.outputs_emissions_k235||0), 0.001); end
  def test_outputs_emissions_l235; assert_in_delta(0, (worksheet.outputs_emissions_l235||0), 0.001); end
  def test_outputs_emissions_m235; assert_in_delta(0, (worksheet.outputs_emissions_m235||0), 0.001); end
  def test_outputs_emissions_n235; assert_in_delta(0, (worksheet.outputs_emissions_n235||0), 0.001); end
  def test_outputs_emissions_o235; assert_in_delta(0, (worksheet.outputs_emissions_o235||0), 0.001); end
  def test_outputs_emissions_p235; assert_in_delta(0, (worksheet.outputs_emissions_p235||0), 0.001); end
  def test_outputs_emissions_r235; assert_in_delta(0, (worksheet.outputs_emissions_r235||0), 0.001); end
  def test_outputs_emissions_s235; assert_equal(:na, worksheet.outputs_emissions_s235); end
  def test_outputs_emissions_t235; assert_in_delta(0, (worksheet.outputs_emissions_t235||0), 0.001); end
  def test_outputs_emissions_u235; assert_in_delta(0, (worksheet.outputs_emissions_u235||0), 0.001); end
  def test_outputs_emissions_v235; assert_in_delta(0, (worksheet.outputs_emissions_v235||0), 0.001); end
  def test_outputs_emissions_w235; assert_in_delta(0, (worksheet.outputs_emissions_w235||0), 0.001); end
  def test_outputs_emissions_x235; assert_in_delta(0, (worksheet.outputs_emissions_x235||0), 0.001); end
  def test_outputs_emissions_y235; assert_in_delta(0, (worksheet.outputs_emissions_y235||0), 0.001); end
  def test_outputs_emissions_z235; assert_in_delta(0, (worksheet.outputs_emissions_z235||0), 0.001); end
  def test_outputs_emissions_aa235; assert_in_delta(0, (worksheet.outputs_emissions_aa235||0), 0.001); end
  def test_outputs_emissions_ab235; assert_in_delta(0, (worksheet.outputs_emissions_ab235||0), 0.001); end
  def test_outputs_emissions_ac235; assert_in_delta(0, (worksheet.outputs_emissions_ac235||0), 0.001); end
  def test_outputs_emissions_ad235; assert_in_delta(0, (worksheet.outputs_emissions_ad235||0), 0.001); end
  def test_outputs_emissions_ae235; assert_in_delta(0, (worksheet.outputs_emissions_ae235||0), 0.001); end
  def test_outputs_emissions_af235; assert_in_delta(0, (worksheet.outputs_emissions_af235||0), 0.001); end
  def test_outputs_emissions_ag235; assert_in_delta(0, (worksheet.outputs_emissions_ag235||0), 0.001); end
  def test_outputs_emissions_ah235; assert_in_delta(0, (worksheet.outputs_emissions_ah235||0), 0.001); end
  def test_outputs_emissions_ai235; assert_in_delta(0, (worksheet.outputs_emissions_ai235||0), 0.001); end
  def test_outputs_emissions_aj235; assert_in_delta(0, (worksheet.outputs_emissions_aj235||0), 0.001); end
  def test_outputs_emissions_c236; assert_equal("Note: does not include emissions from CHP - these are counted against heating emissions [to confirm]", worksheet.outputs_emissions_c236); end
  def test_outputs_emissions_c239; assert_equal("Emissions intensity", worksheet.outputs_emissions_c239); end
  def test_outputs_emissions_d239; assert_equal("Mt/TWh", worksheet.outputs_emissions_d239); end
  def test_outputs_emissions_d240; assert_equal("g/KWh", worksheet.outputs_emissions_d240); end
  def test_outputs_energy_b2; assert_equal("G", worksheet.outputs_energy_b2); end
  def test_outputs_energy_c2; assert_equal("Global", worksheet.outputs_energy_c2); end
  def test_outputs_energy_e2; assert_equal("Click here to return to the \"contents\" page", worksheet.outputs_energy_e2); end
  def test_outputs_energy_i2; assert_equal("Note: need to update so that this uses the latest workbook naming conventions and sector structures, and so that it pulls in data from the year sheets", worksheet.outputs_energy_i2); end
  def test_outputs_energy_b3; assert_equal("Energy output", worksheet.outputs_energy_b3); end
  def test_outputs_energy_b5; assert_equal("ENERGY SUPPLY AND DEMAND", worksheet.outputs_energy_b5); end
  def test_outputs_energy_c7; assert_equal("DEMAND", worksheet.outputs_energy_c7); end
  def test_outputs_energy_z7; assert_equal("TWh / year", worksheet.outputs_energy_z7); end
  def test_outputs_energy_h8; assert_equal("Historic actuals", worksheet.outputs_energy_h8); end
  def test_outputs_energy_r8; assert_equal("Calculated by the model", worksheet.outputs_energy_r8); end
  def test_outputs_energy_c9; assert_equal("Code", worksheet.outputs_energy_c9); end
  def test_outputs_energy_d9; assert_equal("Description", worksheet.outputs_energy_d9); end
  def test_outputs_energy_g9; assert_equal("Notes", worksheet.outputs_energy_g9); end
  def test_outputs_energy_h9; assert_equal("1970", worksheet.outputs_energy_h9); end
  def test_outputs_energy_i9; assert_equal("1975", worksheet.outputs_energy_i9); end
  def test_outputs_energy_j9; assert_equal("1980", worksheet.outputs_energy_j9); end
  def test_outputs_energy_k9; assert_equal("1985", worksheet.outputs_energy_k9); end
  def test_outputs_energy_l9; assert_equal("1990", worksheet.outputs_energy_l9); end
  def test_outputs_energy_m9; assert_equal("1995", worksheet.outputs_energy_m9); end
  def test_outputs_energy_n9; assert_equal("2000", worksheet.outputs_energy_n9); end
  def test_outputs_energy_o9; assert_equal("2005", worksheet.outputs_energy_o9); end
  def test_outputs_energy_p9; assert_in_epsilon(2010, worksheet.outputs_energy_p9, 0.001); end
  def test_outputs_energy_r9; assert_in_epsilon(2011, worksheet.outputs_energy_r9, 0.001); end
  def test_outputs_energy_s9; assert_equal("2015", worksheet.outputs_energy_s9); end
  def test_outputs_energy_t9; assert_equal("2020", worksheet.outputs_energy_t9); end
  def test_outputs_energy_u9; assert_equal("2025", worksheet.outputs_energy_u9); end
  def test_outputs_energy_v9; assert_equal("2030", worksheet.outputs_energy_v9); end
  def test_outputs_energy_w9; assert_equal("2035", worksheet.outputs_energy_w9); end
  def test_outputs_energy_x9; assert_equal("2040", worksheet.outputs_energy_x9); end
  def test_outputs_energy_y9; assert_equal("2045", worksheet.outputs_energy_y9); end
  def test_outputs_energy_z9; assert_equal("2050", worksheet.outputs_energy_z9); end
  def test_outputs_energy_d10; assert_equal("Transport", worksheet.outputs_energy_d10); end
  def test_outputs_energy_h10; assert_in_delta(0, (worksheet.outputs_energy_h10||0), 0.001); end
  def test_outputs_energy_i10; assert_in_delta(0, (worksheet.outputs_energy_i10||0), 0.001); end
  def test_outputs_energy_j10; assert_in_delta(0, (worksheet.outputs_energy_j10||0), 0.001); end
  def test_outputs_energy_k10; assert_in_delta(0, (worksheet.outputs_energy_k10||0), 0.001); end
  def test_outputs_energy_l10; assert_in_delta(0, (worksheet.outputs_energy_l10||0), 0.001); end
  def test_outputs_energy_m10; assert_in_delta(0, (worksheet.outputs_energy_m10||0), 0.001); end
  def test_outputs_energy_n10; assert_in_delta(0, (worksheet.outputs_energy_n10||0), 0.001); end
  def test_outputs_energy_o10; assert_in_delta(0, (worksheet.outputs_energy_o10||0), 0.001); end
  def test_outputs_energy_p10; assert_in_delta(0, (worksheet.outputs_energy_p10||0), 0.001); end
  def test_outputs_energy_r10; assert_in_delta(0, (worksheet.outputs_energy_r10||0), 0.001); end
  def test_outputs_energy_s10; assert_in_delta(0, (worksheet.outputs_energy_s10||0), 0.001); end
  def test_outputs_energy_t10; assert_in_delta(0, (worksheet.outputs_energy_t10||0), 0.001); end
  def test_outputs_energy_u10; assert_in_delta(0, (worksheet.outputs_energy_u10||0), 0.001); end
  def test_outputs_energy_v10; assert_in_delta(0, (worksheet.outputs_energy_v10||0), 0.001); end
  def test_outputs_energy_w10; assert_in_delta(0, (worksheet.outputs_energy_w10||0), 0.001); end
  def test_outputs_energy_x10; assert_in_delta(0, (worksheet.outputs_energy_x10||0), 0.001); end
  def test_outputs_energy_y10; assert_in_delta(0, (worksheet.outputs_energy_y10||0), 0.001); end
  def test_outputs_energy_z10; assert_in_delta(0, (worksheet.outputs_energy_z10||0), 0.001); end
  def test_outputs_energy_c11; assert_equal("G.T.01", worksheet.outputs_energy_c11); end
  def test_outputs_energy_d11; assert_equal("Global Road transport", worksheet.outputs_energy_d11); end
  def test_outputs_energy_s11; assert_in_delta(0, (worksheet.outputs_energy_s11||0), 0.001); end
  def test_outputs_energy_c12; assert_equal("G.T.02", worksheet.outputs_energy_c12); end
  def test_outputs_energy_d12; assert_equal("Global Rail transport", worksheet.outputs_energy_d12); end
  def test_outputs_energy_s12; assert_in_delta(0, (worksheet.outputs_energy_s12||0), 0.001); end
  def test_outputs_energy_c13; assert_equal("G.T.03", worksheet.outputs_energy_c13); end
  def test_outputs_energy_d13; assert_equal("Global Aviation transport", worksheet.outputs_energy_d13); end
  def test_outputs_energy_s13; assert_in_delta(0, (worksheet.outputs_energy_s13||0), 0.001); end
  def test_outputs_energy_c14; assert_equal("G.T.04", worksheet.outputs_energy_c14); end
  def test_outputs_energy_d14; assert_equal("Global Water transport", worksheet.outputs_energy_d14); end
  def test_outputs_energy_s14; assert_in_delta(0, (worksheet.outputs_energy_s14||0), 0.001); end
  def test_outputs_energy_d16; assert_equal("Materials", worksheet.outputs_energy_d16); end
  def test_outputs_energy_h16; assert_in_delta(0, (worksheet.outputs_energy_h16||0), 0.001); end
  def test_outputs_energy_i16; assert_in_delta(0, (worksheet.outputs_energy_i16||0), 0.001); end
  def test_outputs_energy_j16; assert_in_delta(0, (worksheet.outputs_energy_j16||0), 0.001); end
  def test_outputs_energy_k16; assert_in_delta(0, (worksheet.outputs_energy_k16||0), 0.001); end
  def test_outputs_energy_l16; assert_in_delta(0, (worksheet.outputs_energy_l16||0), 0.001); end
  def test_outputs_energy_m16; assert_in_delta(0, (worksheet.outputs_energy_m16||0), 0.001); end
  def test_outputs_energy_n16; assert_in_delta(0, (worksheet.outputs_energy_n16||0), 0.001); end
  def test_outputs_energy_o16; assert_in_delta(0, (worksheet.outputs_energy_o16||0), 0.001); end
  def test_outputs_energy_p16; assert_in_delta(0, (worksheet.outputs_energy_p16||0), 0.001); end
  def test_outputs_energy_r16; assert_in_delta(0, (worksheet.outputs_energy_r16||0), 0.001); end
  def test_outputs_energy_s16; assert_in_delta(0, (worksheet.outputs_energy_s16||0), 0.001); end
  def test_outputs_energy_t16; assert_in_delta(0, (worksheet.outputs_energy_t16||0), 0.001); end
  def test_outputs_energy_u16; assert_in_delta(0, (worksheet.outputs_energy_u16||0), 0.001); end
  def test_outputs_energy_v16; assert_in_delta(0, (worksheet.outputs_energy_v16||0), 0.001); end
  def test_outputs_energy_w16; assert_in_delta(0, (worksheet.outputs_energy_w16||0), 0.001); end
  def test_outputs_energy_x16; assert_in_delta(0, (worksheet.outputs_energy_x16||0), 0.001); end
  def test_outputs_energy_y16; assert_in_delta(0, (worksheet.outputs_energy_y16||0), 0.001); end
  def test_outputs_energy_z16; assert_in_delta(0, (worksheet.outputs_energy_z16||0), 0.001); end
  def test_outputs_energy_c17; assert_equal("G.M.01", worksheet.outputs_energy_c17); end
  def test_outputs_energy_d17; assert_equal("Global Products", worksheet.outputs_energy_d17); end
  def test_outputs_energy_s17; assert_in_delta(0, (worksheet.outputs_energy_s17||0), 0.001); end
  def test_outputs_energy_c18; assert_equal("G.M.02", worksheet.outputs_energy_c18); end
  def test_outputs_energy_d18; assert_equal("Global Materials", worksheet.outputs_energy_d18); end
  def test_outputs_energy_s18; assert_in_delta(0, (worksheet.outputs_energy_s18||0), 0.001); end
  def test_outputs_energy_c19; assert_equal("G.M.03", worksheet.outputs_energy_c19); end
  def test_outputs_energy_d19; assert_equal("Global Raw resources", worksheet.outputs_energy_d19); end
  def test_outputs_energy_s19; assert_in_delta(0, (worksheet.outputs_energy_s19||0), 0.001); end
  def test_outputs_energy_d21; assert_equal("Buildings", worksheet.outputs_energy_d21); end
  def test_outputs_energy_h21; assert_in_delta(0, (worksheet.outputs_energy_h21||0), 0.001); end
  def test_outputs_energy_i21; assert_in_delta(0, (worksheet.outputs_energy_i21||0), 0.001); end
  def test_outputs_energy_j21; assert_in_delta(0, (worksheet.outputs_energy_j21||0), 0.001); end
  def test_outputs_energy_k21; assert_in_delta(0, (worksheet.outputs_energy_k21||0), 0.001); end
  def test_outputs_energy_l21; assert_in_delta(0, (worksheet.outputs_energy_l21||0), 0.001); end
  def test_outputs_energy_m21; assert_in_delta(0, (worksheet.outputs_energy_m21||0), 0.001); end
  def test_outputs_energy_n21; assert_in_delta(0, (worksheet.outputs_energy_n21||0), 0.001); end
  def test_outputs_energy_o21; assert_in_delta(0, (worksheet.outputs_energy_o21||0), 0.001); end
  def test_outputs_energy_p21; assert_in_delta(0, (worksheet.outputs_energy_p21||0), 0.001); end
  def test_outputs_energy_r21; assert_in_delta(0, (worksheet.outputs_energy_r21||0), 0.001); end
  def test_outputs_energy_s21; assert_in_epsilon(-207520.10975399366, worksheet.outputs_energy_s21, 0.001); end
  def test_outputs_energy_t21; assert_in_delta(0, (worksheet.outputs_energy_t21||0), 0.001); end
  def test_outputs_energy_u21; assert_in_delta(0, (worksheet.outputs_energy_u21||0), 0.001); end
  def test_outputs_energy_v21; assert_in_delta(0, (worksheet.outputs_energy_v21||0), 0.001); end
  def test_outputs_energy_w21; assert_in_delta(0, (worksheet.outputs_energy_w21||0), 0.001); end
  def test_outputs_energy_x21; assert_in_delta(0, (worksheet.outputs_energy_x21||0), 0.001); end
  def test_outputs_energy_y21; assert_in_delta(0, (worksheet.outputs_energy_y21||0), 0.001); end
  def test_outputs_energy_z21; assert_in_delta(0, (worksheet.outputs_energy_z21||0), 0.001); end
  def test_outputs_energy_c22; assert_equal("G.B.01", worksheet.outputs_energy_c22); end
  def test_outputs_energy_d22; assert_equal("Global Heating and cooling", worksheet.outputs_energy_d22); end
  def test_outputs_energy_s22; assert_in_epsilon(-206932.68323468947, worksheet.outputs_energy_s22, 0.001); end
  def test_outputs_energy_c23; assert_equal("G.B.02", worksheet.outputs_energy_c23); end
  def test_outputs_energy_d23; assert_equal("Global Lighting & appliances", worksheet.outputs_energy_d23); end
  def test_outputs_energy_s23; assert_in_epsilon(-503.0604425217996, worksheet.outputs_energy_s23, 0.001); end
  def test_outputs_energy_c24; assert_equal("G.B.03", worksheet.outputs_energy_c24); end
  def test_outputs_energy_d24; assert_equal("Global Cooking", worksheet.outputs_energy_d24); end
  def test_outputs_energy_s24; assert_in_epsilon(-84.3660767824, worksheet.outputs_energy_s24, 0.001); end
  def test_outputs_energy_d26; assert_equal("Agriculture", worksheet.outputs_energy_d26); end
  def test_outputs_energy_s26; assert_in_delta(0, (worksheet.outputs_energy_s26||0), 0.001); end
  def test_outputs_energy_c27; assert_equal("G.F.01", worksheet.outputs_energy_c27); end
  def test_outputs_energy_d27; assert_equal("Global Energy for agricultural production", worksheet.outputs_energy_d27); end
  def test_outputs_energy_s27; assert_in_delta(0, (worksheet.outputs_energy_s27||0), 0.001); end
  def test_outputs_energy_d29; assert_equal("Geosequestration", worksheet.outputs_energy_d29); end
  def test_outputs_energy_s29; assert_in_delta(0, (worksheet.outputs_energy_s29||0), 0.001); end
  def test_outputs_energy_c30; assert_equal("G.G.01", worksheet.outputs_energy_c30); end
  def test_outputs_energy_d30; assert_equal("Global Geosequestration and storage of CO2", worksheet.outputs_energy_d30); end
  def test_outputs_energy_s30; assert_in_delta(0, (worksheet.outputs_energy_s30||0), 0.001); end
  def test_outputs_energy_h31; assert_in_delta(0, (worksheet.outputs_energy_h31||0), 0.001); end
  def test_outputs_energy_i31; assert_in_delta(0, (worksheet.outputs_energy_i31||0), 0.001); end
  def test_outputs_energy_j31; assert_in_delta(0, (worksheet.outputs_energy_j31||0), 0.001); end
  def test_outputs_energy_k31; assert_in_delta(0, (worksheet.outputs_energy_k31||0), 0.001); end
  def test_outputs_energy_l31; assert_in_delta(0, (worksheet.outputs_energy_l31||0), 0.001); end
  def test_outputs_energy_m31; assert_in_delta(0, (worksheet.outputs_energy_m31||0), 0.001); end
  def test_outputs_energy_n31; assert_in_delta(0, (worksheet.outputs_energy_n31||0), 0.001); end
  def test_outputs_energy_o31; assert_in_delta(0, (worksheet.outputs_energy_o31||0), 0.001); end
  def test_outputs_energy_r31; assert_in_delta(0, (worksheet.outputs_energy_r31||0), 0.001); end
  def test_outputs_energy_s31; assert_in_epsilon(-207520.10975399366, worksheet.outputs_energy_s31, 0.001); end
  def test_outputs_energy_t31; assert_in_delta(0, (worksheet.outputs_energy_t31||0), 0.001); end
  def test_outputs_energy_u31; assert_in_delta(0, (worksheet.outputs_energy_u31||0), 0.001); end
  def test_outputs_energy_v31; assert_in_delta(0, (worksheet.outputs_energy_v31||0), 0.001); end
  def test_outputs_energy_w31; assert_in_delta(0, (worksheet.outputs_energy_w31||0), 0.001); end
  def test_outputs_energy_x31; assert_in_delta(0, (worksheet.outputs_energy_x31||0), 0.001); end
  def test_outputs_energy_y31; assert_in_delta(0, (worksheet.outputs_energy_y31||0), 0.001); end
  def test_outputs_energy_z31; assert_in_delta(0, (worksheet.outputs_energy_z31||0), 0.001); end
  def test_outputs_energy_c34; assert_equal("SUPPLY", worksheet.outputs_energy_c34); end
  def test_outputs_energy_z34; assert_equal("TWh / year", worksheet.outputs_energy_z34); end
  def test_outputs_energy_h35; assert_equal("Historic actuals", worksheet.outputs_energy_h35); end
  def test_outputs_energy_r35; assert_equal("Calculated by the model", worksheet.outputs_energy_r35); end
  def test_outputs_energy_c36; assert_equal("Code", worksheet.outputs_energy_c36); end
  def test_outputs_energy_d36; assert_equal("Description", worksheet.outputs_energy_d36); end
  def test_outputs_energy_g36; assert_equal("Notes", worksheet.outputs_energy_g36); end
  def test_outputs_energy_h36; assert_equal("1970", worksheet.outputs_energy_h36); end
  def test_outputs_energy_i36; assert_equal("1975", worksheet.outputs_energy_i36); end
  def test_outputs_energy_j36; assert_equal("1980", worksheet.outputs_energy_j36); end
  def test_outputs_energy_k36; assert_equal("1985", worksheet.outputs_energy_k36); end
  def test_outputs_energy_l36; assert_equal("1990", worksheet.outputs_energy_l36); end
  def test_outputs_energy_m36; assert_equal("1995", worksheet.outputs_energy_m36); end
  def test_outputs_energy_n36; assert_equal("2000", worksheet.outputs_energy_n36); end
  def test_outputs_energy_o36; assert_equal("2005", worksheet.outputs_energy_o36); end
  def test_outputs_energy_p36; assert_in_epsilon(2010, worksheet.outputs_energy_p36, 0.001); end
  def test_outputs_energy_r36; assert_in_epsilon(2011, worksheet.outputs_energy_r36, 0.001); end
  def test_outputs_energy_s36; assert_equal("2015", worksheet.outputs_energy_s36); end
  def test_outputs_energy_t36; assert_equal("2020", worksheet.outputs_energy_t36); end
  def test_outputs_energy_u36; assert_equal("2025", worksheet.outputs_energy_u36); end
  def test_outputs_energy_v36; assert_equal("2030", worksheet.outputs_energy_v36); end
  def test_outputs_energy_w36; assert_equal("2035", worksheet.outputs_energy_w36); end
  def test_outputs_energy_x36; assert_equal("2040", worksheet.outputs_energy_x36); end
  def test_outputs_energy_y36; assert_equal("2045", worksheet.outputs_energy_y36); end
  def test_outputs_energy_z36; assert_equal("2050", worksheet.outputs_energy_z36); end
  def test_outputs_energy_d37; assert_equal("Primary electricity (nuclear, renewables)", worksheet.outputs_energy_d37); end
  def test_outputs_energy_h37; assert_in_delta(0, (worksheet.outputs_energy_h37||0), 0.001); end
  def test_outputs_energy_i37; assert_in_delta(0, (worksheet.outputs_energy_i37||0), 0.001); end
  def test_outputs_energy_j37; assert_in_delta(0, (worksheet.outputs_energy_j37||0), 0.001); end
  def test_outputs_energy_k37; assert_in_delta(0, (worksheet.outputs_energy_k37||0), 0.001); end
  def test_outputs_energy_l37; assert_in_delta(0, (worksheet.outputs_energy_l37||0), 0.001); end
  def test_outputs_energy_m37; assert_in_delta(0, (worksheet.outputs_energy_m37||0), 0.001); end
  def test_outputs_energy_n37; assert_in_delta(0, (worksheet.outputs_energy_n37||0), 0.001); end
  def test_outputs_energy_o37; assert_in_delta(0, (worksheet.outputs_energy_o37||0), 0.001); end
  def test_outputs_energy_r37; assert_in_delta(0, (worksheet.outputs_energy_r37||0), 0.001); end
  def test_outputs_energy_s37; assert_in_epsilon(57639.22965171378, worksheet.outputs_energy_s37, 0.001); end
  def test_outputs_energy_t37; assert_in_delta(0, (worksheet.outputs_energy_t37||0), 0.001); end
  def test_outputs_energy_u37; assert_in_delta(0, (worksheet.outputs_energy_u37||0), 0.001); end
  def test_outputs_energy_v37; assert_in_delta(0, (worksheet.outputs_energy_v37||0), 0.001); end
  def test_outputs_energy_w37; assert_in_delta(0, (worksheet.outputs_energy_w37||0), 0.001); end
  def test_outputs_energy_x37; assert_in_delta(0, (worksheet.outputs_energy_x37||0), 0.001); end
  def test_outputs_energy_y37; assert_in_delta(0, (worksheet.outputs_energy_y37||0), 0.001); end
  def test_outputs_energy_z37; assert_in_delta(0, (worksheet.outputs_energy_z37||0), 0.001); end
  def test_outputs_energy_c38; assert_equal("G.N.01", worksheet.outputs_energy_c38); end
  def test_outputs_energy_d38; assert_equal("Global Nuclear fission", worksheet.outputs_energy_d38); end
  def test_outputs_energy_s38; assert_in_epsilon(36710.406091370554, worksheet.outputs_energy_s38, 0.001); end
  def test_outputs_energy_c39; assert_equal("G.R.01", worksheet.outputs_energy_c39); end
  def test_outputs_energy_d39; assert_equal("Global Solar", worksheet.outputs_energy_d39); end
  def test_outputs_energy_s39; assert_in_epsilon(16911.28034803553, worksheet.outputs_energy_s39, 0.001); end
  def test_outputs_energy_c40; assert_equal("G.R.02", worksheet.outputs_energy_c40); end
  def test_outputs_energy_d40; assert_equal("Global Wind", worksheet.outputs_energy_d40); end
  def test_outputs_energy_s40; assert_in_epsilon(3569.3353846153846, worksheet.outputs_energy_s40, 0.001); end
  def test_outputs_energy_c41; assert_equal("G.R.03", worksheet.outputs_energy_c41); end
  def test_outputs_energy_d41; assert_equal("Global Tidal", worksheet.outputs_energy_d41); end
  def test_outputs_energy_s41; assert_in_epsilon(56.10240000000001, worksheet.outputs_energy_s41, 0.001); end
  def test_outputs_energy_c42; assert_equal("G.R.04", worksheet.outputs_energy_c42); end
  def test_outputs_energy_d42; assert_equal("Global Wave", worksheet.outputs_energy_d42); end
  def test_outputs_energy_s42; assert_in_epsilon(5.610240000000001, worksheet.outputs_energy_s42, 0.001); end
  def test_outputs_energy_c43; assert_equal("G.R.05", worksheet.outputs_energy_c43); end
  def test_outputs_energy_d43; assert_equal("Global Geothermal", worksheet.outputs_energy_d43); end
  def test_outputs_energy_s43; assert_in_epsilon(39.271679999999996, worksheet.outputs_energy_s43, 0.001); end
  def test_outputs_energy_c44; assert_equal("G.R.06", worksheet.outputs_energy_c44); end
  def test_outputs_energy_d44; assert_equal("Global Hydro", worksheet.outputs_energy_d44); end
  def test_outputs_energy_s44; assert_in_epsilon(347.2235076923077, worksheet.outputs_energy_s44, 0.001); end
  def test_outputs_energy_d46; assert_equal("Environmental heat", worksheet.outputs_energy_d46); end
  def test_outputs_energy_h46; assert_in_delta(0, (worksheet.outputs_energy_h46||0), 0.001); end
  def test_outputs_energy_i46; assert_in_delta(0, (worksheet.outputs_energy_i46||0), 0.001); end
  def test_outputs_energy_j46; assert_in_delta(0, (worksheet.outputs_energy_j46||0), 0.001); end
  def test_outputs_energy_k46; assert_in_delta(0, (worksheet.outputs_energy_k46||0), 0.001); end
  def test_outputs_energy_l46; assert_in_delta(0, (worksheet.outputs_energy_l46||0), 0.001); end
  def test_outputs_energy_m46; assert_in_delta(0, (worksheet.outputs_energy_m46||0), 0.001); end
  def test_outputs_energy_n46; assert_in_delta(0, (worksheet.outputs_energy_n46||0), 0.001); end
  def test_outputs_energy_o46; assert_in_delta(0, (worksheet.outputs_energy_o46||0), 0.001); end
  def test_outputs_energy_r46; assert_in_delta(0, (worksheet.outputs_energy_r46||0), 0.001); end
  def test_outputs_energy_s46; assert_in_epsilon(37095.10159436462, worksheet.outputs_energy_s46, 0.001); end
  def test_outputs_energy_t46; assert_in_delta(0, (worksheet.outputs_energy_t46||0), 0.001); end
  def test_outputs_energy_u46; assert_in_delta(0, (worksheet.outputs_energy_u46||0), 0.001); end
  def test_outputs_energy_v46; assert_in_delta(0, (worksheet.outputs_energy_v46||0), 0.001); end
  def test_outputs_energy_w46; assert_in_delta(0, (worksheet.outputs_energy_w46||0), 0.001); end
  def test_outputs_energy_x46; assert_in_delta(0, (worksheet.outputs_energy_x46||0), 0.001); end
  def test_outputs_energy_y46; assert_in_delta(0, (worksheet.outputs_energy_y46||0), 0.001); end
  def test_outputs_energy_z46; assert_in_delta(0, (worksheet.outputs_energy_z46||0), 0.001); end
  def test_outputs_energy_c47; assert_equal("G.R.07", worksheet.outputs_energy_c47); end
  def test_outputs_energy_d47; assert_equal("Global Environmental heat", worksheet.outputs_energy_d47); end
  def test_outputs_energy_s47; assert_in_epsilon(37095.10159436462, worksheet.outputs_energy_s47, 0.001); end
  def test_outputs_energy_d49; assert_equal("Bioenergy", worksheet.outputs_energy_d49); end
  def test_outputs_energy_h49; assert_in_delta(0, (worksheet.outputs_energy_h49||0), 0.001); end
  def test_outputs_energy_i49; assert_in_delta(0, (worksheet.outputs_energy_i49||0), 0.001); end
  def test_outputs_energy_j49; assert_in_delta(0, (worksheet.outputs_energy_j49||0), 0.001); end
  def test_outputs_energy_k49; assert_in_delta(0, (worksheet.outputs_energy_k49||0), 0.001); end
  def test_outputs_energy_l49; assert_in_delta(0, (worksheet.outputs_energy_l49||0), 0.001); end
  def test_outputs_energy_m49; assert_in_delta(0, (worksheet.outputs_energy_m49||0), 0.001); end
  def test_outputs_energy_n49; assert_in_delta(0, (worksheet.outputs_energy_n49||0), 0.001); end
  def test_outputs_energy_o49; assert_in_delta(0, (worksheet.outputs_energy_o49||0), 0.001); end
  def test_outputs_energy_r49; assert_in_delta(0, (worksheet.outputs_energy_r49||0), 0.001); end
  def test_outputs_energy_s49; assert_equal(:na, worksheet.outputs_energy_s49); end
  def test_outputs_energy_t49; assert_in_delta(0, (worksheet.outputs_energy_t49||0), 0.001); end
  def test_outputs_energy_u49; assert_in_delta(0, (worksheet.outputs_energy_u49||0), 0.001); end
  def test_outputs_energy_v49; assert_in_delta(0, (worksheet.outputs_energy_v49||0), 0.001); end
  def test_outputs_energy_w49; assert_in_delta(0, (worksheet.outputs_energy_w49||0), 0.001); end
  def test_outputs_energy_x49; assert_in_delta(0, (worksheet.outputs_energy_x49||0), 0.001); end
  def test_outputs_energy_y49; assert_in_delta(0, (worksheet.outputs_energy_y49||0), 0.001); end
  def test_outputs_energy_z49; assert_in_delta(0, (worksheet.outputs_energy_z49||0), 0.001); end
  def test_outputs_energy_c50; assert_equal("G.W.01", worksheet.outputs_energy_c50); end
  def test_outputs_energy_d50; assert_equal(:na, worksheet.outputs_energy_d50); end
  def test_outputs_energy_s50; assert_equal(:na, worksheet.outputs_energy_s50); end
  def test_outputs_energy_c51; assert_equal("G.R.08", worksheet.outputs_energy_c51); end
  def test_outputs_energy_d51; assert_equal("Global Agricultural produce", worksheet.outputs_energy_d51); end
  def test_outputs_energy_s51; assert_in_delta(0, (worksheet.outputs_energy_s51||0), 0.001); end
  def test_outputs_energy_d54; assert_equal("Fossil fuels", worksheet.outputs_energy_d54); end
  def test_outputs_energy_h54; assert_in_delta(0, (worksheet.outputs_energy_h54||0), 0.001); end
  def test_outputs_energy_i54; assert_in_delta(0, (worksheet.outputs_energy_i54||0), 0.001); end
  def test_outputs_energy_j54; assert_in_delta(0, (worksheet.outputs_energy_j54||0), 0.001); end
  def test_outputs_energy_k54; assert_in_delta(0, (worksheet.outputs_energy_k54||0), 0.001); end
  def test_outputs_energy_l54; assert_in_delta(0, (worksheet.outputs_energy_l54||0), 0.001); end
  def test_outputs_energy_m54; assert_in_delta(0, (worksheet.outputs_energy_m54||0), 0.001); end
  def test_outputs_energy_n54; assert_in_delta(0, (worksheet.outputs_energy_n54||0), 0.001); end
  def test_outputs_energy_o54; assert_in_delta(0, (worksheet.outputs_energy_o54||0), 0.001); end
  def test_outputs_energy_r54; assert_in_delta(0, (worksheet.outputs_energy_r54||0), 0.001); end
  def test_outputs_energy_s54; assert_in_delta(0, (worksheet.outputs_energy_s54||0), 0.001); end
  def test_outputs_energy_t54; assert_in_delta(0, (worksheet.outputs_energy_t54||0), 0.001); end
  def test_outputs_energy_u54; assert_in_delta(0, (worksheet.outputs_energy_u54||0), 0.001); end
  def test_outputs_energy_v54; assert_in_delta(0, (worksheet.outputs_energy_v54||0), 0.001); end
  def test_outputs_energy_w54; assert_in_delta(0, (worksheet.outputs_energy_w54||0), 0.001); end
  def test_outputs_energy_x54; assert_in_delta(0, (worksheet.outputs_energy_x54||0), 0.001); end
  def test_outputs_energy_y54; assert_in_delta(0, (worksheet.outputs_energy_y54||0), 0.001); end
  def test_outputs_energy_z54; assert_in_delta(0, (worksheet.outputs_energy_z54||0), 0.001); end
  def test_outputs_energy_c55; assert_equal("G.Q.01", worksheet.outputs_energy_c55); end
  def test_outputs_energy_d55; assert_equal("Global Coal reserves ", worksheet.outputs_energy_d55); end
  def test_outputs_energy_s55; assert_in_delta(0, (worksheet.outputs_energy_s55||0), 0.001); end
  def test_outputs_energy_c56; assert_equal("G.Q.02", worksheet.outputs_energy_c56); end
  def test_outputs_energy_d56; assert_equal("Global Oil reserves ", worksheet.outputs_energy_d56); end
  def test_outputs_energy_s56; assert_in_delta(0, (worksheet.outputs_energy_s56||0), 0.001); end
  def test_outputs_energy_c57; assert_equal("G.Q.03", worksheet.outputs_energy_c57); end
  def test_outputs_energy_d57; assert_equal("Global Gas reserves ", worksheet.outputs_energy_d57); end
  def test_outputs_energy_s57; assert_in_delta(0, (worksheet.outputs_energy_s57||0), 0.001); end
  def test_outputs_energy_h58; assert_in_delta(0, (worksheet.outputs_energy_h58||0), 0.001); end
  def test_outputs_energy_i58; assert_in_delta(0, (worksheet.outputs_energy_i58||0), 0.001); end
  def test_outputs_energy_j58; assert_in_delta(0, (worksheet.outputs_energy_j58||0), 0.001); end
  def test_outputs_energy_k58; assert_in_delta(0, (worksheet.outputs_energy_k58||0), 0.001); end
  def test_outputs_energy_l58; assert_in_delta(0, (worksheet.outputs_energy_l58||0), 0.001); end
  def test_outputs_energy_m58; assert_in_delta(0, (worksheet.outputs_energy_m58||0), 0.001); end
  def test_outputs_energy_n58; assert_in_delta(0, (worksheet.outputs_energy_n58||0), 0.001); end
  def test_outputs_energy_o58; assert_in_delta(0, (worksheet.outputs_energy_o58||0), 0.001); end
  def test_outputs_energy_r58; assert_in_delta(0, (worksheet.outputs_energy_r58||0), 0.001); end
  def test_outputs_energy_s58; assert_equal(:na, worksheet.outputs_energy_s58); end
  def test_outputs_energy_t58; assert_in_delta(0, (worksheet.outputs_energy_t58||0), 0.001); end
  def test_outputs_energy_u58; assert_in_delta(0, (worksheet.outputs_energy_u58||0), 0.001); end
  def test_outputs_energy_v58; assert_in_delta(0, (worksheet.outputs_energy_v58||0), 0.001); end
  def test_outputs_energy_w58; assert_in_delta(0, (worksheet.outputs_energy_w58||0), 0.001); end
  def test_outputs_energy_x58; assert_in_delta(0, (worksheet.outputs_energy_x58||0), 0.001); end
  def test_outputs_energy_y58; assert_in_delta(0, (worksheet.outputs_energy_y58||0), 0.001); end
  def test_outputs_energy_z58; assert_in_delta(0, (worksheet.outputs_energy_z58||0), 0.001); end
  def test_outputs_energy_d60; assert_equal("Dummy for charting supply", worksheet.outputs_energy_d60); end
  def test_outputs_energy_h60; assert_in_delta(0, (worksheet.outputs_energy_h60||0), 0.001); end
  def test_outputs_energy_i60; assert_in_delta(0, (worksheet.outputs_energy_i60||0), 0.001); end
  def test_outputs_energy_j60; assert_in_delta(0, (worksheet.outputs_energy_j60||0), 0.001); end
  def test_outputs_energy_k60; assert_in_delta(0, (worksheet.outputs_energy_k60||0), 0.001); end
  def test_outputs_energy_l60; assert_in_delta(0, (worksheet.outputs_energy_l60||0), 0.001); end
  def test_outputs_energy_m60; assert_in_delta(0, (worksheet.outputs_energy_m60||0), 0.001); end
  def test_outputs_energy_n60; assert_in_delta(0, (worksheet.outputs_energy_n60||0), 0.001); end
  def test_outputs_energy_c62; assert_equal("CONVERSION LOSSES, DISTRIBUTION AND OWN USES", worksheet.outputs_energy_c62); end
  def test_outputs_energy_h63; assert_equal("Historic actuals", worksheet.outputs_energy_h63); end
  def test_outputs_energy_r63; assert_equal("Calculated by the model", worksheet.outputs_energy_r63); end
  def test_outputs_energy_c64; assert_equal("Code", worksheet.outputs_energy_c64); end
  def test_outputs_energy_d64; assert_equal("Sector", worksheet.outputs_energy_d64); end
  def test_outputs_energy_g64; assert_equal("Notes", worksheet.outputs_energy_g64); end
  def test_outputs_energy_h64; assert_equal("1970", worksheet.outputs_energy_h64); end
  def test_outputs_energy_i64; assert_equal("1975", worksheet.outputs_energy_i64); end
  def test_outputs_energy_j64; assert_equal("1980", worksheet.outputs_energy_j64); end
  def test_outputs_energy_k64; assert_equal("1985", worksheet.outputs_energy_k64); end
  def test_outputs_energy_l64; assert_equal("1990", worksheet.outputs_energy_l64); end
  def test_outputs_energy_m64; assert_equal("1995", worksheet.outputs_energy_m64); end
  def test_outputs_energy_n64; assert_equal("2000", worksheet.outputs_energy_n64); end
  def test_outputs_energy_o64; assert_equal("2005", worksheet.outputs_energy_o64); end
  def test_outputs_energy_p64; assert_in_epsilon(2010, worksheet.outputs_energy_p64, 0.001); end
  def test_outputs_energy_r64; assert_in_epsilon(2011, worksheet.outputs_energy_r64, 0.001); end
  def test_outputs_energy_s64; assert_equal("2015", worksheet.outputs_energy_s64); end
  def test_outputs_energy_t64; assert_equal("2020", worksheet.outputs_energy_t64); end
  def test_outputs_energy_u64; assert_equal("2025", worksheet.outputs_energy_u64); end
  def test_outputs_energy_v64; assert_equal("2030", worksheet.outputs_energy_v64); end
  def test_outputs_energy_w64; assert_equal("2035", worksheet.outputs_energy_w64); end
  def test_outputs_energy_x64; assert_equal("2040", worksheet.outputs_energy_x64); end
  def test_outputs_energy_y64; assert_equal("2045", worksheet.outputs_energy_y64); end
  def test_outputs_energy_z64; assert_equal("2050", worksheet.outputs_energy_z64); end
  def test_outputs_energy_c65; assert_equal("G.L.01", worksheet.outputs_energy_c65); end
  def test_outputs_energy_d65; assert_equal("Global Conversion losses", worksheet.outputs_energy_d65); end
  def test_outputs_energy_s65; assert_in_epsilon(241456.39239103167, worksheet.outputs_energy_s65, 0.001); end
  def test_outputs_energy_c66; assert_equal("G.L.02", worksheet.outputs_energy_c66); end
  def test_outputs_energy_d66; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_d66); end
  def test_outputs_energy_s66; assert_in_epsilon(10296.765977343834, worksheet.outputs_energy_s66, 0.001); end
  def test_outputs_energy_d67; assert_equal("Supply net of losses", worksheet.outputs_energy_d67); end
  def test_outputs_energy_s67; assert_in_epsilon(251753.1583683755, worksheet.outputs_energy_s67, 0.001); end
  def test_outputs_energy_d69; assert_equal("check", worksheet.outputs_energy_d69); end
  def test_outputs_energy_h69; assert_in_delta(0, (worksheet.outputs_energy_h69||0), 0.001); end
  def test_outputs_energy_i69; assert_in_delta(0, (worksheet.outputs_energy_i69||0), 0.001); end
  def test_outputs_energy_j69; assert_in_delta(0, (worksheet.outputs_energy_j69||0), 0.001); end
  def test_outputs_energy_k69; assert_in_delta(0, (worksheet.outputs_energy_k69||0), 0.001); end
  def test_outputs_energy_l69; assert_in_delta(0, (worksheet.outputs_energy_l69||0), 0.001); end
  def test_outputs_energy_m69; assert_in_delta(0, (worksheet.outputs_energy_m69||0), 0.001); end
  def test_outputs_energy_n69; assert_in_delta(0, (worksheet.outputs_energy_n69||0), 0.001); end
  def test_outputs_energy_o69; assert_in_delta(0, (worksheet.outputs_energy_o69||0), 0.001); end
  def test_outputs_energy_r69; assert_in_delta(0, (worksheet.outputs_energy_r69||0), 0.001); end
  def test_outputs_energy_s69; assert_equal(:na, worksheet.outputs_energy_s69); end
  def test_outputs_energy_t69; assert_in_delta(0, (worksheet.outputs_energy_t69||0), 0.001); end
  def test_outputs_energy_u69; assert_in_delta(0, (worksheet.outputs_energy_u69||0), 0.001); end
  def test_outputs_energy_v69; assert_in_delta(0, (worksheet.outputs_energy_v69||0), 0.001); end
  def test_outputs_energy_w69; assert_in_delta(0, (worksheet.outputs_energy_w69||0), 0.001); end
  def test_outputs_energy_x69; assert_in_delta(0, (worksheet.outputs_energy_x69||0), 0.001); end
  def test_outputs_energy_y69; assert_in_delta(0, (worksheet.outputs_energy_y69||0), 0.001); end
  def test_outputs_energy_z69; assert_in_delta(0, (worksheet.outputs_energy_z69||0), 0.001); end
  def test_outputs_energy_c72; assert_equal("RESERVES", worksheet.outputs_energy_c72); end
  def test_outputs_energy_c74; assert_equal("Cumulative consumption from 2010", worksheet.outputs_energy_c74); end
  def test_outputs_energy_g76; assert_equal("Notes", worksheet.outputs_energy_g76); end
  def test_outputs_energy_r76; assert_in_epsilon(2011, worksheet.outputs_energy_r76, 0.001); end
  def test_outputs_energy_s76; assert_equal("2015", worksheet.outputs_energy_s76); end
  def test_outputs_energy_t76; assert_equal("2020", worksheet.outputs_energy_t76); end
  def test_outputs_energy_u76; assert_equal("2025", worksheet.outputs_energy_u76); end
  def test_outputs_energy_v76; assert_equal("2030", worksheet.outputs_energy_v76); end
  def test_outputs_energy_w76; assert_equal("2035", worksheet.outputs_energy_w76); end
  def test_outputs_energy_x76; assert_equal("2040", worksheet.outputs_energy_x76); end
  def test_outputs_energy_y76; assert_equal("2045", worksheet.outputs_energy_y76); end
  def test_outputs_energy_z76; assert_equal("2050", worksheet.outputs_energy_z76); end
  def test_outputs_energy_c77; assert_equal("G.Q.01", worksheet.outputs_energy_c77); end
  def test_outputs_energy_d77; assert_equal("Global Coal reserves ", worksheet.outputs_energy_d77); end
  def test_outputs_energy_g77; assert_equal("kg", worksheet.outputs_energy_g77); end
  def test_outputs_energy_r77; assert_in_delta(0, (worksheet.outputs_energy_r77||0), 0.001); end
  def test_outputs_energy_s77; assert_in_delta(0, (worksheet.outputs_energy_s77||0), 0.001); end
  def test_outputs_energy_t77; assert_in_delta(0, (worksheet.outputs_energy_t77||0), 0.001); end
  def test_outputs_energy_u77; assert_in_delta(0, (worksheet.outputs_energy_u77||0), 0.001); end
  def test_outputs_energy_v77; assert_in_delta(0, (worksheet.outputs_energy_v77||0), 0.001); end
  def test_outputs_energy_w77; assert_in_delta(0, (worksheet.outputs_energy_w77||0), 0.001); end
  def test_outputs_energy_x77; assert_in_delta(0, (worksheet.outputs_energy_x77||0), 0.001); end
  def test_outputs_energy_y77; assert_in_delta(0, (worksheet.outputs_energy_y77||0), 0.001); end
  def test_outputs_energy_z77; assert_in_delta(0, (worksheet.outputs_energy_z77||0), 0.001); end
  def test_outputs_energy_c78; assert_equal("G.Q.02", worksheet.outputs_energy_c78); end
  def test_outputs_energy_d78; assert_equal("Global Oil reserves ", worksheet.outputs_energy_d78); end
  def test_outputs_energy_g78; assert_equal("bbl", worksheet.outputs_energy_g78); end
  def test_outputs_energy_r78; assert_in_delta(0, (worksheet.outputs_energy_r78||0), 0.001); end
  def test_outputs_energy_s78; assert_in_delta(0, (worksheet.outputs_energy_s78||0), 0.001); end
  def test_outputs_energy_t78; assert_in_delta(0, (worksheet.outputs_energy_t78||0), 0.001); end
  def test_outputs_energy_u78; assert_in_delta(0, (worksheet.outputs_energy_u78||0), 0.001); end
  def test_outputs_energy_v78; assert_in_delta(0, (worksheet.outputs_energy_v78||0), 0.001); end
  def test_outputs_energy_w78; assert_in_delta(0, (worksheet.outputs_energy_w78||0), 0.001); end
  def test_outputs_energy_x78; assert_in_delta(0, (worksheet.outputs_energy_x78||0), 0.001); end
  def test_outputs_energy_y78; assert_in_delta(0, (worksheet.outputs_energy_y78||0), 0.001); end
  def test_outputs_energy_z78; assert_in_delta(0, (worksheet.outputs_energy_z78||0), 0.001); end
  def test_outputs_energy_c79; assert_equal("G.Q.03", worksheet.outputs_energy_c79); end
  def test_outputs_energy_d79; assert_equal("Global Gas reserves ", worksheet.outputs_energy_d79); end
  def test_outputs_energy_g79; assert_equal("m3", worksheet.outputs_energy_g79); end
  def test_outputs_energy_r79; assert_in_delta(0, (worksheet.outputs_energy_r79||0), 0.001); end
  def test_outputs_energy_s79; assert_in_delta(0, (worksheet.outputs_energy_s79||0), 0.001); end
  def test_outputs_energy_t79; assert_in_delta(0, (worksheet.outputs_energy_t79||0), 0.001); end
  def test_outputs_energy_u79; assert_in_delta(0, (worksheet.outputs_energy_u79||0), 0.001); end
  def test_outputs_energy_v79; assert_in_delta(0, (worksheet.outputs_energy_v79||0), 0.001); end
  def test_outputs_energy_w79; assert_in_delta(0, (worksheet.outputs_energy_w79||0), 0.001); end
  def test_outputs_energy_x79; assert_in_delta(0, (worksheet.outputs_energy_x79||0), 0.001); end
  def test_outputs_energy_y79; assert_in_delta(0, (worksheet.outputs_energy_y79||0), 0.001); end
  def test_outputs_energy_z79; assert_in_delta(0, (worksheet.outputs_energy_z79||0), 0.001); end
  def test_outputs_energy_c82; assert_equal("Estimates of reserves against consumption", worksheet.outputs_energy_c82); end
  def test_outputs_energy_c84; assert_equal("Coal", worksheet.outputs_energy_c84); end
  def test_outputs_energy_c86; assert_equal("Source", worksheet.outputs_energy_c86); end
  def test_outputs_energy_d86; assert_equal("Estimate of reserves (kg)", worksheet.outputs_energy_d86); end
  def test_outputs_energy_e86; assert_equal("Consumption by 2050", worksheet.outputs_energy_e86); end
  def test_outputs_energy_f86; assert_equal("% of est. reserves consumed", worksheet.outputs_energy_f86); end
  def test_outputs_energy_h86; assert_equal("Information on the source", worksheet.outputs_energy_h86); end
  def test_outputs_energy_c87; assert_in_delta(1, worksheet.outputs_energy_c87, 0.001); end
  def test_outputs_energy_d87; assert_in_epsilon(8000, worksheet.outputs_energy_d87, 0.001); end
  def test_outputs_energy_e87; assert_in_delta(0, (worksheet.outputs_energy_e87||0), 0.001); end
  def test_outputs_energy_f87; assert_in_delta(0, (worksheet.outputs_energy_f87||0), 0.001); end
  def test_outputs_energy_h87; assert_equal("example", worksheet.outputs_energy_h87); end
  def test_outputs_energy_c88; assert_in_epsilon(2, worksheet.outputs_energy_c88, 0.001); end
  def test_outputs_energy_d88; assert_in_epsilon(10000, worksheet.outputs_energy_d88, 0.001); end
  def test_outputs_energy_e88; assert_in_delta(0, (worksheet.outputs_energy_e88||0), 0.001); end
  def test_outputs_energy_f88; assert_in_delta(0, (worksheet.outputs_energy_f88||0), 0.001); end
  def test_outputs_energy_h88; assert_equal("example", worksheet.outputs_energy_h88); end
  def test_outputs_energy_c89; assert_in_epsilon(3, worksheet.outputs_energy_c89, 0.001); end
  def test_outputs_energy_d89; assert_in_epsilon(20000, worksheet.outputs_energy_d89, 0.001); end
  def test_outputs_energy_e89; assert_in_delta(0, (worksheet.outputs_energy_e89||0), 0.001); end
  def test_outputs_energy_f89; assert_in_delta(0, (worksheet.outputs_energy_f89||0), 0.001); end
  def test_outputs_energy_h89; assert_equal("example", worksheet.outputs_energy_h89); end
  def test_outputs_energy_c91; assert_equal("Oil", worksheet.outputs_energy_c91); end
  def test_outputs_energy_c93; assert_equal("Source", worksheet.outputs_energy_c93); end
  def test_outputs_energy_d93; assert_equal("Estimate of reserves (bbl)", worksheet.outputs_energy_d93); end
  def test_outputs_energy_e93; assert_equal("Consumption by 2050", worksheet.outputs_energy_e93); end
  def test_outputs_energy_f93; assert_equal("% of est. reserves consumed", worksheet.outputs_energy_f93); end
  def test_outputs_energy_h93; assert_equal("Information on the source", worksheet.outputs_energy_h93); end
  def test_outputs_energy_c94; assert_in_delta(1, worksheet.outputs_energy_c94, 0.001); end
  def test_outputs_energy_e94; assert_in_delta(0, (worksheet.outputs_energy_e94||0), 0.001); end
  def test_outputs_energy_f94; assert_equal(:div0, worksheet.outputs_energy_f94); end
  def test_outputs_energy_c95; assert_in_epsilon(2, worksheet.outputs_energy_c95, 0.001); end
  def test_outputs_energy_e95; assert_in_delta(0, (worksheet.outputs_energy_e95||0), 0.001); end
  def test_outputs_energy_f95; assert_equal(:div0, worksheet.outputs_energy_f95); end
  def test_outputs_energy_c96; assert_in_epsilon(3, worksheet.outputs_energy_c96, 0.001); end
  def test_outputs_energy_e96; assert_in_delta(0, (worksheet.outputs_energy_e96||0), 0.001); end
  def test_outputs_energy_f96; assert_equal(:div0, worksheet.outputs_energy_f96); end
  def test_outputs_energy_c98; assert_equal("Gas", worksheet.outputs_energy_c98); end
  def test_outputs_energy_c100; assert_equal("Source", worksheet.outputs_energy_c100); end
  def test_outputs_energy_d100; assert_equal("Estimate of reserves (m3)", worksheet.outputs_energy_d100); end
  def test_outputs_energy_e100; assert_equal("Consumption by 2050", worksheet.outputs_energy_e100); end
  def test_outputs_energy_f100; assert_equal("% of est. reserves consumed", worksheet.outputs_energy_f100); end
  def test_outputs_energy_h100; assert_equal("Information on the source", worksheet.outputs_energy_h100); end
  def test_outputs_energy_c101; assert_in_delta(1, worksheet.outputs_energy_c101, 0.001); end
  def test_outputs_energy_e101; assert_in_delta(0, (worksheet.outputs_energy_e101||0), 0.001); end
  def test_outputs_energy_f101; assert_equal(:div0, worksheet.outputs_energy_f101); end
  def test_outputs_energy_c102; assert_in_epsilon(2, worksheet.outputs_energy_c102, 0.001); end
  def test_outputs_energy_e102; assert_in_delta(0, (worksheet.outputs_energy_e102||0), 0.001); end
  def test_outputs_energy_f102; assert_equal(:div0, worksheet.outputs_energy_f102); end
  def test_outputs_energy_c103; assert_in_epsilon(3, worksheet.outputs_energy_c103, 0.001); end
  def test_outputs_energy_e103; assert_in_delta(0, (worksheet.outputs_energy_e103||0), 0.001); end
  def test_outputs_energy_f103; assert_equal(:div0, worksheet.outputs_energy_f103); end
  def test_outputs_energy_b107; assert_equal("Electricity grid (net of distribution losses)", worksheet.outputs_energy_b107); end
  def test_outputs_energy_h109; assert_equal("Historic actuals", worksheet.outputs_energy_h109); end
  def test_outputs_energy_r109; assert_equal("Calculated by the model", worksheet.outputs_energy_r109); end
  def test_outputs_energy_c110; assert_equal("Code", worksheet.outputs_energy_c110); end
  def test_outputs_energy_d110; assert_equal("TWh", worksheet.outputs_energy_d110); end
  def test_outputs_energy_g110; assert_equal("Notes", worksheet.outputs_energy_g110); end
  def test_outputs_energy_h110; assert_equal("1970", worksheet.outputs_energy_h110); end
  def test_outputs_energy_i110; assert_equal("1975", worksheet.outputs_energy_i110); end
  def test_outputs_energy_j110; assert_equal("1980", worksheet.outputs_energy_j110); end
  def test_outputs_energy_k110; assert_equal("1985", worksheet.outputs_energy_k110); end
  def test_outputs_energy_l110; assert_equal("1990", worksheet.outputs_energy_l110); end
  def test_outputs_energy_m110; assert_equal("1995", worksheet.outputs_energy_m110); end
  def test_outputs_energy_n110; assert_equal("2000", worksheet.outputs_energy_n110); end
  def test_outputs_energy_o110; assert_equal("2005", worksheet.outputs_energy_o110); end
  def test_outputs_energy_p110; assert_in_epsilon(2010, worksheet.outputs_energy_p110, 0.001); end
  def test_outputs_energy_r110; assert_in_epsilon(2011, worksheet.outputs_energy_r110, 0.001); end
  def test_outputs_energy_s110; assert_equal("2015", worksheet.outputs_energy_s110); end
  def test_outputs_energy_t110; assert_equal("2020", worksheet.outputs_energy_t110); end
  def test_outputs_energy_u110; assert_equal("2025", worksheet.outputs_energy_u110); end
  def test_outputs_energy_v110; assert_equal("2030", worksheet.outputs_energy_v110); end
  def test_outputs_energy_w110; assert_equal("2035", worksheet.outputs_energy_w110); end
  def test_outputs_energy_x110; assert_equal("2040", worksheet.outputs_energy_x110); end
  def test_outputs_energy_y110; assert_equal("2045", worksheet.outputs_energy_y110); end
  def test_outputs_energy_z110; assert_equal("2050", worksheet.outputs_energy_z110); end
  def test_outputs_energy_c111; assert_equal("G.E.02", worksheet.outputs_energy_c111); end
  def test_outputs_energy_d111; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_d111); end
  def test_outputs_energy_s111; assert_in_epsilon(113718.03157779781, worksheet.outputs_energy_s111, 0.001); end
  def test_outputs_energy_c112; assert_equal("G.L.02", worksheet.outputs_energy_c112); end
  def test_outputs_energy_d112; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_d112); end
  def test_outputs_energy_s112; assert_in_epsilon(10296.765977343834, worksheet.outputs_energy_s112, 0.001); end
  def test_outputs_energy_c114; assert_equal("check", worksheet.outputs_energy_c114); end
  def test_outputs_energy_c115; assert_equal("G.E.01", worksheet.outputs_energy_c115); end
  def test_outputs_energy_d115; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_d115); end
  def test_outputs_energy_s115; assert_in_epsilon(-113718.03157779778, worksheet.outputs_energy_s115, 0.001); end
  def test_outputs_energy_d116; assert_equal("Oversupply", worksheet.outputs_energy_d116); end
  def test_outputs_energy_s116; assert_in_epsilon(227436.0631555956, worksheet.outputs_energy_s116, 0.001); end
  def test_outputs_energy_b120; assert_equal("Electricity Generation", worksheet.outputs_energy_b120); end
  def test_outputs_energy_f120; assert_equal("G.E.02", worksheet.outputs_energy_f120); end
  def test_outputs_energy_h122; assert_equal("Historic actuals", worksheet.outputs_energy_h122); end
  def test_outputs_energy_r122; assert_equal("Calculated by the model", worksheet.outputs_energy_r122); end
  def test_outputs_energy_c123; assert_equal("Code", worksheet.outputs_energy_c123); end
  def test_outputs_energy_d123; assert_equal("TWh", worksheet.outputs_energy_d123); end
  def test_outputs_energy_f123; assert_equal("2010 actuals ", worksheet.outputs_energy_f123); end
  def test_outputs_energy_g123; assert_equal("Notes", worksheet.outputs_energy_g123); end
  def test_outputs_energy_h123; assert_equal("1970", worksheet.outputs_energy_h123); end
  def test_outputs_energy_i123; assert_equal("1975", worksheet.outputs_energy_i123); end
  def test_outputs_energy_j123; assert_equal("1980", worksheet.outputs_energy_j123); end
  def test_outputs_energy_k123; assert_equal("1985", worksheet.outputs_energy_k123); end
  def test_outputs_energy_l123; assert_equal("1990", worksheet.outputs_energy_l123); end
  def test_outputs_energy_m123; assert_equal("1995", worksheet.outputs_energy_m123); end
  def test_outputs_energy_n123; assert_equal("2000", worksheet.outputs_energy_n123); end
  def test_outputs_energy_o123; assert_equal("2005", worksheet.outputs_energy_o123); end
  def test_outputs_energy_p123; assert_in_epsilon(2010, worksheet.outputs_energy_p123, 0.001); end
  def test_outputs_energy_r123; assert_in_epsilon(2011, worksheet.outputs_energy_r123, 0.001); end
  def test_outputs_energy_s123; assert_equal("2015", worksheet.outputs_energy_s123); end
  def test_outputs_energy_t123; assert_equal("2020", worksheet.outputs_energy_t123); end
  def test_outputs_energy_u123; assert_equal("2025", worksheet.outputs_energy_u123); end
  def test_outputs_energy_v123; assert_equal("2030", worksheet.outputs_energy_v123); end
  def test_outputs_energy_w123; assert_equal("2035", worksheet.outputs_energy_w123); end
  def test_outputs_energy_x123; assert_equal("2040", worksheet.outputs_energy_x123); end
  def test_outputs_energy_y123; assert_equal("2045", worksheet.outputs_energy_y123); end
  def test_outputs_energy_z123; assert_equal("2050", worksheet.outputs_energy_z123); end
  def test_outputs_energy_c124; assert_equal("-", worksheet.outputs_energy_c124); end
  def test_outputs_energy_d124; assert_equal("Unabated power", worksheet.outputs_energy_d124); end
  def test_outputs_energy_s124; assert_in_epsilon(89265.72746574602, worksheet.outputs_energy_s124, 0.001); end
  def test_outputs_energy_c125; assert_equal("-", worksheet.outputs_energy_c125); end
  def test_outputs_energy_d125; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_d125); end
  def test_outputs_energy_s125; assert_in_epsilon(215.77846153846158, worksheet.outputs_energy_s125, 0.001); end
  def test_outputs_energy_c126; assert_equal("-", worksheet.outputs_energy_c126); end
  def test_outputs_energy_d126; assert_equal("Nuclear", worksheet.outputs_energy_d126); end
  def test_outputs_energy_s126; assert_in_epsilon(13486.153846153846, worksheet.outputs_energy_s126, 0.001); end
  def test_outputs_energy_c127; assert_equal("-", worksheet.outputs_energy_c127); end
  def test_outputs_energy_d127; assert_equal("Wind", worksheet.outputs_energy_d127); end
  def test_outputs_energy_s127; assert_in_epsilon(3569.3353846153846, worksheet.outputs_energy_s127, 0.001); end
  def test_outputs_energy_c128; assert_equal("-", worksheet.outputs_energy_c128); end
  def test_outputs_energy_d128; assert_equal("Hydro", worksheet.outputs_energy_d128); end
  def test_outputs_energy_s128; assert_in_epsilon(28.051200000000005, worksheet.outputs_energy_s128, 0.001); end
  def test_outputs_energy_c129; assert_equal("-", worksheet.outputs_energy_c129); end
  def test_outputs_energy_d129; assert_equal("Marine", worksheet.outputs_energy_d129); end
  def test_outputs_energy_s129; assert_in_epsilon(61.71264000000001, worksheet.outputs_energy_s129, 0.001); end
  def test_outputs_energy_c130; assert_equal("-", worksheet.outputs_energy_c130); end
  def test_outputs_energy_d130; assert_equal("Solar", worksheet.outputs_energy_d130); end
  def test_outputs_energy_s130; assert_in_epsilon(625.7575384615384, worksheet.outputs_energy_s130, 0.001); end
  def test_outputs_energy_c131; assert_equal("-", worksheet.outputs_energy_c131); end
  def test_outputs_energy_d131; assert_equal("Geothermal", worksheet.outputs_energy_d131); end
  def test_outputs_energy_s131; assert_in_epsilon(39.271679999999996, worksheet.outputs_energy_s131, 0.001); end
  def test_outputs_energy_c132; assert_equal("-", worksheet.outputs_energy_c132); end
  def test_outputs_energy_d132; assert_equal("Storage", worksheet.outputs_energy_d132); end
  def test_outputs_energy_s132; assert_in_epsilon(319.1723076923077, worksheet.outputs_energy_s132, 0.001); end
  def test_outputs_energy_d133; assert_equal("Total", worksheet.outputs_energy_d133); end
  def test_outputs_energy_h133; assert_in_delta(0, (worksheet.outputs_energy_h133||0), 0.001); end
  def test_outputs_energy_i133; assert_in_delta(0, (worksheet.outputs_energy_i133||0), 0.001); end
  def test_outputs_energy_j133; assert_in_delta(0, (worksheet.outputs_energy_j133||0), 0.001); end
  def test_outputs_energy_k133; assert_in_delta(0, (worksheet.outputs_energy_k133||0), 0.001); end
  def test_outputs_energy_l133; assert_in_delta(0, (worksheet.outputs_energy_l133||0), 0.001); end
  def test_outputs_energy_m133; assert_in_delta(0, (worksheet.outputs_energy_m133||0), 0.001); end
  def test_outputs_energy_n133; assert_in_delta(0, (worksheet.outputs_energy_n133||0), 0.001); end
  def test_outputs_energy_o133; assert_in_delta(0, (worksheet.outputs_energy_o133||0), 0.001); end
  def test_outputs_energy_r133; assert_in_delta(0, (worksheet.outputs_energy_r133||0), 0.001); end
  def test_outputs_energy_s133; assert_in_epsilon(107610.96052420756, worksheet.outputs_energy_s133, 0.001); end
  def test_outputs_energy_t133; assert_in_delta(0, (worksheet.outputs_energy_t133||0), 0.001); end
  def test_outputs_energy_u133; assert_in_delta(0, (worksheet.outputs_energy_u133||0), 0.001); end
  def test_outputs_energy_v133; assert_in_delta(0, (worksheet.outputs_energy_v133||0), 0.001); end
  def test_outputs_energy_w133; assert_in_delta(0, (worksheet.outputs_energy_w133||0), 0.001); end
  def test_outputs_energy_x133; assert_in_delta(0, (worksheet.outputs_energy_x133||0), 0.001); end
  def test_outputs_energy_y133; assert_in_delta(0, (worksheet.outputs_energy_y133||0), 0.001); end
  def test_outputs_energy_z133; assert_in_delta(0, (worksheet.outputs_energy_z133||0), 0.001); end
  def test_outputs_energy_d135; assert_equal("check", worksheet.outputs_energy_d135); end
  def test_outputs_energy_h135; assert_in_delta(0, (worksheet.outputs_energy_h135||0), 0.001); end
  def test_outputs_energy_i135; assert_in_delta(0, (worksheet.outputs_energy_i135||0), 0.001); end
  def test_outputs_energy_j135; assert_in_delta(0, (worksheet.outputs_energy_j135||0), 0.001); end
  def test_outputs_energy_k135; assert_in_delta(0, (worksheet.outputs_energy_k135||0), 0.001); end
  def test_outputs_energy_l135; assert_in_delta(0, (worksheet.outputs_energy_l135||0), 0.001); end
  def test_outputs_energy_m135; assert_in_delta(0, (worksheet.outputs_energy_m135||0), 0.001); end
  def test_outputs_energy_n135; assert_in_delta(0, (worksheet.outputs_energy_n135||0), 0.001); end
  def test_outputs_energy_o135; assert_in_delta(0, (worksheet.outputs_energy_o135||0), 0.001); end
  def test_outputs_energy_r135; assert_in_delta(0, (worksheet.outputs_energy_r135||0), 0.001); end
  def test_outputs_energy_s135; assert_in_epsilon(-6107.071053590247, worksheet.outputs_energy_s135, 0.001); end
  def test_outputs_energy_t135; assert_in_delta(0, (worksheet.outputs_energy_t135||0), 0.001); end
  def test_outputs_energy_u135; assert_in_delta(0, (worksheet.outputs_energy_u135||0), 0.001); end
  def test_outputs_energy_v135; assert_in_delta(0, (worksheet.outputs_energy_v135||0), 0.001); end
  def test_outputs_energy_w135; assert_in_delta(0, (worksheet.outputs_energy_w135||0), 0.001); end
  def test_outputs_energy_x135; assert_in_delta(0, (worksheet.outputs_energy_x135||0), 0.001); end
  def test_outputs_energy_y135; assert_in_delta(0, (worksheet.outputs_energy_y135||0), 0.001); end
  def test_outputs_energy_z135; assert_in_delta(0, (worksheet.outputs_energy_z135||0), 0.001); end
  def test_outputs_energy_ab135; assert_equal("Should equal 0", worksheet.outputs_energy_ab135); end
  def test_outputs_energy_b139; assert_equal("Bio-energy production", worksheet.outputs_energy_b139); end
  def test_outputs_energy_h141; assert_equal("Historic actuals", worksheet.outputs_energy_h141); end
  def test_outputs_energy_r141; assert_equal("Calculated by the model", worksheet.outputs_energy_r141); end
  def test_outputs_energy_c142; assert_equal("TWh", worksheet.outputs_energy_c142); end
  def test_outputs_energy_h142; assert_equal("1970", worksheet.outputs_energy_h142); end
  def test_outputs_energy_i142; assert_equal("1975", worksheet.outputs_energy_i142); end
  def test_outputs_energy_j142; assert_equal("1980", worksheet.outputs_energy_j142); end
  def test_outputs_energy_k142; assert_equal("1985", worksheet.outputs_energy_k142); end
  def test_outputs_energy_l142; assert_equal("1990", worksheet.outputs_energy_l142); end
  def test_outputs_energy_m142; assert_equal("1995", worksheet.outputs_energy_m142); end
  def test_outputs_energy_n142; assert_equal("2000", worksheet.outputs_energy_n142); end
  def test_outputs_energy_o142; assert_equal("2005", worksheet.outputs_energy_o142); end
  def test_outputs_energy_p142; assert_in_epsilon(2010, worksheet.outputs_energy_p142, 0.001); end
  def test_outputs_energy_r142; assert_in_epsilon(2011, worksheet.outputs_energy_r142, 0.001); end
  def test_outputs_energy_s142; assert_equal("2015", worksheet.outputs_energy_s142); end
  def test_outputs_energy_t142; assert_equal("2020", worksheet.outputs_energy_t142); end
  def test_outputs_energy_u142; assert_equal("2025", worksheet.outputs_energy_u142); end
  def test_outputs_energy_v142; assert_equal("2030", worksheet.outputs_energy_v142); end
  def test_outputs_energy_w142; assert_equal("2035", worksheet.outputs_energy_w142); end
  def test_outputs_energy_x142; assert_equal("2040", worksheet.outputs_energy_x142); end
  def test_outputs_energy_y142; assert_equal("2045", worksheet.outputs_energy_y142); end
  def test_outputs_energy_z142; assert_equal("2050", worksheet.outputs_energy_z142); end
  def test_outputs_energy_c143; assert_equal("G.C.01", worksheet.outputs_energy_c143); end
  def test_outputs_energy_d143; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_d143); end
  def test_outputs_energy_c144; assert_equal("G.C.02", worksheet.outputs_energy_c144); end
  def test_outputs_energy_d144; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_d144); end
  def test_outputs_energy_c145; assert_equal("G.C.03", worksheet.outputs_energy_c145); end
  def test_outputs_energy_d145; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_d145); end
  def test_outputs_energy_c146; assert_equal("Total", worksheet.outputs_energy_c146); end
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
  def test_outputs_land_use_technology_n8; assert_in_epsilon(2010, worksheet.outputs_land_use_technology_n8, 0.001); end
  def test_outputs_land_use_technology_q8; assert_in_epsilon(2011, worksheet.outputs_land_use_technology_q8, 0.001); end
  def test_outputs_land_use_technology_r8; assert_equal("2015", worksheet.outputs_land_use_technology_r8); end
  def test_outputs_land_use_technology_s8; assert_equal("2020", worksheet.outputs_land_use_technology_s8); end
  def test_outputs_land_use_technology_t8; assert_equal("2025", worksheet.outputs_land_use_technology_t8); end
  def test_outputs_land_use_technology_u8; assert_equal("2030", worksheet.outputs_land_use_technology_u8); end
  def test_outputs_land_use_technology_v8; assert_equal("2035", worksheet.outputs_land_use_technology_v8); end
  def test_outputs_land_use_technology_w8; assert_equal("2040", worksheet.outputs_land_use_technology_w8); end
  def test_outputs_land_use_technology_x8; assert_equal("2045", worksheet.outputs_land_use_technology_x8); end
  def test_outputs_land_use_technology_y8; assert_equal("2050", worksheet.outputs_land_use_technology_y8); end
  def test_outputs_land_use_technology_c9; assert_equal("Forest", worksheet.outputs_land_use_technology_c9); end
  def test_outputs_land_use_technology_d9; assert_equal("Global Forest", worksheet.outputs_land_use_technology_d9); end
  def test_outputs_land_use_technology_c10; assert_equal("Arable.food", worksheet.outputs_land_use_technology_c10); end
  def test_outputs_land_use_technology_d10; assert_equal("Global Arable land for food crops", worksheet.outputs_land_use_technology_d10); end
  def test_outputs_land_use_technology_c11; assert_equal("Arable.bio", worksheet.outputs_land_use_technology_c11); end
  def test_outputs_land_use_technology_d11; assert_equal("Global Arable land for bioenergy", worksheet.outputs_land_use_technology_d11); end
  def test_outputs_land_use_technology_c12; assert_equal("Arable.other", worksheet.outputs_land_use_technology_c12); end
  def test_outputs_land_use_technology_d12; assert_equal("Global Arable land for other ", worksheet.outputs_land_use_technology_d12); end
  def test_outputs_land_use_technology_c13; assert_equal("Pasture.food", worksheet.outputs_land_use_technology_c13); end
  def test_outputs_land_use_technology_d13; assert_equal("Global Pasture for livestock", worksheet.outputs_land_use_technology_d13); end
  def test_outputs_land_use_technology_c14; assert_equal("Other.Land.unproductive", worksheet.outputs_land_use_technology_c14); end
  def test_outputs_land_use_technology_d14; assert_equal("Global Other land (desert, settlements)", worksheet.outputs_land_use_technology_d14); end
  def test_outputs_land_use_technology_c15; assert_equal("Other.Land.productive", worksheet.outputs_land_use_technology_c15); end
  def test_outputs_land_use_technology_d15; assert_equal("Global Remainder of productive terestial land after bioenergy and food", worksheet.outputs_land_use_technology_d15); end
  def test_outputs_land_use_technology_c16; assert_equal("Total global land available", worksheet.outputs_land_use_technology_c16); end
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
  def test_outputs_land_use_technology_n20; assert_in_epsilon(2010, worksheet.outputs_land_use_technology_n20, 0.001); end
  def test_outputs_land_use_technology_q20; assert_in_epsilon(2011, worksheet.outputs_land_use_technology_q20, 0.001); end
  def test_outputs_land_use_technology_r20; assert_equal("2015", worksheet.outputs_land_use_technology_r20); end
  def test_outputs_land_use_technology_s20; assert_equal("2020", worksheet.outputs_land_use_technology_s20); end
  def test_outputs_land_use_technology_t20; assert_equal("2025", worksheet.outputs_land_use_technology_t20); end
  def test_outputs_land_use_technology_u20; assert_equal("2030", worksheet.outputs_land_use_technology_u20); end
  def test_outputs_land_use_technology_v20; assert_equal("2035", worksheet.outputs_land_use_technology_v20); end
  def test_outputs_land_use_technology_w20; assert_equal("2040", worksheet.outputs_land_use_technology_w20); end
  def test_outputs_land_use_technology_x20; assert_equal("2045", worksheet.outputs_land_use_technology_x20); end
  def test_outputs_land_use_technology_y20; assert_equal("2050", worksheet.outputs_land_use_technology_y20); end
  def test_outputs_land_use_technology_c21; assert_equal("Forest", worksheet.outputs_land_use_technology_c21); end
  def test_outputs_land_use_technology_d21; assert_equal("Global Forest", worksheet.outputs_land_use_technology_d21); end
  def test_outputs_land_use_technology_f21; assert_equal(:div0, worksheet.outputs_land_use_technology_f21); end
  def test_outputs_land_use_technology_g21; assert_equal(:div0, worksheet.outputs_land_use_technology_g21); end
  def test_outputs_land_use_technology_h21; assert_equal(:div0, worksheet.outputs_land_use_technology_h21); end
  def test_outputs_land_use_technology_i21; assert_equal(:div0, worksheet.outputs_land_use_technology_i21); end
  def test_outputs_land_use_technology_j21; assert_equal(:div0, worksheet.outputs_land_use_technology_j21); end
  def test_outputs_land_use_technology_k21; assert_equal(:div0, worksheet.outputs_land_use_technology_k21); end
  def test_outputs_land_use_technology_l21; assert_equal(:div0, worksheet.outputs_land_use_technology_l21); end
  def test_outputs_land_use_technology_m21; assert_equal(:div0, worksheet.outputs_land_use_technology_m21); end
  def test_outputs_land_use_technology_n21; assert_equal(:div0, worksheet.outputs_land_use_technology_n21); end
  def test_outputs_land_use_technology_q21; assert_equal(:div0, worksheet.outputs_land_use_technology_q21); end
  def test_outputs_land_use_technology_r21; assert_equal(:div0, worksheet.outputs_land_use_technology_r21); end
  def test_outputs_land_use_technology_s21; assert_equal(:div0, worksheet.outputs_land_use_technology_s21); end
  def test_outputs_land_use_technology_t21; assert_equal(:div0, worksheet.outputs_land_use_technology_t21); end
  def test_outputs_land_use_technology_u21; assert_equal(:div0, worksheet.outputs_land_use_technology_u21); end
  def test_outputs_land_use_technology_v21; assert_equal(:div0, worksheet.outputs_land_use_technology_v21); end
  def test_outputs_land_use_technology_w21; assert_equal(:div0, worksheet.outputs_land_use_technology_w21); end
  def test_outputs_land_use_technology_x21; assert_equal(:div0, worksheet.outputs_land_use_technology_x21); end
  def test_outputs_land_use_technology_y21; assert_equal(:div0, worksheet.outputs_land_use_technology_y21); end
  def test_outputs_land_use_technology_c22; assert_equal("Arable.food", worksheet.outputs_land_use_technology_c22); end
  def test_outputs_land_use_technology_d22; assert_equal("Global Arable land for food crops", worksheet.outputs_land_use_technology_d22); end
  def test_outputs_land_use_technology_f22; assert_equal(:div0, worksheet.outputs_land_use_technology_f22); end
  def test_outputs_land_use_technology_g22; assert_equal(:div0, worksheet.outputs_land_use_technology_g22); end
  def test_outputs_land_use_technology_h22; assert_equal(:div0, worksheet.outputs_land_use_technology_h22); end
  def test_outputs_land_use_technology_i22; assert_equal(:div0, worksheet.outputs_land_use_technology_i22); end
  def test_outputs_land_use_technology_j22; assert_equal(:div0, worksheet.outputs_land_use_technology_j22); end
  def test_outputs_land_use_technology_k22; assert_equal(:div0, worksheet.outputs_land_use_technology_k22); end
  def test_outputs_land_use_technology_l22; assert_equal(:div0, worksheet.outputs_land_use_technology_l22); end
  def test_outputs_land_use_technology_m22; assert_equal(:div0, worksheet.outputs_land_use_technology_m22); end
  def test_outputs_land_use_technology_n22; assert_equal(:div0, worksheet.outputs_land_use_technology_n22); end
  def test_outputs_land_use_technology_q22; assert_equal(:div0, worksheet.outputs_land_use_technology_q22); end
  def test_outputs_land_use_technology_r22; assert_equal(:div0, worksheet.outputs_land_use_technology_r22); end
  def test_outputs_land_use_technology_s22; assert_equal(:div0, worksheet.outputs_land_use_technology_s22); end
  def test_outputs_land_use_technology_t22; assert_equal(:div0, worksheet.outputs_land_use_technology_t22); end
  def test_outputs_land_use_technology_u22; assert_equal(:div0, worksheet.outputs_land_use_technology_u22); end
  def test_outputs_land_use_technology_v22; assert_equal(:div0, worksheet.outputs_land_use_technology_v22); end
  def test_outputs_land_use_technology_w22; assert_equal(:div0, worksheet.outputs_land_use_technology_w22); end
  def test_outputs_land_use_technology_x22; assert_equal(:div0, worksheet.outputs_land_use_technology_x22); end
  def test_outputs_land_use_technology_y22; assert_equal(:div0, worksheet.outputs_land_use_technology_y22); end
  def test_outputs_land_use_technology_c23; assert_equal("Arable.bio", worksheet.outputs_land_use_technology_c23); end
  def test_outputs_land_use_technology_d23; assert_equal("Global Arable land for bioenergy", worksheet.outputs_land_use_technology_d23); end
  def test_outputs_land_use_technology_f23; assert_equal(:div0, worksheet.outputs_land_use_technology_f23); end
  def test_outputs_land_use_technology_g23; assert_equal(:div0, worksheet.outputs_land_use_technology_g23); end
  def test_outputs_land_use_technology_h23; assert_equal(:div0, worksheet.outputs_land_use_technology_h23); end
  def test_outputs_land_use_technology_i23; assert_equal(:div0, worksheet.outputs_land_use_technology_i23); end
  def test_outputs_land_use_technology_j23; assert_equal(:div0, worksheet.outputs_land_use_technology_j23); end
  def test_outputs_land_use_technology_k23; assert_equal(:div0, worksheet.outputs_land_use_technology_k23); end
  def test_outputs_land_use_technology_l23; assert_equal(:div0, worksheet.outputs_land_use_technology_l23); end
  def test_outputs_land_use_technology_m23; assert_equal(:div0, worksheet.outputs_land_use_technology_m23); end
  def test_outputs_land_use_technology_n23; assert_equal(:div0, worksheet.outputs_land_use_technology_n23); end
  def test_outputs_land_use_technology_q23; assert_equal(:div0, worksheet.outputs_land_use_technology_q23); end
  def test_outputs_land_use_technology_r23; assert_equal(:div0, worksheet.outputs_land_use_technology_r23); end
  def test_outputs_land_use_technology_s23; assert_equal(:div0, worksheet.outputs_land_use_technology_s23); end
  def test_outputs_land_use_technology_t23; assert_equal(:div0, worksheet.outputs_land_use_technology_t23); end
  def test_outputs_land_use_technology_u23; assert_equal(:div0, worksheet.outputs_land_use_technology_u23); end
  def test_outputs_land_use_technology_v23; assert_equal(:div0, worksheet.outputs_land_use_technology_v23); end
  def test_outputs_land_use_technology_w23; assert_equal(:div0, worksheet.outputs_land_use_technology_w23); end
  def test_outputs_land_use_technology_x23; assert_equal(:div0, worksheet.outputs_land_use_technology_x23); end
  def test_outputs_land_use_technology_y23; assert_equal(:div0, worksheet.outputs_land_use_technology_y23); end
  def test_outputs_land_use_technology_c24; assert_equal("Arable.other", worksheet.outputs_land_use_technology_c24); end
  def test_outputs_land_use_technology_d24; assert_equal("Global Arable land for other ", worksheet.outputs_land_use_technology_d24); end
  def test_outputs_land_use_technology_f24; assert_equal(:div0, worksheet.outputs_land_use_technology_f24); end
  def test_outputs_land_use_technology_g24; assert_equal(:div0, worksheet.outputs_land_use_technology_g24); end
  def test_outputs_land_use_technology_h24; assert_equal(:div0, worksheet.outputs_land_use_technology_h24); end
  def test_outputs_land_use_technology_i24; assert_equal(:div0, worksheet.outputs_land_use_technology_i24); end
  def test_outputs_land_use_technology_j24; assert_equal(:div0, worksheet.outputs_land_use_technology_j24); end
  def test_outputs_land_use_technology_k24; assert_equal(:div0, worksheet.outputs_land_use_technology_k24); end
  def test_outputs_land_use_technology_l24; assert_equal(:div0, worksheet.outputs_land_use_technology_l24); end
  def test_outputs_land_use_technology_m24; assert_equal(:div0, worksheet.outputs_land_use_technology_m24); end
  def test_outputs_land_use_technology_n24; assert_equal(:div0, worksheet.outputs_land_use_technology_n24); end
  def test_outputs_land_use_technology_q24; assert_equal(:div0, worksheet.outputs_land_use_technology_q24); end
  def test_outputs_land_use_technology_r24; assert_equal(:div0, worksheet.outputs_land_use_technology_r24); end
  def test_outputs_land_use_technology_s24; assert_equal(:div0, worksheet.outputs_land_use_technology_s24); end
  def test_outputs_land_use_technology_t24; assert_equal(:div0, worksheet.outputs_land_use_technology_t24); end
  def test_outputs_land_use_technology_u24; assert_equal(:div0, worksheet.outputs_land_use_technology_u24); end
  def test_outputs_land_use_technology_v24; assert_equal(:div0, worksheet.outputs_land_use_technology_v24); end
  def test_outputs_land_use_technology_w24; assert_equal(:div0, worksheet.outputs_land_use_technology_w24); end
  def test_outputs_land_use_technology_x24; assert_equal(:div0, worksheet.outputs_land_use_technology_x24); end
  def test_outputs_land_use_technology_y24; assert_equal(:div0, worksheet.outputs_land_use_technology_y24); end
  def test_outputs_land_use_technology_c25; assert_equal("Pasture.food", worksheet.outputs_land_use_technology_c25); end
  def test_outputs_land_use_technology_d25; assert_equal("Global Pasture for livestock", worksheet.outputs_land_use_technology_d25); end
  def test_outputs_land_use_technology_f25; assert_equal(:div0, worksheet.outputs_land_use_technology_f25); end
  def test_outputs_land_use_technology_g25; assert_equal(:div0, worksheet.outputs_land_use_technology_g25); end
  def test_outputs_land_use_technology_h25; assert_equal(:div0, worksheet.outputs_land_use_technology_h25); end
  def test_outputs_land_use_technology_i25; assert_equal(:div0, worksheet.outputs_land_use_technology_i25); end
  def test_outputs_land_use_technology_j25; assert_equal(:div0, worksheet.outputs_land_use_technology_j25); end
  def test_outputs_land_use_technology_k25; assert_equal(:div0, worksheet.outputs_land_use_technology_k25); end
  def test_outputs_land_use_technology_l25; assert_equal(:div0, worksheet.outputs_land_use_technology_l25); end
  def test_outputs_land_use_technology_m25; assert_equal(:div0, worksheet.outputs_land_use_technology_m25); end
  def test_outputs_land_use_technology_n25; assert_equal(:div0, worksheet.outputs_land_use_technology_n25); end
  def test_outputs_land_use_technology_q25; assert_equal(:div0, worksheet.outputs_land_use_technology_q25); end
  def test_outputs_land_use_technology_r25; assert_equal(:div0, worksheet.outputs_land_use_technology_r25); end
  def test_outputs_land_use_technology_s25; assert_equal(:div0, worksheet.outputs_land_use_technology_s25); end
  def test_outputs_land_use_technology_t25; assert_equal(:div0, worksheet.outputs_land_use_technology_t25); end
  def test_outputs_land_use_technology_u25; assert_equal(:div0, worksheet.outputs_land_use_technology_u25); end
  def test_outputs_land_use_technology_v25; assert_equal(:div0, worksheet.outputs_land_use_technology_v25); end
  def test_outputs_land_use_technology_w25; assert_equal(:div0, worksheet.outputs_land_use_technology_w25); end
  def test_outputs_land_use_technology_x25; assert_equal(:div0, worksheet.outputs_land_use_technology_x25); end
  def test_outputs_land_use_technology_y25; assert_equal(:div0, worksheet.outputs_land_use_technology_y25); end
  def test_outputs_land_use_technology_c26; assert_equal("Other.Land.unproductive", worksheet.outputs_land_use_technology_c26); end
  def test_outputs_land_use_technology_d26; assert_equal("Global Other land (desert, settlements)", worksheet.outputs_land_use_technology_d26); end
  def test_outputs_land_use_technology_f26; assert_equal(:div0, worksheet.outputs_land_use_technology_f26); end
  def test_outputs_land_use_technology_g26; assert_equal(:div0, worksheet.outputs_land_use_technology_g26); end
  def test_outputs_land_use_technology_h26; assert_equal(:div0, worksheet.outputs_land_use_technology_h26); end
  def test_outputs_land_use_technology_i26; assert_equal(:div0, worksheet.outputs_land_use_technology_i26); end
  def test_outputs_land_use_technology_j26; assert_equal(:div0, worksheet.outputs_land_use_technology_j26); end
  def test_outputs_land_use_technology_k26; assert_equal(:div0, worksheet.outputs_land_use_technology_k26); end
  def test_outputs_land_use_technology_l26; assert_equal(:div0, worksheet.outputs_land_use_technology_l26); end
  def test_outputs_land_use_technology_m26; assert_equal(:div0, worksheet.outputs_land_use_technology_m26); end
  def test_outputs_land_use_technology_n26; assert_equal(:div0, worksheet.outputs_land_use_technology_n26); end
  def test_outputs_land_use_technology_q26; assert_equal(:div0, worksheet.outputs_land_use_technology_q26); end
  def test_outputs_land_use_technology_r26; assert_equal(:div0, worksheet.outputs_land_use_technology_r26); end
  def test_outputs_land_use_technology_s26; assert_equal(:div0, worksheet.outputs_land_use_technology_s26); end
  def test_outputs_land_use_technology_t26; assert_equal(:div0, worksheet.outputs_land_use_technology_t26); end
  def test_outputs_land_use_technology_u26; assert_equal(:div0, worksheet.outputs_land_use_technology_u26); end
  def test_outputs_land_use_technology_v26; assert_equal(:div0, worksheet.outputs_land_use_technology_v26); end
  def test_outputs_land_use_technology_w26; assert_equal(:div0, worksheet.outputs_land_use_technology_w26); end
  def test_outputs_land_use_technology_x26; assert_equal(:div0, worksheet.outputs_land_use_technology_x26); end
  def test_outputs_land_use_technology_y26; assert_equal(:div0, worksheet.outputs_land_use_technology_y26); end
  def test_outputs_land_use_technology_c27; assert_equal("Other.Land.productive", worksheet.outputs_land_use_technology_c27); end
  def test_outputs_land_use_technology_d27; assert_equal("Global Remainder of productive terestial land after bioenergy and food", worksheet.outputs_land_use_technology_d27); end
  def test_outputs_land_use_technology_f27; assert_equal(:div0, worksheet.outputs_land_use_technology_f27); end
  def test_outputs_land_use_technology_g27; assert_equal(:div0, worksheet.outputs_land_use_technology_g27); end
  def test_outputs_land_use_technology_h27; assert_equal(:div0, worksheet.outputs_land_use_technology_h27); end
  def test_outputs_land_use_technology_i27; assert_equal(:div0, worksheet.outputs_land_use_technology_i27); end
  def test_outputs_land_use_technology_j27; assert_equal(:div0, worksheet.outputs_land_use_technology_j27); end
  def test_outputs_land_use_technology_k27; assert_equal(:div0, worksheet.outputs_land_use_technology_k27); end
  def test_outputs_land_use_technology_l27; assert_equal(:div0, worksheet.outputs_land_use_technology_l27); end
  def test_outputs_land_use_technology_m27; assert_equal(:div0, worksheet.outputs_land_use_technology_m27); end
  def test_outputs_land_use_technology_n27; assert_equal(:div0, worksheet.outputs_land_use_technology_n27); end
  def test_outputs_land_use_technology_q27; assert_equal(:div0, worksheet.outputs_land_use_technology_q27); end
  def test_outputs_land_use_technology_r27; assert_equal(:div0, worksheet.outputs_land_use_technology_r27); end
  def test_outputs_land_use_technology_s27; assert_equal(:div0, worksheet.outputs_land_use_technology_s27); end
  def test_outputs_land_use_technology_t27; assert_equal(:div0, worksheet.outputs_land_use_technology_t27); end
  def test_outputs_land_use_technology_u27; assert_equal(:div0, worksheet.outputs_land_use_technology_u27); end
  def test_outputs_land_use_technology_v27; assert_equal(:div0, worksheet.outputs_land_use_technology_v27); end
  def test_outputs_land_use_technology_w27; assert_equal(:div0, worksheet.outputs_land_use_technology_w27); end
  def test_outputs_land_use_technology_x27; assert_equal(:div0, worksheet.outputs_land_use_technology_x27); end
  def test_outputs_land_use_technology_y27; assert_equal(:div0, worksheet.outputs_land_use_technology_y27); end
  def test_outputs_land_use_technology_c28; assert_equal("Total global land available", worksheet.outputs_land_use_technology_c28); end
  def test_outputs_land_use_technology_b33; assert_equal("Length / area / amount / population", worksheet.outputs_land_use_technology_b33); end
  def test_outputs_land_use_technology_f35; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f35); end
  def test_outputs_land_use_technology_q35; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q35); end
  def test_outputs_land_use_technology_c36; assert_equal("Description", worksheet.outputs_land_use_technology_c36); end
  def test_outputs_land_use_technology_f36; assert_equal("1970", worksheet.outputs_land_use_technology_f36); end
  def test_outputs_land_use_technology_g36; assert_equal("1975", worksheet.outputs_land_use_technology_g36); end
  def test_outputs_land_use_technology_h36; assert_equal("1980", worksheet.outputs_land_use_technology_h36); end
  def test_outputs_land_use_technology_i36; assert_equal("1985", worksheet.outputs_land_use_technology_i36); end
  def test_outputs_land_use_technology_j36; assert_equal("1990", worksheet.outputs_land_use_technology_j36); end
  def test_outputs_land_use_technology_k36; assert_equal("1995", worksheet.outputs_land_use_technology_k36); end
  def test_outputs_land_use_technology_l36; assert_equal("2000", worksheet.outputs_land_use_technology_l36); end
  def test_outputs_land_use_technology_m36; assert_equal("2005", worksheet.outputs_land_use_technology_m36); end
  def test_outputs_land_use_technology_n36; assert_in_epsilon(2010, worksheet.outputs_land_use_technology_n36, 0.001); end
  def test_outputs_land_use_technology_q36; assert_in_epsilon(2011, worksheet.outputs_land_use_technology_q36, 0.001); end
  def test_outputs_land_use_technology_r36; assert_equal("2015", worksheet.outputs_land_use_technology_r36); end
  def test_outputs_land_use_technology_s36; assert_equal("2020", worksheet.outputs_land_use_technology_s36); end
  def test_outputs_land_use_technology_t36; assert_equal("2025", worksheet.outputs_land_use_technology_t36); end
  def test_outputs_land_use_technology_u36; assert_equal("2030", worksheet.outputs_land_use_technology_u36); end
  def test_outputs_land_use_technology_v36; assert_equal("2035", worksheet.outputs_land_use_technology_v36); end
  def test_outputs_land_use_technology_w36; assert_equal("2040", worksheet.outputs_land_use_technology_w36); end
  def test_outputs_land_use_technology_x36; assert_equal("2045", worksheet.outputs_land_use_technology_x36); end
  def test_outputs_land_use_technology_y36; assert_equal("2050", worksheet.outputs_land_use_technology_y36); end
  def test_outputs_land_use_technology_c37; assert_equal("Number of products produced", worksheet.outputs_land_use_technology_c37); end
  def test_outputs_land_use_technology_c38; assert_equal("Amount of materials manufactured", worksheet.outputs_land_use_technology_c38); end
  def test_outputs_land_use_technology_c39; assert_equal("Amount of resources extracted", worksheet.outputs_land_use_technology_c39); end
  def test_outputs_land_use_technology_c40; assert_equal("Amount of food consumed", worksheet.outputs_land_use_technology_c40); end
  def test_outputs_land_use_technology_c41; assert_equal("Number of people", worksheet.outputs_land_use_technology_c41); end
  def test_outputs_land_use_technology_c42; assert_equal("Amount of CO2 sequestered", worksheet.outputs_land_use_technology_c42); end
  def test_outputs_land_use_technology_b47; assert_equal("Stock of technology units", worksheet.outputs_land_use_technology_b47); end
  def test_outputs_land_use_technology_ab47; assert_equal("Data sources and comments for the historic data", worksheet.outputs_land_use_technology_ab47); end
  def test_outputs_land_use_technology_ab48; assert_equal("Source", worksheet.outputs_land_use_technology_ab48); end
  def test_outputs_land_use_technology_ac48; assert_equal("Link", worksheet.outputs_land_use_technology_ac48); end
  def test_outputs_land_use_technology_ad48; assert_equal("Risk (Green, Amber/Green, Amber, Red/Amber, Red)", worksheet.outputs_land_use_technology_ad48); end
  def test_outputs_land_use_technology_ae48; assert_equal("Comment / assumptions / caveats", worksheet.outputs_land_use_technology_ae48); end
  def test_outputs_land_use_technology_af48; assert_equal("Comment author", worksheet.outputs_land_use_technology_af48); end
  def test_outputs_land_use_technology_c49; assert_equal("All technologies", worksheet.outputs_land_use_technology_c49); end
  def test_outputs_land_use_technology_y49; assert_equal("Number", worksheet.outputs_land_use_technology_y49); end
  def test_outputs_land_use_technology_f50; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f50); end
  def test_outputs_land_use_technology_q50; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q50); end
  def test_outputs_land_use_technology_c51; assert_equal("Technology", worksheet.outputs_land_use_technology_c51); end
  def test_outputs_land_use_technology_d51; assert_equal("Description", worksheet.outputs_land_use_technology_d51); end
  def test_outputs_land_use_technology_f51; assert_equal("1970", worksheet.outputs_land_use_technology_f51); end
  def test_outputs_land_use_technology_g51; assert_equal("1975", worksheet.outputs_land_use_technology_g51); end
  def test_outputs_land_use_technology_h51; assert_equal("1980", worksheet.outputs_land_use_technology_h51); end
  def test_outputs_land_use_technology_i51; assert_equal("1985", worksheet.outputs_land_use_technology_i51); end
  def test_outputs_land_use_technology_j51; assert_equal("1990", worksheet.outputs_land_use_technology_j51); end
  def test_outputs_land_use_technology_k51; assert_equal("1995", worksheet.outputs_land_use_technology_k51); end
  def test_outputs_land_use_technology_l51; assert_equal("2000", worksheet.outputs_land_use_technology_l51); end
  def test_outputs_land_use_technology_m51; assert_equal("2005", worksheet.outputs_land_use_technology_m51); end
  def test_outputs_land_use_technology_n51; assert_in_epsilon(2010, worksheet.outputs_land_use_technology_n51, 0.001); end
  def test_outputs_land_use_technology_q51; assert_in_epsilon(2011, worksheet.outputs_land_use_technology_q51, 0.001); end
  def test_outputs_land_use_technology_r51; assert_equal("2015", worksheet.outputs_land_use_technology_r51); end
  def test_outputs_land_use_technology_s51; assert_equal("2020", worksheet.outputs_land_use_technology_s51); end
  def test_outputs_land_use_technology_t51; assert_equal("2025", worksheet.outputs_land_use_technology_t51); end
  def test_outputs_land_use_technology_u51; assert_equal("2030", worksheet.outputs_land_use_technology_u51); end
  def test_outputs_land_use_technology_v51; assert_equal("2035", worksheet.outputs_land_use_technology_v51); end
  def test_outputs_land_use_technology_w51; assert_equal("2040", worksheet.outputs_land_use_technology_w51); end
  def test_outputs_land_use_technology_x51; assert_equal("2045", worksheet.outputs_land_use_technology_x51); end
  def test_outputs_land_use_technology_y51; assert_equal("2050", worksheet.outputs_land_use_technology_y51); end
  def test_outputs_land_use_technology_c52; assert_equal("G.mass.road.trans", worksheet.outputs_land_use_technology_c52); end
  def test_outputs_land_use_technology_d52; assert_equal("Global Public road transport", worksheet.outputs_land_use_technology_d52); end
  def test_outputs_land_use_technology_c53; assert_equal("G.pri.road.trans", worksheet.outputs_land_use_technology_c53); end
  def test_outputs_land_use_technology_d53; assert_equal("Global Private road transport", worksheet.outputs_land_use_technology_d53); end
  def test_outputs_land_use_technology_c54; assert_equal("G.priv.other.trans", worksheet.outputs_land_use_technology_c54); end
  def test_outputs_land_use_technology_d54; assert_equal("Global Non-energy", worksheet.outputs_land_use_technology_d54); end
  def test_outputs_land_use_technology_c55; assert_equal("G.rail.trans", worksheet.outputs_land_use_technology_c55); end
  def test_outputs_land_use_technology_d55; assert_equal("Global Rail", worksheet.outputs_land_use_technology_d55); end
  def test_outputs_land_use_technology_c56; assert_equal("G.air.trans", worksheet.outputs_land_use_technology_c56); end
  def test_outputs_land_use_technology_d56; assert_equal("Global Air", worksheet.outputs_land_use_technology_d56); end
  def test_outputs_land_use_technology_c57; assert_equal("G.water.trans", worksheet.outputs_land_use_technology_c57); end
  def test_outputs_land_use_technology_d57; assert_equal("Global Water", worksheet.outputs_land_use_technology_d57); end
  def test_outputs_land_use_technology_c58; assert_equal("G.solid.boiler.heat", worksheet.outputs_land_use_technology_c58); end
  def test_outputs_land_use_technology_d58; assert_equal("Global Solid fuel boiler", worksheet.outputs_land_use_technology_d58); end
  def test_outputs_land_use_technology_c59; assert_equal("G.liquid.boiler.heat", worksheet.outputs_land_use_technology_c59); end
  def test_outputs_land_use_technology_d59; assert_equal("Global Liquid fuel boiler", worksheet.outputs_land_use_technology_d59); end
  def test_outputs_land_use_technology_c60; assert_equal("G.gas.boiler.heat", worksheet.outputs_land_use_technology_c60); end
  def test_outputs_land_use_technology_d60; assert_equal("Global Gaseous fuel boiler", worksheet.outputs_land_use_technology_d60); end
  def test_outputs_land_use_technology_c61; assert_equal("G.micro.chp.heat", worksheet.outputs_land_use_technology_c61); end
  def test_outputs_land_use_technology_d61; assert_equal("Global Micro combined heat and power (for single domestic purpose)", worksheet.outputs_land_use_technology_d61); end
  def test_outputs_land_use_technology_c62; assert_equal("G.chp.heat", worksheet.outputs_land_use_technology_c62); end
  def test_outputs_land_use_technology_d62; assert_equal("Global Large scale combined heat and power", worksheet.outputs_land_use_technology_d62); end
  def test_outputs_land_use_technology_c63; assert_equal("G.solar.heat", worksheet.outputs_land_use_technology_c63); end
  def test_outputs_land_use_technology_d63; assert_equal("Global Solar thermal", worksheet.outputs_land_use_technology_d63); end
  def test_outputs_land_use_technology_c64; assert_equal("G.district.heat", worksheet.outputs_land_use_technology_c64); end
  def test_outputs_land_use_technology_d64; assert_equal("Global District heating", worksheet.outputs_land_use_technology_d64); end
  def test_outputs_land_use_technology_c65; assert_equal("G.air.pump.heat", worksheet.outputs_land_use_technology_c65); end
  def test_outputs_land_use_technology_d65; assert_equal("Global Air source heat pump", worksheet.outputs_land_use_technology_d65); end
  def test_outputs_land_use_technology_c66; assert_equal("G.ground.pump.heat", worksheet.outputs_land_use_technology_c66); end
  def test_outputs_land_use_technology_d66; assert_equal("Global Ground source heat pump", worksheet.outputs_land_use_technology_d66); end
  def test_outputs_land_use_technology_c67; assert_equal("G.elec.heat", worksheet.outputs_land_use_technology_c67); end
  def test_outputs_land_use_technology_d67; assert_equal("Global Electric heaters", worksheet.outputs_land_use_technology_d67); end
  def test_outputs_land_use_technology_c68; assert_equal("G.ac.cooling", worksheet.outputs_land_use_technology_c68); end
  def test_outputs_land_use_technology_d68; assert_equal("Global Air conditioning", worksheet.outputs_land_use_technology_d68); end
  def test_outputs_land_use_technology_c69; assert_equal("G.bulb.light", worksheet.outputs_land_use_technology_c69); end
  def test_outputs_land_use_technology_d69; assert_equal("Global Light bulb", worksheet.outputs_land_use_technology_d69); end
  def test_outputs_land_use_technology_c70; assert_equal("G.appliance", worksheet.outputs_land_use_technology_c70); end
  def test_outputs_land_use_technology_d70; assert_equal("Global Appliance", worksheet.outputs_land_use_technology_d70); end
  def test_outputs_land_use_technology_c71; assert_equal("G.oven.cook", worksheet.outputs_land_use_technology_c71); end
  def test_outputs_land_use_technology_d71; assert_equal("Global Oven", worksheet.outputs_land_use_technology_d71); end
  def test_outputs_land_use_technology_c72; assert_equal("G.unabated.solid.super.elec", worksheet.outputs_land_use_technology_c72); end
  def test_outputs_land_use_technology_d72; assert_equal("Global Unabated solid-fuel supercritical power plant", worksheet.outputs_land_use_technology_d72); end
  def test_outputs_land_use_technology_c73; assert_equal("G.unabated.solid.sub.elec", worksheet.outputs_land_use_technology_c73); end
  def test_outputs_land_use_technology_d73; assert_equal("Global Unabated solid-fuel subcritical power plant", worksheet.outputs_land_use_technology_d73); end
  def test_outputs_land_use_technology_c74; assert_equal("G.unabated.liquid.new.tech.elec", worksheet.outputs_land_use_technology_c74); end
  def test_outputs_land_use_technology_d74; assert_equal("Global Unabated liquid-fuel efficient power plant", worksheet.outputs_land_use_technology_d74); end
  def test_outputs_land_use_technology_c75; assert_equal("G.unabated.liquid.old.tech.elec", worksheet.outputs_land_use_technology_c75); end
  def test_outputs_land_use_technology_d75; assert_equal("Global Unabated liquid-fuel inefficient power plant", worksheet.outputs_land_use_technology_d75); end
  def test_outputs_land_use_technology_c76; assert_equal("G.unabated.gas.OC.elec", worksheet.outputs_land_use_technology_c76); end
  def test_outputs_land_use_technology_d76; assert_equal("Global Unabated open-cycle gas turbine power plant", worksheet.outputs_land_use_technology_d76); end
  def test_outputs_land_use_technology_c77; assert_equal("G.unabated.gas.CC.elec", worksheet.outputs_land_use_technology_c77); end
  def test_outputs_land_use_technology_d77; assert_equal("Global Unabated combined cycle gas turbine power plant", worksheet.outputs_land_use_technology_d77); end
  def test_outputs_land_use_technology_c78; assert_equal(:ref, worksheet.outputs_land_use_technology_c78); end
  def test_outputs_land_use_technology_d78; assert_equal(:ref, worksheet.outputs_land_use_technology_d78); end
  def test_outputs_land_use_technology_c79; assert_equal(:ref, worksheet.outputs_land_use_technology_c79); end
  def test_outputs_land_use_technology_d79; assert_equal(:ref, worksheet.outputs_land_use_technology_d79); end
  def test_outputs_land_use_technology_c80; assert_equal(:ref, worksheet.outputs_land_use_technology_c80); end
  def test_outputs_land_use_technology_d80; assert_equal(:ref, worksheet.outputs_land_use_technology_d80); end
  def test_outputs_land_use_technology_c81; assert_equal("G.nuclear.elec", worksheet.outputs_land_use_technology_c81); end
  def test_outputs_land_use_technology_d81; assert_equal("Global Nuclear power stations", worksheet.outputs_land_use_technology_d81); end
  def test_outputs_land_use_technology_c82; assert_equal("G.onshore.wind.elec", worksheet.outputs_land_use_technology_c82); end
  def test_outputs_land_use_technology_d82; assert_equal("Global On shore wind turbines", worksheet.outputs_land_use_technology_d82); end
  def test_outputs_land_use_technology_c83; assert_equal("G.offshore.wind.elec", worksheet.outputs_land_use_technology_c83); end
  def test_outputs_land_use_technology_d83; assert_equal("Global Off shore wind turbines", worksheet.outputs_land_use_technology_d83); end
  def test_outputs_land_use_technology_c84; assert_equal("G.hydro.elec", worksheet.outputs_land_use_technology_c84); end
  def test_outputs_land_use_technology_d84; assert_equal("Global Hydroelectric dam", worksheet.outputs_land_use_technology_d84); end
  def test_outputs_land_use_technology_c85; assert_equal("G.tidal.elec", worksheet.outputs_land_use_technology_c85); end
  def test_outputs_land_use_technology_d85; assert_equal("Global Tidal", worksheet.outputs_land_use_technology_d85); end
  def test_outputs_land_use_technology_c86; assert_equal("G.wave.elec", worksheet.outputs_land_use_technology_c86); end
  def test_outputs_land_use_technology_d86; assert_equal("Global Wave", worksheet.outputs_land_use_technology_d86); end
  def test_outputs_land_use_technology_c87; assert_equal("G.solarpv.elec", worksheet.outputs_land_use_technology_c87); end
  def test_outputs_land_use_technology_d87; assert_equal("Global Solar PV", worksheet.outputs_land_use_technology_d87); end
  def test_outputs_land_use_technology_c88; assert_equal("G.concentrated.solar.elec", worksheet.outputs_land_use_technology_c88); end
  def test_outputs_land_use_technology_d88; assert_equal("Global Concentrated solar", worksheet.outputs_land_use_technology_d88); end
  def test_outputs_land_use_technology_c89; assert_equal("G.geothermal.elec", worksheet.outputs_land_use_technology_c89); end
  def test_outputs_land_use_technology_d89; assert_equal("Global Geothermal", worksheet.outputs_land_use_technology_d89); end
  def test_outputs_land_use_technology_c90; assert_equal("G.storage.elec", worksheet.outputs_land_use_technology_c90); end
  def test_outputs_land_use_technology_d90; assert_equal("Global Storage unit", worksheet.outputs_land_use_technology_d90); end
  def test_outputs_land_use_technology_c91; assert_equal("G.reformer.hydrogen", worksheet.outputs_land_use_technology_c91); end
  def test_outputs_land_use_technology_d91; assert_equal("Global Steam reformers (for hydrogen)", worksheet.outputs_land_use_technology_d91); end
  def test_outputs_land_use_technology_c92; assert_equal("G.electrolysis.hydrogen", worksheet.outputs_land_use_technology_c92); end
  def test_outputs_land_use_technology_d92; assert_equal("Global Electrolysis units (for hydrogen)", worksheet.outputs_land_use_technology_d92); end
  def test_outputs_land_use_technology_c93; assert_equal("G.conversion.solidtoliquid", worksheet.outputs_land_use_technology_c93); end
  def test_outputs_land_use_technology_d93; assert_equal("Global Conversion plant (solid biomass to liquid)", worksheet.outputs_land_use_technology_d93); end
  def test_outputs_land_use_technology_c94; assert_equal("G.conversion.liquidtogas", worksheet.outputs_land_use_technology_c94); end
  def test_outputs_land_use_technology_d94; assert_equal("Global Conversion plant (liquid biomass to gas)", worksheet.outputs_land_use_technology_d94); end
  def test_outputs_land_use_technology_c95; assert_equal("G.conversion.gas", worksheet.outputs_land_use_technology_c95); end
  def test_outputs_land_use_technology_d95; assert_equal("Global Conversion plant (gas)", worksheet.outputs_land_use_technology_d95); end
  def test_outputs_land_use_technology_c96; assert_equal("G.GGR.tech", worksheet.outputs_land_use_technology_c96); end
  def test_outputs_land_use_technology_d96; assert_equal("Global Geosequestration units", worksheet.outputs_land_use_technology_d96); end
  def test_outputs_land_use_technology_c97; assert_equal("G.Humans", worksheet.outputs_land_use_technology_c97); end
  def test_outputs_land_use_technology_f97; assert_in_epsilon(3.6911730000000005, worksheet.outputs_land_use_technology_f97, 0.001); end
  def test_outputs_land_use_technology_g97; assert_in_epsilon(4.071020000000001, worksheet.outputs_land_use_technology_g97, 0.001); end
  def test_outputs_land_use_technology_h97; assert_in_epsilon(4.4490490000000005, worksheet.outputs_land_use_technology_h97, 0.001); end
  def test_outputs_land_use_technology_i97; assert_in_epsilon(4.863602000000001, worksheet.outputs_land_use_technology_i97, 0.001); end
  def test_outputs_land_use_technology_j97; assert_in_epsilon(5.320817000000001, worksheet.outputs_land_use_technology_j97, 0.001); end
  def test_outputs_land_use_technology_k97; assert_in_epsilon(5.741822000000001, worksheet.outputs_land_use_technology_k97, 0.001); end
  def test_outputs_land_use_technology_l97; assert_in_epsilon(6.127700000000001, worksheet.outputs_land_use_technology_l97, 0.001); end
  def test_outputs_land_use_technology_m97; assert_in_epsilon(6.514095000000001, worksheet.outputs_land_use_technology_m97, 0.001); end
  def test_outputs_land_use_technology_n97; assert_in_epsilon(6.916183000000001, worksheet.outputs_land_use_technology_n97, 0.001); end
  def test_outputs_land_use_technology_ab97; assert_equal("UNDP", worksheet.outputs_land_use_technology_ab97); end
  def test_outputs_land_use_technology_ac97; assert_equal("http://esa.un.org/unpd/wpp/unpp/panel_population.htm", worksheet.outputs_land_use_technology_ac97); end
  def test_outputs_land_use_technology_ad97; assert_equal("Green", worksheet.outputs_land_use_technology_ad97); end
  def test_outputs_land_use_technology_ae97; assert_equal("2012 revision. Well known, widely used source. Reputable organisation.", worksheet.outputs_land_use_technology_ae97); end
  def test_outputs_land_use_technology_af97; assert_equal("TB", worksheet.outputs_land_use_technology_af97); end
  def test_outputs_land_use_technology_b103; assert_equal("In flow of technology units", worksheet.outputs_land_use_technology_b103); end
  def test_outputs_land_use_technology_ab103; assert_equal("Data sources and comments for the historic data", worksheet.outputs_land_use_technology_ab103); end
  def test_outputs_land_use_technology_ab104; assert_equal("Source", worksheet.outputs_land_use_technology_ab104); end
  def test_outputs_land_use_technology_ac104; assert_equal("Link", worksheet.outputs_land_use_technology_ac104); end
  def test_outputs_land_use_technology_ad104; assert_equal("Risk (Green, Amber/Green, Amber, Red/Amber, Red)", worksheet.outputs_land_use_technology_ad104); end
  def test_outputs_land_use_technology_ae104; assert_equal("Comment / assumptions / caveats", worksheet.outputs_land_use_technology_ae104); end
  def test_outputs_land_use_technology_af104; assert_equal("Comment author", worksheet.outputs_land_use_technology_af104); end
  def test_outputs_land_use_technology_c105; assert_equal("All technologies", worksheet.outputs_land_use_technology_c105); end
  def test_outputs_land_use_technology_y105; assert_equal("Number", worksheet.outputs_land_use_technology_y105); end
  def test_outputs_land_use_technology_f106; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f106); end
  def test_outputs_land_use_technology_q106; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q106); end
  def test_outputs_land_use_technology_c107; assert_equal("Technology", worksheet.outputs_land_use_technology_c107); end
  def test_outputs_land_use_technology_d107; assert_equal("Description", worksheet.outputs_land_use_technology_d107); end
  def test_outputs_land_use_technology_f107; assert_equal("1970", worksheet.outputs_land_use_technology_f107); end
  def test_outputs_land_use_technology_g107; assert_equal("1975", worksheet.outputs_land_use_technology_g107); end
  def test_outputs_land_use_technology_h107; assert_equal("1980", worksheet.outputs_land_use_technology_h107); end
  def test_outputs_land_use_technology_i107; assert_equal("1985", worksheet.outputs_land_use_technology_i107); end
  def test_outputs_land_use_technology_j107; assert_equal("1990", worksheet.outputs_land_use_technology_j107); end
  def test_outputs_land_use_technology_k107; assert_equal("1995", worksheet.outputs_land_use_technology_k107); end
  def test_outputs_land_use_technology_l107; assert_equal("2000", worksheet.outputs_land_use_technology_l107); end
  def test_outputs_land_use_technology_m107; assert_equal("2005", worksheet.outputs_land_use_technology_m107); end
  def test_outputs_land_use_technology_n107; assert_in_epsilon(2010, worksheet.outputs_land_use_technology_n107, 0.001); end
  def test_outputs_land_use_technology_q107; assert_in_epsilon(2011, worksheet.outputs_land_use_technology_q107, 0.001); end
  def test_outputs_land_use_technology_r107; assert_equal("2015", worksheet.outputs_land_use_technology_r107); end
  def test_outputs_land_use_technology_s107; assert_equal("2020", worksheet.outputs_land_use_technology_s107); end
  def test_outputs_land_use_technology_t107; assert_equal("2025", worksheet.outputs_land_use_technology_t107); end
  def test_outputs_land_use_technology_u107; assert_equal("2030", worksheet.outputs_land_use_technology_u107); end
  def test_outputs_land_use_technology_v107; assert_equal("2035", worksheet.outputs_land_use_technology_v107); end
  def test_outputs_land_use_technology_w107; assert_equal("2040", worksheet.outputs_land_use_technology_w107); end
  def test_outputs_land_use_technology_x107; assert_equal("2045", worksheet.outputs_land_use_technology_x107); end
  def test_outputs_land_use_technology_y107; assert_equal("2050", worksheet.outputs_land_use_technology_y107); end
  def test_outputs_land_use_technology_c108; assert_equal("G.Aluminium.Electricity", worksheet.outputs_land_use_technology_c108); end
  def test_outputs_land_use_technology_d108; assert_equal("Global Aluminium", worksheet.outputs_land_use_technology_d108); end
  def test_outputs_land_use_technology_c109; assert_equal("G.Aluminium.SolidFuels", worksheet.outputs_land_use_technology_c109); end
  def test_outputs_land_use_technology_d109; assert_equal("Global Aluminium", worksheet.outputs_land_use_technology_d109); end
  def test_outputs_land_use_technology_c110; assert_equal("G.Aluminium.LiquidFuels", worksheet.outputs_land_use_technology_c110); end
  def test_outputs_land_use_technology_d110; assert_equal("Global Aluminium", worksheet.outputs_land_use_technology_d110); end
  def test_outputs_land_use_technology_c111; assert_equal("G.Aluminium.GaseousFuels", worksheet.outputs_land_use_technology_c111); end
  def test_outputs_land_use_technology_d111; assert_equal("Global Aluminium", worksheet.outputs_land_use_technology_d111); end
  def test_outputs_land_use_technology_c112; assert_equal("G.Aluminium.Biomass", worksheet.outputs_land_use_technology_c112); end
  def test_outputs_land_use_technology_d112; assert_equal("Global Aluminium", worksheet.outputs_land_use_technology_d112); end
  def test_outputs_land_use_technology_c113; assert_equal("G.Chemicals & petrochemicals.1.Electricity", worksheet.outputs_land_use_technology_c113); end
  def test_outputs_land_use_technology_d113; assert_equal("Global Chemicals & petrochemicals.1", worksheet.outputs_land_use_technology_d113); end
  def test_outputs_land_use_technology_c114; assert_equal("G.Chemicals & petrochemicals.1.SolidFuels", worksheet.outputs_land_use_technology_c114); end
  def test_outputs_land_use_technology_d114; assert_equal("Global Chemicals & petrochemicals.1", worksheet.outputs_land_use_technology_d114); end
  def test_outputs_land_use_technology_c115; assert_equal("G.Chemicals & petrochemicals.1.LiquidFuels", worksheet.outputs_land_use_technology_c115); end
  def test_outputs_land_use_technology_d115; assert_equal("Global Chemicals & petrochemicals.1", worksheet.outputs_land_use_technology_d115); end
  def test_outputs_land_use_technology_c116; assert_equal("G.Chemicals & petrochemicals.1.GaseousFuels", worksheet.outputs_land_use_technology_c116); end
  def test_outputs_land_use_technology_d116; assert_equal("Global Chemicals & petrochemicals.1", worksheet.outputs_land_use_technology_d116); end
  def test_outputs_land_use_technology_c117; assert_equal("G.Chemicals & petrochemicals.1.Biomass", worksheet.outputs_land_use_technology_c117); end
  def test_outputs_land_use_technology_d117; assert_equal("Global Chemicals & petrochemicals.1", worksheet.outputs_land_use_technology_d117); end
  def test_outputs_land_use_technology_c118; assert_equal("G.Chemicals & petrochemicals.2.Electricity", worksheet.outputs_land_use_technology_c118); end
  def test_outputs_land_use_technology_d118; assert_equal("Global Chemicals & petrochemicals.2", worksheet.outputs_land_use_technology_d118); end
  def test_outputs_land_use_technology_c119; assert_equal("G.Chemicals & petrochemicals.2.SolidFuels", worksheet.outputs_land_use_technology_c119); end
  def test_outputs_land_use_technology_d119; assert_equal("Global Chemicals & petrochemicals.2", worksheet.outputs_land_use_technology_d119); end
  def test_outputs_land_use_technology_c120; assert_equal("G.Chemicals & petrochemicals.2.LiquidFuels", worksheet.outputs_land_use_technology_c120); end
  def test_outputs_land_use_technology_d120; assert_equal("Global Chemicals & petrochemicals.2", worksheet.outputs_land_use_technology_d120); end
  def test_outputs_land_use_technology_c121; assert_equal("G.Chemicals & petrochemicals.2.GaseousFuels", worksheet.outputs_land_use_technology_c121); end
  def test_outputs_land_use_technology_d121; assert_equal("Global Chemicals & petrochemicals.2", worksheet.outputs_land_use_technology_d121); end
  def test_outputs_land_use_technology_c122; assert_equal("G.Chemicals & petrochemicals.2.Biomass", worksheet.outputs_land_use_technology_c122); end
  def test_outputs_land_use_technology_d122; assert_equal("Global Chemicals & petrochemicals.2", worksheet.outputs_land_use_technology_d122); end
  def test_outputs_land_use_technology_c123; assert_equal("G.Chemicals & petrochemicals.3.Electricity", worksheet.outputs_land_use_technology_c123); end
  def test_outputs_land_use_technology_d123; assert_equal("Global Chemicals & petrochemicals.3", worksheet.outputs_land_use_technology_d123); end
  def test_outputs_land_use_technology_c124; assert_equal("G.Chemicals & petrochemicals.3.SolidFuels", worksheet.outputs_land_use_technology_c124); end
  def test_outputs_land_use_technology_d124; assert_equal("Global Chemicals & petrochemicals.3", worksheet.outputs_land_use_technology_d124); end
  def test_outputs_land_use_technology_c125; assert_equal("G.Chemicals & petrochemicals.3.LiquidFuels", worksheet.outputs_land_use_technology_c125); end
  def test_outputs_land_use_technology_d125; assert_equal("Global Chemicals & petrochemicals.3", worksheet.outputs_land_use_technology_d125); end
  def test_outputs_land_use_technology_c126; assert_equal("G.Chemicals & petrochemicals.3.GaseousFuels", worksheet.outputs_land_use_technology_c126); end
  def test_outputs_land_use_technology_d126; assert_equal("Global Chemicals & petrochemicals.3", worksheet.outputs_land_use_technology_d126); end
  def test_outputs_land_use_technology_c127; assert_equal("G.Chemicals & petrochemicals.3.Biomass", worksheet.outputs_land_use_technology_c127); end
  def test_outputs_land_use_technology_d127; assert_equal("Global Chemicals & petrochemicals.3", worksheet.outputs_land_use_technology_d127); end
  def test_outputs_land_use_technology_c128; assert_equal("G.Pulp & paper.Virgin.Electricity", worksheet.outputs_land_use_technology_c128); end
  def test_outputs_land_use_technology_d128; assert_equal("Global Pulp & paper.Virgin", worksheet.outputs_land_use_technology_d128); end
  def test_outputs_land_use_technology_c129; assert_equal("G.Pulp & paper.Virgin.SolidFuels", worksheet.outputs_land_use_technology_c129); end
  def test_outputs_land_use_technology_d129; assert_equal("Global Pulp & paper.Virgin", worksheet.outputs_land_use_technology_d129); end
  def test_outputs_land_use_technology_c130; assert_equal("G.Pulp & paper.Virgin.LiquidFuels", worksheet.outputs_land_use_technology_c130); end
  def test_outputs_land_use_technology_d130; assert_equal("Global Pulp & paper.Virgin", worksheet.outputs_land_use_technology_d130); end
  def test_outputs_land_use_technology_c131; assert_equal("G.Pulp & paper.Virgin.GaseousFuels", worksheet.outputs_land_use_technology_c131); end
  def test_outputs_land_use_technology_d131; assert_equal("Global Pulp & paper.Virgin", worksheet.outputs_land_use_technology_d131); end
  def test_outputs_land_use_technology_c132; assert_equal("G.Pulp & paper.Virgin.Biomass", worksheet.outputs_land_use_technology_c132); end
  def test_outputs_land_use_technology_d132; assert_equal("Global Pulp & paper.Virgin", worksheet.outputs_land_use_technology_d132); end
  def test_outputs_land_use_technology_c133; assert_equal("G.Pulp & paper.Recycled.Electricity", worksheet.outputs_land_use_technology_c133); end
  def test_outputs_land_use_technology_d133; assert_equal("Global Pulp & paper.Recycled", worksheet.outputs_land_use_technology_d133); end
  def test_outputs_land_use_technology_c134; assert_equal("G.Pulp & paper.Recycled.SolidFuels", worksheet.outputs_land_use_technology_c134); end
  def test_outputs_land_use_technology_d134; assert_equal("Global Pulp & paper.Recycled", worksheet.outputs_land_use_technology_d134); end
  def test_outputs_land_use_technology_c135; assert_equal("G.Pulp & paper.Recycled.LiquidFuels", worksheet.outputs_land_use_technology_c135); end
  def test_outputs_land_use_technology_d135; assert_equal("Global Pulp & paper.Recycled", worksheet.outputs_land_use_technology_d135); end
  def test_outputs_land_use_technology_c136; assert_equal("G.Pulp & paper.Recycled.GaseousFuels", worksheet.outputs_land_use_technology_c136); end
  def test_outputs_land_use_technology_d136; assert_equal("Global Pulp & paper.Recycled", worksheet.outputs_land_use_technology_d136); end
  def test_outputs_land_use_technology_c137; assert_equal("G.Pulp & paper.Recycled.Biomass", worksheet.outputs_land_use_technology_c137); end
  def test_outputs_land_use_technology_d137; assert_equal("Global Pulp & paper.Recycled", worksheet.outputs_land_use_technology_d137); end
  def test_outputs_land_use_technology_c138; assert_equal("G.Cement.Electricity", worksheet.outputs_land_use_technology_c138); end
  def test_outputs_land_use_technology_d138; assert_equal("Global Cement", worksheet.outputs_land_use_technology_d138); end
  def test_outputs_land_use_technology_c139; assert_equal("G.Cement.SolidFuels", worksheet.outputs_land_use_technology_c139); end
  def test_outputs_land_use_technology_d139; assert_equal("Global Cement", worksheet.outputs_land_use_technology_d139); end
  def test_outputs_land_use_technology_c140; assert_equal("G.Cement.LiquidFuels", worksheet.outputs_land_use_technology_c140); end
  def test_outputs_land_use_technology_d140; assert_equal("Global Cement", worksheet.outputs_land_use_technology_d140); end
  def test_outputs_land_use_technology_c141; assert_equal("G.Cement.GaseousFuels", worksheet.outputs_land_use_technology_c141); end
  def test_outputs_land_use_technology_d141; assert_equal("Global Cement", worksheet.outputs_land_use_technology_d141); end
  def test_outputs_land_use_technology_c142; assert_equal("G.Cement.Biomass", worksheet.outputs_land_use_technology_c142); end
  def test_outputs_land_use_technology_d142; assert_equal("Global Cement", worksheet.outputs_land_use_technology_d142); end
  def test_outputs_land_use_technology_c143; assert_equal("G.Other industries.Electricity", worksheet.outputs_land_use_technology_c143); end
  def test_outputs_land_use_technology_d143; assert_equal("Global Other industries", worksheet.outputs_land_use_technology_d143); end
  def test_outputs_land_use_technology_c144; assert_equal("G.Other industries.SolidFuels", worksheet.outputs_land_use_technology_c144); end
  def test_outputs_land_use_technology_d144; assert_equal("Global Other industries", worksheet.outputs_land_use_technology_d144); end
  def test_outputs_land_use_technology_c145; assert_equal("G.Other industries.LiquidFuels", worksheet.outputs_land_use_technology_c145); end
  def test_outputs_land_use_technology_d145; assert_equal("Global Other industries", worksheet.outputs_land_use_technology_d145); end
  def test_outputs_land_use_technology_c146; assert_equal("G.Other industries.GaseousFuels", worksheet.outputs_land_use_technology_c146); end
  def test_outputs_land_use_technology_d146; assert_equal("Global Other industries", worksheet.outputs_land_use_technology_d146); end
  def test_outputs_land_use_technology_c147; assert_equal("G.Other industries.Biomass", worksheet.outputs_land_use_technology_c147); end
  def test_outputs_land_use_technology_d147; assert_equal("Global Other industries", worksheet.outputs_land_use_technology_d147); end
  def test_outputs_land_use_technology_c148; assert_equal("G.", worksheet.outputs_land_use_technology_c148); end
  def test_outputs_land_use_technology_d148; assert_equal(:na, worksheet.outputs_land_use_technology_d148); end
  def test_outputs_land_use_technology_c149; assert_equal("G.", worksheet.outputs_land_use_technology_c149); end
  def test_outputs_land_use_technology_d149; assert_equal(:na, worksheet.outputs_land_use_technology_d149); end
  def test_outputs_land_use_technology_c150; assert_equal("G.", worksheet.outputs_land_use_technology_c150); end
  def test_outputs_land_use_technology_d150; assert_equal(:na, worksheet.outputs_land_use_technology_d150); end
  def test_outputs_land_use_technology_c151; assert_equal("G.", worksheet.outputs_land_use_technology_c151); end
  def test_outputs_land_use_technology_d151; assert_equal(:na, worksheet.outputs_land_use_technology_d151); end
  def test_outputs_land_use_technology_c152; assert_equal("G.", worksheet.outputs_land_use_technology_c152); end
  def test_outputs_land_use_technology_d152; assert_equal(:na, worksheet.outputs_land_use_technology_d152); end
  def test_outputs_land_use_technology_c153; assert_equal("G.", worksheet.outputs_land_use_technology_c153); end
  def test_outputs_land_use_technology_f153; assert_in_epsilon(3.6911730000000005, worksheet.outputs_land_use_technology_f153, 0.001); end
  def test_outputs_land_use_technology_g153; assert_in_epsilon(4.071020000000001, worksheet.outputs_land_use_technology_g153, 0.001); end
  def test_outputs_land_use_technology_h153; assert_in_epsilon(4.4490490000000005, worksheet.outputs_land_use_technology_h153, 0.001); end
  def test_outputs_land_use_technology_i153; assert_in_epsilon(4.863602000000001, worksheet.outputs_land_use_technology_i153, 0.001); end
  def test_outputs_land_use_technology_j153; assert_in_epsilon(5.320817000000001, worksheet.outputs_land_use_technology_j153, 0.001); end
  def test_outputs_land_use_technology_k153; assert_in_epsilon(5.741822000000001, worksheet.outputs_land_use_technology_k153, 0.001); end
  def test_outputs_land_use_technology_l153; assert_in_epsilon(6.127700000000001, worksheet.outputs_land_use_technology_l153, 0.001); end
  def test_outputs_land_use_technology_m153; assert_in_epsilon(6.514095000000001, worksheet.outputs_land_use_technology_m153, 0.001); end
  def test_outputs_land_use_technology_n153; assert_in_epsilon(6.916183000000001, worksheet.outputs_land_use_technology_n153, 0.001); end
  def test_outputs_land_use_technology_ab153; assert_equal("UNDP", worksheet.outputs_land_use_technology_ab153); end
  def test_outputs_land_use_technology_ac153; assert_equal("http://esa.un.org/unpd/wpp/unpp/panel_population.htm", worksheet.outputs_land_use_technology_ac153); end
  def test_outputs_land_use_technology_ad153; assert_equal("Green", worksheet.outputs_land_use_technology_ad153); end
  def test_outputs_land_use_technology_ae153; assert_equal("2012 revision. Well known, widely used source. Reputable organisation.", worksheet.outputs_land_use_technology_ae153); end
  def test_outputs_land_use_technology_af153; assert_equal("TB", worksheet.outputs_land_use_technology_af153); end
  def test_outputs_land_use_technology_b158; assert_equal("Out flow of technology units", worksheet.outputs_land_use_technology_b158); end
  def test_outputs_land_use_technology_ab158; assert_equal("Data sources and comments for the historic data", worksheet.outputs_land_use_technology_ab158); end
  def test_outputs_land_use_technology_ab159; assert_equal("Source", worksheet.outputs_land_use_technology_ab159); end
  def test_outputs_land_use_technology_ac159; assert_equal("Link", worksheet.outputs_land_use_technology_ac159); end
  def test_outputs_land_use_technology_ad159; assert_equal("Risk (Green, Amber/Green, Amber, Red/Amber, Red)", worksheet.outputs_land_use_technology_ad159); end
  def test_outputs_land_use_technology_ae159; assert_equal("Comment / assumptions / caveats", worksheet.outputs_land_use_technology_ae159); end
  def test_outputs_land_use_technology_af159; assert_equal("Comment author", worksheet.outputs_land_use_technology_af159); end
  def test_outputs_land_use_technology_c160; assert_equal("All technologies", worksheet.outputs_land_use_technology_c160); end
  def test_outputs_land_use_technology_y160; assert_equal("Number", worksheet.outputs_land_use_technology_y160); end
  def test_outputs_land_use_technology_f161; assert_equal("Historic actuals", worksheet.outputs_land_use_technology_f161); end
  def test_outputs_land_use_technology_q161; assert_equal("Calculated by the model", worksheet.outputs_land_use_technology_q161); end
  def test_outputs_land_use_technology_c162; assert_equal("Technology", worksheet.outputs_land_use_technology_c162); end
  def test_outputs_land_use_technology_d162; assert_equal("Description", worksheet.outputs_land_use_technology_d162); end
  def test_outputs_land_use_technology_f162; assert_equal("1970", worksheet.outputs_land_use_technology_f162); end
  def test_outputs_land_use_technology_g162; assert_equal("1975", worksheet.outputs_land_use_technology_g162); end
  def test_outputs_land_use_technology_h162; assert_equal("1980", worksheet.outputs_land_use_technology_h162); end
  def test_outputs_land_use_technology_i162; assert_equal("1985", worksheet.outputs_land_use_technology_i162); end
  def test_outputs_land_use_technology_j162; assert_equal("1990", worksheet.outputs_land_use_technology_j162); end
  def test_outputs_land_use_technology_k162; assert_equal("1995", worksheet.outputs_land_use_technology_k162); end
  def test_outputs_land_use_technology_l162; assert_equal("2000", worksheet.outputs_land_use_technology_l162); end
  def test_outputs_land_use_technology_m162; assert_equal("2005", worksheet.outputs_land_use_technology_m162); end
  def test_outputs_land_use_technology_n162; assert_in_epsilon(2010, worksheet.outputs_land_use_technology_n162, 0.001); end
  def test_outputs_land_use_technology_q162; assert_in_epsilon(2011, worksheet.outputs_land_use_technology_q162, 0.001); end
  def test_outputs_land_use_technology_r162; assert_equal("2015", worksheet.outputs_land_use_technology_r162); end
  def test_outputs_land_use_technology_s162; assert_equal("2020", worksheet.outputs_land_use_technology_s162); end
  def test_outputs_land_use_technology_t162; assert_equal("2025", worksheet.outputs_land_use_technology_t162); end
  def test_outputs_land_use_technology_u162; assert_equal("2030", worksheet.outputs_land_use_technology_u162); end
  def test_outputs_land_use_technology_v162; assert_equal("2035", worksheet.outputs_land_use_technology_v162); end
  def test_outputs_land_use_technology_w162; assert_equal("2040", worksheet.outputs_land_use_technology_w162); end
  def test_outputs_land_use_technology_x162; assert_equal("2045", worksheet.outputs_land_use_technology_x162); end
  def test_outputs_land_use_technology_y162; assert_equal("2050", worksheet.outputs_land_use_technology_y162); end
  def test_outputs_land_use_technology_c163; assert_equal("G.", worksheet.outputs_land_use_technology_c163); end
  def test_outputs_land_use_technology_d163; assert_equal(:na, worksheet.outputs_land_use_technology_d163); end
  def test_outputs_land_use_technology_c164; assert_equal("G.", worksheet.outputs_land_use_technology_c164); end
  def test_outputs_land_use_technology_d164; assert_equal(:na, worksheet.outputs_land_use_technology_d164); end
  def test_outputs_land_use_technology_c165; assert_equal("G.", worksheet.outputs_land_use_technology_c165); end
  def test_outputs_land_use_technology_d165; assert_equal(:na, worksheet.outputs_land_use_technology_d165); end
  def test_outputs_land_use_technology_c166; assert_equal("G.", worksheet.outputs_land_use_technology_c166); end
  def test_outputs_land_use_technology_d166; assert_equal(:na, worksheet.outputs_land_use_technology_d166); end
  def test_outputs_land_use_technology_c167; assert_equal("G.", worksheet.outputs_land_use_technology_c167); end
  def test_outputs_land_use_technology_d167; assert_equal(:na, worksheet.outputs_land_use_technology_d167); end
  def test_outputs_land_use_technology_c168; assert_equal("G.", worksheet.outputs_land_use_technology_c168); end
  def test_outputs_land_use_technology_d168; assert_equal(:na, worksheet.outputs_land_use_technology_d168); end
  def test_outputs_land_use_technology_c169; assert_equal("G.", worksheet.outputs_land_use_technology_c169); end
  def test_outputs_land_use_technology_d169; assert_equal(:na, worksheet.outputs_land_use_technology_d169); end
  def test_outputs_land_use_technology_c170; assert_equal("G.", worksheet.outputs_land_use_technology_c170); end
  def test_outputs_land_use_technology_d170; assert_equal(:na, worksheet.outputs_land_use_technology_d170); end
  def test_outputs_land_use_technology_c171; assert_equal("G.", worksheet.outputs_land_use_technology_c171); end
  def test_outputs_land_use_technology_d171; assert_equal(:na, worksheet.outputs_land_use_technology_d171); end
  def test_outputs_land_use_technology_c172; assert_equal("G.", worksheet.outputs_land_use_technology_c172); end
  def test_outputs_land_use_technology_d172; assert_equal(:na, worksheet.outputs_land_use_technology_d172); end
  def test_outputs_land_use_technology_c173; assert_equal("G.", worksheet.outputs_land_use_technology_c173); end
  def test_outputs_land_use_technology_d173; assert_equal(:na, worksheet.outputs_land_use_technology_d173); end
  def test_outputs_land_use_technology_c174; assert_equal("G.", worksheet.outputs_land_use_technology_c174); end
  def test_outputs_land_use_technology_d174; assert_equal(:na, worksheet.outputs_land_use_technology_d174); end
  def test_outputs_land_use_technology_c175; assert_equal("G.", worksheet.outputs_land_use_technology_c175); end
  def test_outputs_land_use_technology_d175; assert_equal(:na, worksheet.outputs_land_use_technology_d175); end
  def test_outputs_land_use_technology_c176; assert_equal("G.", worksheet.outputs_land_use_technology_c176); end
  def test_outputs_land_use_technology_d176; assert_equal(:na, worksheet.outputs_land_use_technology_d176); end
  def test_outputs_land_use_technology_c177; assert_equal("G.", worksheet.outputs_land_use_technology_c177); end
  def test_outputs_land_use_technology_d177; assert_equal(:na, worksheet.outputs_land_use_technology_d177); end
  def test_outputs_land_use_technology_c178; assert_equal("G.", worksheet.outputs_land_use_technology_c178); end
  def test_outputs_land_use_technology_d178; assert_equal(:na, worksheet.outputs_land_use_technology_d178); end
  def test_outputs_land_use_technology_c179; assert_equal("G.", worksheet.outputs_land_use_technology_c179); end
  def test_outputs_land_use_technology_d179; assert_equal(:na, worksheet.outputs_land_use_technology_d179); end
  def test_outputs_land_use_technology_c180; assert_equal("G.", worksheet.outputs_land_use_technology_c180); end
  def test_outputs_land_use_technology_d180; assert_equal(:na, worksheet.outputs_land_use_technology_d180); end
  def test_outputs_land_use_technology_c181; assert_equal("G.", worksheet.outputs_land_use_technology_c181); end
  def test_outputs_land_use_technology_d181; assert_equal(:na, worksheet.outputs_land_use_technology_d181); end
  def test_outputs_land_use_technology_c182; assert_equal("G.", worksheet.outputs_land_use_technology_c182); end
  def test_outputs_land_use_technology_d182; assert_equal(:na, worksheet.outputs_land_use_technology_d182); end
  def test_outputs_land_use_technology_c183; assert_equal("G.", worksheet.outputs_land_use_technology_c183); end
  def test_outputs_land_use_technology_d183; assert_equal(:na, worksheet.outputs_land_use_technology_d183); end
  def test_outputs_land_use_technology_c184; assert_equal("G.", worksheet.outputs_land_use_technology_c184); end
  def test_outputs_land_use_technology_d184; assert_equal(:na, worksheet.outputs_land_use_technology_d184); end
  def test_outputs_land_use_technology_c185; assert_equal("G.", worksheet.outputs_land_use_technology_c185); end
  def test_outputs_land_use_technology_d185; assert_equal(:na, worksheet.outputs_land_use_technology_d185); end
  def test_outputs_land_use_technology_c186; assert_equal("G.", worksheet.outputs_land_use_technology_c186); end
  def test_outputs_land_use_technology_d186; assert_equal(:na, worksheet.outputs_land_use_technology_d186); end
  def test_outputs_land_use_technology_c187; assert_equal("G.", worksheet.outputs_land_use_technology_c187); end
  def test_outputs_land_use_technology_d187; assert_equal(:na, worksheet.outputs_land_use_technology_d187); end
  def test_outputs_land_use_technology_c188; assert_equal("G.", worksheet.outputs_land_use_technology_c188); end
  def test_outputs_land_use_technology_d188; assert_equal(:na, worksheet.outputs_land_use_technology_d188); end
  def test_outputs_land_use_technology_c189; assert_equal("G.", worksheet.outputs_land_use_technology_c189); end
  def test_outputs_land_use_technology_d189; assert_equal(:na, worksheet.outputs_land_use_technology_d189); end
  def test_outputs_land_use_technology_c190; assert_equal("G.", worksheet.outputs_land_use_technology_c190); end
  def test_outputs_land_use_technology_d190; assert_equal(:na, worksheet.outputs_land_use_technology_d190); end
  def test_outputs_land_use_technology_c191; assert_equal("G.", worksheet.outputs_land_use_technology_c191); end
  def test_outputs_land_use_technology_d191; assert_equal(:na, worksheet.outputs_land_use_technology_d191); end
  def test_outputs_land_use_technology_c192; assert_equal("G.", worksheet.outputs_land_use_technology_c192); end
  def test_outputs_land_use_technology_d192; assert_equal(:na, worksheet.outputs_land_use_technology_d192); end
  def test_outputs_land_use_technology_c193; assert_equal("G.", worksheet.outputs_land_use_technology_c193); end
  def test_outputs_land_use_technology_d193; assert_equal(:na, worksheet.outputs_land_use_technology_d193); end
  def test_outputs_land_use_technology_c194; assert_equal("G.", worksheet.outputs_land_use_technology_c194); end
  def test_outputs_land_use_technology_d194; assert_equal(:na, worksheet.outputs_land_use_technology_d194); end
  def test_outputs_land_use_technology_c195; assert_equal("G.", worksheet.outputs_land_use_technology_c195); end
  def test_outputs_land_use_technology_d195; assert_equal(:na, worksheet.outputs_land_use_technology_d195); end
  def test_outputs_land_use_technology_c196; assert_equal("G.", worksheet.outputs_land_use_technology_c196); end
  def test_outputs_land_use_technology_d196; assert_equal(:na, worksheet.outputs_land_use_technology_d196); end
  def test_outputs_land_use_technology_c197; assert_equal("G.", worksheet.outputs_land_use_technology_c197); end
  def test_outputs_land_use_technology_d197; assert_equal(:na, worksheet.outputs_land_use_technology_d197); end
  def test_outputs_land_use_technology_c198; assert_equal("G.", worksheet.outputs_land_use_technology_c198); end
  def test_outputs_land_use_technology_d198; assert_equal(:na, worksheet.outputs_land_use_technology_d198); end
  def test_outputs_land_use_technology_c199; assert_equal("G.", worksheet.outputs_land_use_technology_c199); end
  def test_outputs_land_use_technology_d199; assert_equal(:na, worksheet.outputs_land_use_technology_d199); end
  def test_outputs_land_use_technology_c200; assert_equal("G.", worksheet.outputs_land_use_technology_c200); end
  def test_outputs_land_use_technology_d200; assert_equal(:na, worksheet.outputs_land_use_technology_d200); end
  def test_outputs_land_use_technology_c201; assert_equal("G.", worksheet.outputs_land_use_technology_c201); end
  def test_outputs_land_use_technology_d201; assert_equal(:na, worksheet.outputs_land_use_technology_d201); end
  def test_outputs_land_use_technology_c202; assert_equal("G.", worksheet.outputs_land_use_technology_c202); end
  def test_outputs_land_use_technology_d202; assert_equal(:na, worksheet.outputs_land_use_technology_d202); end
  def test_outputs_land_use_technology_c203; assert_equal("G.", worksheet.outputs_land_use_technology_c203); end
  def test_outputs_land_use_technology_d203; assert_equal(:na, worksheet.outputs_land_use_technology_d203); end
  def test_outputs_land_use_technology_c204; assert_equal("G.", worksheet.outputs_land_use_technology_c204); end
  def test_outputs_land_use_technology_d204; assert_equal(:na, worksheet.outputs_land_use_technology_d204); end
  def test_outputs_land_use_technology_c205; assert_equal("G.", worksheet.outputs_land_use_technology_c205); end
  def test_outputs_land_use_technology_d205; assert_equal(:na, worksheet.outputs_land_use_technology_d205); end
  def test_outputs_land_use_technology_c206; assert_equal("G.", worksheet.outputs_land_use_technology_c206); end
  def test_outputs_land_use_technology_d206; assert_equal(:na, worksheet.outputs_land_use_technology_d206); end
  def test_outputs_land_use_technology_c207; assert_equal("G.", worksheet.outputs_land_use_technology_c207); end
  def test_outputs_land_use_technology_d207; assert_equal(:na, worksheet.outputs_land_use_technology_d207); end
  def test_outputs_land_use_technology_c208; assert_equal("G.", worksheet.outputs_land_use_technology_c208); end
  def test_outputs_land_use_technology_f208; assert_in_epsilon(3.6911730000000005, worksheet.outputs_land_use_technology_f208, 0.001); end
  def test_outputs_land_use_technology_g208; assert_in_epsilon(4.071020000000001, worksheet.outputs_land_use_technology_g208, 0.001); end
  def test_outputs_land_use_technology_h208; assert_in_epsilon(4.4490490000000005, worksheet.outputs_land_use_technology_h208, 0.001); end
  def test_outputs_land_use_technology_i208; assert_in_epsilon(4.863602000000001, worksheet.outputs_land_use_technology_i208, 0.001); end
  def test_outputs_land_use_technology_j208; assert_in_epsilon(5.320817000000001, worksheet.outputs_land_use_technology_j208, 0.001); end
  def test_outputs_land_use_technology_k208; assert_in_epsilon(5.741822000000001, worksheet.outputs_land_use_technology_k208, 0.001); end
  def test_outputs_land_use_technology_l208; assert_in_epsilon(6.127700000000001, worksheet.outputs_land_use_technology_l208, 0.001); end
  def test_outputs_land_use_technology_m208; assert_in_epsilon(6.514095000000001, worksheet.outputs_land_use_technology_m208, 0.001); end
  def test_outputs_land_use_technology_n208; assert_in_epsilon(6.916183000000001, worksheet.outputs_land_use_technology_n208, 0.001); end
  def test_outputs_land_use_technology_ab208; assert_equal("UNDP", worksheet.outputs_land_use_technology_ab208); end
  def test_outputs_land_use_technology_ac208; assert_equal("http://esa.un.org/unpd/wpp/unpp/panel_population.htm", worksheet.outputs_land_use_technology_ac208); end
  def test_outputs_land_use_technology_ad208; assert_equal("Green", worksheet.outputs_land_use_technology_ad208); end
  def test_outputs_land_use_technology_ae208; assert_equal("2012 revision. Well known, widely used source. Reputable organisation.", worksheet.outputs_land_use_technology_ae208); end
  def test_outputs_land_use_technology_af208; assert_equal("TB", worksheet.outputs_land_use_technology_af208); end
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
