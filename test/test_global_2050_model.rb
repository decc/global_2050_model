# coding: utf-8
# Test for global_2050_model
require 'minitest/autorun'
require_relative '../lib/global_2050_model'

class TestGlobal2050Model < Minitest::Unit::TestCase
  def self.runnable_methods
    puts 'Overriding minitest to run tests in a defined order'
    methods = methods_matching(/^test_/)
  end
  def worksheet; @worksheet ||= init_spreadsheet; end
  def init_spreadsheet; Global2050ModelShim.new end
  def test_user_inputs_e7; assert_in_epsilon(2.0, worksheet.user_inputs_e7, 0.002); end
  def test_user_inputs_e8; assert_in_epsilon(2.0, worksheet.user_inputs_e8, 0.002); end
  def test_user_inputs_e9; assert_in_epsilon(2.0, worksheet.user_inputs_e9, 0.002); end
  def test_user_inputs_e10; assert_in_epsilon(2.0, worksheet.user_inputs_e10, 0.002); end
  def test_user_inputs_e11; assert_in_epsilon(1.9, worksheet.user_inputs_e11, 0.002); end
  def test_user_inputs_e12; assert_in_epsilon(2.0, worksheet.user_inputs_e12, 0.002); end
  def test_user_inputs_e13; assert_in_delta(1.0, worksheet.user_inputs_e13, 0.002); end
  def test_user_inputs_e14; assert_in_epsilon(2.0, worksheet.user_inputs_e14, 0.002); end
  def test_user_inputs_e15; assert_in_epsilon(2.0, worksheet.user_inputs_e15, 0.002); end
  def test_user_inputs_e16; assert_in_epsilon(2.0, worksheet.user_inputs_e16, 0.002); end
  def test_user_inputs_e17; assert_in_epsilon(1.6, worksheet.user_inputs_e17, 0.002); end
  def test_user_inputs_e18; assert_in_epsilon(1.5, worksheet.user_inputs_e18, 0.002); end
  def test_user_inputs_e19; assert_in_epsilon(1.6, worksheet.user_inputs_e19, 0.002); end
  def test_user_inputs_e20; assert_in_epsilon(1.4, worksheet.user_inputs_e20, 0.002); end
  def test_user_inputs_e21; assert_in_epsilon(1.1, worksheet.user_inputs_e21, 0.002); end
  def test_user_inputs_e22; assert_in_epsilon(1.6, worksheet.user_inputs_e22, 0.002); end
  def test_user_inputs_e23; assert_in_delta(1.0, worksheet.user_inputs_e23, 0.002); end
  def test_user_inputs_e24; assert_in_epsilon(1.9, worksheet.user_inputs_e24, 0.002); end
  def test_user_inputs_e25; assert_in_epsilon(1.6, worksheet.user_inputs_e25, 0.002); end
  def test_user_inputs_e26; assert_in_epsilon(1.5, worksheet.user_inputs_e26, 0.002); end
  def test_user_inputs_e27; assert_in_epsilon(1.7, worksheet.user_inputs_e27, 0.002); end
  def test_user_inputs_e28; assert_in_epsilon(2.3, worksheet.user_inputs_e28, 0.002); end
  def test_user_inputs_e29; assert_in_epsilon(1.5, worksheet.user_inputs_e29, 0.002); end
  def test_user_inputs_e30; assert_in_epsilon(1.9, worksheet.user_inputs_e30, 0.002); end
  def test_user_inputs_e31; assert_in_epsilon(1.6, worksheet.user_inputs_e31, 0.002); end
  def test_user_inputs_e32; assert_in_epsilon(1.9, worksheet.user_inputs_e32, 0.002); end
  def test_user_inputs_e33; assert_in_epsilon(1.4, worksheet.user_inputs_e33, 0.002); end
  def test_user_inputs_e34; assert_in_epsilon(1.4, worksheet.user_inputs_e34, 0.002); end
  def test_user_inputs_e35; assert_in_epsilon(1.4, worksheet.user_inputs_e35, 0.002); end
  def test_user_inputs_e36; assert_in_epsilon(1.5, worksheet.user_inputs_e36, 0.002); end
  def test_user_inputs_e37; assert_in_epsilon(1.8, worksheet.user_inputs_e37, 0.002); end
  def test_user_inputs_e38; assert_in_epsilon(1.8, worksheet.user_inputs_e38, 0.002); end
  def test_user_inputs_e39; assert_in_epsilon(2.0, worksheet.user_inputs_e39, 0.002); end
  def test_user_inputs_e40; assert_in_epsilon(2.0, worksheet.user_inputs_e40, 0.002); end
  def test_user_inputs_e41; assert_in_delta(1.0, worksheet.user_inputs_e41, 0.002); end
  def test_user_inputs_e42; assert_in_epsilon(2.9, worksheet.user_inputs_e42, 0.002); end
  def test_user_inputs_e43; assert_in_epsilon(4.0, worksheet.user_inputs_e43, 0.002); end
  def test_user_inputs_e44; assert_in_delta(1.0, worksheet.user_inputs_e44, 0.002); end
  def test_user_inputs_e45; assert_in_delta(1.0, worksheet.user_inputs_e45, 0.002); end
  def test_user_inputs_e46; assert_in_delta(1.0, worksheet.user_inputs_e46, 0.002); end
  def test_user_inputs_e47; assert_in_delta(1.0, worksheet.user_inputs_e47, 0.002); end
  def test_user_inputs_e48; assert_in_delta(1.0, worksheet.user_inputs_e48, 0.002); end
  def test_user_inputs_e49; assert_in_delta(1.0, worksheet.user_inputs_e49, 0.002); end
  def test_user_inputs_e50; assert_in_delta(1.0, worksheet.user_inputs_e50, 0.002); end
  def test_user_inputs_e51; assert_in_epsilon(2.0, worksheet.user_inputs_e51, 0.002); end
  def test_user_inputs_e52; assert_equal("B", worksheet.user_inputs_e52); end
  def test_user_inputs_e53; assert_equal("US", worksheet.user_inputs_e53); end
  def test_user_inputs_e54; assert_equal("US", worksheet.user_inputs_e54); end
  def test_user_inputs_e55; assert_equal("US", worksheet.user_inputs_e55); end
  def test_outputs_energy_k63; assert_in_epsilon(63.75351718, worksheet.outputs_energy_k63, 0.002); end
  def test_outputs_energy_l63; assert_in_epsilon(69.78995546, worksheet.outputs_energy_l63, 0.002); end
  def test_outputs_energy_m63; assert_in_epsilon(79.59210571, worksheet.outputs_energy_m63, 0.002); end
  def test_outputs_energy_n63; assert_in_epsilon(89.33971209, worksheet.outputs_energy_n63, 0.002); end
  def test_outputs_energy_o63; assert_in_epsilon(98.25619647, worksheet.outputs_energy_o63, 0.002); end
  def test_outputs_energy_p63; assert_in_epsilon(99.72109669, worksheet.outputs_energy_p63, 0.002); end
  def test_outputs_energy_r63; assert_in_epsilon(99.32030513582498, worksheet.outputs_energy_r63, 0.002); end
  def test_outputs_energy_s63; assert_in_epsilon(107.53129647861695, worksheet.outputs_energy_s63, 0.002); end
  def test_outputs_energy_t63; assert_in_epsilon(116.58731612432109, worksheet.outputs_energy_t63, 0.002); end
  def test_outputs_energy_u63; assert_in_epsilon(125.70496494320948, worksheet.outputs_energy_u63, 0.002); end
  def test_outputs_energy_v63; assert_in_epsilon(135.20106900512653, worksheet.outputs_energy_v63, 0.002); end
  def test_outputs_energy_w63; assert_in_epsilon(144.97337293578562, worksheet.outputs_energy_w63, 0.002); end
  def test_outputs_energy_x63; assert_in_epsilon(154.89979692606067, worksheet.outputs_energy_x63, 0.002); end
  def test_outputs_energy_y63; assert_in_epsilon(165.27783489401784, worksheet.outputs_energy_y63, 0.002); end
  def test_outputs_energy_z63; assert_in_epsilon(175.83746310941703, worksheet.outputs_energy_z63, 0.002); end
  def test_outputs_energy_k65; assert_in_epsilon(83.372944, worksheet.outputs_energy_k65, 0.002); end
  def test_outputs_energy_l65; assert_in_epsilon(93.688429, worksheet.outputs_energy_l65, 0.002); end
  def test_outputs_energy_m65; assert_in_epsilon(99.817678, worksheet.outputs_energy_m65, 0.002); end
  def test_outputs_energy_n65; assert_in_epsilon(108.462211, worksheet.outputs_energy_n65, 0.002); end
  def test_outputs_energy_o65; assert_in_epsilon(116.897329, worksheet.outputs_energy_o65, 0.002); end
  def test_outputs_energy_p65; assert_in_epsilon(116.729656, worksheet.outputs_energy_p65, 0.002); end
  def test_outputs_energy_r65; assert_in_epsilon(116.56586060242228, worksheet.outputs_energy_r65, 0.002); end
  def test_outputs_energy_s65; assert_in_epsilon(125.40367192676733, worksheet.outputs_energy_s65, 0.002); end
  def test_outputs_energy_t65; assert_in_epsilon(135.3378193264399, worksheet.outputs_energy_t65, 0.002); end
  def test_outputs_energy_u65; assert_in_epsilon(144.17682305763054, worksheet.outputs_energy_u65, 0.002); end
  def test_outputs_energy_v65; assert_in_epsilon(153.15349884699543, worksheet.outputs_energy_v65, 0.002); end
  def test_outputs_energy_w65; assert_in_epsilon(161.65164348086398, worksheet.outputs_energy_w65, 0.002); end
  def test_outputs_energy_x65; assert_in_epsilon(168.81317379184517, worksheet.outputs_energy_x65, 0.002); end
  def test_outputs_energy_y65; assert_in_epsilon(175.90587571918573, worksheet.outputs_energy_y65, 0.002); end
  def test_outputs_energy_z65; assert_in_epsilon(181.636842884334, worksheet.outputs_energy_z65, 0.002); end
  def test_outputs_energy_k67; assert_in_epsilon(96.13700115, worksheet.outputs_energy_k67, 0.002); end
  def test_outputs_energy_l67; assert_in_epsilon(97.93670919, worksheet.outputs_energy_l67, 0.002); end
  def test_outputs_energy_m67; assert_in_epsilon(105.12064196, worksheet.outputs_energy_m67, 0.002); end
  def test_outputs_energy_n67; assert_in_epsilon(120.32151098, worksheet.outputs_energy_n67, 0.002); end
  def test_outputs_energy_o67; assert_in_epsilon(137.98756298, worksheet.outputs_energy_o67, 0.002); end
  def test_outputs_energy_p67; assert_in_epsilon(143.27425753, worksheet.outputs_energy_p67, 0.002); end
  def test_outputs_energy_r67; assert_in_epsilon(143.34762076351507, worksheet.outputs_energy_r67, 0.002); end
  def test_outputs_energy_s67; assert_in_epsilon(150.99694574778547, worksheet.outputs_energy_s67, 0.002); end
  def test_outputs_energy_t67; assert_in_epsilon(164.4292100552949, worksheet.outputs_energy_t67, 0.002); end
  def test_outputs_energy_u67; assert_in_epsilon(177.81983669516535, worksheet.outputs_energy_u67, 0.002); end
  def test_outputs_energy_v67; assert_in_epsilon(191.8096791297926, worksheet.outputs_energy_v67, 0.002); end
  def test_outputs_energy_w67; assert_in_epsilon(205.8293351879082, worksheet.outputs_energy_w67, 0.002); end
  def test_outputs_energy_x67; assert_in_epsilon(219.78071904079104, worksheet.outputs_energy_x67, 0.002); end
  def test_outputs_energy_y67; assert_in_epsilon(234.86136244457006, worksheet.outputs_energy_y67, 0.002); end
  def test_outputs_energy_z67; assert_in_epsilon(248.7875217602337, worksheet.outputs_energy_z67, 0.002); end
  def test_outputs_energy_r69; assert_in_epsilon(3.9999999999999996, worksheet.outputs_energy_r69, 0.002); end
  def test_outputs_energy_s69; assert_in_epsilon(4.088955043780237, worksheet.outputs_energy_s69, 0.002); end
  def test_outputs_energy_t69; assert_in_epsilon(4.246972465792244, worksheet.outputs_energy_t69, 0.002); end
  def test_outputs_energy_u69; assert_in_epsilon(4.388818930974344, worksheet.outputs_energy_u69, 0.002); end
  def test_outputs_energy_v69; assert_in_epsilon(4.516559556192925, worksheet.outputs_energy_v69, 0.002); end
  def test_outputs_energy_w69; assert_in_epsilon(4.718341318072903, worksheet.outputs_energy_w69, 0.002); end
  def test_outputs_energy_x69; assert_in_epsilon(4.822216243466424, worksheet.outputs_energy_x69, 0.002); end
  def test_outputs_energy_y69; assert_in_epsilon(4.913068492116926, worksheet.outputs_energy_y69, 0.002); end
  def test_outputs_energy_z69; assert_in_epsilon(4.990372596096302, worksheet.outputs_energy_z69, 0.002); end
  def test_outputs_energy_k71; assert_in_delta(0.0, (worksheet.outputs_energy_k71||0), 0.002); end
  def test_outputs_energy_l71; assert_in_delta(0.0, (worksheet.outputs_energy_l71||0), 0.002); end
  def test_outputs_energy_m71; assert_in_delta(0.0, (worksheet.outputs_energy_m71||0), 0.002); end
  def test_outputs_energy_n71; assert_in_delta(0.0, (worksheet.outputs_energy_n71||0), 0.002); end
  def test_outputs_energy_o71; assert_in_delta(0.0, (worksheet.outputs_energy_o71||0), 0.002); end
  def test_outputs_energy_p71; assert_in_delta(0.0, (worksheet.outputs_energy_p71||0), 0.002); end
  def test_outputs_energy_r71; assert_in_delta(0.0, (worksheet.outputs_energy_r71||0), 0.002); end
  def test_outputs_energy_s71; assert_in_delta(0.0, (worksheet.outputs_energy_s71||0), 0.002); end
  def test_outputs_energy_t71; assert_in_delta(0.0, (worksheet.outputs_energy_t71||0), 0.002); end
  def test_outputs_energy_u71; assert_in_delta(0.0, (worksheet.outputs_energy_u71||0), 0.002); end
  def test_outputs_energy_v71; assert_in_delta(0.0, (worksheet.outputs_energy_v71||0), 0.002); end
  def test_outputs_energy_w71; assert_in_delta(0.0, (worksheet.outputs_energy_w71||0), 0.002); end
  def test_outputs_energy_x71; assert_in_delta(0.0, (worksheet.outputs_energy_x71||0), 0.002); end
  def test_outputs_energy_y71; assert_in_delta(0.0, (worksheet.outputs_energy_y71||0), 0.002); end
  def test_outputs_energy_z71; assert_in_delta(0.0, (worksheet.outputs_energy_z71||0), 0.002); end
  def test_outputs_energy_k111; assert_in_epsilon(22.00642022, worksheet.outputs_energy_k111, 0.002); end
  def test_outputs_energy_l111; assert_in_epsilon(25.464435710000004, worksheet.outputs_energy_l111, 0.002); end
  def test_outputs_energy_m111; assert_in_epsilon(28.28553115, worksheet.outputs_energy_m111, 0.002); end
  def test_outputs_energy_n111; assert_in_epsilon(30.221805240000002, worksheet.outputs_energy_n111, 0.002); end
  def test_outputs_energy_o111; assert_in_epsilon(30.10136047, worksheet.outputs_energy_o111, 0.002); end
  def test_outputs_energy_p111; assert_in_epsilon(28.219279020000002, worksheet.outputs_energy_p111, 0.002); end
  def test_outputs_energy_r111; assert_in_epsilon(29.05342456550469, worksheet.outputs_energy_r111, 0.002); end
  def test_outputs_energy_s111; assert_in_epsilon(30.810010146552408, worksheet.outputs_energy_s111, 0.002); end
  def test_outputs_energy_t111; assert_in_epsilon(31.225696864304222, worksheet.outputs_energy_t111, 0.002); end
  def test_outputs_energy_u111; assert_in_epsilon(32.18595686107117, worksheet.outputs_energy_u111, 0.002); end
  def test_outputs_energy_v111; assert_in_epsilon(32.43266849176103, worksheet.outputs_energy_v111, 0.002); end
  def test_outputs_energy_w111; assert_in_epsilon(33.479333152855254, worksheet.outputs_energy_w111, 0.002); end
  def test_outputs_energy_x111; assert_in_epsilon(33.89666579819007, worksheet.outputs_energy_x111, 0.002); end
  def test_outputs_energy_y111; assert_in_epsilon(34.72611971550832, worksheet.outputs_energy_y111, 0.002); end
  def test_outputs_energy_z111; assert_in_epsilon(35.59554910606688, worksheet.outputs_energy_z111, 0.002); end
  def test_outputs_energy_k113; assert_in_delta(0.09888171, worksheet.outputs_energy_k113, 0.002); end
  def test_outputs_energy_l113; assert_in_delta(0.13671401, worksheet.outputs_energy_l113, 0.002); end
  def test_outputs_energy_m113; assert_in_delta(0.33011757999999997, worksheet.outputs_energy_m113, 0.002); end
  def test_outputs_energy_n113; assert_in_delta(0.6894200899999999, worksheet.outputs_energy_n113, 0.002); end
  def test_outputs_energy_o113; assert_in_epsilon(1.98106908, worksheet.outputs_energy_o113, 0.002); end
  def test_outputs_energy_p113; assert_in_epsilon(2.55947734, worksheet.outputs_energy_p113, 0.002); end
  def test_outputs_energy_r113; assert_in_epsilon(1.8366279505199998, worksheet.outputs_energy_r113, 0.002); end
  def test_outputs_energy_s113; assert_in_epsilon(3.748686915267301, worksheet.outputs_energy_s113, 0.002); end
  def test_outputs_energy_t113; assert_in_epsilon(6.7667844136125535, worksheet.outputs_energy_t113, 0.002); end
  def test_outputs_energy_u113; assert_in_epsilon(7.382071983754465, worksheet.outputs_energy_u113, 0.002); end
  def test_outputs_energy_v113; assert_in_epsilon(8.550673499453772, worksheet.outputs_energy_v113, 0.002); end
  def test_outputs_energy_w113; assert_in_epsilon(9.647224979944593, worksheet.outputs_energy_w113, 0.002); end
  def test_outputs_energy_x113; assert_in_epsilon(11.014237712513701, worksheet.outputs_energy_x113, 0.002); end
  def test_outputs_energy_y113; assert_in_epsilon(14.944027052567696, worksheet.outputs_energy_y113, 0.002); end
  def test_outputs_energy_z113; assert_in_epsilon(18.618024489609404, worksheet.outputs_energy_z113, 0.002); end
  def test_outputs_energy_k115; assert_in_epsilon(1.42030705, worksheet.outputs_energy_k115, 0.002); end
  def test_outputs_energy_l115; assert_in_epsilon(1.64006674, worksheet.outputs_energy_l115, 0.002); end
  def test_outputs_energy_m115; assert_in_epsilon(2.1821505699999997, worksheet.outputs_energy_m115, 0.002); end
  def test_outputs_energy_n115; assert_in_epsilon(2.25915872, worksheet.outputs_energy_n115, 0.002); end
  def test_outputs_energy_o115; assert_in_epsilon(2.70416419, worksheet.outputs_energy_o115, 0.002); end
  def test_outputs_energy_p115; assert_in_epsilon(2.75792299, worksheet.outputs_energy_p115, 0.002); end
  def test_outputs_energy_r115; assert_in_epsilon(2.8856269439999997, worksheet.outputs_energy_r115, 0.002); end
  def test_outputs_energy_s115; assert_in_epsilon(3.627622179920172, worksheet.outputs_energy_s115, 0.002); end
  def test_outputs_energy_t115; assert_in_epsilon(4.4721296118808835, worksheet.outputs_energy_t115, 0.002); end
  def test_outputs_energy_u115; assert_in_epsilon(5.061551846083372, worksheet.outputs_energy_u115, 0.002); end
  def test_outputs_energy_v115; assert_in_epsilon(5.397928321023374, worksheet.outputs_energy_v115, 0.002); end
  def test_outputs_energy_w115; assert_in_epsilon(8.324611130012148, worksheet.outputs_energy_w115, 0.002); end
  def test_outputs_energy_x115; assert_in_epsilon(10.340892269938646, worksheet.outputs_energy_x115, 0.002); end
  def test_outputs_energy_y115; assert_in_epsilon(13.58612131137634, worksheet.outputs_energy_y115, 0.002); end
  def test_outputs_energy_z115; assert_in_epsilon(17.01204999020568, worksheet.outputs_energy_z115, 0.002); end
  def test_outputs_energy_k117; assert_in_epsilon(7.721542830000001, worksheet.outputs_energy_k117, 0.002); end
  def test_outputs_energy_l117; assert_in_epsilon(8.93036678, worksheet.outputs_energy_l117, 0.002); end
  def test_outputs_energy_m117; assert_in_epsilon(9.43535406, worksheet.outputs_energy_m117, 0.002); end
  def test_outputs_energy_n117; assert_in_epsilon(10.548209940000001, worksheet.outputs_energy_n117, 0.002); end
  def test_outputs_energy_o117; assert_in_epsilon(12.39218819, worksheet.outputs_energy_o117, 0.002); end
  def test_outputs_energy_p117; assert_in_epsilon(12.56761896, worksheet.outputs_energy_p117, 0.002); end
  def test_outputs_energy_r117; assert_in_epsilon(13.46878368, worksheet.outputs_energy_r117, 0.002); end
  def test_outputs_energy_s117; assert_in_epsilon(13.9769872704, worksheet.outputs_energy_s117, 0.002); end
  def test_outputs_energy_t117; assert_in_epsilon(15.035050483199997, worksheet.outputs_energy_t117, 0.002); end
  def test_outputs_energy_u117; assert_in_epsilon(16.17642576, worksheet.outputs_energy_u117, 0.002); end
  def test_outputs_energy_v117; assert_in_epsilon(17.4080557728, worksheet.outputs_energy_v117, 0.002); end
  def test_outputs_energy_w117; assert_in_epsilon(18.7216093152, worksheet.outputs_energy_w117, 0.002); end
  def test_outputs_energy_x117; assert_in_epsilon(20.121251990399998, worksheet.outputs_energy_x117, 0.002); end
  def test_outputs_energy_y117; assert_in_epsilon(21.5333914752, worksheet.outputs_energy_y117, 0.002); end
  def test_outputs_energy_z117; assert_in_epsilon(23.045505436800003, worksheet.outputs_energy_z117, 0.002); end
  def test_outputs_energy_k119; assert_in_epsilon(37.95396458, worksheet.outputs_energy_k119, 0.002); end
  def test_outputs_energy_l119; assert_in_epsilon(40.54645287, worksheet.outputs_energy_l119, 0.002); end
  def test_outputs_energy_m119; assert_in_epsilon(43.24484074, worksheet.outputs_energy_m119, 0.002); end
  def test_outputs_energy_n119; assert_in_epsilon(47.20029634, worksheet.outputs_energy_n119, 0.002); end
  def test_outputs_energy_o119; assert_in_epsilon(54.22172151, worksheet.outputs_energy_o119, 0.002); end
  def test_outputs_energy_p119; assert_in_epsilon(54.93713229, worksheet.outputs_energy_p119, 0.002); end
  def test_outputs_energy_r119; assert_in_epsilon(58.541450977240515, worksheet.outputs_energy_r119, 0.002); end
  def test_outputs_energy_s119; assert_in_epsilon(59.66487800270302, worksheet.outputs_energy_s119, 0.002); end
  def test_outputs_energy_t119; assert_in_epsilon(60.219889196496595, worksheet.outputs_energy_t119, 0.002); end
  def test_outputs_energy_u119; assert_in_epsilon(60.702243540297296, worksheet.outputs_energy_u119, 0.002); end
  def test_outputs_energy_v119; assert_in_epsilon(60.82972212000311, worksheet.outputs_energy_v119, 0.002); end
  def test_outputs_energy_w119; assert_in_epsilon(61.058858984371554, worksheet.outputs_energy_w119, 0.002); end
  def test_outputs_energy_x119; assert_in_epsilon(61.607592613055985, worksheet.outputs_energy_x119, 0.002); end
  def test_outputs_energy_y119; assert_in_epsilon(61.82821226321275, worksheet.outputs_energy_y119, 0.002); end
  def test_outputs_energy_z119; assert_in_epsilon(63.34419794260174, worksheet.outputs_energy_z119, 0.002); end
  def test_outputs_energy_k121; assert_in_delta(0.00596866, worksheet.outputs_energy_k121, 0.002); end
  def test_outputs_energy_l121; assert_in_delta(0.01832307, worksheet.outputs_energy_l121, 0.002); end
  def test_outputs_energy_m121; assert_in_delta(0.0302848, worksheet.outputs_energy_m121, 0.002); end
  def test_outputs_energy_n121; assert_in_delta(0.03805726, worksheet.outputs_energy_n121, 0.002); end
  def test_outputs_energy_o121; assert_in_delta(0.04253198, worksheet.outputs_energy_o121, 0.002); end
  def test_outputs_energy_p121; assert_in_delta(0.04491708, worksheet.outputs_energy_p121, 0.002); end
  def test_outputs_energy_r121; assert_in_epsilon(6.54163397005528, worksheet.outputs_energy_r121, 0.002); end
  def test_outputs_energy_s121; assert_in_epsilon(7.302853304231076, worksheet.outputs_energy_s121, 0.002); end
  def test_outputs_energy_t121; assert_in_epsilon(8.206703064226135, worksheet.outputs_energy_t121, 0.002); end
  def test_outputs_energy_u121; assert_in_epsilon(9.038255104076995, worksheet.outputs_energy_u121, 0.002); end
  def test_outputs_energy_v121; assert_in_epsilon(9.905850674076177, worksheet.outputs_energy_v121, 0.002); end
  def test_outputs_energy_w121; assert_in_epsilon(10.71698451690964, worksheet.outputs_energy_w121, 0.002); end
  def test_outputs_energy_x121; assert_in_epsilon(11.399401988519696, worksheet.outputs_energy_x121, 0.002); end
  def test_outputs_energy_y121; assert_in_epsilon(12.081119702892632, worksheet.outputs_energy_y121, 0.002); end
  def test_outputs_energy_z121; assert_in_epsilon(12.530001711455089, worksheet.outputs_energy_z121, 0.002); end
  def test_outputs_energy_k123; assert_in_epsilon(93.38481894, worksheet.outputs_energy_k123, 0.002); end
  def test_outputs_energy_l123; assert_in_epsilon(93.03324736, worksheet.outputs_energy_l123, 0.002); end
  def test_outputs_energy_m123; assert_in_epsilon(98.72034811, worksheet.outputs_energy_m123, 0.002); end
  def test_outputs_energy_n123; assert_in_epsilon(124.50467193, worksheet.outputs_energy_n123, 0.002); end
  def test_outputs_energy_o123; assert_in_epsilon(150.53606094, worksheet.outputs_energy_o123, 0.002); end
  def test_outputs_energy_p123; assert_in_epsilon(158.09611592, worksheet.outputs_energy_p123, 0.002); end
  def test_outputs_energy_r123; assert_in_epsilon(158.34669589060252, worksheet.outputs_energy_r123, 0.002); end
  def test_outputs_energy_s123; assert_in_epsilon(161.175379922885, worksheet.outputs_energy_s123, 0.002); end
  def test_outputs_energy_t123; assert_in_epsilon(183.4337688048633, worksheet.outputs_energy_t123, 0.002); end
  def test_outputs_energy_u123; assert_in_epsilon(205.19138890169555, worksheet.outputs_energy_u123, 0.002); end
  def test_outputs_energy_v123; assert_in_epsilon(212.28182391068987, worksheet.outputs_energy_v123, 0.002); end
  def test_outputs_energy_w123; assert_in_epsilon(227.9025256816237, worksheet.outputs_energy_w123, 0.002); end
  def test_outputs_energy_x123; assert_in_epsilon(238.77396882096153, worksheet.outputs_energy_x123, 0.002); end
  def test_outputs_energy_y123; assert_in_epsilon(240.71415490255873, worksheet.outputs_energy_y123, 0.002); end
  def test_outputs_energy_z123; assert_in_epsilon(243.25676216750372, worksheet.outputs_energy_z123, 0.002); end
  def test_outputs_energy_k125; assert_in_epsilon(137.87919456, worksheet.outputs_energy_k125, 0.002); end
  def test_outputs_energy_l125; assert_in_epsilon(143.51359745, worksheet.outputs_energy_l125, 0.002); end
  def test_outputs_energy_m125; assert_in_epsilon(156.74377747, worksheet.outputs_energy_m125, 0.002); end
  def test_outputs_energy_n125; assert_in_epsilon(171.78327319000002, worksheet.outputs_energy_n125, 0.002); end
  def test_outputs_energy_o125; assert_in_epsilon(175.91941010000002, worksheet.outputs_energy_o125, 0.002); end
  def test_outputs_energy_p125; assert_in_epsilon(176.66494085000002, worksheet.outputs_energy_p125, 0.002); end
  def test_outputs_energy_r125; assert_in_epsilon(177.64941956700363, worksheet.outputs_energy_r125, 0.002); end
  def test_outputs_energy_s125; assert_in_epsilon(196.19585485612083, worksheet.outputs_energy_s125, 0.002); end
  def test_outputs_energy_t125; assert_in_epsilon(212.99665988936422, worksheet.outputs_energy_t125, 0.002); end
  def test_outputs_energy_u125; assert_in_epsilon(229.62671727104066, worksheet.outputs_energy_u125, 0.002); end
  def test_outputs_energy_v125; assert_in_epsilon(248.5364885086704, worksheet.outputs_energy_v125, 0.002); end
  def test_outputs_energy_w125; assert_in_epsilon(261.4492507637802, worksheet.outputs_energy_w125, 0.002); end
  def test_outputs_energy_x125; assert_in_epsilon(281.10470830420553, worksheet.outputs_energy_x125, 0.002); end
  def test_outputs_energy_y125; assert_in_epsilon(303.3731363445879, worksheet.outputs_energy_y125, 0.002); end
  def test_outputs_energy_z125; assert_in_epsilon(321.99832942344557, worksheet.outputs_energy_z125, 0.002); end
  def test_outputs_energy_k127; assert_in_epsilon(69.82757047999999, worksheet.outputs_energy_k127, 0.002); end
  def test_outputs_energy_l127; assert_in_epsilon(75.88166314, worksheet.outputs_energy_l127, 0.002); end
  def test_outputs_energy_m127; assert_in_epsilon(86.75456712, worksheet.outputs_energy_m127, 0.002); end
  def test_outputs_energy_n127; assert_in_epsilon(99.02950624, worksheet.outputs_energy_n127, 0.002); end
  def test_outputs_energy_o127; assert_in_epsilon(114.72290836, worksheet.outputs_energy_o127, 0.002); end
  def test_outputs_energy_p127; assert_in_epsilon(116.68415746000001, worksheet.outputs_energy_p127, 0.002); end
  def test_outputs_energy_r127; assert_in_epsilon(128.52627164080675, worksheet.outputs_energy_r127, 0.002); end
  def test_outputs_energy_s127; assert_in_epsilon(136.66648581875486, worksheet.outputs_energy_s127, 0.002); end
  def test_outputs_energy_t127; assert_in_epsilon(145.85045541269608, worksheet.outputs_energy_t127, 0.002); end
  def test_outputs_energy_u127; assert_in_epsilon(156.91723090380052, worksheet.outputs_energy_u127, 0.002); end
  def test_outputs_energy_v127; assert_in_epsilon(155.98186775220057, worksheet.outputs_energy_v127, 0.002); end
  def test_outputs_energy_w127; assert_in_epsilon(168.59674957285873, worksheet.outputs_energy_w127, 0.002); end
  def test_outputs_energy_x127; assert_in_epsilon(179.1058678503074, worksheet.outputs_energy_x127, 0.002); end
  def test_outputs_energy_y127; assert_in_epsilon(193.77011121550692, worksheet.outputs_energy_y127, 0.002); end
  def test_outputs_energy_z127; assert_in_epsilon(205.95998307978695, worksheet.outputs_energy_z127, 0.002); end
  def test_outputs_energy_r137; assert_in_epsilon(4.366532977240504, worksheet.outputs_energy_r137, 0.002); end
  def test_outputs_energy_r139; assert_in_epsilon(19.52229479302264, worksheet.outputs_energy_r139, 0.002); end
  def test_outputs_energy_r141; assert_in_epsilon(11.875, worksheet.outputs_energy_r141, 0.002); end
  def test_outputs_energy_r143; assert_in_epsilon(21.277705206977366, worksheet.outputs_energy_r143, 0.002); end
  def test_outputs_energy_z137; assert_in_epsilon(7.081953615610837, worksheet.outputs_energy_z137, 0.002); end
  def test_outputs_energy_z139; assert_in_epsilon(14.061398361436364, worksheet.outputs_energy_z139, 0.002); end
  def test_outputs_energy_z141; assert_in_epsilon(22.48333333333333, worksheet.outputs_energy_z141, 0.002); end
  def test_outputs_energy_z143; assert_in_epsilon(18.2175946322212, worksheet.outputs_energy_z143, 0.002); end
  def test_outputs_energy_d152; assert_equal("Losses", worksheet.outputs_energy_d152); end
  def test_outputs_energy_r152; assert_in_epsilon(3.0299799465860757, worksheet.outputs_energy_r152, 0.002); end
  def test_outputs_energy_s152; assert_in_epsilon(3.179116910967051, worksheet.outputs_energy_s152, 0.002); end
  def test_outputs_energy_t152; assert_in_epsilon(3.326177508164988, worksheet.outputs_energy_t152, 0.002); end
  def test_outputs_energy_u152; assert_in_epsilon(3.4273194669499363, worksheet.outputs_energy_u152, 0.002); end
  def test_outputs_energy_v152; assert_in_epsilon(3.3815650110153, worksheet.outputs_energy_v152, 0.002); end
  def test_outputs_energy_w152; assert_in_epsilon(3.390761768977642, worksheet.outputs_energy_w152, 0.002); end
  def test_outputs_energy_x152; assert_in_epsilon(3.359868187867117, worksheet.outputs_energy_x152, 0.002); end
  def test_outputs_energy_y152; assert_in_epsilon(3.2902373505104414, worksheet.outputs_energy_y152, 0.002); end
  def test_outputs_energy_z152; assert_in_epsilon(3.1831512105939614, worksheet.outputs_energy_z152, 0.002); end
  def test_outputs_energy_d153; assert_equal("Oversupply", worksheet.outputs_energy_d153); end
  def test_outputs_energy_r153; assert_in_delta(0.0, (worksheet.outputs_energy_r153||0), 0.002); end
  def test_outputs_energy_s153; assert_in_delta(0.0, (worksheet.outputs_energy_s153||0), 0.002); end
  def test_outputs_energy_t153; assert_in_delta(0.0, (worksheet.outputs_energy_t153||0), 0.002); end
  def test_outputs_energy_u153; assert_in_delta(0.0, (worksheet.outputs_energy_u153||0), 0.002); end
  def test_outputs_energy_v153; assert_in_delta(0.0, (worksheet.outputs_energy_v153||0), 0.002); end
  def test_outputs_energy_w153; assert_in_delta(0.0, (worksheet.outputs_energy_w153||0), 0.002); end
  def test_outputs_energy_x153; assert_in_delta(0.0, (worksheet.outputs_energy_x153||0), 0.002); end
  def test_outputs_energy_y153; assert_in_delta(0.0, (worksheet.outputs_energy_y153||0), 0.002); end
  def test_outputs_energy_z153; assert_in_delta(0.0, (worksheet.outputs_energy_z153||0), 0.002); end
  def test_outputs_energy_d154; assert_equal("Transport", worksheet.outputs_energy_d154); end
  def test_outputs_energy_r154; assert_in_delta(0.6921751371292655, worksheet.outputs_energy_r154, 0.002); end
  def test_outputs_energy_s154; assert_in_delta(0.8025243264426388, worksheet.outputs_energy_s154, 0.002); end
  def test_outputs_energy_t154; assert_in_delta(0.9455726992913466, worksheet.outputs_energy_t154, 0.002); end
  def test_outputs_energy_u154; assert_in_epsilon(1.1043080116191915, worksheet.outputs_energy_u154, 0.002); end
  def test_outputs_energy_v154; assert_in_epsilon(1.2827432860959211, worksheet.outputs_energy_v154, 0.002); end
  def test_outputs_energy_w154; assert_in_epsilon(1.4861503840622479, worksheet.outputs_energy_w154, 0.002); end
  def test_outputs_energy_x154; assert_in_epsilon(1.7214170076876676, worksheet.outputs_energy_x154, 0.002); end
  def test_outputs_energy_y154; assert_in_epsilon(1.9974757724013559, worksheet.outputs_energy_y154, 0.002); end
  def test_outputs_energy_z154; assert_in_epsilon(2.3257997846469514, worksheet.outputs_energy_z154, 0.002); end
  def test_outputs_energy_d155; assert_equal("Electricity (unabated thermal)", worksheet.outputs_energy_d155); end
  def test_outputs_energy_r155; assert_in_epsilon(6.4010893849016455, worksheet.outputs_energy_r155, 0.002); end
  def test_outputs_energy_s155; assert_in_epsilon(6.566764662430414, worksheet.outputs_energy_s155, 0.002); end
  def test_outputs_energy_t155; assert_in_epsilon(6.665694787595619, worksheet.outputs_energy_t155, 0.002); end
  def test_outputs_energy_u155; assert_in_epsilon(6.776277625834387, worksheet.outputs_energy_u155, 0.002); end
  def test_outputs_energy_v155; assert_in_epsilon(6.873585695200326, worksheet.outputs_energy_v155, 0.002); end
  def test_outputs_energy_w155; assert_in_epsilon(6.973201978719176, worksheet.outputs_energy_w155, 0.002); end
  def test_outputs_energy_x155; assert_in_epsilon(7.104683714722116, worksheet.outputs_energy_x155, 0.002); end
  def test_outputs_energy_y155; assert_in_epsilon(7.22616691943155, worksheet.outputs_energy_y155, 0.002); end
  def test_outputs_energy_z155; assert_in_epsilon(7.287091122757847, worksheet.outputs_energy_z155, 0.002); end
  def test_outputs_energy_d156; assert_equal("Electricity (carbon capture and storage)", worksheet.outputs_energy_d156); end
  def test_outputs_energy_r156; assert_in_delta(0.0, (worksheet.outputs_energy_r156||0), 0.002); end
  def test_outputs_energy_s156; assert_in_delta(0.016034562913824768, worksheet.outputs_energy_s156, 0.002); end
  def test_outputs_energy_t156; assert_in_delta(0.04261134718457279, worksheet.outputs_energy_t156, 0.002); end
  def test_outputs_energy_u156; assert_in_delta(0.05859081413542601, worksheet.outputs_energy_u156, 0.002); end
  def test_outputs_energy_v156; assert_in_delta(0.13336734917819992, worksheet.outputs_energy_v156, 0.002); end
  def test_outputs_energy_w156; assert_in_delta(0.1667798893134948, worksheet.outputs_energy_w156, 0.002); end
  def test_outputs_energy_x156; assert_in_delta(0.21404363038994142, worksheet.outputs_energy_x156, 0.002); end
  def test_outputs_energy_y156; assert_in_delta(0.28440398115296744, worksheet.outputs_energy_y156, 0.002); end
  def test_outputs_energy_z156; assert_in_delta(0.42621159446598356, worksheet.outputs_energy_z156, 0.002); end
  def test_outputs_energy_d157; assert_equal("Buildings", worksheet.outputs_energy_d157); end
  def test_outputs_energy_r157; assert_in_epsilon(39.31576472993791, worksheet.outputs_energy_r157, 0.002); end
  def test_outputs_energy_s157; assert_in_epsilon(39.78934067159, worksheet.outputs_energy_s157, 0.002); end
  def test_outputs_energy_t157; assert_in_epsilon(39.792787971121435, worksheet.outputs_energy_t157, 0.002); end
  def test_outputs_energy_u157; assert_in_epsilon(39.75119461967098, worksheet.outputs_energy_u157, 0.002); end
  def test_outputs_energy_v157; assert_in_epsilon(39.38629138257703, worksheet.outputs_energy_v157, 0.002); end
  def test_outputs_energy_w157; assert_in_epsilon(39.124263956524445, worksheet.outputs_energy_w157, 0.002); end
  def test_outputs_energy_x157; assert_in_epsilon(39.08830044182791, worksheet.outputs_energy_x157, 0.002); end
  def test_outputs_energy_y157; assert_in_epsilon(38.69267560090009, worksheet.outputs_energy_y157, 0.002); end
  def test_outputs_energy_z157; assert_in_epsilon(39.552902316724705, worksheet.outputs_energy_z157, 0.002); end
  def test_outputs_energy_d158; assert_equal("Manufacturing", worksheet.outputs_energy_d158); end
  def test_outputs_energy_r158; assert_in_epsilon(7.602523778685607, worksheet.outputs_energy_r158, 0.002); end
  def test_outputs_energy_s158; assert_in_epsilon(7.811178868359095, worksheet.outputs_energy_s158, 0.002); end
  def test_outputs_energy_t158; assert_in_epsilon(7.947126883138632, worksheet.outputs_energy_t158, 0.002); end
  def test_outputs_energy_u158; assert_in_epsilon(8.08463500208737, worksheet.outputs_energy_u158, 0.002); end
  def test_outputs_energy_v158; assert_in_epsilon(8.272251395936332, worksheet.outputs_energy_v158, 0.002); end
  def test_outputs_energy_w158; assert_in_epsilon(8.417783006774545, worksheet.outputs_energy_w158, 0.002); end
  def test_outputs_energy_x158; assert_in_epsilon(8.619361630561224, worksheet.outputs_energy_x158, 0.002); end
  def test_outputs_energy_y158; assert_in_epsilon(8.837334638816339, worksheet.outputs_energy_y158, 0.002); end
  def test_outputs_energy_z158; assert_in_epsilon(9.069123913412284, worksheet.outputs_energy_z158, 0.002); end
  def test_outputs_energy_r36; assert_in_epsilon(28.299719742453536, worksheet.outputs_energy_r36, 0.002); end
  def test_outputs_energy_s36; assert_in_epsilon(29.5122744254749, worksheet.outputs_energy_s36, 0.002); end
  def test_outputs_energy_t36; assert_in_epsilon(30.567661238426318, worksheet.outputs_energy_t36, 0.002); end
  def test_outputs_energy_u36; assert_in_epsilon(31.108377438342224, worksheet.outputs_energy_u36, 0.002); end
  def test_outputs_energy_v36; assert_in_epsilon(31.641880283645634, worksheet.outputs_energy_v36, 0.002); end
  def test_outputs_energy_w36; assert_in_epsilon(32.14695710597459, worksheet.outputs_energy_w36, 0.002); end
  def test_outputs_energy_x36; assert_in_epsilon(32.15210954773748, worksheet.outputs_energy_x36, 0.002); end
  def test_outputs_energy_y36; assert_in_epsilon(32.16219065182935, worksheet.outputs_energy_y36, 0.002); end
  def test_outputs_energy_z36; assert_in_epsilon(32.22229263532495, worksheet.outputs_energy_z36, 0.002); end
  def test_outputs_energy_r37; assert_in_epsilon(3.4731110913582324, worksheet.outputs_energy_r37, 0.002); end
  def test_outputs_energy_s37; assert_in_epsilon(4.260067197422366, worksheet.outputs_energy_s37, 0.002); end
  def test_outputs_energy_t37; assert_in_epsilon(5.277364801299276, worksheet.outputs_energy_t37, 0.002); end
  def test_outputs_energy_u37; assert_in_epsilon(6.280011751297649, worksheet.outputs_energy_u37, 0.002); end
  def test_outputs_energy_v37; assert_in_epsilon(7.4136817177254, worksheet.outputs_energy_v37, 0.002); end
  def test_outputs_energy_w37; assert_in_epsilon(8.554445803726152, worksheet.outputs_energy_w37, 0.002); end
  def test_outputs_energy_x37; assert_in_epsilon(9.596548085623148, worksheet.outputs_energy_x37, 0.002); end
  def test_outputs_energy_y37; assert_in_epsilon(10.73030963748168, worksheet.outputs_energy_y37, 0.002); end
  def test_outputs_energy_z37; assert_in_epsilon(11.594785426321133, worksheet.outputs_energy_z37, 0.002); end
  def test_outputs_energy_r38; assert_in_epsilon(16.129037934483243, worksheet.outputs_energy_r38, 0.002); end
  def test_outputs_energy_s38; assert_in_epsilon(17.43585478661929, worksheet.outputs_energy_s38, 0.002); end
  def test_outputs_energy_t38; assert_in_epsilon(18.94159224721264, worksheet.outputs_energy_t38, 0.002); end
  def test_outputs_energy_u38; assert_in_epsilon(20.30771210963359, worksheet.outputs_energy_u38, 0.002); end
  def test_outputs_energy_v38; assert_in_epsilon(21.77587339102164, worksheet.outputs_energy_v38, 0.002); end
  def test_outputs_energy_w38; assert_in_epsilon(23.131142638701913, worksheet.outputs_energy_w38, 0.002); end
  def test_outputs_energy_x38; assert_in_epsilon(24.314523805379338, worksheet.outputs_energy_x38, 0.002); end
  def test_outputs_energy_y38; assert_in_epsilon(25.58164049694888, worksheet.outputs_energy_y38, 0.002); end
  def test_outputs_energy_z38; assert_in_epsilon(26.445070214387567, worksheet.outputs_energy_z38, 0.002); end
  def test_outputs_energy_r39; assert_in_epsilon(12.860587736407986, worksheet.outputs_energy_r39, 0.002); end
  def test_outputs_energy_s39; assert_in_epsilon(14.220735830241354, worksheet.outputs_energy_s39, 0.002); end
  def test_outputs_energy_t39; assert_in_epsilon(15.794098070189783, worksheet.outputs_energy_t39, 0.002); end
  def test_outputs_energy_u39; assert_in_epsilon(17.18693997802466, worksheet.outputs_energy_u39, 0.002); end
  def test_outputs_energy_v39; assert_in_epsilon(18.684389522161958, worksheet.outputs_energy_v39, 0.002); end
  def test_outputs_energy_w39; assert_in_epsilon(20.03841799108141, worksheet.outputs_energy_w39, 0.002); end
  def test_outputs_energy_x39; assert_in_epsilon(21.150969327320006, worksheet.outputs_energy_x39, 0.002); end
  def test_outputs_energy_y39; assert_in_epsilon(22.294156965763015, worksheet.outputs_energy_y39, 0.002); end
  def test_outputs_energy_z39; assert_in_epsilon(22.97537101917237, worksheet.outputs_energy_z39, 0.002); end
  def test_outputs_energy_r40; assert_in_epsilon(23.537035712293797, worksheet.outputs_energy_r40, 0.002); end
  def test_outputs_energy_s40; assert_in_epsilon(24.651848892602132, worksheet.outputs_energy_s40, 0.002); end
  def test_outputs_energy_t40; assert_in_epsilon(25.82626976869377, worksheet.outputs_energy_t40, 0.002); end
  def test_outputs_energy_u40; assert_in_epsilon(26.894177407937356, worksheet.outputs_energy_u40, 0.002); end
  def test_outputs_energy_v40; assert_in_epsilon(27.832751743668886, worksheet.outputs_energy_v40, 0.002); end
  def test_outputs_energy_w40; assert_in_epsilon(28.72842373196282, worksheet.outputs_energy_w40, 0.002); end
  def test_outputs_energy_x40; assert_in_epsilon(29.54889241995311, worksheet.outputs_energy_x40, 0.002); end
  def test_outputs_energy_y40; assert_in_epsilon(30.22935376112141, worksheet.outputs_energy_y40, 0.002); end
  def test_outputs_energy_z40; assert_in_epsilon(31.051745267284367, worksheet.outputs_energy_z40, 0.002); end
  def test_outputs_energy_r41; assert_in_epsilon(2.6962968694353324, worksheet.outputs_energy_r41, 0.002); end
  def test_outputs_energy_s41; assert_in_epsilon(3.19714456336838, worksheet.outputs_energy_s41, 0.002); end
  def test_outputs_energy_t41; assert_in_epsilon(3.8511042175954877, worksheet.outputs_energy_t41, 0.002); end
  def test_outputs_energy_u41; assert_in_epsilon(4.509871643341354, worksheet.outputs_energy_u41, 0.002); end
  def test_outputs_energy_v41; assert_in_epsilon(5.281577833925847, worksheet.outputs_energy_v41, 0.002); end
  def test_outputs_energy_w41; assert_in_epsilon(6.091886328161163, worksheet.outputs_energy_w41, 0.002); end
  def test_outputs_energy_x41; assert_in_epsilon(6.878158668656365, worksheet.outputs_energy_x41, 0.002); end
  def test_outputs_energy_y41; assert_in_epsilon(7.786561298332794, worksheet.outputs_energy_y41, 0.002); end
  def test_outputs_energy_z41; assert_in_epsilon(8.57021454804518, worksheet.outputs_energy_z41, 0.002); end
  def test_outputs_energy_h65; assert_in_epsilon(64.751263, worksheet.outputs_energy_h65, 0.002); end
  def test_outputs_energy_i65; assert_in_epsilon(71.065102, worksheet.outputs_energy_i65, 0.002); end
  def test_outputs_energy_j65; assert_in_epsilon(78.65053599999999, worksheet.outputs_energy_j65, 0.002); end
  def test_outputs_energy_d195; assert_in_epsilon(860.0113799999999, worksheet.outputs_energy_d195, 0.002); end
  def test_outputs_energy_d196; assert_in_epsilon(1038.0, worksheet.outputs_energy_d196, 0.002); end
  def test_outputs_energy_d197; assert_in_epsilon(861.0, worksheet.outputs_energy_d197, 0.002); end
  def test_outputs_energy_d219; assert_in_epsilon(14500.0, worksheet.outputs_energy_d219, 0.002); end
  def test_outputs_energy_d220; assert_in_epsilon(10800.0, worksheet.outputs_energy_d220, 0.002); end
  def test_outputs_energy_d221; assert_in_epsilon(12650.0, worksheet.outputs_energy_d221, 0.002); end
  def test_outputs_energy_h195; assert_in_epsilon(257.5532433340855, worksheet.outputs_energy_h195, 0.002); end
  def test_outputs_energy_h209; assert_in_epsilon(132.40127360237136, worksheet.outputs_energy_h209, 0.002); end
  def test_outputs_energy_h202; assert_in_epsilon(208386159213321.16, worksheet.outputs_energy_h202, 0.002); end
  def test_outputs_energy_r61; assert_in_epsilon(229.27941559618466, worksheet.outputs_energy_r61, 0.002); end
  def test_outputs_energy_z61; assert_in_epsilon(344.076065617617, worksheet.outputs_energy_z61, 0.002); end
  def test_outputs_energy_h291; assert_in_epsilon(8.6961132, worksheet.outputs_energy_h291, 0.002); end
  def test_outputs_energy_i291; assert_in_epsilon(11.4665868, worksheet.outputs_energy_i291, 0.002); end
  def test_outputs_energy_j291; assert_in_epsilon(13.906404, worksheet.outputs_energy_j291, 0.002); end
  def test_outputs_energy_k291; assert_in_epsilon(16.4052396, worksheet.outputs_energy_k291, 0.002); end
  def test_outputs_energy_l291; assert_in_epsilon(18.456966, worksheet.outputs_energy_l291, 0.002); end
  def test_outputs_energy_m291; assert_in_epsilon(22.2185448, worksheet.outputs_energy_m291, 0.002); end
  def test_outputs_energy_n291; assert_in_epsilon(27.2447424, worksheet.outputs_energy_n291, 0.002); end
  def test_outputs_energy_o291; assert_in_epsilon(32.5517508, worksheet.outputs_energy_o291, 0.002); end
  def test_outputs_energy_p291; assert_in_epsilon(34.4380896, worksheet.outputs_energy_p291, 0.002); end
  def test_outputs_energy_r291; assert_in_epsilon(31.104696512976723, worksheet.outputs_energy_r291, 0.002); end
  def test_outputs_energy_s291; assert_in_epsilon(31.733093681922774, worksheet.outputs_energy_s291, 0.002); end
  def test_outputs_energy_t291; assert_in_epsilon(36.200805974287654, worksheet.outputs_energy_t291, 0.002); end
  def test_outputs_energy_u291; assert_in_epsilon(40.61396811399277, worksheet.outputs_energy_u291, 0.002); end
  def test_outputs_energy_v291; assert_in_epsilon(43.99407536988648, worksheet.outputs_energy_v291, 0.002); end
  def test_outputs_energy_w291; assert_in_epsilon(46.94891832176251, worksheet.outputs_energy_w291, 0.002); end
  def test_outputs_energy_x291; assert_in_epsilon(48.359980273850674, worksheet.outputs_energy_x291, 0.002); end
  def test_outputs_energy_y291; assert_in_epsilon(46.83125225328145, worksheet.outputs_energy_y291, 0.002); end
  def test_outputs_energy_z291; assert_in_epsilon(45.47048655053695, worksheet.outputs_energy_z291, 0.002); end
  def test_outputs_energy_h292; assert_in_epsilon(5.200236, worksheet.outputs_energy_h292, 0.002); end
  def test_outputs_energy_i292; assert_in_epsilon(5.9519628, worksheet.outputs_energy_i292, 0.002); end
  def test_outputs_energy_j292; assert_in_epsilon(4.2661512, worksheet.outputs_energy_j292, 0.002); end
  def test_outputs_energy_k292; assert_in_epsilon(4.7950164, worksheet.outputs_energy_k292, 0.002); end
  def test_outputs_energy_l292; assert_in_epsilon(4.4350452, worksheet.outputs_energy_l292, 0.002); end
  def test_outputs_energy_m292; assert_in_epsilon(4.320846, worksheet.outputs_energy_m292, 0.002); end
  def test_outputs_energy_n292; assert_in_epsilon(4.1088132, worksheet.outputs_energy_n292, 0.002); end
  def test_outputs_energy_o292; assert_in_epsilon(3.4785432, worksheet.outputs_energy_o292, 0.002); end
  def test_outputs_energy_p292; assert_in_epsilon(3.808314, worksheet.outputs_energy_p292, 0.002); end
  def test_outputs_energy_r292; assert_in_epsilon(4.55039680286042, worksheet.outputs_energy_r292, 0.002); end
  def test_outputs_energy_s292; assert_in_epsilon(7.316164610116382, worksheet.outputs_energy_s292, 0.002); end
  def test_outputs_energy_t292; assert_in_epsilon(8.558771482104058, worksheet.outputs_energy_t292, 0.002); end
  def test_outputs_energy_u292; assert_in_epsilon(9.926853159874472, worksheet.outputs_energy_u292, 0.002); end
  def test_outputs_energy_v292; assert_in_epsilon(11.877662167889987, worksheet.outputs_energy_v292, 0.002); end
  def test_outputs_energy_w292; assert_in_epsilon(14.16271123440121, worksheet.outputs_energy_w292, 0.002); end
  def test_outputs_energy_x292; assert_in_epsilon(16.77317311454366, worksheet.outputs_energy_x292, 0.002); end
  def test_outputs_energy_y292; assert_in_epsilon(19.928481143045797, worksheet.outputs_energy_y292, 0.002); end
  def test_outputs_energy_z292; assert_in_epsilon(22.034989379343454, worksheet.outputs_energy_z292, 0.002); end
  def test_outputs_energy_h293; assert_in_epsilon(2.9048472, worksheet.outputs_energy_h293, 0.002); end
  def test_outputs_energy_i293; assert_in_epsilon(3.597156, worksheet.outputs_energy_i293, 0.002); end
  def test_outputs_energy_j293; assert_in_epsilon(4.4971236, worksheet.outputs_energy_j293, 0.002); end
  def test_outputs_energy_k293; assert_in_epsilon(6.229368, worksheet.outputs_energy_k293, 0.002); end
  def test_outputs_energy_l293; assert_in_epsilon(7.2358848, worksheet.outputs_energy_l293, 0.002); end
  def test_outputs_energy_m293; assert_in_epsilon(9.8646876, worksheet.outputs_energy_m293, 0.002); end
  def test_outputs_energy_n293; assert_in_epsilon(13.20507, worksheet.outputs_energy_n293, 0.002); end
  def test_outputs_energy_o293; assert_in_epsilon(17.210952, worksheet.outputs_energy_o293, 0.002); end
  def test_outputs_energy_p293; assert_in_epsilon(17.4675924, worksheet.outputs_energy_p293, 0.002); end
  def test_outputs_energy_r293; assert_in_epsilon(15.931547990060064, worksheet.outputs_energy_r293, 0.002); end
  def test_outputs_energy_s293; assert_in_epsilon(17.039456740862846, worksheet.outputs_energy_s293, 0.002); end
  def test_outputs_energy_t293; assert_in_epsilon(18.10134592928288, worksheet.outputs_energy_t293, 0.002); end
  def test_outputs_energy_u293; assert_in_epsilon(20.126662960275482, worksheet.outputs_energy_u293, 0.002); end
  def test_outputs_energy_v293; assert_in_epsilon(22.427012981920743, worksheet.outputs_energy_v293, 0.002); end
  def test_outputs_energy_w293; assert_in_epsilon(25.015363521298678, worksheet.outputs_energy_w293, 0.002); end
  def test_outputs_energy_x293; assert_in_epsilon(27.039438036889845, worksheet.outputs_energy_x293, 0.002); end
  def test_outputs_energy_y293; assert_in_epsilon(30.153433776988656, worksheet.outputs_energy_y293, 0.002); end
  def test_outputs_energy_z293; assert_in_epsilon(32.52779382842564, worksheet.outputs_energy_z293, 0.002); end
  def test_outputs_energy_h294; assert_in_delta(0.0, (worksheet.outputs_energy_h294||0), 0.002); end
  def test_outputs_energy_i294; assert_in_delta(0.0, (worksheet.outputs_energy_i294||0), 0.002); end
  def test_outputs_energy_j294; assert_in_delta(0.0, (worksheet.outputs_energy_j294||0), 0.002); end
  def test_outputs_energy_k294; assert_in_delta(0.0, (worksheet.outputs_energy_k294||0), 0.002); end
  def test_outputs_energy_l294; assert_in_delta(0.0, (worksheet.outputs_energy_l294||0), 0.002); end
  def test_outputs_energy_m294; assert_in_delta(0.0, (worksheet.outputs_energy_m294||0), 0.002); end
  def test_outputs_energy_n294; assert_in_delta(0.0, (worksheet.outputs_energy_n294||0), 0.002); end
  def test_outputs_energy_o294; assert_in_delta(0.0, (worksheet.outputs_energy_o294||0), 0.002); end
  def test_outputs_energy_p294; assert_in_delta(0.0, (worksheet.outputs_energy_p294||0), 0.002); end
  def test_outputs_energy_r294; assert_in_delta(0.0, (worksheet.outputs_energy_r294||0), 0.002); end
  def test_outputs_energy_s294; assert_in_delta(0.14259049453545145, worksheet.outputs_energy_s294, 0.002); end
  def test_outputs_energy_t294; assert_in_delta(0.4184264626519785, worksheet.outputs_energy_t294, 0.002); end
  def test_outputs_energy_u294; assert_in_delta(0.6366345710628043, worksheet.outputs_energy_u294, 0.002); end
  def test_outputs_energy_v294; assert_in_epsilon(1.586526277903607, worksheet.outputs_energy_v294, 0.002); end
  def test_outputs_energy_w294; assert_in_epsilon(2.144975306953006, worksheet.outputs_energy_w294, 0.002); end
  def test_outputs_energy_x294; assert_in_epsilon(2.9035957053089514, worksheet.outputs_energy_x294, 0.002); end
  def test_outputs_energy_y294; assert_in_epsilon(3.971751280739509, worksheet.outputs_energy_y294, 0.002); end
  def test_outputs_energy_z294; assert_in_epsilon(6.092198847940936, worksheet.outputs_energy_z294, 0.002); end
  def test_outputs_energy_h295; assert_in_epsilon(1.3810068, worksheet.outputs_energy_h295, 0.002); end
  def test_outputs_energy_i295; assert_in_epsilon(2.56815, worksheet.outputs_energy_i295, 0.002); end
  def test_outputs_energy_j295; assert_in_epsilon(5.3715528, worksheet.outputs_energy_j295, 0.002); end
  def test_outputs_energy_k295; assert_in_epsilon(7.2464472, worksheet.outputs_energy_k295, 0.002); end
  def test_outputs_energy_l295; assert_in_epsilon(8.3950236, worksheet.outputs_energy_l295, 0.002); end
  def test_outputs_energy_m295; assert_in_epsilon(9.3262428, worksheet.outputs_energy_m295, 0.002); end
  def test_outputs_energy_n295; assert_in_epsilon(9.9646272, worksheet.outputs_energy_n295, 0.002); end
  def test_outputs_energy_o295; assert_in_epsilon(9.9226368, worksheet.outputs_energy_o295, 0.002); end
  def test_outputs_energy_p295; assert_in_epsilon(9.3012444, worksheet.outputs_energy_p295, 0.002); end
  def test_outputs_energy_r295; assert_in_epsilon(9.584724764159999, worksheet.outputs_energy_r295, 0.002); end
  def test_outputs_energy_s295; assert_in_epsilon(10.295679623040002, worksheet.outputs_energy_s295, 0.002); end
  def test_outputs_energy_t295; assert_in_epsilon(10.601126895744, worksheet.outputs_energy_t295, 0.002); end
  def test_outputs_energy_u295; assert_in_epsilon(11.098795296960002, worksheet.outputs_energy_u295, 0.002); end
  def test_outputs_energy_v295; assert_in_epsilon(11.356845579071999, worksheet.outputs_energy_v295, 0.002); end
  def test_outputs_energy_w295; assert_in_epsilon(11.90191097088, worksheet.outputs_energy_w295, 0.002); end
  def test_outputs_energy_x295; assert_in_epsilon(12.231056738879998, worksheet.outputs_energy_x295, 0.002); end
  def test_outputs_energy_y295; assert_in_epsilon(12.715559309376, worksheet.outputs_energy_y295, 0.002); end
  def test_outputs_energy_z295; assert_in_epsilon(13.223760375168, worksheet.outputs_energy_z295, 0.002); end
  def test_outputs_energy_h296; assert_in_delta(0.0018612, worksheet.outputs_energy_h296, 0.002); end
  def test_outputs_energy_i296; assert_in_delta(0.0018216, worksheet.outputs_energy_i296, 0.002); end
  def test_outputs_energy_j296; assert_in_delta(0.0025236, worksheet.outputs_energy_j296, 0.002); end
  def test_outputs_energy_k296; assert_in_delta(0.0188136, worksheet.outputs_energy_k296, 0.002); end
  def test_outputs_energy_l296; assert_in_delta(0.0368568, worksheet.outputs_energy_l296, 0.002); end
  def test_outputs_energy_m296; assert_in_delta(0.1244772, worksheet.outputs_energy_m296, 0.002); end
  def test_outputs_energy_n296; assert_in_delta(0.4177584, worksheet.outputs_energy_n296, 0.002); end
  def test_outputs_energy_o296; assert_in_epsilon(1.370574, worksheet.outputs_energy_o296, 0.002); end
  def test_outputs_energy_p296; assert_in_epsilon(1.8177696, worksheet.outputs_energy_p296, 0.002); end
  def test_outputs_energy_r296; assert_in_epsilon(1.7956731985199998, worksheet.outputs_energy_r296, 0.002); end
  def test_outputs_energy_s296; assert_in_epsilon(3.4832647727999997, worksheet.outputs_energy_s296, 0.002); end
  def test_outputs_energy_t296; assert_in_epsilon(5.129246073599999, worksheet.outputs_energy_t296, 0.002); end
  def test_outputs_energy_u296; assert_in_epsilon(5.446526184, worksheet.outputs_energy_u296, 0.002); end
  def test_outputs_energy_v296; assert_in_epsilon(6.1375745088, worksheet.outputs_energy_v296, 0.002); end
  def test_outputs_energy_w296; assert_in_epsilon(6.8908544208, worksheet.outputs_energy_w296, 0.002); end
  def test_outputs_energy_x296; assert_in_epsilon(8.3380859568, worksheet.outputs_energy_x296, 0.002); end
  def test_outputs_energy_y296; assert_in_epsilon(11.8282302864, worksheet.outputs_energy_y296, 0.002); end
  def test_outputs_energy_z296; assert_in_epsilon(14.7573436032, worksheet.outputs_energy_z296, 0.002); end
  def test_outputs_energy_h297; assert_in_epsilon(5.1973488, worksheet.outputs_energy_h297, 0.002); end
  def test_outputs_energy_i297; assert_in_epsilon(6.180696, worksheet.outputs_energy_i297, 0.002); end
  def test_outputs_energy_j297; assert_in_epsilon(7.103448, worksheet.outputs_energy_j297, 0.002); end
  def test_outputs_energy_k297; assert_in_epsilon(7.7201532, worksheet.outputs_energy_k297, 0.002); end
  def test_outputs_energy_l297; assert_in_epsilon(8.9287596, worksheet.outputs_energy_l297, 0.002); end
  def test_outputs_energy_m297; assert_in_epsilon(9.433656, worksheet.outputs_energy_m297, 0.002); end
  def test_outputs_energy_n297; assert_in_epsilon(10.5463116, worksheet.outputs_energy_n297, 0.002); end
  def test_outputs_energy_o297; assert_in_epsilon(12.389958, worksheet.outputs_energy_o297, 0.002); end
  def test_outputs_energy_p297; assert_in_epsilon(12.5653572, worksheet.outputs_energy_p297, 0.002); end
  def test_outputs_energy_r297; assert_in_epsilon(13.46878368, worksheet.outputs_energy_r297, 0.002); end
  def test_outputs_energy_s297; assert_in_epsilon(13.9769872704, worksheet.outputs_energy_s297, 0.002); end
  def test_outputs_energy_t297; assert_in_epsilon(15.035050483199997, worksheet.outputs_energy_t297, 0.002); end
  def test_outputs_energy_u297; assert_in_epsilon(16.17642576, worksheet.outputs_energy_u297, 0.002); end
  def test_outputs_energy_v297; assert_in_epsilon(17.4080557728, worksheet.outputs_energy_v297, 0.002); end
  def test_outputs_energy_w297; assert_in_epsilon(18.7216093152, worksheet.outputs_energy_w297, 0.002); end
  def test_outputs_energy_x297; assert_in_epsilon(20.121251990399998, worksheet.outputs_energy_x297, 0.002); end
  def test_outputs_energy_y297; assert_in_epsilon(21.5333914752, worksheet.outputs_energy_y297, 0.002); end
  def test_outputs_energy_z297; assert_in_epsilon(23.045505436800003, worksheet.outputs_energy_z297, 0.002); end
  def test_outputs_energy_h298; assert_in_delta(0.0288324, worksheet.outputs_energy_h298, 0.002); end
  def test_outputs_energy_i298; assert_in_delta(0.0491184, worksheet.outputs_energy_i298, 0.002); end
  def test_outputs_energy_j298; assert_in_delta(0.0825156, worksheet.outputs_energy_j298, 0.002); end
  def test_outputs_energy_k298; assert_in_delta(0.1309248, worksheet.outputs_energy_k298, 0.002); end
  def test_outputs_energy_l298; assert_in_delta(0.143226, worksheet.outputs_energy_l298, 0.002); end
  def test_outputs_energy_m298; assert_in_delta(0.1867716, worksheet.outputs_energy_m298, 0.002); end
  def test_outputs_energy_n298; assert_in_delta(0.2097468, worksheet.outputs_energy_n298, 0.002); end
  def test_outputs_energy_o298; assert_in_delta(0.2452896, worksheet.outputs_energy_o298, 0.002); end
  def test_outputs_energy_p298; assert_in_delta(0.2491632, worksheet.outputs_energy_p298, 0.002); end
  def test_outputs_energy_r298; assert_in_delta(0.2885626944, worksheet.outputs_energy_r298, 0.002); end
  def test_outputs_energy_s298; assert_in_delta(0.36354355200000005, worksheet.outputs_energy_s298, 0.002); end
  def test_outputs_energy_t298; assert_in_delta(0.44938022399999994, worksheet.outputs_energy_t298, 0.002); end
  def test_outputs_energy_u298; assert_in_delta(0.509970816, worksheet.outputs_energy_u298, 0.002); end
  def test_outputs_energy_v298; assert_in_delta(0.5453153279999999, worksheet.outputs_energy_v298, 0.002); end
  def test_outputs_energy_w298; assert_in_delta(0.8432190719999999, worksheet.outputs_energy_w298, 0.002); end
  def test_outputs_energy_x298; assert_in_epsilon(1.0502369279999997, worksheet.outputs_energy_x298, 0.002); end
  def test_outputs_energy_y298; assert_in_epsilon(1.383485184, worksheet.outputs_energy_y298, 0.002); end
  def test_outputs_energy_z298; assert_in_epsilon(1.7369303039999997, worksheet.outputs_energy_z298, 0.002); end
  def test_outputs_energy_d209; assert_in_epsilon(193.84296233361653, worksheet.outputs_energy_d209, 0.002); end
  def test_outputs_energy_d210; assert_in_epsilon(187.29999999999998, worksheet.outputs_energy_d210, 0.002); end
  def test_outputs_energy_d211; assert_in_epsilon(191.07196261682242, worksheet.outputs_energy_d211, 0.002); end
  def test_outputs_energy_d233; assert_in_epsilon(511.0, worksheet.outputs_energy_d233, 0.002); end
  def test_outputs_energy_d234; assert_in_epsilon(188.0, worksheet.outputs_energy_d234, 0.002); end
  def test_outputs_energy_d235; assert_in_epsilon(199.857, worksheet.outputs_energy_d235, 0.002); end
  def test_outputs_energy_c310; assert_equal("Iron and steel", worksheet.outputs_energy_c310); end
  def test_outputs_energy_e310; assert_equal("Steel.Oxygen", worksheet.outputs_energy_e310); end
  def test_outputs_energy_f310; assert_equal("Steel.OxygenHisarna", worksheet.outputs_energy_f310); end
  def test_outputs_energy_g310; assert_equal("Steel.Electric", worksheet.outputs_energy_g310); end
  def test_outputs_energy_h310; assert_equal("Steel.ElectricDRI", worksheet.outputs_energy_h310); end
  def test_outputs_energy_i310; assert_equal("G.M.02", worksheet.outputs_energy_i310); end
  def test_outputs_energy_r310; assert_in_epsilon(24.770538157680395, worksheet.outputs_energy_r310, 0.002); end
  def test_outputs_energy_s310; assert_in_epsilon(25.709935223940107, worksheet.outputs_energy_s310, 0.002); end
  def test_outputs_energy_t310; assert_in_epsilon(27.634525049147815, worksheet.outputs_energy_t310, 0.002); end
  def test_outputs_energy_u310; assert_in_epsilon(29.725419890722556, worksheet.outputs_energy_u310, 0.002); end
  def test_outputs_energy_v310; assert_in_epsilon(32.097321464445756, worksheet.outputs_energy_v310, 0.002); end
  def test_outputs_energy_w310; assert_in_epsilon(34.610835086458934, worksheet.outputs_energy_w310, 0.002); end
  def test_outputs_energy_x310; assert_in_epsilon(37.286575685887485, worksheet.outputs_energy_x310, 0.002); end
  def test_outputs_energy_y310; assert_in_epsilon(40.80840551860058, worksheet.outputs_energy_y310, 0.002); end
  def test_outputs_energy_z310; assert_in_epsilon(43.9562434957004, worksheet.outputs_energy_z310, 0.002); end
  def test_outputs_energy_c311; assert_equal("Aluminium", worksheet.outputs_energy_c311); end
  def test_outputs_energy_e311; assert_equal("Aluminium.Alumina", worksheet.outputs_energy_e311); end
  def test_outputs_energy_f311; assert_equal("Aluminium.Primary", worksheet.outputs_energy_f311); end
  def test_outputs_energy_g311; assert_equal("Aluminium.Secondary", worksheet.outputs_energy_g311); end
  def test_outputs_energy_i311; assert_equal("G.M.02", worksheet.outputs_energy_i311); end
  def test_outputs_energy_r311; assert_in_epsilon(4.391030188713757, worksheet.outputs_energy_r311, 0.002); end
  def test_outputs_energy_s311; assert_in_epsilon(4.938658721258036, worksheet.outputs_energy_s311, 0.002); end
  def test_outputs_energy_t311; assert_in_epsilon(5.876625782098147, worksheet.outputs_energy_t311, 0.002); end
  def test_outputs_energy_u311; assert_in_epsilon(6.924239458379739, worksheet.outputs_energy_u311, 0.002); end
  def test_outputs_energy_v311; assert_in_epsilon(8.123049484450496, worksheet.outputs_energy_v311, 0.002); end
  def test_outputs_energy_w311; assert_in_epsilon(9.457163523075511, worksheet.outputs_energy_w311, 0.002); end
  def test_outputs_energy_x311; assert_in_epsilon(10.896097157289857, worksheet.outputs_energy_x311, 0.002); end
  def test_outputs_energy_y311; assert_in_epsilon(12.566270806955313, worksheet.outputs_energy_y311, 0.002); end
  def test_outputs_energy_z311; assert_in_epsilon(14.381753433897606, worksheet.outputs_energy_z311, 0.002); end
  def test_outputs_energy_c312; assert_equal("Chemicals", worksheet.outputs_energy_c312); end
  def test_outputs_energy_e312; assert_equal("Chemicals & petrochemicals.HVC", worksheet.outputs_energy_e312); end
  def test_outputs_energy_f312; assert_equal("Chemicals & petrochemicals.Ammonia", worksheet.outputs_energy_f312); end
  def test_outputs_energy_g312; assert_equal("Chemicals & petrochemicals.Methanol", worksheet.outputs_energy_g312); end
  def test_outputs_energy_h312; assert_equal("Chemicals & petrochemicals.Others", worksheet.outputs_energy_h312); end
  def test_outputs_energy_i312; assert_equal("G.M.02", worksheet.outputs_energy_i312); end
  def test_outputs_energy_r312; assert_in_epsilon(39.808905846555035, worksheet.outputs_energy_r312, 0.002); end
  def test_outputs_energy_s312; assert_in_epsilon(39.54350096540216, worksheet.outputs_energy_s312, 0.002); end
  def test_outputs_energy_t312; assert_in_epsilon(42.69257747479291, worksheet.outputs_energy_t312, 0.002); end
  def test_outputs_energy_u312; assert_in_epsilon(45.75224282264909, worksheet.outputs_energy_u312, 0.002); end
  def test_outputs_energy_v312; assert_in_epsilon(49.0582440376587, worksheet.outputs_energy_v312, 0.002); end
  def test_outputs_energy_w312; assert_in_epsilon(52.388470984137804, worksheet.outputs_energy_w312, 0.002); end
  def test_outputs_energy_x312; assert_in_epsilon(55.721951357847594, worksheet.outputs_energy_x312, 0.002); end
  def test_outputs_energy_y312; assert_in_epsilon(59.47691936887593, worksheet.outputs_energy_y312, 0.002); end
  def test_outputs_energy_z312; assert_in_epsilon(62.77773255163057, worksheet.outputs_energy_z312, 0.002); end
  def test_outputs_energy_c313; assert_equal("Pulp and paper", worksheet.outputs_energy_c313); end
  def test_outputs_energy_e313; assert_equal("Pulp & paper.Pulp", worksheet.outputs_energy_e313); end
  def test_outputs_energy_f313; assert_equal("Pulp & paper.Virgin", worksheet.outputs_energy_f313); end
  def test_outputs_energy_g313; assert_equal("Pulp & paper.Recycled", worksheet.outputs_energy_g313); end
  def test_outputs_energy_i313; assert_equal("G.M.02", worksheet.outputs_energy_i313); end
  def test_outputs_energy_r313; assert_in_epsilon(6.611365904969887, worksheet.outputs_energy_r313, 0.002); end
  def test_outputs_energy_s313; assert_in_epsilon(6.825186917127566, worksheet.outputs_energy_s313, 0.002); end
  def test_outputs_energy_t313; assert_in_epsilon(7.023448785112732, worksheet.outputs_energy_t313, 0.002); end
  def test_outputs_energy_u313; assert_in_epsilon(7.181495507698736, worksheet.outputs_energy_u313, 0.002); end
  def test_outputs_energy_v313; assert_in_epsilon(7.323572703663424, worksheet.outputs_energy_v313, 0.002); end
  def test_outputs_energy_w313; assert_in_epsilon(7.431272007618462, worksheet.outputs_energy_w313, 0.002); end
  def test_outputs_energy_x313; assert_in_epsilon(7.505573747495125, worksheet.outputs_energy_x313, 0.002); end
  def test_outputs_energy_y313; assert_in_epsilon(7.5459204004341, worksheet.outputs_energy_y313, 0.002); end
  def test_outputs_energy_z313; assert_in_epsilon(7.552330488329976, worksheet.outputs_energy_z313, 0.002); end
  def test_outputs_energy_c314; assert_equal("Cement", worksheet.outputs_energy_c314); end
  def test_outputs_energy_e314; assert_equal("Cement", worksheet.outputs_energy_e314); end
  def test_outputs_energy_i314; assert_equal("G.M.02", worksheet.outputs_energy_i314); end
  def test_outputs_energy_r314; assert_in_epsilon(10.600379598268718, worksheet.outputs_energy_r314, 0.002); end
  def test_outputs_energy_s314; assert_in_epsilon(11.389155696471546, worksheet.outputs_energy_s314, 0.002); end
  def test_outputs_energy_t314; assert_in_epsilon(12.199686509308425, worksheet.outputs_energy_t314, 0.002); end
  def test_outputs_energy_u314; assert_in_epsilon(12.990390846124669, worksheet.outputs_energy_u314, 0.002); end
  def test_outputs_energy_v314; assert_in_epsilon(13.94394768724988, worksheet.outputs_energy_v314, 0.002); end
  def test_outputs_energy_w314; assert_in_epsilon(14.920710335132135, worksheet.outputs_energy_w314, 0.002); end
  def test_outputs_energy_x314; assert_in_epsilon(15.903818467957574, worksheet.outputs_energy_x314, 0.002); end
  def test_outputs_energy_y314; assert_in_epsilon(16.92946457794772, worksheet.outputs_energy_y314, 0.002); end
  def test_outputs_energy_z314; assert_in_epsilon(17.95848544794053, worksheet.outputs_energy_z314, 0.002); end
  def test_outputs_energy_c315; assert_equal("Other", worksheet.outputs_energy_c315); end
  def test_outputs_energy_e315; assert_equal("Other industries", worksheet.outputs_energy_e315); end
  def test_outputs_energy_i315; assert_equal("G.M.02", worksheet.outputs_energy_i315); end
  def test_outputs_energy_r315; assert_in_epsilon(51.02275313229368, worksheet.outputs_energy_r315, 0.002); end
  def test_outputs_energy_s315; assert_in_epsilon(56.110965387811646, worksheet.outputs_energy_s315, 0.002); end
  def test_outputs_energy_t315; assert_in_epsilon(62.155309549468534, worksheet.outputs_energy_t315, 0.002); end
  def test_outputs_energy_u315; assert_in_epsilon(68.05975941728032, worksheet.outputs_energy_u315, 0.002); end
  def test_outputs_energy_v315; assert_in_epsilon(73.76692661114765, worksheet.outputs_energy_v315, 0.002); end
  def test_outputs_energy_w315; assert_in_epsilon(79.24196363821972, worksheet.outputs_energy_w315, 0.002); end
  def test_outputs_energy_x315; assert_in_epsilon(84.43463459997974, worksheet.outputs_energy_x315, 0.002); end
  def test_outputs_energy_y315; assert_in_epsilon(89.279722867493, worksheet.outputs_energy_y315, 0.002); end
  def test_outputs_energy_z315; assert_in_epsilon(93.71872330324479, worksheet.outputs_energy_z315, 0.002); end
  def test_outputs_energy_d202; assert_in_epsilon(242607775716314.97, worksheet.outputs_energy_d202, 0.002); end
  def test_outputs_energy_d203; assert_in_epsilon(265349795354999.97, worksheet.outputs_energy_d203, 0.002); end
  def test_outputs_energy_d204; assert_in_epsilon(234824234714999.97, worksheet.outputs_energy_d204, 0.002); end
  def test_outputs_energy_d226; assert_in_epsilon(636000000000000.0, worksheet.outputs_energy_d226, 0.002); end
  def test_outputs_energy_d227; assert_in_epsilon(477000000000000.0, worksheet.outputs_energy_d227, 0.002); end
  def test_outputs_energy_d228; assert_in_epsilon(365700000000000.0, worksheet.outputs_energy_d228, 0.002); end
  def test_outputs_energy_n195; assert_in_epsilon(602.4581366659145, worksheet.outputs_energy_n195, 0.002); end
  def test_outputs_energy_n196; assert_in_epsilon(780.4467566659146, worksheet.outputs_energy_n196, 0.002); end
  def test_outputs_energy_n197; assert_in_epsilon(603.4467566659146, worksheet.outputs_energy_n197, 0.002); end
  def test_outputs_energy_n209; assert_in_epsilon(61.441688731245165, worksheet.outputs_energy_n209, 0.002); end
  def test_outputs_energy_n210; assert_in_epsilon(54.89872639762862, worksheet.outputs_energy_n210, 0.002); end
  def test_outputs_energy_n211; assert_in_epsilon(58.67068901445106, worksheet.outputs_energy_n211, 0.002); end
  def test_outputs_energy_n202; assert_in_epsilon(34221616502993.812, worksheet.outputs_energy_n202, 0.002); end
  def test_outputs_energy_n203; assert_in_epsilon(56963636141678.81, worksheet.outputs_energy_n203, 0.002); end
  def test_outputs_energy_n204; assert_in_epsilon(26438075501678.812, worksheet.outputs_energy_n204, 0.002); end
  def test_outputs_energy_r326; assert_in_epsilon(75.68118835830707, worksheet.outputs_energy_r326, 0.002); end
  def test_outputs_energy_s326; assert_in_epsilon(82.44068948736907, worksheet.outputs_energy_s326, 0.002); end
  def test_outputs_energy_t326; assert_in_epsilon(90.09899417218182, worksheet.outputs_energy_t326, 0.002); end
  def test_outputs_energy_u326; assert_in_epsilon(97.73924249423433, worksheet.outputs_energy_u326, 0.002); end
  def test_outputs_energy_v326; assert_in_epsilon(105.6742045682544, worksheet.outputs_energy_v326, 0.002); end
  def test_outputs_energy_w326; assert_in_epsilon(113.76894787076891, worksheet.outputs_energy_w326, 0.002); end
  def test_outputs_energy_x326; assert_in_epsilon(121.87114609643788, worksheet.outputs_energy_x326, 0.002); end
  def test_outputs_energy_y326; assert_in_epsilon(130.27250575172718, worksheet.outputs_energy_y326, 0.002); end
  def test_outputs_energy_z326; assert_in_epsilon(138.6653400530313, worksheet.outputs_energy_z326, 0.002); end
  def test_outputs_energy_r327; assert_in_epsilon(2.409494397695259, worksheet.outputs_energy_r327, 0.002); end
  def test_outputs_energy_s327; assert_in_epsilon(2.545762531205396, worksheet.outputs_energy_s327, 0.002); end
  def test_outputs_energy_t327; assert_in_epsilon(2.6957543878450583, worksheet.outputs_energy_t327, 0.002); end
  def test_outputs_energy_u327; assert_in_epsilon(2.858357239351716, worksheet.outputs_energy_u327, 0.002); end
  def test_outputs_energy_v327; assert_in_epsilon(3.019465319811892, worksheet.outputs_energy_v327, 0.002); end
  def test_outputs_energy_w327; assert_in_epsilon(3.1884026713441855, worksheet.outputs_energy_w327, 0.002); end
  def test_outputs_energy_x327; assert_in_epsilon(3.374315785494903, worksheet.outputs_energy_x327, 0.002); end
  def test_outputs_energy_y327; assert_in_epsilon(3.563959234702792, worksheet.outputs_energy_y327, 0.002); end
  def test_outputs_energy_z327; assert_in_epsilon(3.773877005317411, worksheet.outputs_energy_z327, 0.002); end
  def test_outputs_energy_r328; assert_in_epsilon(5.712727394281483, worksheet.outputs_energy_r328, 0.002); end
  def test_outputs_energy_s328; assert_in_epsilon(6.107338320521154, worksheet.outputs_energy_s328, 0.002); end
  def test_outputs_energy_t328; assert_in_epsilon(6.453005399635296, worksheet.outputs_energy_t328, 0.002); end
  def test_outputs_energy_u328; assert_in_epsilon(6.8082890144491355, worksheet.outputs_energy_u328, 0.002); end
  def test_outputs_energy_v328; assert_in_epsilon(7.178289692329263, worksheet.outputs_energy_v328, 0.002); end
  def test_outputs_energy_w328; assert_in_epsilon(7.5693435614375115, worksheet.outputs_energy_w328, 0.002); end
  def test_outputs_energy_x328; assert_in_epsilon(7.985820201837774, worksheet.outputs_energy_x328, 0.002); end
  def test_outputs_energy_y328; assert_in_epsilon(8.430198113700738, worksheet.outputs_energy_y328, 0.002); end
  def test_outputs_energy_z328; assert_in_epsilon(8.904583360499009, worksheet.outputs_energy_z328, 0.002); end
  def test_outputs_energy_r329; assert_in_epsilon(15.516894985541164, worksheet.outputs_energy_r329, 0.002); end
  def test_outputs_energy_s329; assert_in_epsilon(16.437506139521343, worksheet.outputs_energy_s329, 0.002); end
  def test_outputs_energy_t329; assert_in_epsilon(17.339562164658926, worksheet.outputs_energy_t329, 0.002); end
  def test_outputs_energy_u329; assert_in_epsilon(18.29907619517429, worksheet.outputs_energy_u329, 0.002); end
  def test_outputs_energy_v329; assert_in_epsilon(19.329109424730976, worksheet.outputs_energy_v329, 0.002); end
  def test_outputs_energy_w329; assert_in_epsilon(20.446678832235037, worksheet.outputs_energy_w329, 0.002); end
  def test_outputs_energy_x329; assert_in_epsilon(21.6685148422901, worksheet.outputs_energy_x329, 0.002); end
  def test_outputs_energy_y329; assert_in_epsilon(23.011171793887133, worksheet.outputs_energy_y329, 0.002); end
  def test_outputs_energy_z329; assert_in_epsilon(24.493662690569337, worksheet.outputs_energy_z329, 0.002); end
  def test_outputs_emissions_h61; assert_in_epsilon(4.5968100000000005, worksheet.outputs_emissions_h61, 0.002); end
  def test_outputs_emissions_i61; assert_in_epsilon(5.02333, worksheet.outputs_emissions_i61, 0.002); end
  def test_outputs_emissions_j61; assert_in_epsilon(5.72027, worksheet.outputs_emissions_j61, 0.002); end
  def test_outputs_emissions_k61; assert_in_epsilon(6.39796, worksheet.outputs_emissions_k61, 0.002); end
  def test_outputs_emissions_l61; assert_in_epsilon(6.90623, worksheet.outputs_emissions_l61, 0.002); end
  def test_outputs_emissions_p61; assert_in_epsilon(6.4181456354880675, worksheet.outputs_emissions_p61, 0.002); end
  def test_outputs_emissions_q61; assert_in_epsilon(6.9213960628804285, worksheet.outputs_emissions_q61, 0.002); end
  def test_outputs_emissions_r61; assert_in_epsilon(7.4661729850361365, worksheet.outputs_emissions_r61, 0.002); end
  def test_outputs_emissions_s61; assert_in_epsilon(8.007826895423634, worksheet.outputs_emissions_s61, 0.002); end
  def test_outputs_emissions_t61; assert_in_epsilon(8.566601036610463, worksheet.outputs_emissions_t61, 0.002); end
  def test_outputs_emissions_u61; assert_in_epsilon(9.135079435166878, worksheet.outputs_emissions_u61, 0.002); end
  def test_outputs_emissions_v61; assert_in_epsilon(9.704682693302923, worksheet.outputs_emissions_v61, 0.002); end
  def test_outputs_emissions_w61; assert_in_epsilon(10.293725293760602, worksheet.outputs_emissions_w61, 0.002); end
  def test_outputs_emissions_x61; assert_in_epsilon(10.883956816410143, worksheet.outputs_emissions_x61, 0.002); end
  def test_outputs_emissions_h62; assert_in_epsilon(3.5572380711154223, worksheet.outputs_emissions_h62, 0.002); end
  def test_outputs_emissions_i62; assert_in_epsilon(3.40461542005277, worksheet.outputs_emissions_i62, 0.002); end
  def test_outputs_emissions_j62; assert_in_epsilon(3.354907742912074, worksheet.outputs_emissions_j62, 0.002); end
  def test_outputs_emissions_k62; assert_in_epsilon(3.571160504318861, worksheet.outputs_emissions_k62, 0.002); end
  def test_outputs_emissions_l62; assert_in_epsilon(3.657419802739237, worksheet.outputs_emissions_l62, 0.002); end
  def test_outputs_emissions_p62; assert_in_epsilon(1.6251435520044208, worksheet.outputs_emissions_p62, 0.002); end
  def test_outputs_emissions_q62; assert_in_epsilon(1.7577321215993675, worksheet.outputs_emissions_q62, 0.002); end
  def test_outputs_emissions_r62; assert_in_epsilon(1.9063040042748316, worksheet.outputs_emissions_r62, 0.002); end
  def test_outputs_emissions_s62; assert_in_epsilon(2.0115119651961337, worksheet.outputs_emissions_s62, 0.002); end
  def test_outputs_emissions_t62; assert_in_epsilon(2.098015654346084, worksheet.outputs_emissions_t62, 0.002); end
  def test_outputs_emissions_u62; assert_in_epsilon(2.155993562325637, worksheet.outputs_emissions_u62, 0.002); end
  def test_outputs_emissions_v62; assert_in_epsilon(2.1595844980152425, worksheet.outputs_emissions_v62, 0.002); end
  def test_outputs_emissions_w62; assert_in_epsilon(2.1460624949559777, worksheet.outputs_emissions_w62, 0.002); end
  def test_outputs_emissions_x62; assert_in_epsilon(2.0745053991548223, worksheet.outputs_emissions_x62, 0.002); end
  def test_outputs_emissions_h63; assert_in_epsilon(5.4239727545553, worksheet.outputs_emissions_h63, 0.002); end
  def test_outputs_emissions_i63; assert_in_epsilon(5.531303861360651, worksheet.outputs_emissions_i63, 0.002); end
  def test_outputs_emissions_j63; assert_in_epsilon(5.66031394402772, worksheet.outputs_emissions_j63, 0.002); end
  def test_outputs_emissions_k63; assert_in_epsilon(6.821436971551759, worksheet.outputs_emissions_k63, 0.002); end
  def test_outputs_emissions_l63; assert_in_epsilon(8.125303565793601, worksheet.outputs_emissions_l63, 0.002); end
  def test_outputs_emissions_p63; assert_in_epsilon(10.368335094468485, worksheet.outputs_emissions_p63, 0.002); end
  def test_outputs_emissions_q63; assert_in_epsilon(11.014976059192705, worksheet.outputs_emissions_q63, 0.002); end
  def test_outputs_emissions_r63; assert_in_epsilon(12.011418124240173, worksheet.outputs_emissions_r63, 0.002); end
  def test_outputs_emissions_s63; assert_in_epsilon(13.026242263666328, worksheet.outputs_emissions_s63, 0.002); end
  def test_outputs_emissions_t63; assert_in_epsilon(13.876469176180514, worksheet.outputs_emissions_t63, 0.002); end
  def test_outputs_emissions_u63; assert_in_epsilon(14.730308406105795, worksheet.outputs_emissions_u63, 0.002); end
  def test_outputs_emissions_v63; assert_in_epsilon(15.565640861902688, worksheet.outputs_emissions_v63, 0.002); end
  def test_outputs_emissions_w63; assert_in_epsilon(16.50861809550133, worksheet.outputs_emissions_w63, 0.002); end
  def test_outputs_emissions_x63; assert_in_epsilon(16.727319972478888, worksheet.outputs_emissions_x63, 0.002); end
  def test_outputs_emissions_h64; assert_in_epsilon(10.48075881029452, worksheet.outputs_emissions_h64, 0.002); end
  def test_outputs_emissions_i64; assert_in_epsilon(11.08127397186996, worksheet.outputs_emissions_i64, 0.002); end
  def test_outputs_emissions_j64; assert_in_epsilon(12.42520542747288, worksheet.outputs_emissions_j64, 0.002); end
  def test_outputs_emissions_k64; assert_in_epsilon(14.705129986304412, worksheet.outputs_emissions_k64, 0.002); end
  def test_outputs_emissions_l64; assert_in_epsilon(16.53458439282281, worksheet.outputs_emissions_l64, 0.002); end
  def test_outputs_emissions_p64; assert_in_epsilon(18.236501330271757, worksheet.outputs_emissions_p64, 0.002); end
  def test_outputs_emissions_q64; assert_in_epsilon(19.102469983899407, worksheet.outputs_emissions_q64, 0.002); end
  def test_outputs_emissions_r64; assert_in_epsilon(21.333499734201215, worksheet.outputs_emissions_r64, 0.002); end
  def test_outputs_emissions_s64; assert_in_epsilon(23.669660381533784, worksheet.outputs_emissions_s64, 0.002); end
  def test_outputs_emissions_t64; assert_in_epsilon(23.959716367731193, worksheet.outputs_emissions_t64, 0.002); end
  def test_outputs_emissions_u64; assert_in_epsilon(25.504120672598642, worksheet.outputs_emissions_u64, 0.002); end
  def test_outputs_emissions_v64; assert_in_epsilon(26.973544280060466, worksheet.outputs_emissions_v64, 0.002); end
  def test_outputs_emissions_w64; assert_in_epsilon(27.895379204519298, worksheet.outputs_emissions_w64, 0.002); end
  def test_outputs_emissions_x64; assert_in_epsilon(28.514525678887836, worksheet.outputs_emissions_x64, 0.002); end
  def test_outputs_emissions_h65; assert_in_epsilon(10.796156778443688, worksheet.outputs_emissions_h65, 0.002); end
  def test_outputs_emissions_i65; assert_in_epsilon(10.72819610559427, worksheet.outputs_emissions_i65, 0.002); end
  def test_outputs_emissions_j65; assert_in_epsilon(10.661061716648991, worksheet.outputs_emissions_j65, 0.002); end
  def test_outputs_emissions_k65; assert_in_epsilon(10.206533479652432, worksheet.outputs_emissions_k65, 0.002); end
  def test_outputs_emissions_l65; assert_in_epsilon(10.510757938238582, worksheet.outputs_emissions_l65, 0.002); end
  def test_outputs_emissions_p65; assert_in_epsilon(9.548462633840767, worksheet.outputs_emissions_p65, 0.002); end
  def test_outputs_emissions_q65; assert_in_epsilon(13.12511942552268, worksheet.outputs_emissions_q65, 0.002); end
  def test_outputs_emissions_r65; assert_in_epsilon(23.418653578760726, worksheet.outputs_emissions_r65, 0.002); end
  def test_outputs_emissions_s65; assert_in_epsilon(23.343400224419277, worksheet.outputs_emissions_s65, 0.002); end
  def test_outputs_emissions_t65; assert_in_epsilon(21.450380550971914, worksheet.outputs_emissions_t65, 0.002); end
  def test_outputs_emissions_u65; assert_in_epsilon(22.69427001095866, worksheet.outputs_emissions_u65, 0.002); end
  def test_outputs_emissions_v65; assert_in_epsilon(18.11323564392637, worksheet.outputs_emissions_v65, 0.002); end
  def test_outputs_emissions_w65; assert_in_epsilon(16.334871176309456, worksheet.outputs_emissions_w65, 0.002); end
  def test_outputs_emissions_x65; assert_in_epsilon(14.498921911248313, worksheet.outputs_emissions_x65, 0.002); end
  def test_outputs_emissions_h66; assert_in_delta(0.0, (worksheet.outputs_emissions_h66||0), 0.002); end
  def test_outputs_emissions_i66; assert_in_delta(0.0, (worksheet.outputs_emissions_i66||0), 0.002); end
  def test_outputs_emissions_j66; assert_in_delta(0.0, (worksheet.outputs_emissions_j66||0), 0.002); end
  def test_outputs_emissions_k66; assert_in_delta(0.0, (worksheet.outputs_emissions_k66||0), 0.002); end
  def test_outputs_emissions_l66; assert_in_delta(0.0, (worksheet.outputs_emissions_l66||0), 0.002); end
  def test_outputs_emissions_p66; assert_in_delta(0.0, (worksheet.outputs_emissions_p66||0), 0.002); end
  def test_outputs_emissions_q66; assert_in_delta(0.0, (worksheet.outputs_emissions_q66||0), 0.002); end
  def test_outputs_emissions_r66; assert_in_delta(0.0, (worksheet.outputs_emissions_r66||0), 0.002); end
  def test_outputs_emissions_s66; assert_in_delta(0.0, (worksheet.outputs_emissions_s66||0), 0.002); end
  def test_outputs_emissions_t66; assert_in_delta(0.0, (worksheet.outputs_emissions_t66||0), 0.002); end
  def test_outputs_emissions_u66; assert_in_delta(0.0, (worksheet.outputs_emissions_u66||0), 0.002); end
  def test_outputs_emissions_v66; assert_in_delta(0.0, (worksheet.outputs_emissions_v66||0), 0.002); end
  def test_outputs_emissions_w66; assert_in_delta(0.0, (worksheet.outputs_emissions_w66||0), 0.002); end
  def test_outputs_emissions_x66; assert_in_delta(0.0, (worksheet.outputs_emissions_x66||0), 0.002); end
  def test_outputs_emissions_h67; assert_in_epsilon(34.85493641440893, worksheet.outputs_emissions_h67, 0.002); end
  def test_outputs_emissions_i67; assert_in_epsilon(35.76871935887767, worksheet.outputs_emissions_i67, 0.002); end
  def test_outputs_emissions_j67; assert_in_epsilon(37.82175883106165, worksheet.outputs_emissions_j67, 0.002); end
  def test_outputs_emissions_k67; assert_in_epsilon(41.70222094182745, worksheet.outputs_emissions_k67, 0.002); end
  def test_outputs_emissions_l67; assert_in_epsilon(45.73429569959423, worksheet.outputs_emissions_l67, 0.002); end
  def test_outputs_emissions_p67; assert_in_epsilon(46.196588246073496, worksheet.outputs_emissions_p67, 0.002); end
  def test_outputs_emissions_q67; assert_in_epsilon(51.9216936530946, worksheet.outputs_emissions_q67, 0.002); end
  def test_outputs_emissions_r67; assert_in_epsilon(66.13604842651309, worksheet.outputs_emissions_r67, 0.002); end
  def test_outputs_emissions_s67; assert_in_epsilon(70.05864173023915, worksheet.outputs_emissions_s67, 0.002); end
  def test_outputs_emissions_t67; assert_in_epsilon(69.95118278584017, worksheet.outputs_emissions_t67, 0.002); end
  def test_outputs_emissions_u67; assert_in_epsilon(74.2197720871556, worksheet.outputs_emissions_u67, 0.002); end
  def test_outputs_emissions_v67; assert_in_epsilon(72.51668797720768, worksheet.outputs_emissions_v67, 0.002); end
  def test_outputs_emissions_w67; assert_in_epsilon(73.17865626504667, worksheet.outputs_emissions_w67, 0.002); end
  def test_outputs_emissions_x67; assert_in_epsilon(72.69922977818, worksheet.outputs_emissions_x67, 0.002); end
  def test_outputs_emissions_h204; assert_in_delta(0.21613567908999795, worksheet.outputs_emissions_h204, 0.002); end
  def test_outputs_emissions_i204; assert_in_delta(0.21394604776644002, worksheet.outputs_emissions_i204, 0.002); end
  def test_outputs_emissions_j204; assert_in_delta(0.21806406453805793, worksheet.outputs_emissions_j204, 0.002); end
  def test_outputs_emissions_k204; assert_in_delta(0.2350098363903014, worksheet.outputs_emissions_k204, 0.002); end
  def test_outputs_emissions_l204; assert_in_delta(0.24810553785709447, worksheet.outputs_emissions_l204, 0.002); end
  def test_outputs_emissions_p204; assert_in_delta(0.2147475190718488, worksheet.outputs_emissions_p204, 0.002); end
  def test_outputs_emissions_q204; assert_in_delta(0.22333084976504142, worksheet.outputs_emissions_q204, 0.002); end
  def test_outputs_emissions_r204; assert_in_delta(0.23924362938125374, worksheet.outputs_emissions_r204, 0.002); end
  def test_outputs_emissions_s204; assert_in_delta(0.254535569215276, worksheet.outputs_emissions_s204, 0.002); end
  def test_outputs_emissions_t204; assert_in_delta(0.26613895837158247, worksheet.outputs_emissions_t204, 0.002); end
  def test_outputs_emissions_u204; assert_in_delta(0.2795483147761529, worksheet.outputs_emissions_u204, 0.002); end
  def test_outputs_emissions_v204; assert_in_delta(0.2909839133717349, worksheet.outputs_emissions_v204, 0.002); end
  def test_outputs_emissions_w204; assert_in_delta(0.3000492517571546, worksheet.outputs_emissions_w204, 0.002); end
  def test_outputs_emissions_x204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_x204, 0.002); end
  def test_outputs_emissions_y204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_y204, 0.002); end
  def test_outputs_emissions_z204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_z204, 0.002); end
  def test_outputs_emissions_aa204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_aa204, 0.002); end
  def test_outputs_emissions_ab204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_ab204, 0.002); end
  def test_outputs_emissions_ac204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_ac204, 0.002); end
  def test_outputs_emissions_ad204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_ad204, 0.002); end
  def test_outputs_emissions_ae204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_ae204, 0.002); end
  def test_outputs_emissions_af204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_af204, 0.002); end
  def test_outputs_emissions_ag204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_ag204, 0.002); end
  def test_outputs_emissions_ah204; assert_in_delta(0.30827024919508, worksheet.outputs_emissions_ah204, 0.002); end
  def test_outputs_emissions_h126; assert_in_epsilon(25.34891757, worksheet.outputs_emissions_h126, 0.002); end
  def test_outputs_emissions_i126; assert_in_epsilon(26.374524320000003, worksheet.outputs_emissions_i126, 0.002); end
  def test_outputs_emissions_j126; assert_in_epsilon(28.35797029, worksheet.outputs_emissions_j126, 0.002); end
  def test_outputs_emissions_k126; assert_in_epsilon(31.52379656, worksheet.outputs_emissions_k126, 0.002); end
  def test_outputs_emissions_l126; assert_in_epsilon(35.02307894, worksheet.outputs_emissions_l126, 0.002); end
  def test_outputs_emissions_p126; assert_in_epsilon(36.81537453689527, worksheet.outputs_emissions_p126, 0.002); end
  def test_outputs_emissions_q126; assert_in_epsilon(42.14272015890985, worksheet.outputs_emissions_q126, 0.002); end
  def test_outputs_emissions_r126; assert_in_epsilon(55.66406140349196, worksheet.outputs_emissions_r126, 0.002); end
  def test_outputs_emissions_s126; assert_in_epsilon(58.913284052946075, worksheet.outputs_emissions_s126, 0.002); end
  def test_outputs_emissions_t126; assert_in_epsilon(58.289294784421045, worksheet.outputs_emissions_t126, 0.002); end
  def test_outputs_emissions_u126; assert_in_epsilon(61.95351088316836, worksheet.outputs_emissions_u126, 0.002); end
  def test_outputs_emissions_v126; assert_in_epsilon(59.72051976510407, worksheet.outputs_emissions_v126, 0.002); end
  def test_outputs_emissions_w126; assert_in_epsilon(59.91395166807587, worksheet.outputs_emissions_w126, 0.002); end
  def test_outputs_emissions_x126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_x126, 0.002); end
  def test_outputs_emissions_y126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_y126, 0.002); end
  def test_outputs_emissions_z126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_z126, 0.002); end
  def test_outputs_emissions_aa126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_aa126, 0.002); end
  def test_outputs_emissions_ab126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_ab126, 0.002); end
  def test_outputs_emissions_ac126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_ac126, 0.002); end
  def test_outputs_emissions_ad126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_ad126, 0.002); end
  def test_outputs_emissions_ae126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_ae126, 0.002); end
  def test_outputs_emissions_af126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_af126, 0.002); end
  def test_outputs_emissions_ag126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_ag126, 0.002); end
  def test_outputs_emissions_ah126; assert_in_epsilon(59.08046694944205, worksheet.outputs_emissions_ah126, 0.002); end
  def test_outputs_emissions_d5; assert_equal("3010 Gt CO2", worksheet.outputs_emissions_d5); end
  def test_outputs_emissions_h54; assert_in_epsilon(34.85493641440893, worksheet.outputs_emissions_h54, 0.002); end
  def test_outputs_emissions_i54; assert_in_epsilon(35.76871935887767, worksheet.outputs_emissions_i54, 0.002); end
  def test_outputs_emissions_j54; assert_in_epsilon(37.821748831061655, worksheet.outputs_emissions_j54, 0.002); end
  def test_outputs_emissions_k54; assert_in_epsilon(41.70222094182745, worksheet.outputs_emissions_k54, 0.002); end
  def test_outputs_emissions_l54; assert_in_epsilon(45.73429569959423, worksheet.outputs_emissions_l54, 0.002); end
  def test_outputs_emissions_n54; assert_in_delta(0.0, (worksheet.outputs_emissions_n54||0), 0.002); end
  def test_outputs_emissions_p54; assert_in_epsilon(46.19658824607349, worksheet.outputs_emissions_p54, 0.002); end
  def test_outputs_emissions_q54; assert_in_epsilon(51.921693653094586, worksheet.outputs_emissions_q54, 0.002); end
  def test_outputs_emissions_r54; assert_in_epsilon(66.13604842651309, worksheet.outputs_emissions_r54, 0.002); end
  def test_outputs_emissions_s54; assert_in_epsilon(70.05864173023915, worksheet.outputs_emissions_s54, 0.002); end
  def test_outputs_emissions_t54; assert_in_epsilon(69.95118278584017, worksheet.outputs_emissions_t54, 0.002); end
  def test_outputs_emissions_u54; assert_in_epsilon(74.2197720871556, worksheet.outputs_emissions_u54, 0.002); end
  def test_outputs_emissions_v54; assert_in_epsilon(72.51668797720768, worksheet.outputs_emissions_v54, 0.002); end
  def test_outputs_emissions_w54; assert_in_epsilon(73.17865626504668, worksheet.outputs_emissions_w54, 0.002); end
  def test_outputs_emissions_x54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_x54, 0.002); end
  def test_outputs_emissions_y54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_y54, 0.002); end
  def test_outputs_emissions_z54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_z54, 0.002); end
  def test_outputs_emissions_aa54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_aa54, 0.002); end
  def test_outputs_emissions_ab54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_ab54, 0.002); end
  def test_outputs_emissions_ac54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_ac54, 0.002); end
  def test_outputs_emissions_ad54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_ad54, 0.002); end
  def test_outputs_emissions_ae54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_ae54, 0.002); end
  def test_outputs_emissions_af54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_af54, 0.002); end
  def test_outputs_emissions_ag54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_ag54, 0.002); end
  def test_outputs_emissions_ah54; assert_in_epsilon(72.69922977818001, worksheet.outputs_emissions_ah54, 0.002); end
  def test_outputs_emissions_n127; assert_in_epsilon(1890.0, worksheet.outputs_emissions_n127, 0.002); end
  def test_outputs_emissions_ah127; assert_in_epsilon(7027.270617420629, worksheet.outputs_emissions_ah127, 0.002); end
  def test_outputs_emissions_p357; assert_in_delta(0.0, (worksheet.outputs_emissions_p357||0), 0.002); end
  def test_outputs_emissions_q357; assert_in_delta(0.0, (worksheet.outputs_emissions_q357||0), 0.002); end
  def test_outputs_emissions_r357; assert_in_delta(0.0, (worksheet.outputs_emissions_r357||0), 0.002); end
  def test_outputs_emissions_s357; assert_in_delta(0.0, (worksheet.outputs_emissions_s357||0), 0.002); end
  def test_outputs_emissions_t357; assert_in_delta(0.0, (worksheet.outputs_emissions_t357||0), 0.002); end
  def test_outputs_emissions_u357; assert_in_delta(0.0, (worksheet.outputs_emissions_u357||0), 0.002); end
  def test_outputs_emissions_v357; assert_in_delta(0.0, (worksheet.outputs_emissions_v357||0), 0.002); end
  def test_outputs_emissions_w357; assert_in_delta(0.0, (worksheet.outputs_emissions_w357||0), 0.002); end
  def test_outputs_emissions_x357; assert_in_delta(0.0, (worksheet.outputs_emissions_x357||0), 0.002); end
  def test_outputs_emissions_p358; assert_in_delta(0.0, (worksheet.outputs_emissions_p358||0), 0.002); end
  def test_outputs_emissions_q358; assert_in_delta(0.0, (worksheet.outputs_emissions_q358||0), 0.002); end
  def test_outputs_emissions_r358; assert_in_delta(0.0, (worksheet.outputs_emissions_r358||0), 0.002); end
  def test_outputs_emissions_s358; assert_in_delta(0.0, (worksheet.outputs_emissions_s358||0), 0.002); end
  def test_outputs_emissions_t358; assert_in_delta(0.0, (worksheet.outputs_emissions_t358||0), 0.002); end
  def test_outputs_emissions_u358; assert_in_delta(0.0, (worksheet.outputs_emissions_u358||0), 0.002); end
  def test_outputs_emissions_v358; assert_in_delta(0.0, (worksheet.outputs_emissions_v358||0), 0.002); end
  def test_outputs_emissions_w358; assert_in_delta(0.0, (worksheet.outputs_emissions_w358||0), 0.002); end
  def test_outputs_emissions_x358; assert_in_delta(0.0, (worksheet.outputs_emissions_x358||0), 0.002); end
  def test_outputs_emissions_p359; assert_in_delta(0.0, (worksheet.outputs_emissions_p359||0), 0.002); end
  def test_outputs_emissions_q359; assert_in_delta(0.0, (worksheet.outputs_emissions_q359||0), 0.002); end
  def test_outputs_emissions_r359; assert_in_delta(0.0, (worksheet.outputs_emissions_r359||0), 0.002); end
  def test_outputs_emissions_s359; assert_in_delta(0.0, (worksheet.outputs_emissions_s359||0), 0.002); end
  def test_outputs_emissions_t359; assert_in_delta(0.0, (worksheet.outputs_emissions_t359||0), 0.002); end
  def test_outputs_emissions_u359; assert_in_delta(0.0, (worksheet.outputs_emissions_u359||0), 0.002); end
  def test_outputs_emissions_v359; assert_in_delta(0.0, (worksheet.outputs_emissions_v359||0), 0.002); end
  def test_outputs_emissions_w359; assert_in_delta(0.0, (worksheet.outputs_emissions_w359||0), 0.002); end
  def test_outputs_emissions_x359; assert_in_delta(0.0, (worksheet.outputs_emissions_x359||0), 0.002); end
  def test_outputs_emissions_p360; assert_in_delta(0.0, (worksheet.outputs_emissions_p360||0), 0.002); end
  def test_outputs_emissions_q360; assert_in_delta(0.0, (worksheet.outputs_emissions_q360||0), 0.002); end
  def test_outputs_emissions_r360; assert_in_delta(0.0, (worksheet.outputs_emissions_r360||0), 0.002); end
  def test_outputs_emissions_s360; assert_in_delta(0.0, (worksheet.outputs_emissions_s360||0), 0.002); end
  def test_outputs_emissions_t360; assert_in_delta(0.0, (worksheet.outputs_emissions_t360||0), 0.002); end
  def test_outputs_emissions_u360; assert_in_delta(0.0, (worksheet.outputs_emissions_u360||0), 0.002); end
  def test_outputs_emissions_v360; assert_in_delta(0.0, (worksheet.outputs_emissions_v360||0), 0.002); end
  def test_outputs_emissions_w360; assert_in_delta(0.0, (worksheet.outputs_emissions_w360||0), 0.002); end
  def test_outputs_emissions_x360; assert_in_delta(0.0, (worksheet.outputs_emissions_x360||0), 0.002); end
  def test_outputs_emissions_p361; assert_in_delta(0.0, (worksheet.outputs_emissions_p361||0), 0.002); end
  def test_outputs_emissions_q361; assert_in_delta(0.0, (worksheet.outputs_emissions_q361||0), 0.002); end
  def test_outputs_emissions_r361; assert_in_delta(0.0, (worksheet.outputs_emissions_r361||0), 0.002); end
  def test_outputs_emissions_s361; assert_in_delta(0.0, (worksheet.outputs_emissions_s361||0), 0.002); end
  def test_outputs_emissions_t361; assert_in_delta(0.0, (worksheet.outputs_emissions_t361||0), 0.002); end
  def test_outputs_emissions_u361; assert_in_delta(0.0, (worksheet.outputs_emissions_u361||0), 0.002); end
  def test_outputs_emissions_v361; assert_in_delta(0.0, (worksheet.outputs_emissions_v361||0), 0.002); end
  def test_outputs_emissions_w361; assert_in_delta(0.0, (worksheet.outputs_emissions_w361||0), 0.002); end
  def test_outputs_emissions_x361; assert_in_delta(0.0, (worksheet.outputs_emissions_x361||0), 0.002); end
  def test_outputs_emissions_h281; assert_in_delta(0.012219185474713169, worksheet.outputs_emissions_h281, 0.002); end
  def test_outputs_emissions_i281; assert_in_delta(0.01203682888170151, worksheet.outputs_emissions_i281, 0.002); end
  def test_outputs_emissions_j281; assert_in_delta(0.011848757243237622, worksheet.outputs_emissions_j281, 0.002); end
  def test_outputs_emissions_k281; assert_in_delta(0.012691091043429093, worksheet.outputs_emissions_k281, 0.002); end
  def test_outputs_emissions_l281; assert_in_delta(0.013268513817881094, worksheet.outputs_emissions_l281, 0.002); end
  def test_outputs_emissions_p281; assert_in_delta(0.011900134551300392, worksheet.outputs_emissions_p281, 0.002); end
  def test_outputs_emissions_q281; assert_in_delta(0.012461806984900119, worksheet.outputs_emissions_q281, 0.002); end
  def test_outputs_emissions_r281; assert_in_delta(0.013335553852697243, worksheet.outputs_emissions_r281, 0.002); end
  def test_outputs_emissions_s281; assert_in_delta(0.014203117622830465, worksheet.outputs_emissions_s281, 0.002); end
  def test_outputs_emissions_t281; assert_in_delta(0.014882483806200907, worksheet.outputs_emissions_t281, 0.002); end
  def test_outputs_emissions_u281; assert_in_delta(0.01569569839803329, worksheet.outputs_emissions_u281, 0.002); end
  def test_outputs_emissions_v281; assert_in_delta(0.016443904620087962, worksheet.outputs_emissions_v281, 0.002); end
  def test_outputs_emissions_w281; assert_in_delta(0.017219910550993665, worksheet.outputs_emissions_w281, 0.002); end
  def test_outputs_emissions_x281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_x281, 0.002); end
  def test_outputs_emissions_y281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_y281, 0.002); end
  def test_outputs_emissions_z281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_z281, 0.002); end
  def test_outputs_emissions_aa281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_aa281, 0.002); end
  def test_outputs_emissions_ab281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_ab281, 0.002); end
  def test_outputs_emissions_ac281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_ac281, 0.002); end
  def test_outputs_emissions_ad281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_ad281, 0.002); end
  def test_outputs_emissions_ae281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_ae281, 0.002); end
  def test_outputs_emissions_af281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_af281, 0.002); end
  def test_outputs_emissions_ag281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_ag281, 0.002); end
  def test_outputs_emissions_ah281; assert_in_delta(0.017656323026719378, worksheet.outputs_emissions_ah281, 0.002); end
  def test_outputs_physical_implications_q111; assert_in_epsilon(1123.6387535731396, worksheet.outputs_physical_implications_q111, 0.002); end
  def test_outputs_physical_implications_q112; assert_in_epsilon(218.6951105329551, worksheet.outputs_physical_implications_q112, 0.002); end
  def test_outputs_physical_implications_q113; assert_in_epsilon(991.10316139638, worksheet.outputs_physical_implications_q113, 0.002); end
  def test_outputs_physical_implications_q114; assert_in_delta(0.0, (worksheet.outputs_physical_implications_q114||0), 0.002); end
  def test_outputs_physical_implications_q115; assert_in_epsilon(364.0, worksheet.outputs_physical_implications_q115, 0.002); end
  def test_outputs_physical_implications_q116; assert_in_epsilon(237.67, worksheet.outputs_physical_implications_q116, 0.002); end
  def test_outputs_physical_implications_q117; assert_in_epsilon(970.0, worksheet.outputs_physical_implications_q117, 0.002); end
  def test_outputs_physical_implications_q118; assert_in_delta(0.527, worksheet.outputs_physical_implications_q118, 0.002); end
  def test_outputs_physical_implications_q119; assert_in_epsilon(29.6, worksheet.outputs_physical_implications_q119, 0.002); end
  def test_outputs_physical_implications_q120; assert_in_epsilon(11.43, worksheet.outputs_physical_implications_q120, 0.002); end
  def test_outputs_physical_implications_q121; assert_in_epsilon(120.0, worksheet.outputs_physical_implications_q121, 0.002); end
  def test_outputs_physical_implications_y111; assert_in_epsilon(1665.824775949701, worksheet.outputs_physical_implications_y111, 0.002); end
  def test_outputs_physical_implications_y112; assert_in_epsilon(987.9150528507216, worksheet.outputs_physical_implications_y112, 0.002); end
  def test_outputs_physical_implications_y113; assert_in_epsilon(2101.853145907007, worksheet.outputs_physical_implications_y113, 0.002); end
  def test_outputs_physical_implications_y114; assert_in_epsilon(252.99240999999998, worksheet.outputs_physical_implications_y114, 0.002); end
  def test_outputs_physical_implications_y115; assert_in_epsilon(502.19999999999993, worksheet.outputs_physical_implications_y115, 0.002); end
  def test_outputs_physical_implications_y116; assert_in_epsilon(1390.2000000000003, worksheet.outputs_physical_implications_y116, 0.002); end
  def test_outputs_physical_implications_y117; assert_in_epsilon(1659.7, worksheet.outputs_physical_implications_y117, 0.002); end
  def test_outputs_physical_implications_y118; assert_in_epsilon(43.599999999999994, worksheet.outputs_physical_implications_y118, 0.002); end
  def test_outputs_physical_implications_y119; assert_in_epsilon(479.5999999999999, worksheet.outputs_physical_implications_y119, 0.002); end
  def test_outputs_physical_implications_y120; assert_in_epsilon(68.79999999999998, worksheet.outputs_physical_implications_y120, 0.002); end
  def test_outputs_physical_implications_y121; assert_in_epsilon(277.5, worksheet.outputs_physical_implications_y121, 0.002); end
  def test_outputs_physical_implications_q89; assert_in_epsilon(36.676, worksheet.outputs_physical_implications_q89, 0.002); end
  def test_outputs_physical_implications_q90; assert_in_epsilon(49.608, worksheet.outputs_physical_implications_q90, 0.002); end
  def test_outputs_physical_implications_q91; assert_in_epsilon(112.78400000000002, worksheet.outputs_physical_implications_q91, 0.002); end
  def test_outputs_physical_implications_q92; assert_in_epsilon(10.175999999999998, worksheet.outputs_physical_implications_q92, 0.002); end
  def test_outputs_physical_implications_q93; assert_in_epsilon(2.7559999999999993, worksheet.outputs_physical_implications_q93, 0.002); end
  def test_outputs_physical_implications_q94; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_q94, 0.002); end
  def test_outputs_physical_implications_q95; assert_in_epsilon(7.0, worksheet.outputs_physical_implications_q95, 0.002); end
  def test_outputs_physical_implications_q96; assert_in_epsilon(26.054, worksheet.outputs_physical_implications_q96, 0.002); end
  def test_outputs_physical_implications_q97; assert_in_epsilon(26.054, worksheet.outputs_physical_implications_q97, 0.002); end
  def test_outputs_physical_implications_q98; assert_in_epsilon(96.77199999999999, worksheet.outputs_physical_implications_q98, 0.002); end
  def test_outputs_physical_implications_q99; assert_in_epsilon(1712.12, worksheet.outputs_physical_implications_q99, 0.002); end
  def test_outputs_physical_implications_y89; assert_in_epsilon(33.18276, worksheet.outputs_physical_implications_y89, 0.002); end
  def test_outputs_physical_implications_y90; assert_in_epsilon(84.32216, worksheet.outputs_physical_implications_y90, 0.002); end
  def test_outputs_physical_implications_y91; assert_in_epsilon(101.816, worksheet.outputs_physical_implications_y91, 0.002); end
  def test_outputs_physical_implications_y92; assert_in_epsilon(9.070879999999999, worksheet.outputs_physical_implications_y92, 0.002); end
  def test_outputs_physical_implications_y93; assert_in_epsilon(3.0082, worksheet.outputs_physical_implications_y93, 0.002); end
  def test_outputs_physical_implications_y94; assert_in_epsilon(65.49056603773585, worksheet.outputs_physical_implications_y94, 0.002); end
  def test_outputs_physical_implications_y95; assert_in_epsilon(7.640566037735848, worksheet.outputs_physical_implications_y95, 0.002); end
  def test_outputs_physical_implications_y96; assert_in_epsilon(44.50884622641511, worksheet.outputs_physical_implications_y96, 0.002); end
  def test_outputs_physical_implications_y97; assert_in_epsilon(40.269908490566046, worksheet.outputs_physical_implications_y97, 0.002); end
  def test_outputs_physical_implications_y98; assert_in_epsilon(139.8849452830189, worksheet.outputs_physical_implications_y98, 0.002); end
  def test_outputs_physical_implications_y99; assert_in_epsilon(1894.8051679245286, worksheet.outputs_physical_implications_y99, 0.002); end
  def test_outputs_physical_implications_q155; assert_in_epsilon(48400.0, worksheet.outputs_physical_implications_q155, 0.002); end
  def test_outputs_physical_implications_q156; assert_in_epsilon(38250.0, worksheet.outputs_physical_implications_q156, 0.002); end
  def test_outputs_physical_implications_q157; assert_in_delta(0.0, (worksheet.outputs_physical_implications_q157||0), 0.002); end
  def test_outputs_physical_implications_q158; assert_in_epsilon(10.0, worksheet.outputs_physical_implications_q158, 0.002); end
  def test_outputs_physical_implications_q159; assert_in_delta(0.0, (worksheet.outputs_physical_implications_q159||0), 0.002); end
  def test_outputs_physical_implications_y155; assert_in_epsilon(154980.0, worksheet.outputs_physical_implications_y155, 0.002); end
  def test_outputs_physical_implications_y156; assert_in_epsilon(142690.0, worksheet.outputs_physical_implications_y156, 0.002); end
  def test_outputs_physical_implications_y157; assert_in_delta(0.0, (worksheet.outputs_physical_implications_y157||0), 0.002); end
  def test_outputs_physical_implications_y158; assert_in_epsilon(20.0, worksheet.outputs_physical_implications_y158, 0.002); end
  def test_outputs_physical_implications_y159; assert_in_epsilon(10.0, worksheet.outputs_physical_implications_y159, 0.002); end
  def test_outputs_physical_implications_q57; assert_in_epsilon(3358.6460000000006, worksheet.outputs_physical_implications_q57, 0.002); end
  def test_outputs_physical_implications_r57; assert_in_epsilon(3360.370918851493, worksheet.outputs_physical_implications_r57, 0.002); end
  def test_outputs_physical_implications_s57; assert_in_epsilon(3454.1884850967317, worksheet.outputs_physical_implications_s57, 0.002); end
  def test_outputs_physical_implications_t57; assert_in_epsilon(3550.1735846965, worksheet.outputs_physical_implications_t57, 0.002); end
  def test_outputs_physical_implications_u57; assert_in_epsilon(3628.3257301861836, worksheet.outputs_physical_implications_u57, 0.002); end
  def test_outputs_physical_implications_v57; assert_in_epsilon(3690.1024851961292, worksheet.outputs_physical_implications_v57, 0.002); end
  def test_outputs_physical_implications_w57; assert_in_epsilon(3735.9190384947715, worksheet.outputs_physical_implications_w57, 0.002); end
  def test_outputs_physical_implications_x57; assert_in_epsilon(3765.4200931452915, worksheet.outputs_physical_implications_x57, 0.002); end
  def test_outputs_physical_implications_y57; assert_in_epsilon(3778.5271133236356, worksheet.outputs_physical_implications_y57, 0.002); end
  def test_outputs_physical_implications_q58; assert_in_epsilon(1447.97657, worksheet.outputs_physical_implications_q58, 0.002); end
  def test_outputs_physical_implications_r58; assert_in_epsilon(1480.177774794277, worksheet.outputs_physical_implications_r58, 0.002); end
  def test_outputs_physical_implications_s58; assert_in_epsilon(1537.3791559755741, worksheet.outputs_physical_implications_s58, 0.002); end
  def test_outputs_physical_implications_t58; assert_in_epsilon(1588.7267455058247, worksheet.outputs_physical_implications_t58, 0.002); end
  def test_outputs_physical_implications_u58; assert_in_epsilon(1634.9681035942383, worksheet.outputs_physical_implications_u58, 0.002); end
  def test_outputs_physical_implications_v58; assert_in_epsilon(1708.0119194581205, worksheet.outputs_physical_implications_v58, 0.002); end
  def test_outputs_physical_implications_w58; assert_in_epsilon(1745.6140340031995, worksheet.outputs_physical_implications_w58, 0.002); end
  def test_outputs_physical_implications_x58; assert_in_epsilon(1778.5020158476348, worksheet.outputs_physical_implications_x58, 0.002); end
  def test_outputs_physical_implications_y58; assert_in_epsilon(1806.4856486793797, worksheet.outputs_physical_implications_y58, 0.002); end
  def test_outputs_physical_implications_q59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_q59, 0.002); end
  def test_outputs_physical_implications_r59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_r59, 0.002); end
  def test_outputs_physical_implications_s59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_s59, 0.002); end
  def test_outputs_physical_implications_t59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_t59, 0.002); end
  def test_outputs_physical_implications_u59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_u59, 0.002); end
  def test_outputs_physical_implications_v59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_v59, 0.002); end
  def test_outputs_physical_implications_w59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_w59, 0.002); end
  def test_outputs_physical_implications_x59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_x59, 0.002); end
  def test_outputs_physical_implications_y59; assert_in_epsilon(60.0, worksheet.outputs_physical_implications_y59, 0.002); end
  def test_outputs_physical_implications_q60; assert_in_epsilon(3753.46801, worksheet.outputs_physical_implications_q60, 0.002); end
  def test_outputs_physical_implications_r60; assert_in_epsilon(3685.1558426899587, worksheet.outputs_physical_implications_r60, 0.002); end
  def test_outputs_physical_implications_s60; assert_in_epsilon(3495.3838432887674, worksheet.outputs_physical_implications_s60, 0.002); end
  def test_outputs_physical_implications_t60; assert_in_epsilon(3310.9160875166012, worksheet.outputs_physical_implications_t60, 0.002); end
  def test_outputs_physical_implications_u60; assert_in_epsilon(3151.027273609446, worksheet.outputs_physical_implications_u60, 0.002); end
  def test_outputs_physical_implications_v60; assert_in_epsilon(2982.207179252751, worksheet.outputs_physical_implications_v60, 0.002); end
  def test_outputs_physical_implications_w60; assert_in_epsilon(2866.347052374403, worksheet.outputs_physical_implications_w60, 0.002); end
  def test_outputs_physical_implications_x60; assert_in_epsilon(2773.2742298923527, worksheet.outputs_physical_implications_x60, 0.002); end
  def test_outputs_physical_implications_y60; assert_in_epsilon(2703.5248409618976, worksheet.outputs_physical_implications_y60, 0.002); end
  def test_outputs_physical_implications_q61; assert_in_epsilon(274.0, worksheet.outputs_physical_implications_q61, 0.002); end
  def test_outputs_physical_implications_r61; assert_in_epsilon(291.43062026284576, worksheet.outputs_physical_implications_r61, 0.002); end
  def test_outputs_physical_implications_s61; assert_in_epsilon(311.6372526075977, worksheet.outputs_physical_implications_s61, 0.002); end
  def test_outputs_physical_implications_t61; assert_in_epsilon(331.42314340796014, worksheet.outputs_physical_implications_t61, 0.002); end
  def test_outputs_physical_implications_u61; assert_in_epsilon(350.75880912998997, worksheet.outputs_physical_implications_u61, 0.002); end
  def test_outputs_physical_implications_v61; assert_in_epsilon(369.6876248330714, worksheet.outputs_physical_implications_v61, 0.002); end
  def test_outputs_physical_implications_w61; assert_in_epsilon(388.15942588237675, worksheet.outputs_physical_implications_w61, 0.002); end
  def test_outputs_physical_implications_x61; assert_in_epsilon(406.07959850001555, worksheet.outputs_physical_implications_x61, 0.002); end
  def test_outputs_physical_implications_y61; assert_in_epsilon(423.26380573509, worksheet.outputs_physical_implications_y61, 0.002); end
  def test_outputs_physical_implications_q62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_q62, 0.002); end
  def test_outputs_physical_implications_r62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_r62, 0.002); end
  def test_outputs_physical_implications_s62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_s62, 0.002); end
  def test_outputs_physical_implications_t62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_t62, 0.002); end
  def test_outputs_physical_implications_u62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_u62, 0.002); end
  def test_outputs_physical_implications_v62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_v62, 0.002); end
  def test_outputs_physical_implications_w62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_w62, 0.002); end
  def test_outputs_physical_implications_x62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_x62, 0.002); end
  def test_outputs_physical_implications_y62; assert_in_epsilon(44.99999999999999, worksheet.outputs_physical_implications_y62, 0.002); end
  def test_outputs_physical_implications_q63; assert_in_delta(7.105427357601002e-15, worksheet.outputs_physical_implications_q63, 0.002); end
  def test_outputs_physical_implications_r63; assert_in_delta(0.0, (worksheet.outputs_physical_implications_r63||0), 0.002); end
  def test_outputs_physical_implications_s63; assert_in_delta(1.3713474800169934e-12, worksheet.outputs_physical_implications_s63, 0.002); end
  def test_outputs_physical_implications_t63; assert_in_delta(0.0, (worksheet.outputs_physical_implications_t63||0), 0.002); end
  def test_outputs_physical_implications_u63; assert_in_delta(7.105427357601002e-15, worksheet.outputs_physical_implications_u63, 0.002); end
  def test_outputs_physical_implications_v63; assert_in_delta(0.0, (worksheet.outputs_physical_implications_v63||0), 0.002); end
  def test_outputs_physical_implications_w63; assert_in_delta(0.0, (worksheet.outputs_physical_implications_w63||0), 0.002); end
  def test_outputs_physical_implications_x63; assert_in_delta(9.166001291305292e-13, worksheet.outputs_physical_implications_x63, 0.002); end
  def test_outputs_physical_implications_y63; assert_in_delta(0.0, (worksheet.outputs_physical_implications_y63||0), 0.002); end
  def test_outputs_physical_implications_q64; assert_in_epsilon(244.57834259999996, worksheet.outputs_physical_implications_q64, 0.002); end
  def test_outputs_physical_implications_r64; assert_in_epsilon(261.5337660014265, worksheet.outputs_physical_implications_r64, 0.002); end
  def test_outputs_physical_implications_s64; assert_in_epsilon(280.08018563132794, worksheet.outputs_physical_implications_s64, 0.002); end
  def test_outputs_physical_implications_t64; assert_in_epsilon(297.42936147311605, worksheet.outputs_physical_implications_t64, 0.002); end
  def test_outputs_physical_implications_u64; assert_in_epsilon(313.58900608014267, worksheet.outputs_physical_implications_u64, 0.002); end
  def test_outputs_physical_implications_v64; assert_in_epsilon(328.65971385993004, worksheet.outputs_physical_implications_v64, 0.002); end
  def test_outputs_physical_implications_w64; assert_in_epsilon(342.62937184525043, worksheet.outputs_physical_implications_w64, 0.002); end
  def test_outputs_physical_implications_x64; assert_in_epsilon(355.39298521470636, worksheet.outputs_physical_implications_x64, 0.002); end
  def test_outputs_physical_implications_y64; assert_in_epsilon(366.86751389999995, worksheet.outputs_physical_implications_y64, 0.002); end
  def test_outputs_physical_implications_q65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_q65, 0.002); end
  def test_outputs_physical_implications_r65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_r65, 0.002); end
  def test_outputs_physical_implications_s65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_s65, 0.002); end
  def test_outputs_physical_implications_t65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_t65, 0.002); end
  def test_outputs_physical_implications_u65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_u65, 0.002); end
  def test_outputs_physical_implications_v65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_v65, 0.002); end
  def test_outputs_physical_implications_w65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_w65, 0.002); end
  def test_outputs_physical_implications_x65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_x65, 0.002); end
  def test_outputs_physical_implications_y65; assert_in_epsilon(3831.7273674, worksheet.outputs_physical_implications_y65, 0.002); end
  def test_outputs_physical_implications_c132; assert_equal("Iron and steel", worksheet.outputs_physical_implications_c132); end
  def test_outputs_physical_implications_e132; assert_equal("Steel.Oxygen", worksheet.outputs_physical_implications_e132); end
  def test_outputs_physical_implications_f132; assert_equal("Steel.OxygenHisarna", worksheet.outputs_physical_implications_f132); end
  def test_outputs_physical_implications_g132; assert_equal("Steel.Electric", worksheet.outputs_physical_implications_g132); end
  def test_outputs_physical_implications_h132; assert_equal("Steel.ElectricDRI", worksheet.outputs_physical_implications_h132); end
  def test_outputs_physical_implications_q132; assert_in_epsilon(1.5183, worksheet.outputs_physical_implications_q132, 0.002); end
  def test_outputs_physical_implications_r132; assert_in_epsilon(1.5850963768076478, worksheet.outputs_physical_implications_r132, 0.002); end
  def test_outputs_physical_implications_s132; assert_in_epsilon(1.7165001791049215, worksheet.outputs_physical_implications_s132, 0.002); end
  def test_outputs_physical_implications_t132; assert_in_epsilon(1.8605335581642373, worksheet.outputs_physical_implications_t132, 0.002); end
  def test_outputs_physical_implications_u132; assert_in_epsilon(2.024779230328378, worksheet.outputs_physical_implications_u132, 0.002); end
  def test_outputs_physical_implications_v132; assert_in_epsilon(2.2009152598246846, worksheet.outputs_physical_implications_v132, 0.002); end
  def test_outputs_physical_implications_w132; assert_in_epsilon(2.3906192539964533, worksheet.outputs_physical_implications_w132, 0.002); end
  def test_outputs_physical_implications_x132; assert_in_epsilon(2.63851707861313, worksheet.outputs_physical_implications_x132, 0.002); end
  def test_outputs_physical_implications_y132; assert_in_epsilon(2.8319580955762547, worksheet.outputs_physical_implications_y132, 0.002); end
  def test_outputs_physical_implications_c133; assert_equal("Aluminium", worksheet.outputs_physical_implications_c133); end
  def test_outputs_physical_implications_e133; assert_equal("Aluminium.Alumina", worksheet.outputs_physical_implications_e133); end
  def test_outputs_physical_implications_f133; assert_equal("Aluminium.Primary", worksheet.outputs_physical_implications_f133); end
  def test_outputs_physical_implications_g133; assert_equal("Aluminium.Secondary", worksheet.outputs_physical_implications_g133); end
  def test_outputs_physical_implications_q133; assert_in_delta(0.16753358521407624, worksheet.outputs_physical_implications_q133, 0.002); end
  def test_outputs_physical_implications_r133; assert_in_delta(0.18343542885195047, worksheet.outputs_physical_implications_r133, 0.002); end
  def test_outputs_physical_implications_s133; assert_in_delta(0.2120545572723035, worksheet.outputs_physical_implications_s133, 0.002); end
  def test_outputs_physical_implications_t133; assert_in_delta(0.24376872752720166, worksheet.outputs_physical_implications_t133, 0.002); end
  def test_outputs_physical_implications_u133; assert_in_delta(0.27985420235252156, worksheet.outputs_physical_implications_u133, 0.002); end
  def test_outputs_physical_implications_v133; assert_in_delta(0.3200419186680159, worksheet.outputs_physical_implications_v133, 0.002); end
  def test_outputs_physical_implications_w133; assert_in_delta(0.36292245627293973, worksheet.outputs_physical_implications_w133, 0.002); end
  def test_outputs_physical_implications_x133; assert_in_delta(0.4127983137300324, worksheet.outputs_physical_implications_x133, 0.002); end
  def test_outputs_physical_implications_y133; assert_in_delta(0.46586747190597155, worksheet.outputs_physical_implications_y133, 0.002); end
  def test_outputs_physical_implications_c134; assert_equal("Chemicals", worksheet.outputs_physical_implications_c134); end
  def test_outputs_physical_implications_e134; assert_equal("Chemicals & petrochemicals.HVC", worksheet.outputs_physical_implications_e134); end
  def test_outputs_physical_implications_f134; assert_equal("Chemicals & petrochemicals.Ammonia", worksheet.outputs_physical_implications_f134); end
  def test_outputs_physical_implications_g134; assert_equal("Chemicals & petrochemicals.Methanol", worksheet.outputs_physical_implications_g134); end
  def test_outputs_physical_implications_h134; assert_equal("Chemicals & petrochemicals.Others", worksheet.outputs_physical_implications_h134); end
  def test_outputs_physical_implications_q134; assert_in_delta(0.7504088224854853, worksheet.outputs_physical_implications_q134, 0.002); end
  def test_outputs_physical_implications_r134; assert_in_delta(0.7495378706803894, worksheet.outputs_physical_implications_r134, 0.002); end
  def test_outputs_physical_implications_s134; assert_in_delta(0.8090797141488274, worksheet.outputs_physical_implications_s134, 0.002); end
  def test_outputs_physical_implications_t134; assert_in_delta(0.86708512408925, worksheet.outputs_physical_implications_t134, 0.002); end
  def test_outputs_physical_implications_u134; assert_in_delta(0.9284412249716143, worksheet.outputs_physical_implications_u134, 0.002); end
  def test_outputs_physical_implications_v134; assert_in_delta(0.9897389079125047, worksheet.outputs_physical_implications_v134, 0.002); end
  def test_outputs_physical_implications_w134; assert_in_epsilon(1.0510847950996611, worksheet.outputs_physical_implications_w134, 0.002); end
  def test_outputs_physical_implications_x134; assert_in_epsilon(1.1192371309013769, worksheet.outputs_physical_implications_x134, 0.002); end
  def test_outputs_physical_implications_y134; assert_in_epsilon(1.1794643740677546, worksheet.outputs_physical_implications_y134, 0.002); end
  def test_outputs_physical_implications_c135; assert_equal("Pulp and paper", worksheet.outputs_physical_implications_c135); end
  def test_outputs_physical_implications_e135; assert_equal("Pulp & paper.Pulp", worksheet.outputs_physical_implications_e135); end
  def test_outputs_physical_implications_f135; assert_equal("Pulp & paper.Virgin", worksheet.outputs_physical_implications_f135); end
  def test_outputs_physical_implications_g135; assert_equal("Pulp & paper.Recycled", worksheet.outputs_physical_implications_g135); end
  def test_outputs_physical_implications_q135; assert_in_delta(0.797948765, worksheet.outputs_physical_implications_q135, 0.002); end
  def test_outputs_physical_implications_r135; assert_in_delta(0.8435399242389063, worksheet.outputs_physical_implications_r135, 0.002); end
  def test_outputs_physical_implications_s135; assert_in_delta(0.8946554626816922, worksheet.outputs_physical_implications_s135, 0.002); end
  def test_outputs_physical_implications_t135; assert_in_delta(0.9434122357082744, worksheet.outputs_physical_implications_t135, 0.002); end
  def test_outputs_physical_implications_u135; assert_in_delta(0.9897690120492018, worksheet.outputs_physical_implications_u135, 0.002); end
  def test_outputs_physical_implications_v135; assert_in_epsilon(1.033917427413652, worksheet.outputs_physical_implications_v135, 0.002); end
  def test_outputs_physical_implications_w135; assert_in_epsilon(1.0757723845945963, worksheet.outputs_physical_implications_w135, 0.002); end
  def test_outputs_physical_implications_x135; assert_in_epsilon(1.1150130804659737, worksheet.outputs_physical_implications_x135, 0.002); end
  def test_outputs_physical_implications_y135; assert_in_epsilon(1.1513680768015453, worksheet.outputs_physical_implications_y135, 0.002); end
  def test_outputs_physical_implications_c136; assert_equal("Cement", worksheet.outputs_physical_implications_c136); end
  def test_outputs_physical_implications_e136; assert_equal("Cement", worksheet.outputs_physical_implications_e136); end
  def test_outputs_physical_implications_q136; assert_in_epsilon(3.6351730407050002, worksheet.outputs_physical_implications_q136, 0.002); end
  def test_outputs_physical_implications_r136; assert_in_epsilon(3.945168117225719, worksheet.outputs_physical_implications_r136, 0.002); end
  def test_outputs_physical_implications_s136; assert_in_epsilon(4.2798185991612145, worksheet.outputs_physical_implications_s136, 0.002); end
  def test_outputs_physical_implications_t136; assert_in_epsilon(4.615795931152105, worksheet.outputs_physical_implications_t136, 0.002); end
  def test_outputs_physical_implications_u136; assert_in_epsilon(4.964932964052878, worksheet.outputs_physical_implications_u136, 0.002); end
  def test_outputs_physical_implications_v136; assert_in_epsilon(5.323981583120227, worksheet.outputs_physical_implications_v136, 0.002); end
  def test_outputs_physical_implications_w136; assert_in_epsilon(5.6870075510668165, worksheet.outputs_physical_implications_w136, 0.002); end
  def test_outputs_physical_implications_x136; assert_in_epsilon(6.067038156308903, worksheet.outputs_physical_implications_x136, 0.002); end
  def test_outputs_physical_implications_y136; assert_in_epsilon(6.450151064208037, worksheet.outputs_physical_implications_y136, 0.002); end
  def test_outputs_physical_implications_q146; assert_in_epsilon(1982210.0, worksheet.outputs_physical_implications_q146, 0.002); end
  def test_outputs_physical_implications_q147; assert_in_epsilon(7180.0, worksheet.outputs_physical_implications_q147, 0.002); end
  def test_outputs_physical_implications_q148; assert_in_epsilon(80.0, worksheet.outputs_physical_implications_q148, 0.002); end
  def test_outputs_physical_implications_q149; assert_in_epsilon(40.0, worksheet.outputs_physical_implications_q149, 0.002); end
  def test_outputs_physical_implications_y146; assert_in_epsilon(5143060.0, worksheet.outputs_physical_implications_y146, 0.002); end
  def test_outputs_physical_implications_y147; assert_in_epsilon(12090.0, worksheet.outputs_physical_implications_y147, 0.002); end
  def test_outputs_physical_implications_y148; assert_in_epsilon(160.0, worksheet.outputs_physical_implications_y148, 0.002); end
  def test_outputs_physical_implications_y149; assert_in_epsilon(120.0, worksheet.outputs_physical_implications_y149, 0.002); end
  def test_outputs_physical_implications_q48; assert_in_delta(0.8431666463488967, worksheet.outputs_physical_implications_q48, 0.002); end
  def test_outputs_physical_implications_y48; assert_in_delta(0.9370114942528736, worksheet.outputs_physical_implications_y48, 0.002); end
  def test_outputs_physical_implications_q9; assert_in_epsilon(6966439712.0, worksheet.outputs_physical_implications_q9, 0.002); end
  def test_outputs_physical_implications_y9; assert_in_epsilon(9550945000.0, worksheet.outputs_physical_implications_y9, 0.002); end
  def test_outputs_physical_implications_q35; assert_in_epsilon(834579477.4976001, worksheet.outputs_physical_implications_q35, 0.002); end
  def test_outputs_physical_implications_y35; assert_in_epsilon(955094500.0, worksheet.outputs_physical_implications_y35, 0.002); end
  def test_outputs_physical_implications_q30; assert_in_epsilon(1451248720.8038402, worksheet.outputs_physical_implications_q30, 0.002); end
  def test_outputs_physical_implications_y30; assert_in_epsilon(2821870113.6363635, worksheet.outputs_physical_implications_y30, 0.002); end
  def test_outputs_physical_implications_q21; assert_in_delta(0.5208, worksheet.outputs_physical_implications_q21, 0.002); end
  def test_outputs_physical_implications_y21; assert_in_delta(0.65, worksheet.outputs_physical_implications_y21, 0.002); end
  def test_outputs_costs_bs634; assert_in_epsilon(1.8311964803879621, worksheet.outputs_costs_bs634, 0.002); end
  def test_outputs_costs_bs635; assert_in_epsilon(2.4776266334294963, worksheet.outputs_costs_bs635, 0.002); end
  def test_outputs_costs_bs636; assert_in_epsilon(1.3130869537079977, worksheet.outputs_costs_bs636, 0.002); end
  def test_outputs_costs_bs637; assert_in_delta(0.5501514029066725, worksheet.outputs_costs_bs637, 0.002); end
  def test_outputs_costs_bs638; assert_in_delta(0.016124002713670905, worksheet.outputs_costs_bs638, 0.002); end
  def test_outputs_costs_bs639; assert_in_delta(0.055912577191039134, worksheet.outputs_costs_bs639, 0.002); end
  def test_outputs_costs_hm38; assert_in_delta(0.0, (worksheet.outputs_costs_hm38||0), 0.002); end
  def test_outputs_costs_hm39; assert_in_delta(0.21540393114248554, worksheet.outputs_costs_hm39, 0.002); end
  def test_outputs_costs_hm40; assert_in_delta(0.07183614835251739, worksheet.outputs_costs_hm40, 0.002); end
  def test_outputs_costs_hm41; assert_in_delta(0.6722431943600798, worksheet.outputs_costs_hm41, 0.002); end
  def test_outputs_costs_hm42; assert_in_delta(0.011286824701045356, worksheet.outputs_costs_hm42, 0.002); end
  def test_outputs_costs_hm43; assert_in_delta(0.030432756890025184, worksheet.outputs_costs_hm43, 0.002); end
  def test_outputs_costs_hm44; assert_in_delta(0.01856424766645249, worksheet.outputs_costs_hm44, 0.002); end
  def test_outputs_costs_hm45; assert_in_delta(0.0, (worksheet.outputs_costs_hm45||0), 0.002); end
  def test_outputs_costs_hm46; assert_in_delta(0.10299824803450058, worksheet.outputs_costs_hm46, 0.002); end
  def test_outputs_costs_hm47; assert_in_delta(0.0018390447883525538, worksheet.outputs_costs_hm47, 0.002); end
  def test_outputs_costs_hm48; assert_in_delta(0.0018390399784399458, worksheet.outputs_costs_hm48, 0.002); end
  def test_outputs_costs_hm49; assert_in_delta(0.0006369390876341211, worksheet.outputs_costs_hm49, 0.002); end
  def test_outputs_costs_hm50; assert_in_delta(0.0, (worksheet.outputs_costs_hm50||0), 0.002); end
  def test_outputs_costs_hm51; assert_in_delta(0.0, (worksheet.outputs_costs_hm51||0), 0.002); end
  def test_outputs_costs_hm52; assert_in_delta(0.0, (worksheet.outputs_costs_hm52||0), 0.002); end
  def test_outputs_costs_hm53; assert_in_delta(0.0, (worksheet.outputs_costs_hm53||0), 0.002); end
  def test_outputs_costs_hm54; assert_in_delta(0.11625093368583518, worksheet.outputs_costs_hm54, 0.002); end
  def test_outputs_costs_hm55; assert_in_delta(0.033379788767912, worksheet.outputs_costs_hm55, 0.002); end
  def test_outputs_costs_hm56; assert_in_delta(0.38784759760991194, worksheet.outputs_costs_hm56, 0.002); end
  def test_outputs_costs_hm57; assert_in_delta(0.006276402927390516, worksheet.outputs_costs_hm57, 0.002); end
  def test_outputs_costs_hm58; assert_in_delta(0.016285535493884073, worksheet.outputs_costs_hm58, 0.002); end
  def test_outputs_costs_hm59; assert_in_delta(0.01017633940049947, worksheet.outputs_costs_hm59, 0.002); end
  def test_outputs_costs_hm60; assert_in_delta(0.0, (worksheet.outputs_costs_hm60||0), 0.002); end
  def test_outputs_costs_hm61; assert_in_delta(0.01417234981011866, worksheet.outputs_costs_hm61, 0.002); end
  def test_outputs_costs_hm62; assert_in_delta(0.00024121418949059423, worksheet.outputs_costs_hm62, 0.002); end
  def test_outputs_costs_hm63; assert_in_delta(0.0002412134997584849, worksheet.outputs_costs_hm63, 0.002); end
  def test_outputs_costs_hm64; assert_in_delta(3.4309076450846924e-06, worksheet.outputs_costs_hm64, 0.002); end
  def test_outputs_costs_hm65; assert_in_delta(0.0, (worksheet.outputs_costs_hm65||0), 0.002); end
  def test_outputs_costs_hm66; assert_in_delta(0.0, (worksheet.outputs_costs_hm66||0), 0.002); end
  def test_outputs_costs_hm67; assert_in_delta(0.0, (worksheet.outputs_costs_hm67||0), 0.002); end
  def test_outputs_costs_hm68; assert_in_delta(0.0, (worksheet.outputs_costs_hm68||0), 0.002); end
  def test_outputs_costs_hm69; assert_in_delta(0.0, (worksheet.outputs_costs_hm69||0), 0.002); end
  def test_outputs_costs_hm70; assert_in_delta(0.0, (worksheet.outputs_costs_hm70||0), 0.002); end
  def test_outputs_costs_hm71; assert_in_delta(0.0, (worksheet.outputs_costs_hm71||0), 0.002); end
  def test_outputs_costs_hm72; assert_in_delta(0.0, (worksheet.outputs_costs_hm72||0), 0.002); end
  def test_outputs_costs_hm73; assert_in_delta(0.0, (worksheet.outputs_costs_hm73||0), 0.002); end
  def test_outputs_costs_hm74; assert_in_delta(0.19865207936959223, worksheet.outputs_costs_hm74, 0.002); end
  def test_outputs_costs_hm75; assert_in_delta(0.0065706007859866345, worksheet.outputs_costs_hm75, 0.002); end
  def test_outputs_costs_hm76; assert_in_delta(0.020340852431813734, worksheet.outputs_costs_hm76, 0.002); end
  def test_outputs_costs_hm77; assert_in_delta(1.4267923176974467e-06, worksheet.outputs_costs_hm77, 0.002); end
  def test_outputs_costs_hm78; assert_in_delta(2.047797841418458e-09, worksheet.outputs_costs_hm78, 0.002); end
  def test_outputs_costs_hm79; assert_in_delta(0.017520322178167708, worksheet.outputs_costs_hm79, 0.002); end
  def test_outputs_costs_hm80; assert_in_delta(0.0007120005631708756, worksheet.outputs_costs_hm80, 0.002); end
  def test_outputs_costs_hm81; assert_in_delta(0.0007120005548833881, worksheet.outputs_costs_hm81, 0.002); end
  def test_outputs_costs_hm82; assert_in_delta(1.702439131506554e-07, worksheet.outputs_costs_hm82, 0.002); end
  def test_outputs_costs_hm83; assert_in_delta(0.0, (worksheet.outputs_costs_hm83||0), 0.002); end
  def test_outputs_costs_hm84; assert_in_delta(0.0, (worksheet.outputs_costs_hm84||0), 0.002); end
  def test_outputs_costs_hm85; assert_in_delta(0.0, (worksheet.outputs_costs_hm85||0), 0.002); end
  def test_outputs_costs_hm86; assert_in_delta(0.0, (worksheet.outputs_costs_hm86||0), 0.002); end
  def test_outputs_costs_hm87; assert_in_delta(0.0, (worksheet.outputs_costs_hm87||0), 0.002); end
  def test_outputs_costs_hm88; assert_in_delta(0.09254424804622904, worksheet.outputs_costs_hm88, 0.002); end
  def test_outputs_costs_hm89; assert_in_delta(0.0042203056153024, worksheet.outputs_costs_hm89, 0.002); end
  def test_outputs_costs_hm90; assert_in_delta(0.00422030557785168, worksheet.outputs_costs_hm90, 0.002); end
  def test_outputs_costs_hm91; assert_in_delta(7.693232902080151e-07, worksheet.outputs_costs_hm91, 0.002); end
  def test_outputs_costs_hm92; assert_in_delta(0.0, (worksheet.outputs_costs_hm92||0), 0.002); end
  def test_outputs_costs_hm93; assert_in_delta(0.0, (worksheet.outputs_costs_hm93||0), 0.002); end
  def test_outputs_costs_hm94; assert_in_delta(0.0, (worksheet.outputs_costs_hm94||0), 0.002); end
  def test_outputs_costs_hm95; assert_in_delta(0.0, (worksheet.outputs_costs_hm95||0), 0.002); end
  def test_outputs_costs_hm96; assert_in_delta(0.0, (worksheet.outputs_costs_hm96||0), 0.002); end
  def test_outputs_costs_hm97; assert_in_delta(0.0, (worksheet.outputs_costs_hm97||0), 0.002); end
  def test_outputs_costs_hm98; assert_in_delta(0.0, (worksheet.outputs_costs_hm98||0), 0.002); end
  def test_outputs_costs_hm99; assert_in_delta(0.0003746247049926823, worksheet.outputs_costs_hm99, 0.002); end
  def test_outputs_costs_hm100; assert_in_delta(0.010586424959383443, worksheet.outputs_costs_hm100, 0.002); end
  def test_outputs_costs_hm101; assert_in_delta(0.0664990127720729, worksheet.outputs_costs_hm101, 0.002); end
  def test_outputs_costs_hm102; assert_in_delta(0.0021650633238562266, worksheet.outputs_costs_hm102, 0.002); end
  def test_outputs_costs_hm103; assert_in_delta(0.0017622895778482024, worksheet.outputs_costs_hm103, 0.002); end
  def test_outputs_costs_hm104; assert_in_delta(0.00010515647112405725, worksheet.outputs_costs_hm104, 0.002); end
  def test_outputs_costs_hm105; assert_in_delta(0.0030421407385330937, worksheet.outputs_costs_hm105, 0.002); end
  def test_outputs_costs_hm106; assert_in_delta(0.0, (worksheet.outputs_costs_hm106||0), 0.002); end
  def test_outputs_costs_hm107; assert_in_delta(0.0010471297896315454, worksheet.outputs_costs_hm107, 0.002); end
  def test_outputs_costs_hm108; assert_in_delta(0.0010613612705030189, worksheet.outputs_costs_hm108, 0.002); end
  def test_outputs_costs_hm109; assert_in_delta(0.004327199086444159, worksheet.outputs_costs_hm109, 0.002); end
  def test_outputs_costs_hm110; assert_in_delta(0.00028572980850700833, worksheet.outputs_costs_hm110, 0.002); end
  def test_outputs_costs_hm111; assert_in_delta(0.00039282365945486955, worksheet.outputs_costs_hm111, 0.002); end
  def test_outputs_costs_hm112; assert_in_delta(7.006297264065044e-05, worksheet.outputs_costs_hm112, 0.002); end
  def test_outputs_costs_hm113; assert_in_delta(0.0, (worksheet.outputs_costs_hm113||0), 0.002); end
  def test_outputs_costs_hm114; assert_in_delta(0.0, (worksheet.outputs_costs_hm114||0), 0.002); end
  def test_outputs_costs_hm115; assert_in_delta(0.0008032790266447918, worksheet.outputs_costs_hm115, 0.002); end
  def test_outputs_costs_hm116; assert_in_delta(0.005100622946221578, worksheet.outputs_costs_hm116, 0.002); end
  def test_outputs_costs_hm117; assert_in_delta(0.003114040074602981, worksheet.outputs_costs_hm117, 0.002); end
  def test_outputs_costs_hm118; assert_in_delta(0.010853852165482687, worksheet.outputs_costs_hm118, 0.002); end
  def test_outputs_costs_hm119; assert_in_delta(0.0021584365823791884, worksheet.outputs_costs_hm119, 0.002); end
  def test_outputs_costs_hm120; assert_in_delta(0.002232352869085632, worksheet.outputs_costs_hm120, 0.002); end
  def test_outputs_costs_hm121; assert_in_delta(0.0004693998221769671, worksheet.outputs_costs_hm121, 0.002); end
  def test_outputs_costs_hm122; assert_in_delta(0.0, (worksheet.outputs_costs_hm122||0), 0.002); end
  def test_outputs_costs_hm123; assert_in_delta(0.0033554462217920836, worksheet.outputs_costs_hm123, 0.002); end
  def test_outputs_costs_hm124; assert_in_delta(0.0007399165919741223, worksheet.outputs_costs_hm124, 0.002); end
  def test_outputs_costs_hm125; assert_in_delta(2.3125428001183773e-05, worksheet.outputs_costs_hm125, 0.002); end
  def test_outputs_costs_hm126; assert_in_delta(9.010799286384535e-05, worksheet.outputs_costs_hm126, 0.002); end
  def test_outputs_costs_hm127; assert_in_delta(0.00023527335241550532, worksheet.outputs_costs_hm127, 0.002); end
  def test_outputs_costs_hm128; assert_in_delta(0.0008259448403237098, worksheet.outputs_costs_hm128, 0.002); end
  def test_outputs_costs_hm129; assert_in_delta(0.0, (worksheet.outputs_costs_hm129||0), 0.002); end
  def test_outputs_costs_hm130; assert_in_delta(0.0, (worksheet.outputs_costs_hm130||0), 0.002); end
  def test_outputs_costs_hm131; assert_in_delta(0.015421676377965534, worksheet.outputs_costs_hm131, 0.002); end
  def test_outputs_costs_hm132; assert_in_delta(0.0, (worksheet.outputs_costs_hm132||0), 0.002); end
  def test_outputs_costs_hm133; assert_in_delta(0.0, (worksheet.outputs_costs_hm133||0), 0.002); end
  def test_outputs_costs_hm134; assert_in_delta(0.0016688666184463796, worksheet.outputs_costs_hm134, 0.002); end
  def test_outputs_costs_hm135; assert_in_delta(0.0, (worksheet.outputs_costs_hm135||0), 0.002); end
  def test_outputs_costs_hm136; assert_in_delta(0.0, (worksheet.outputs_costs_hm136||0), 0.002); end
  def test_outputs_costs_hm137; assert_in_delta(0.013407229674757711, worksheet.outputs_costs_hm137, 0.002); end
  def test_outputs_costs_hm138; assert_in_delta(0.012715700183052875, worksheet.outputs_costs_hm138, 0.002); end
  def test_outputs_costs_hm139; assert_in_delta(0.03120719825164522, worksheet.outputs_costs_hm139, 0.002); end
  def test_outputs_costs_hm140; assert_in_delta(0.016212755583404233, worksheet.outputs_costs_hm140, 0.002); end
  def test_outputs_costs_hm141; assert_in_delta(0.004413500646764567, worksheet.outputs_costs_hm141, 0.002); end
  def test_outputs_costs_hm142; assert_in_delta(0.0029175201680328032, worksheet.outputs_costs_hm142, 0.002); end
  def test_outputs_costs_hm143; assert_in_delta(0.0009642171288597208, worksheet.outputs_costs_hm143, 0.002); end
  def test_outputs_costs_hm144; assert_in_delta(0.0008119723190397649, worksheet.outputs_costs_hm144, 0.002); end
  def test_outputs_costs_hm145; assert_in_delta(0.023852719247353178, worksheet.outputs_costs_hm145, 0.002); end
  def test_outputs_costs_hm146; assert_in_delta(0.00010894513058622333, worksheet.outputs_costs_hm146, 0.002); end
  def test_outputs_costs_hm147; assert_in_delta(0.0008413652741928127, worksheet.outputs_costs_hm147, 0.002); end
  def test_outputs_costs_hm148; assert_in_delta(2.3631795538042568e-05, worksheet.outputs_costs_hm148, 0.002); end
  def test_outputs_costs_hm149; assert_in_delta(0.0029643292670546093, worksheet.outputs_costs_hm149, 0.002); end
  def test_outputs_costs_hm150; assert_in_delta(1.3529438911242204e-05, worksheet.outputs_costs_hm150, 0.002); end
  def test_outputs_costs_hm151; assert_in_delta(0.00010411799590253494, worksheet.outputs_costs_hm151, 0.002); end
  def test_outputs_costs_hm152; assert_in_delta(2.9035932270245065e-06, worksheet.outputs_costs_hm152, 0.002); end
  def test_outputs_costs_hm153; assert_in_delta(0.017582758820962257, worksheet.outputs_costs_hm153, 0.002); end
  def test_outputs_costs_hm154; assert_in_delta(0.0036682934322955765, worksheet.outputs_costs_hm154, 0.002); end
  def test_outputs_costs_hm155; assert_in_delta(0.00943586879198208, worksheet.outputs_costs_hm155, 0.002); end
  def test_outputs_costs_hm156; assert_in_delta(0.006235955247121221, worksheet.outputs_costs_hm156, 0.002); end
  def test_outputs_costs_hm157; assert_in_delta(0.0, (worksheet.outputs_costs_hm157||0), 0.002); end
  def test_outputs_costs_hm158; assert_in_delta(0.0, (worksheet.outputs_costs_hm158||0), 0.002); end
  def test_outputs_costs_hm159; assert_in_delta(0.004458895058567839, worksheet.outputs_costs_hm159, 0.002); end
  def test_outputs_costs_hm160; assert_in_delta(0.0009329119460005911, worksheet.outputs_costs_hm160, 0.002); end
  def test_outputs_costs_hm161; assert_in_delta(0.0023997084419240516, worksheet.outputs_costs_hm161, 0.002); end
  def test_outputs_costs_hm162; assert_in_delta(0.0015859137912868299, worksheet.outputs_costs_hm162, 0.002); end
  def test_outputs_costs_hm163; assert_in_delta(0.0, (worksheet.outputs_costs_hm163||0), 0.002); end
  def test_outputs_costs_hm164; assert_in_delta(0.0, (worksheet.outputs_costs_hm164||0), 0.002); end
  def test_outputs_costs_hm165; assert_in_delta(0.00042299658884779, worksheet.outputs_costs_hm165, 0.002); end
  def test_outputs_costs_hm166; assert_in_delta(0.0028199772589852664, worksheet.outputs_costs_hm166, 0.002); end
  def test_outputs_costs_hm167; assert_in_delta(0.0006521916049505197, worksheet.outputs_costs_hm167, 0.002); end
  def test_outputs_costs_hm168; assert_in_delta(0.004347944033003465, worksheet.outputs_costs_hm168, 0.002); end
  def test_outputs_costs_hm169; assert_in_delta(0.006999836316888471, worksheet.outputs_costs_hm169, 0.002); end
  def test_outputs_costs_hm170; assert_in_delta(0.021804529987727896, worksheet.outputs_costs_hm170, 0.002); end
  def test_outputs_costs_hm171; assert_in_delta(0.00024741582412343287, worksheet.outputs_costs_hm171, 0.002); end
  def test_outputs_costs_hm172; assert_in_delta(0.004080092091369037, worksheet.outputs_costs_hm172, 0.002); end
  def test_outputs_costs_hm173; assert_in_delta(0.02467864103304368, worksheet.outputs_costs_hm173, 0.002); end
  def test_outputs_costs_hm174; assert_in_delta(0.023186547773719143, worksheet.outputs_costs_hm174, 0.002); end
  def test_outputs_costs_hm175; assert_in_delta(0.0, (worksheet.outputs_costs_hm175||0), 0.002); end
  def test_outputs_costs_hm176; assert_in_delta(0.0, (worksheet.outputs_costs_hm176||0), 0.002); end
  def test_outputs_costs_hm177; assert_in_delta(0.0, (worksheet.outputs_costs_hm177||0), 0.002); end
  def test_outputs_costs_hm178; assert_in_delta(0.0, (worksheet.outputs_costs_hm178||0), 0.002); end
  def test_outputs_costs_hm179; assert_in_delta(0.009509267956829486, worksheet.outputs_costs_hm179, 0.002); end
  def test_outputs_costs_hm180; assert_in_delta(0.0, (worksheet.outputs_costs_hm180||0), 0.002); end
  def test_outputs_costs_hm181; assert_in_delta(0.0, (worksheet.outputs_costs_hm181||0), 0.002); end
  def test_outputs_costs_hm182; assert_in_delta(0.02004261625317415, worksheet.outputs_costs_hm182, 0.002); end
  def test_outputs_costs_hm183; assert_in_delta(0.000809933091983068, worksheet.outputs_costs_hm183, 0.002); end
  def test_outputs_costs_hm184; assert_in_delta(0.003239732367932272, worksheet.outputs_costs_hm184, 0.002); end
  def test_outputs_costs_hm185; assert_in_delta(8.099330919830678e-05, worksheet.outputs_costs_hm185, 0.002); end
  def test_outputs_costs_hm186; assert_in_delta(0.0, (worksheet.outputs_costs_hm186||0), 0.002); end
  def test_outputs_costs_hm202; assert_in_delta(0.0006552138225033714, worksheet.outputs_costs_hm202, 0.002); end
  def test_outputs_costs_hm203; assert_in_delta(0.0007461358016238844, worksheet.outputs_costs_hm203, 0.002); end
  def test_outputs_costs_hm204; assert_in_delta(0.0030279122907477577, worksheet.outputs_costs_hm204, 0.002); end
  def test_outputs_costs_hm205; assert_in_delta(0.00014913502678053745, worksheet.outputs_costs_hm205, 0.002); end
  def test_outputs_costs_hm206; assert_in_delta(0.00023918489822987303, worksheet.outputs_costs_hm206, 0.002); end
  def test_outputs_costs_hm207; assert_in_delta(0.0002377953794762525, worksheet.outputs_costs_hm207, 0.002); end
  def test_outputs_costs_hm208; assert_in_delta(0.0014679882527058627, worksheet.outputs_costs_hm208, 0.002); end
  def test_outputs_costs_hm209; assert_in_delta(4.102559281249801e-05, worksheet.outputs_costs_hm209, 0.002); end
  def test_outputs_costs_hm210; assert_in_delta(0.0, (worksheet.outputs_costs_hm210||0), 0.002); end
  def test_outputs_costs_hm211; assert_in_delta(0.00013530247451861604, worksheet.outputs_costs_hm211, 0.002); end
  def test_outputs_costs_hm212; assert_in_delta(0.0, (worksheet.outputs_costs_hm212||0), 0.002); end
  def test_outputs_costs_hm213; assert_in_delta(0.0, (worksheet.outputs_costs_hm213||0), 0.002); end
  def test_outputs_costs_hm214; assert_in_delta(0.0, (worksheet.outputs_costs_hm214||0), 0.002); end
  def test_outputs_costs_hm215; assert_in_delta(4.917043545953885e-05, worksheet.outputs_costs_hm215, 0.002); end
  def test_outputs_costs_hm216; assert_in_delta(0.0018624371464285713, worksheet.outputs_costs_hm216, 0.002); end
  def test_outputs_costs_hm217; assert_in_delta(0.0012755110324232809, worksheet.outputs_costs_hm217, 0.002); end
  def test_outputs_costs_hm218; assert_in_delta(0.0006156352547517298, worksheet.outputs_costs_hm218, 0.002); end
  def test_outputs_costs_hm219; assert_in_delta(0.004340098180376068, worksheet.outputs_costs_hm219, 0.002); end
  def test_outputs_costs_hm220; assert_in_delta(0.00010332130887960929, worksheet.outputs_costs_hm220, 0.002); end
  def test_outputs_costs_hm221; assert_in_delta(0.0, (worksheet.outputs_costs_hm221||0), 0.002); end
  def test_outputs_costs_hm222; assert_in_delta(0.00027721778516890517, worksheet.outputs_costs_hm222, 0.002); end
  def test_outputs_costs_hm223; assert_in_delta(0.00020552540241269843, worksheet.outputs_costs_hm223, 0.002); end
  def test_outputs_costs_hm224; assert_in_delta(0.0002859339910832994, worksheet.outputs_costs_hm224, 0.002); end
  def test_outputs_costs_hm225; assert_in_delta(0.0, (worksheet.outputs_costs_hm225||0), 0.002); end
  def test_outputs_costs_hm435; assert_in_delta(0.0, (worksheet.outputs_costs_hm435||0), 0.002); end
  def test_outputs_costs_hm436; assert_in_delta(0.14360262076165706, worksheet.outputs_costs_hm436, 0.002); end
  def test_outputs_costs_hm437; assert_in_delta(0.047890765568344935, worksheet.outputs_costs_hm437, 0.002); end
  def test_outputs_costs_hm438; assert_in_delta(0.44816212957338664, worksheet.outputs_costs_hm438, 0.002); end
  def test_outputs_costs_hm439; assert_in_delta(0.0075245498006969065, worksheet.outputs_costs_hm439, 0.002); end
  def test_outputs_costs_hm440; assert_in_delta(0.020288504593350125, worksheet.outputs_costs_hm440, 0.002); end
  def test_outputs_costs_hm441; assert_in_delta(0.01237616511096833, worksheet.outputs_costs_hm441, 0.002); end
  def test_outputs_costs_hm442; assert_in_delta(0.0, (worksheet.outputs_costs_hm442||0), 0.002); end
  def test_outputs_costs_hm443; assert_in_delta(0.06866549868966706, worksheet.outputs_costs_hm443, 0.002); end
  def test_outputs_costs_hm444; assert_in_delta(0.0012260298589017024, worksheet.outputs_costs_hm444, 0.002); end
  def test_outputs_costs_hm445; assert_in_delta(0.0012260266522932976, worksheet.outputs_costs_hm445, 0.002); end
  def test_outputs_costs_hm446; assert_in_delta(0.0004246260584227474, worksheet.outputs_costs_hm446, 0.002); end
  def test_outputs_costs_hm447; assert_in_delta(0.0, (worksheet.outputs_costs_hm447||0), 0.002); end
  def test_outputs_costs_hm448; assert_in_delta(0.0, (worksheet.outputs_costs_hm448||0), 0.002); end
  def test_outputs_costs_hm449; assert_in_delta(0.0, (worksheet.outputs_costs_hm449||0), 0.002); end
  def test_outputs_costs_hm450; assert_in_delta(0.0, (worksheet.outputs_costs_hm450||0), 0.002); end
  def test_outputs_costs_hm451; assert_in_delta(0.07750062245722344, worksheet.outputs_costs_hm451, 0.002); end
  def test_outputs_costs_hm452; assert_in_delta(0.022253192511941328, worksheet.outputs_costs_hm452, 0.002); end
  def test_outputs_costs_hm453; assert_in_delta(0.25856506507327465, worksheet.outputs_costs_hm453, 0.002); end
  def test_outputs_costs_hm454; assert_in_delta(0.004184268618260345, worksheet.outputs_costs_hm454, 0.002); end
  def test_outputs_costs_hm455; assert_in_delta(0.010857023662589381, worksheet.outputs_costs_hm455, 0.002); end
  def test_outputs_costs_hm456; assert_in_delta(0.006784226266999647, worksheet.outputs_costs_hm456, 0.002); end
  def test_outputs_costs_hm457; assert_in_delta(0.0, (worksheet.outputs_costs_hm457||0), 0.002); end
  def test_outputs_costs_hm458; assert_in_delta(0.009448233206745777, worksheet.outputs_costs_hm458, 0.002); end
  def test_outputs_costs_hm459; assert_in_delta(0.00016080945966039618, worksheet.outputs_costs_hm459, 0.002); end
  def test_outputs_costs_hm460; assert_in_delta(0.00016080899983898997, worksheet.outputs_costs_hm460, 0.002); end
  def test_outputs_costs_hm461; assert_in_delta(2.2872717633897955e-06, worksheet.outputs_costs_hm461, 0.002); end
  def test_outputs_costs_hm462; assert_in_delta(0.0, (worksheet.outputs_costs_hm462||0), 0.002); end
  def test_outputs_costs_hm463; assert_in_delta(0.0, (worksheet.outputs_costs_hm463||0), 0.002); end
  def test_outputs_costs_hm464; assert_in_delta(0.0, (worksheet.outputs_costs_hm464||0), 0.002); end
  def test_outputs_costs_hm465; assert_in_delta(0.0, (worksheet.outputs_costs_hm465||0), 0.002); end
  def test_outputs_costs_hm466; assert_in_delta(0.0, (worksheet.outputs_costs_hm466||0), 0.002); end
  def test_outputs_costs_hm467; assert_in_delta(0.0, (worksheet.outputs_costs_hm467||0), 0.002); end
  def test_outputs_costs_hm468; assert_in_delta(0.0, (worksheet.outputs_costs_hm468||0), 0.002); end
  def test_outputs_costs_hm469; assert_in_delta(0.0, (worksheet.outputs_costs_hm469||0), 0.002); end
  def test_outputs_costs_hm470; assert_in_delta(0.0, (worksheet.outputs_costs_hm470||0), 0.002); end
  def test_outputs_costs_hm471; assert_in_delta(0.13243471957972816, worksheet.outputs_costs_hm471, 0.002); end
  def test_outputs_costs_hm472; assert_in_delta(0.00438040052399109, worksheet.outputs_costs_hm472, 0.002); end
  def test_outputs_costs_hm473; assert_in_delta(0.013560568287875824, worksheet.outputs_costs_hm473, 0.002); end
  def test_outputs_costs_hm474; assert_in_delta(9.511948784649647e-07, worksheet.outputs_costs_hm474, 0.002); end
  def test_outputs_costs_hm475; assert_in_delta(1.3651985609456385e-09, worksheet.outputs_costs_hm475, 0.002); end
  def test_outputs_costs_hm476; assert_in_delta(0.01168021478544514, worksheet.outputs_costs_hm476, 0.002); end
  def test_outputs_costs_hm477; assert_in_delta(0.0004746670421139172, worksheet.outputs_costs_hm477, 0.002); end
  def test_outputs_costs_hm478; assert_in_delta(0.0004746670365889255, worksheet.outputs_costs_hm478, 0.002); end
  def test_outputs_costs_hm479; assert_in_delta(1.1349594210043693e-07, worksheet.outputs_costs_hm479, 0.002); end
  def test_outputs_costs_hm480; assert_in_delta(0.0, (worksheet.outputs_costs_hm480||0), 0.002); end
  def test_outputs_costs_hm481; assert_in_delta(0.0, (worksheet.outputs_costs_hm481||0), 0.002); end
  def test_outputs_costs_hm482; assert_in_delta(0.0, (worksheet.outputs_costs_hm482||0), 0.002); end
  def test_outputs_costs_hm483; assert_in_delta(0.0, (worksheet.outputs_costs_hm483||0), 0.002); end
  def test_outputs_costs_hm484; assert_in_delta(0.0, (worksheet.outputs_costs_hm484||0), 0.002); end
  def test_outputs_costs_hm485; assert_in_delta(0.06169616536415269, worksheet.outputs_costs_hm485, 0.002); end
  def test_outputs_costs_hm486; assert_in_delta(0.0028135370768682666, worksheet.outputs_costs_hm486, 0.002); end
  def test_outputs_costs_hm487; assert_in_delta(0.00281353705190112, worksheet.outputs_costs_hm487, 0.002); end
  def test_outputs_costs_hm488; assert_in_delta(5.1288219347201e-07, worksheet.outputs_costs_hm488, 0.002); end
  def test_outputs_costs_hm489; assert_in_delta(0.0, (worksheet.outputs_costs_hm489||0), 0.002); end
  def test_outputs_costs_hm490; assert_in_delta(0.0, (worksheet.outputs_costs_hm490||0), 0.002); end
  def test_outputs_costs_hm491; assert_in_delta(0.0, (worksheet.outputs_costs_hm491||0), 0.002); end
  def test_outputs_costs_hm492; assert_in_delta(0.0, (worksheet.outputs_costs_hm492||0), 0.002); end
  def test_outputs_costs_hm493; assert_in_delta(0.0, (worksheet.outputs_costs_hm493||0), 0.002); end
  def test_outputs_costs_hm494; assert_in_delta(0.0, (worksheet.outputs_costs_hm494||0), 0.002); end
  def test_outputs_costs_hm495; assert_in_delta(0.0, (worksheet.outputs_costs_hm495||0), 0.002); end
  def test_outputs_costs_hm496; assert_in_delta(0.0002497498033284549, worksheet.outputs_costs_hm496, 0.002); end
  def test_outputs_costs_hm497; assert_in_delta(0.0070576166395889635, worksheet.outputs_costs_hm497, 0.002); end
  def test_outputs_costs_hm498; assert_in_delta(0.04433267518138194, worksheet.outputs_costs_hm498, 0.002); end
  def test_outputs_costs_hm499; assert_in_delta(0.0014433755492374843, worksheet.outputs_costs_hm499, 0.002); end
  def test_outputs_costs_hm500; assert_in_delta(0.0011748597185654679, worksheet.outputs_costs_hm500, 0.002); end
  def test_outputs_costs_hm501; assert_in_delta(7.010431408270484e-05, worksheet.outputs_costs_hm501, 0.002); end
  def test_outputs_costs_hm502; assert_in_delta(0.002028093825688729, worksheet.outputs_costs_hm502, 0.002); end
  def test_outputs_costs_hm503; assert_in_delta(0.0, (worksheet.outputs_costs_hm503||0), 0.002); end
  def test_outputs_costs_hm504; assert_in_delta(0.0006980865264210301, worksheet.outputs_costs_hm504, 0.002); end
  def test_outputs_costs_hm505; assert_in_delta(0.0007075741803353459, worksheet.outputs_costs_hm505, 0.002); end
  def test_outputs_costs_hm506; assert_in_delta(0.002884799390962773, worksheet.outputs_costs_hm506, 0.002); end
  def test_outputs_costs_hm507; assert_in_delta(0.00019048653900467219, worksheet.outputs_costs_hm507, 0.002); end
  def test_outputs_costs_hm508; assert_in_delta(0.0002618824396365797, worksheet.outputs_costs_hm508, 0.002); end
  def test_outputs_costs_hm509; assert_in_delta(4.670864842710031e-05, worksheet.outputs_costs_hm509, 0.002); end
  def test_outputs_costs_hm510; assert_in_delta(0.0, (worksheet.outputs_costs_hm510||0), 0.002); end
  def test_outputs_costs_hm511; assert_in_delta(0.0, (worksheet.outputs_costs_hm511||0), 0.002); end
  def test_outputs_costs_hm512; assert_in_delta(0.0005355193510965279, worksheet.outputs_costs_hm512, 0.002); end
  def test_outputs_costs_hm513; assert_in_delta(0.0034004152974810515, worksheet.outputs_costs_hm513, 0.002); end
  def test_outputs_costs_hm514; assert_in_delta(0.0020760267164019867, worksheet.outputs_costs_hm514, 0.002); end
  def test_outputs_costs_hm515; assert_in_delta(0.007235901443655125, worksheet.outputs_costs_hm515, 0.002); end
  def test_outputs_costs_hm516; assert_in_delta(0.0014389577215861257, worksheet.outputs_costs_hm516, 0.002); end
  def test_outputs_costs_hm517; assert_in_delta(0.0014882352460570884, worksheet.outputs_costs_hm517, 0.002); end
  def test_outputs_costs_hm518; assert_in_delta(0.0003129332147846448, worksheet.outputs_costs_hm518, 0.002); end
  def test_outputs_costs_hm519; assert_in_delta(0.0, (worksheet.outputs_costs_hm519||0), 0.002); end
  def test_outputs_costs_hm520; assert_in_delta(0.002236964147861389, worksheet.outputs_costs_hm520, 0.002); end
  def test_outputs_costs_hm521; assert_in_delta(0.0004932777279827482, worksheet.outputs_costs_hm521, 0.002); end
  def test_outputs_costs_hm522; assert_in_delta(1.541695200078918e-05, worksheet.outputs_costs_hm522, 0.002); end
  def test_outputs_costs_hm523; assert_in_delta(6.0071995242563575e-05, worksheet.outputs_costs_hm523, 0.002); end
  def test_outputs_costs_hm524; assert_in_delta(0.00015684890161033686, worksheet.outputs_costs_hm524, 0.002); end
  def test_outputs_costs_hm525; assert_in_delta(0.00055062989354914, worksheet.outputs_costs_hm525, 0.002); end
  def test_outputs_costs_hm526; assert_in_delta(0.0, (worksheet.outputs_costs_hm526||0), 0.002); end
  def test_outputs_costs_hm527; assert_in_delta(0.0, (worksheet.outputs_costs_hm527||0), 0.002); end
  def test_outputs_costs_hm528; assert_in_delta(0.010281117585310355, worksheet.outputs_costs_hm528, 0.002); end
  def test_outputs_costs_hm529; assert_in_delta(0.0, (worksheet.outputs_costs_hm529||0), 0.002); end
  def test_outputs_costs_hm530; assert_in_delta(0.0, (worksheet.outputs_costs_hm530||0), 0.002); end
  def test_outputs_costs_hm531; assert_in_delta(0.0011125777456309194, worksheet.outputs_costs_hm531, 0.002); end
  def test_outputs_costs_hm532; assert_in_delta(0.0, (worksheet.outputs_costs_hm532||0), 0.002); end
  def test_outputs_costs_hm533; assert_in_delta(0.0, (worksheet.outputs_costs_hm533||0), 0.002); end
  def test_outputs_costs_hm534; assert_in_delta(0.00893815311650514, worksheet.outputs_costs_hm534, 0.002); end
  def test_outputs_costs_hm535; assert_in_delta(0.008477133455368584, worksheet.outputs_costs_hm535, 0.002); end
  def test_outputs_costs_hm536; assert_in_delta(0.020804798834430142, worksheet.outputs_costs_hm536, 0.002); end
  def test_outputs_costs_hm537; assert_in_delta(0.01080850372226949, worksheet.outputs_costs_hm537, 0.002); end
  def test_outputs_costs_hm538; assert_in_delta(0.0029423337645097113, worksheet.outputs_costs_hm538, 0.002); end
  def test_outputs_costs_hm539; assert_in_delta(0.0019450134453552026, worksheet.outputs_costs_hm539, 0.002); end
  def test_outputs_costs_hm540; assert_in_delta(0.0006428114192398138, worksheet.outputs_costs_hm540, 0.002); end
  def test_outputs_costs_hm541; assert_in_delta(0.0005413148793598433, worksheet.outputs_costs_hm541, 0.002); end
  def test_outputs_costs_hm542; assert_in_delta(0.015901812831568787, worksheet.outputs_costs_hm542, 0.002); end
  def test_outputs_costs_hm543; assert_in_delta(7.263008705748221e-05, worksheet.outputs_costs_hm543, 0.002); end
  def test_outputs_costs_hm544; assert_in_delta(0.0005609101827952085, worksheet.outputs_costs_hm544, 0.002); end
  def test_outputs_costs_hm545; assert_in_delta(1.5754530358695046e-05, worksheet.outputs_costs_hm545, 0.002); end
  def test_outputs_costs_hm546; assert_in_delta(0.001976219511369739, worksheet.outputs_costs_hm546, 0.002); end
  def test_outputs_costs_hm547; assert_in_delta(9.019625940828137e-06, worksheet.outputs_costs_hm547, 0.002); end
  def test_outputs_costs_hm548; assert_in_delta(6.941199726835662e-05, worksheet.outputs_costs_hm548, 0.002); end
  def test_outputs_costs_hm549; assert_in_delta(1.9357288180163377e-06, worksheet.outputs_costs_hm549, 0.002); end
  def test_outputs_costs_hm550; assert_in_delta(0.011721839213974837, worksheet.outputs_costs_hm550, 0.002); end
  def test_outputs_costs_hm551; assert_in_delta(0.002445528954863718, worksheet.outputs_costs_hm551, 0.002); end
  def test_outputs_costs_hm552; assert_in_delta(0.006290579194654721, worksheet.outputs_costs_hm552, 0.002); end
  def test_outputs_costs_hm553; assert_in_delta(0.004157303498080814, worksheet.outputs_costs_hm553, 0.002); end
  def test_outputs_costs_hm554; assert_in_delta(0.0, (worksheet.outputs_costs_hm554||0), 0.002); end
  def test_outputs_costs_hm555; assert_in_delta(0.0, (worksheet.outputs_costs_hm555||0), 0.002); end
  def test_outputs_costs_hm556; assert_in_delta(0.002972596705711892, worksheet.outputs_costs_hm556, 0.002); end
  def test_outputs_costs_hm557; assert_in_delta(0.0006219412973337275, worksheet.outputs_costs_hm557, 0.002); end
  def test_outputs_costs_hm558; assert_in_delta(0.0015998056279493678, worksheet.outputs_costs_hm558, 0.002); end
  def test_outputs_costs_hm559; assert_in_delta(0.0010572758608578866, worksheet.outputs_costs_hm559, 0.002); end
  def test_outputs_costs_hm560; assert_in_delta(0.0, (worksheet.outputs_costs_hm560||0), 0.002); end
  def test_outputs_costs_hm561; assert_in_delta(0.0, (worksheet.outputs_costs_hm561||0), 0.002); end
  def test_outputs_costs_hm562; assert_in_delta(0.0002819977258985266, worksheet.outputs_costs_hm562, 0.002); end
  def test_outputs_costs_hm563; assert_in_delta(0.0018799848393235112, worksheet.outputs_costs_hm563, 0.002); end
  def test_outputs_costs_hm564; assert_in_delta(0.00043479440330034647, worksheet.outputs_costs_hm564, 0.002); end
  def test_outputs_costs_hm565; assert_in_delta(0.0028986293553356435, worksheet.outputs_costs_hm565, 0.002); end
  def test_outputs_costs_hm566; assert_in_delta(0.004666557544592314, worksheet.outputs_costs_hm566, 0.002); end
  def test_outputs_costs_hm567; assert_in_delta(0.014536353325151932, worksheet.outputs_costs_hm567, 0.002); end
  def test_outputs_costs_hm596; assert_in_delta(0.0005360840365936675, worksheet.outputs_costs_hm596, 0.002); end
  def test_outputs_costs_hm597; assert_in_delta(0.0006104747467831782, worksheet.outputs_costs_hm597, 0.002); end
  def test_outputs_costs_hm598; assert_in_delta(0.002477382783339074, worksheet.outputs_costs_hm598, 0.002); end
  def test_outputs_costs_hm599; assert_in_delta(0.00012201956736589428, worksheet.outputs_costs_hm599, 0.002); end
  def test_outputs_costs_hm600; assert_in_delta(0.00019569673491535064, worksheet.outputs_costs_hm600, 0.002); end
  def test_outputs_costs_hm601; assert_in_delta(0.00019455985593511564, worksheet.outputs_costs_hm601, 0.002); end
  def test_outputs_costs_hm602; assert_in_delta(0.0012010812976684332, worksheet.outputs_costs_hm602, 0.002); end
  def test_outputs_costs_hm603; assert_in_delta(3.356639411931655e-05, worksheet.outputs_costs_hm603, 0.002); end
  def test_outputs_costs_hm604; assert_in_delta(0.0, (worksheet.outputs_costs_hm604||0), 0.002); end
  def test_outputs_costs_hm605; assert_in_delta(0.00011070202460614042, worksheet.outputs_costs_hm605, 0.002); end
  def test_outputs_costs_hm606; assert_in_delta(0.0, (worksheet.outputs_costs_hm606||0), 0.002); end
  def test_outputs_costs_hm607; assert_in_delta(0.0, (worksheet.outputs_costs_hm607||0), 0.002); end
  def test_outputs_costs_hm608; assert_in_delta(0.0, (worksheet.outputs_costs_hm608||0), 0.002); end
  def test_outputs_costs_hm609; assert_in_delta(4.0230356285077246e-05, worksheet.outputs_costs_hm609, 0.002); end
  def test_outputs_costs_hm610; assert_in_delta(0.0015238122107142857, worksheet.outputs_costs_hm610, 0.002); end
  def test_outputs_costs_hm611; assert_in_delta(0.0010435999356190476, worksheet.outputs_costs_hm611, 0.002); end
  def test_outputs_costs_hm612; assert_in_delta(0.000503701572069597, worksheet.outputs_costs_hm612, 0.002); end
  def test_outputs_costs_hm613; assert_in_delta(0.003550989420307693, worksheet.outputs_costs_hm613, 0.002); end
  def test_outputs_costs_hm614; assert_in_delta(8.453561635604396e-05, worksheet.outputs_costs_hm614, 0.002); end
  def test_outputs_costs_hm615; assert_in_delta(0.0, (worksheet.outputs_costs_hm615||0), 0.002); end
  def test_outputs_costs_hm616; assert_in_delta(0.00022681455150183147, worksheet.outputs_costs_hm616, 0.002); end
  def test_outputs_costs_hm617; assert_in_delta(0.0001681571474285714, worksheet.outputs_costs_hm617, 0.002); end
  def test_outputs_costs_hm618; assert_in_delta(0.00023394599270451765, worksheet.outputs_costs_hm618, 0.002); end
  def test_outputs_costs_hm619; assert_in_delta(0.0, (worksheet.outputs_costs_hm619||0), 0.002); end
  def test_outputs_costs_hm236; assert_in_delta(3.114571330214452e-05, worksheet.outputs_costs_hm236, 0.002); end
  def test_outputs_costs_hm237; assert_in_delta(0.2753580685482421, worksheet.outputs_costs_hm237, 0.002); end
  def test_outputs_costs_hm238; assert_in_delta(0.08705301601171322, worksheet.outputs_costs_hm238, 0.002); end
  def test_outputs_costs_hm239; assert_in_delta(0.929379951748362, worksheet.outputs_costs_hm239, 0.002); end
  def test_outputs_costs_hm240; assert_in_delta(0.015234550985546158, worksheet.outputs_costs_hm240, 0.002); end
  def test_outputs_costs_hm241; assert_in_delta(0.04028818252496848, worksheet.outputs_costs_hm241, 0.002); end
  def test_outputs_costs_hm242; assert_in_delta(0.02501672300501809, worksheet.outputs_costs_hm242, 0.002); end
  def test_outputs_costs_hm243; assert_in_delta(0.0, (worksheet.outputs_costs_hm243||0), 0.002); end
  def test_outputs_costs_hm244; assert_in_delta(0.13447337154556638, worksheet.outputs_costs_hm244, 0.002); end
  def test_outputs_costs_hm245; assert_in_delta(0.002253516977131653, worksheet.outputs_costs_hm245, 0.002); end
  def test_outputs_costs_hm246; assert_in_delta(0.0022535102543795125, worksheet.outputs_costs_hm246, 0.002); end
  def test_outputs_costs_hm247; assert_in_delta(0.0007846108096833002, worksheet.outputs_costs_hm247, 0.002); end
  def test_outputs_costs_hm248; assert_in_delta(0.0, (worksheet.outputs_costs_hm248||0), 0.002); end
  def test_outputs_costs_hm249; assert_in_delta(0.0, (worksheet.outputs_costs_hm249||0), 0.002); end
  def test_outputs_costs_hm250; assert_in_delta(0.0, (worksheet.outputs_costs_hm250||0), 0.002); end
  def test_outputs_costs_hm251; assert_in_delta(2.693484898277759e-05, worksheet.outputs_costs_hm251, 0.002); end
  def test_outputs_costs_hm252; assert_in_delta(0.1508219208735745, worksheet.outputs_costs_hm252, 0.002); end
  def test_outputs_costs_hm253; assert_in_delta(0.041078703214613856, worksheet.outputs_costs_hm253, 0.002); end
  def test_outputs_costs_hm254; assert_in_delta(0.5421522211185812, worksheet.outputs_costs_hm254, 0.002); end
  def test_outputs_costs_hm255; assert_in_delta(0.008572224579903913, worksheet.outputs_costs_hm255, 0.002); end
  def test_outputs_costs_hm256; assert_in_delta(0.021780394911193695, worksheet.outputs_costs_hm256, 0.002); end
  def test_outputs_costs_hm257; assert_in_delta(0.013860969555051748, worksheet.outputs_costs_hm257, 0.002); end
  def test_outputs_costs_hm258; assert_in_delta(0.0, (worksheet.outputs_costs_hm258||0), 0.002); end
  def test_outputs_costs_hm259; assert_in_delta(0.018616357014101904, worksheet.outputs_costs_hm259, 0.002); end
  def test_outputs_costs_hm260; assert_in_delta(0.00029726375964767775, worksheet.outputs_costs_hm260, 0.002); end
  def test_outputs_costs_hm261; assert_in_delta(0.0002972627941789398, worksheet.outputs_costs_hm261, 0.002); end
  def test_outputs_costs_hm262; assert_in_delta(4.8024936485286155e-06, worksheet.outputs_costs_hm262, 0.002); end
  def test_outputs_costs_hm263; assert_in_delta(0.0, (worksheet.outputs_costs_hm263||0), 0.002); end
  def test_outputs_costs_hm264; assert_in_delta(0.0, (worksheet.outputs_costs_hm264||0), 0.002); end
  def test_outputs_costs_hm265; assert_in_delta(0.0, (worksheet.outputs_costs_hm265||0), 0.002); end
  def test_outputs_costs_hm266; assert_in_delta(0.0, (worksheet.outputs_costs_hm266||0), 0.002); end
  def test_outputs_costs_hm267; assert_in_delta(0.0, (worksheet.outputs_costs_hm267||0), 0.002); end
  def test_outputs_costs_hm268; assert_in_delta(0.0, (worksheet.outputs_costs_hm268||0), 0.002); end
  def test_outputs_costs_hm269; assert_in_delta(0.0, (worksheet.outputs_costs_hm269||0), 0.002); end
  def test_outputs_costs_hm270; assert_in_delta(0.0, (worksheet.outputs_costs_hm270||0), 0.002); end
  def test_outputs_costs_hm271; assert_in_delta(0.0, (worksheet.outputs_costs_hm271||0), 0.002); end
  def test_outputs_costs_hm272; assert_in_delta(0.30897940123544587, worksheet.outputs_costs_hm272, 0.002); end
  def test_outputs_costs_hm273; assert_in_delta(0.009607250671959005, worksheet.outputs_costs_hm273, 0.002); end
  def test_outputs_costs_hm274; assert_in_delta(0.02997321585933568, worksheet.outputs_costs_hm274, 0.002); end
  def test_outputs_costs_hm275; assert_in_delta(2.4042011790917548e-06, worksheet.outputs_costs_hm275, 0.002); end
  def test_outputs_costs_hm276; assert_in_delta(4.3322363979932354e-09, worksheet.outputs_costs_hm276, 0.002); end
  def test_outputs_costs_hm277; assert_in_delta(0.030566472294481933, worksheet.outputs_costs_hm277, 0.002); end
  def test_outputs_costs_hm278; assert_in_delta(0.0011577002420915558, worksheet.outputs_costs_hm278, 0.002); end
  def test_outputs_costs_hm279; assert_in_delta(0.0011577002264700454, worksheet.outputs_costs_hm279, 0.002); end
  def test_outputs_costs_hm280; assert_in_delta(3.209014888554706e-07, worksheet.outputs_costs_hm280, 0.002); end
  def test_outputs_costs_hm281; assert_in_delta(0.0, (worksheet.outputs_costs_hm281||0), 0.002); end
  def test_outputs_costs_hm282; assert_in_delta(0.0, (worksheet.outputs_costs_hm282||0), 0.002); end
  def test_outputs_costs_hm283; assert_in_delta(0.0, (worksheet.outputs_costs_hm283||0), 0.002); end
  def test_outputs_costs_hm284; assert_in_delta(0.0, (worksheet.outputs_costs_hm284||0), 0.002); end
  def test_outputs_costs_hm285; assert_in_delta(0.0, (worksheet.outputs_costs_hm285||0), 0.002); end
  def test_outputs_costs_hm286; assert_in_delta(0.15786447047371, worksheet.outputs_costs_hm286, 0.002); end
  def test_outputs_costs_hm287; assert_in_delta(0.006728204994569721, worksheet.outputs_costs_hm287, 0.002); end
  def test_outputs_costs_hm288; assert_in_delta(0.006728204924202757, worksheet.outputs_costs_hm288, 0.002); end
  def test_outputs_costs_hm289; assert_in_delta(1.4454980552840286e-06, worksheet.outputs_costs_hm289, 0.002); end
  def test_outputs_costs_hm290; assert_in_delta(0.0, (worksheet.outputs_costs_hm290||0), 0.002); end
  def test_outputs_costs_hm291; assert_in_delta(0.0, (worksheet.outputs_costs_hm291||0), 0.002); end
  def test_outputs_costs_hm292; assert_in_delta(0.0, (worksheet.outputs_costs_hm292||0), 0.002); end
  def test_outputs_costs_hm293; assert_in_delta(0.0, (worksheet.outputs_costs_hm293||0), 0.002); end
  def test_outputs_costs_hm294; assert_in_delta(0.0, (worksheet.outputs_costs_hm294||0), 0.002); end
  def test_outputs_costs_hm295; assert_in_delta(0.0, (worksheet.outputs_costs_hm295||0), 0.002); end
  def test_outputs_costs_hm296; assert_in_delta(0.0, (worksheet.outputs_costs_hm296||0), 0.002); end
  def test_outputs_costs_hm297; assert_in_delta(0.0006272763296422377, worksheet.outputs_costs_hm297, 0.002); end
  def test_outputs_costs_hm298; assert_in_delta(0.011649474739379849, worksheet.outputs_costs_hm298, 0.002); end
  def test_outputs_costs_hm299; assert_in_delta(0.06619133816684122, worksheet.outputs_costs_hm299, 0.002); end
  def test_outputs_costs_hm300; assert_in_delta(0.0025816464459714177, worksheet.outputs_costs_hm300, 0.002); end
  def test_outputs_costs_hm301; assert_in_delta(0.0029328797545275604, worksheet.outputs_costs_hm301, 0.002); end
  def test_outputs_costs_hm302; assert_in_delta(0.0001809947757520505, worksheet.outputs_costs_hm302, 0.002); end
  def test_outputs_costs_hm303; assert_in_delta(0.003208698227866886, worksheet.outputs_costs_hm303, 0.002); end
  def test_outputs_costs_hm304; assert_in_delta(0.0, (worksheet.outputs_costs_hm304||0), 0.002); end
  def test_outputs_costs_hm305; assert_in_delta(0.0016298037289148755, worksheet.outputs_costs_hm305, 0.002); end
  def test_outputs_costs_hm306; assert_in_delta(0.001133910473239235, worksheet.outputs_costs_hm306, 0.002); end
  def test_outputs_costs_hm307; assert_in_delta(0.0043006182400944105, worksheet.outputs_costs_hm307, 0.002); end
  def test_outputs_costs_hm308; assert_in_delta(0.0003576657803026529, worksheet.outputs_costs_hm308, 0.002); end
  def test_outputs_costs_hm309; assert_in_delta(0.0006334942077623825, worksheet.outputs_costs_hm309, 0.002); end
  def test_outputs_costs_hm310; assert_in_delta(0.00012157193713052733, worksheet.outputs_costs_hm310, 0.002); end
  def test_outputs_costs_hm311; assert_in_delta(0.0011875426638337419, worksheet.outputs_costs_hm311, 0.002); end
  def test_outputs_costs_hm312; assert_in_delta(0.0, (worksheet.outputs_costs_hm312||0), 0.002); end
  def test_outputs_costs_hm313; assert_in_delta(0.0015678787827254174, worksheet.outputs_costs_hm313, 0.002); end
  def test_outputs_costs_hm314; assert_in_delta(0.005531219890927044, worksheet.outputs_costs_hm314, 0.002); end
  def test_outputs_costs_hm315; assert_in_delta(0.0043086090385207375, worksheet.outputs_costs_hm315, 0.002); end
  def test_outputs_costs_hm316; assert_in_delta(0.010816358976257155, worksheet.outputs_costs_hm316, 0.002); end
  def test_outputs_costs_hm317; assert_in_delta(0.002857140055658225, worksheet.outputs_costs_hm317, 0.002); end
  def test_outputs_costs_hm318; assert_in_delta(0.003003040398514298, worksheet.outputs_costs_hm318, 0.002); end
  def test_outputs_costs_hm319; assert_in_delta(0.0007151609043474926, worksheet.outputs_costs_hm319, 0.002); end
  def test_outputs_costs_hm320; assert_in_delta(0.0, (worksheet.outputs_costs_hm320||0), 0.002); end
  def test_outputs_costs_hm321; assert_in_delta(0.005068410466614207, worksheet.outputs_costs_hm321, 0.002); end
  def test_outputs_costs_hm322; assert_in_delta(0.0007809747095460389, worksheet.outputs_costs_hm322, 0.002); end
  def test_outputs_costs_hm323; assert_in_delta(4.386569462442374e-05, worksheet.outputs_costs_hm323, 0.002); end
  def test_outputs_costs_hm324; assert_in_delta(0.00013326236102982744, worksheet.outputs_costs_hm324, 0.002); end
  def test_outputs_costs_hm325; assert_in_delta(0.00031993967971551986, worksheet.outputs_costs_hm325, 0.002); end
  def test_outputs_costs_hm326; assert_in_delta(0.0011689072262775985, worksheet.outputs_costs_hm326, 0.002); end
  def test_outputs_costs_hm327; assert_in_delta(0.0011875426638337419, worksheet.outputs_costs_hm327, 0.002); end
  def test_outputs_costs_hm328; assert_in_delta(0.0, (worksheet.outputs_costs_hm328||0), 0.002); end
  def test_outputs_costs_hm329; assert_in_delta(0.023126679264641938, worksheet.outputs_costs_hm329, 0.002); end
  def test_outputs_costs_hm330; assert_in_delta(0.0, (worksheet.outputs_costs_hm330||0), 0.002); end
  def test_outputs_costs_hm331; assert_in_delta(0.0, (worksheet.outputs_costs_hm331||0), 0.002); end
  def test_outputs_costs_hm332; assert_in_delta(0.0024399384164479464, worksheet.outputs_costs_hm332, 0.002); end
  def test_outputs_costs_hm333; assert_in_delta(0.0, (worksheet.outputs_costs_hm333||0), 0.002); end
  def test_outputs_costs_hm334; assert_in_delta(0.0, (worksheet.outputs_costs_hm334||0), 0.002); end
  def test_outputs_costs_hm335; assert_in_delta(0.015824210967833503, worksheet.outputs_costs_hm335, 0.002); end
  def test_outputs_costs_hm336; assert_in_delta(0.02317019331433875, worksheet.outputs_costs_hm336, 0.002); end
  def test_outputs_costs_hm337; assert_in_delta(0.050366507272387034, worksheet.outputs_costs_hm337, 0.002); end
  def test_outputs_costs_hm338; assert_in_delta(0.027666126832128896, worksheet.outputs_costs_hm338, 0.002); end
  def test_outputs_costs_hm339; assert_in_delta(0.005734489113529955, worksheet.outputs_costs_hm339, 0.002); end
  def test_outputs_costs_hm340; assert_in_delta(0.004144305941886515, worksheet.outputs_costs_hm340, 0.002); end
  def test_outputs_costs_hm341; assert_in_delta(0.0014492885653276321, worksheet.outputs_costs_hm341, 0.002); end
  def test_outputs_costs_hm342; assert_in_delta(0.004385428145893307, worksheet.outputs_costs_hm342, 0.002); end
  def test_outputs_costs_hm343; assert_in_delta(0.02032708443410548, worksheet.outputs_costs_hm343, 0.002); end
  def test_outputs_costs_hm344; assert_in_delta(0.00018049927634356916, worksheet.outputs_costs_hm344, 0.002); end
  def test_outputs_costs_hm345; assert_in_delta(0.0009614503168635202, worksheet.outputs_costs_hm345, 0.002); end
  def test_outputs_costs_hm346; assert_in_delta(6.460713838121424e-05, worksheet.outputs_costs_hm346, 0.002); end
  def test_outputs_costs_hm347; assert_in_delta(0.0025264216072453335, worksheet.outputs_costs_hm347, 0.002); end
  def test_outputs_costs_hm348; assert_in_delta(1.4689952248792345e-05, worksheet.outputs_costs_hm348, 0.002); end
  def test_outputs_costs_hm349; assert_in_delta(0.00011830607309963847, worksheet.outputs_costs_hm349, 0.002); end
  def test_outputs_costs_hm350; assert_in_delta(9.6070907048242e-06, worksheet.outputs_costs_hm350, 0.002); end
  def test_outputs_costs_hm351; assert_in_delta(0.042189095083168114, worksheet.outputs_costs_hm351, 0.002); end
  def test_outputs_costs_hm352; assert_in_delta(0.006918284880892161, worksheet.outputs_costs_hm352, 0.002); end
  def test_outputs_costs_hm353; assert_in_delta(0.02188938077178483, worksheet.outputs_costs_hm353, 0.002); end
  def test_outputs_costs_hm354; assert_in_delta(0.010240073668571846, worksheet.outputs_costs_hm354, 0.002); end
  def test_outputs_costs_hm355; assert_in_delta(0.0, (worksheet.outputs_costs_hm355||0), 0.002); end
  def test_outputs_costs_hm356; assert_in_delta(0.0, (worksheet.outputs_costs_hm356||0), 0.002); end
  def test_outputs_costs_hm357; assert_in_delta(0.010687193080175832, worksheet.outputs_costs_hm357, 0.002); end
  def test_outputs_costs_hm358; assert_in_delta(0.0017788452445218475, worksheet.outputs_costs_hm358, 0.002); end
  def test_outputs_costs_hm359; assert_in_delta(0.0038443455153794794, worksheet.outputs_costs_hm359, 0.002); end
  def test_outputs_costs_hm360; assert_in_delta(0.0042202817951059604, worksheet.outputs_costs_hm360, 0.002); end
  def test_outputs_costs_hm361; assert_in_delta(0.0, (worksheet.outputs_costs_hm361||0), 0.002); end
  def test_outputs_costs_hm362; assert_in_delta(0.0, (worksheet.outputs_costs_hm362||0), 0.002); end
  def test_outputs_costs_hm363; assert_in_delta(0.0008230180728738029, worksheet.outputs_costs_hm363, 0.002); end
  def test_outputs_costs_hm364; assert_in_delta(0.006087077397365057, worksheet.outputs_costs_hm364, 0.002); end
  def test_outputs_costs_hm365; assert_in_delta(0.001217282901250072, worksheet.outputs_costs_hm365, 0.002); end
  def test_outputs_costs_hm366; assert_in_delta(0.007511165913454747, worksheet.outputs_costs_hm366, 0.002); end
  def test_outputs_costs_hm367; assert_in_delta(0.010107568489867885, worksheet.outputs_costs_hm367, 0.002); end
  def test_outputs_costs_hm368; assert_in_delta(0.028306301482749867, worksheet.outputs_costs_hm368, 0.002); end
  def test_outputs_costs_hm369; assert_in_delta(0.00044372114405016833, worksheet.outputs_costs_hm369, 0.002); end
  def test_outputs_costs_hm370; assert_in_delta(0.004610840582839394, worksheet.outputs_costs_hm370, 0.002); end
  def test_outputs_costs_hm371; assert_in_delta(0.024243668488078983, worksheet.outputs_costs_hm371, 0.002); end
  def test_outputs_costs_hm372; assert_in_delta(0.02656739534592263, worksheet.outputs_costs_hm372, 0.002); end
  def test_outputs_costs_hm373; assert_in_delta(0.00023111641346299717, worksheet.outputs_costs_hm373, 0.002); end
  def test_outputs_costs_hm374; assert_in_delta(0.0, (worksheet.outputs_costs_hm374||0), 0.002); end
  def test_outputs_costs_hm375; assert_in_delta(0.0007815581816960464, worksheet.outputs_costs_hm375, 0.002); end
  def test_outputs_costs_hm376; assert_in_delta(0.0, (worksheet.outputs_costs_hm376||0), 0.002); end
  def test_outputs_costs_hm377; assert_in_delta(0.015627728604265284, worksheet.outputs_costs_hm377, 0.002); end
  def test_outputs_costs_hm378; assert_in_delta(0.0, (worksheet.outputs_costs_hm378||0), 0.002); end
  def test_outputs_costs_hm379; assert_in_delta(0.0, (worksheet.outputs_costs_hm379||0), 0.002); end
  def test_outputs_costs_hm380; assert_in_delta(0.01703466160663263, worksheet.outputs_costs_hm380, 0.002); end
  def test_outputs_costs_hm381; assert_in_delta(0.0007947153414334877, worksheet.outputs_costs_hm381, 0.002); end
  def test_outputs_costs_hm382; assert_in_delta(0.0035628524476164383, worksheet.outputs_costs_hm382, 0.002); end
  def test_outputs_costs_hm383; assert_in_delta(0.00010968668925149126, worksheet.outputs_costs_hm383, 0.002); end
  def test_outputs_costs_hm384; assert_in_delta(0.0, (worksheet.outputs_costs_hm384||0), 0.002); end
  def test_outputs_costs_hm400; assert_in_delta(0.003821951258706679, worksheet.outputs_costs_hm400, 0.002); end
  def test_outputs_costs_hm401; assert_in_delta(0.004490864120933536, worksheet.outputs_costs_hm401, 0.002); end
  def test_outputs_costs_hm402; assert_in_delta(0.015545076149758356, worksheet.outputs_costs_hm402, 0.002); end
  def test_outputs_costs_hm403; assert_in_delta(0.0008052075868452599, worksheet.outputs_costs_hm403, 0.002); end
  def test_outputs_costs_hm404; assert_in_delta(0.001434466260452594, worksheet.outputs_costs_hm404, 0.002); end
  def test_outputs_costs_hm405; assert_in_delta(0.0013807154098648658, worksheet.outputs_costs_hm405, 0.002); end
  def test_outputs_costs_hm406; assert_in_delta(0.009193270280955625, worksheet.outputs_costs_hm406, 0.002); end
  def test_outputs_costs_hm407; assert_in_delta(0.00012330749169273526, worksheet.outputs_costs_hm407, 0.002); end
  def test_outputs_costs_hm408; assert_in_delta(0.00012274038820113094, worksheet.outputs_costs_hm408, 0.002); end
  def test_outputs_costs_hm409; assert_in_delta(0.00043272489874300927, worksheet.outputs_costs_hm409, 0.002); end
  def test_outputs_costs_hm410; assert_in_delta(0.0, (worksheet.outputs_costs_hm410||0), 0.002); end
  def test_outputs_costs_hm411; assert_in_delta(0.0, (worksheet.outputs_costs_hm411||0), 0.002); end
  def test_outputs_costs_hm412; assert_in_delta(0.0, (worksheet.outputs_costs_hm412||0), 0.002); end
  def test_outputs_costs_hm413; assert_in_delta(3.129027711061563e-05, worksheet.outputs_costs_hm413, 0.002); end
  def test_outputs_costs_hm414; assert_in_delta(0.009564213808316846, worksheet.outputs_costs_hm414, 0.002); end
  def test_outputs_costs_hm415; assert_in_delta(0.007498652498829484, worksheet.outputs_costs_hm415, 0.002); end
  def test_outputs_costs_hm416; assert_in_delta(0.002200054419864114, worksheet.outputs_costs_hm416, 0.002); end
  def test_outputs_costs_hm417; assert_in_delta(0.027802687665019254, worksheet.outputs_costs_hm417, 0.002); end
  def test_outputs_costs_hm418; assert_in_delta(0.00019918966929353954, worksheet.outputs_costs_hm418, 0.002); end
  def test_outputs_costs_hm419; assert_in_delta(0.0, (worksheet.outputs_costs_hm419||0), 0.002); end
  def test_outputs_costs_hm420; assert_in_delta(0.0030586583070271456, worksheet.outputs_costs_hm420, 0.002); end
  def test_outputs_costs_hm421; assert_in_delta(0.002176360694433868, worksheet.outputs_costs_hm421, 0.002); end
  def test_outputs_costs_hm422; assert_in_delta(0.0007116845124805285, worksheet.outputs_costs_hm422, 0.002); end
  def test_outputs_costs_hm423; assert_in_delta(0.0, (worksheet.outputs_costs_hm423||0), 0.002); end
  def test_outputs_costs_h13; assert_in_epsilon(2.491760825666284, worksheet.outputs_costs_h13, 0.002); end
  def test_outputs_costs_f13; assert_in_epsilon(1.6063047155033339, worksheet.outputs_costs_f13, 0.002); end
  def test_outputs_costs_g13; assert_in_epsilon(3.5195725340268176, worksheet.outputs_costs_g13, 0.002); end
  def test_outputs_energy_flows_c8; assert_equal("Vector code energy is taken from", worksheet.outputs_energy_flows_c8); end
  def test_outputs_energy_flows_d8; assert_equal("TAKEN FROM", worksheet.outputs_energy_flows_d8); end
  def test_outputs_energy_flows_e8; assert_equal("Vector code energy is taken to", worksheet.outputs_energy_flows_e8); end
  def test_outputs_energy_flows_f8; assert_equal("TAKEN TO", worksheet.outputs_energy_flows_f8); end
  def test_outputs_energy_flows_g8; assert_equal("Technology code", worksheet.outputs_energy_flows_g8); end
  def test_outputs_energy_flows_h8; assert_equal("Technology description", worksheet.outputs_energy_flows_h8); end
  def test_outputs_energy_flows_i8; assert_equal("Energy code", worksheet.outputs_energy_flows_i8); end
  def test_outputs_energy_flows_j8; assert_equal("Description", worksheet.outputs_energy_flows_j8); end
  def test_outputs_energy_flows_k8; assert_equal("Other name of other lookup", worksheet.outputs_energy_flows_k8); end
  def test_outputs_energy_flows_l8; assert_equal("Other name of other lookup", worksheet.outputs_energy_flows_l8); end
  def test_outputs_energy_flows_m8; assert_equal("Other name of other lookup", worksheet.outputs_energy_flows_m8); end
  def test_outputs_energy_flows_v8; assert_in_epsilon(2011.0, worksheet.outputs_energy_flows_v8, 0.002); end
  def test_outputs_energy_flows_w8; assert_in_epsilon(2015.0, worksheet.outputs_energy_flows_w8, 0.002); end
  def test_outputs_energy_flows_x8; assert_in_epsilon(2020.0, worksheet.outputs_energy_flows_x8, 0.002); end
  def test_outputs_energy_flows_y8; assert_in_epsilon(2025.0, worksheet.outputs_energy_flows_y8, 0.002); end
  def test_outputs_energy_flows_z8; assert_in_epsilon(2030.0, worksheet.outputs_energy_flows_z8, 0.002); end
  def test_outputs_energy_flows_aa8; assert_in_epsilon(2035.0, worksheet.outputs_energy_flows_aa8, 0.002); end
  def test_outputs_energy_flows_ab8; assert_in_epsilon(2040.0, worksheet.outputs_energy_flows_ab8, 0.002); end
  def test_outputs_energy_flows_ac8; assert_in_epsilon(2045.0, worksheet.outputs_energy_flows_ac8, 0.002); end
  def test_outputs_energy_flows_ad8; assert_in_epsilon(2050.0, worksheet.outputs_energy_flows_ad8, 0.002); end
  def test_outputs_energy_flows_c10; assert_equal("R.01", worksheet.outputs_energy_flows_c10); end
  def test_outputs_energy_flows_d10; assert_equal("Global Solar", worksheet.outputs_energy_flows_d10); end
  def test_outputs_energy_flows_e10; assert_equal("n/a", worksheet.outputs_energy_flows_e10); end
  def test_outputs_energy_flows_f10; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f10); end
  def test_outputs_energy_flows_g10; assert_equal("n/a", worksheet.outputs_energy_flows_g10); end
  def test_outputs_energy_flows_h10; assert_equal("solar", worksheet.outputs_energy_flows_h10); end
  def test_outputs_energy_flows_i10; assert_equal("E.02", worksheet.outputs_energy_flows_i10); end
  def test_outputs_energy_flows_j10; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j10); end
  def test_outputs_energy_flows_v10; assert_in_delta(0.19187020800000004, worksheet.outputs_energy_flows_v10, 0.002); end
  def test_outputs_energy_flows_w10; assert_in_delta(0.513757728, worksheet.outputs_energy_flows_w10, 0.002); end
  def test_outputs_energy_flows_x10; assert_in_epsilon(1.5387485759999997, worksheet.outputs_energy_flows_x10, 0.002); end
  def test_outputs_energy_flows_y10; assert_in_epsilon(1.6599297599999998, worksheet.outputs_energy_flows_y10, 0.002); end
  def test_outputs_energy_flows_z10; assert_in_epsilon(1.84296384, worksheet.outputs_energy_flows_z10, 0.002); end
  def test_outputs_energy_flows_aa10; assert_in_epsilon(2.12698224, worksheet.outputs_energy_flows_aa10, 0.002); end
  def test_outputs_energy_flows_ab10; assert_in_epsilon(2.187572832, worksheet.outputs_energy_flows_ab10, 0.002); end
  def test_outputs_energy_flows_ac10; assert_in_epsilon(2.6988059519999994, worksheet.outputs_energy_flows_ac10, 0.002); end
  def test_outputs_energy_flows_ad10; assert_in_epsilon(3.516778943999999, worksheet.outputs_energy_flows_ad10, 0.002); end
  def test_outputs_energy_flows_c12; assert_equal("R.01", worksheet.outputs_energy_flows_c12); end
  def test_outputs_energy_flows_d12; assert_equal("Global Solar", worksheet.outputs_energy_flows_d12); end
  def test_outputs_energy_flows_e12; assert_equal("L.01", worksheet.outputs_energy_flows_e12); end
  def test_outputs_energy_flows_f12; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f12); end
  def test_outputs_energy_flows_g12; assert_equal("n/a", worksheet.outputs_energy_flows_g12); end
  def test_outputs_energy_flows_h12; assert_equal("solar", worksheet.outputs_energy_flows_h12); end
  def test_outputs_energy_flows_i12; assert_equal("L.01", worksheet.outputs_energy_flows_i12); end
  def test_outputs_energy_flows_j12; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j12); end
  def test_outputs_energy_flows_v12; assert_in_delta(0.040954752, worksheet.outputs_energy_flows_v12, 0.002); end
  def test_outputs_energy_flows_w12; assert_in_delta(0.26542214246730117, worksheet.outputs_energy_flows_w12, 0.002); end
  def test_outputs_energy_flows_x12; assert_in_epsilon(1.6375383400125538, worksheet.outputs_energy_flows_x12, 0.002); end
  def test_outputs_energy_flows_y12; assert_in_epsilon(1.9355457997544665, worksheet.outputs_energy_flows_y12, 0.002); end
  def test_outputs_energy_flows_z12; assert_in_epsilon(2.4130989906537725, worksheet.outputs_energy_flows_z12, 0.002); end
  def test_outputs_energy_flows_aa12; assert_in_epsilon(2.7563705591445915, worksheet.outputs_energy_flows_aa12, 0.002); end
  def test_outputs_energy_flows_ab12; assert_in_epsilon(2.676151755713701, worksheet.outputs_energy_flows_ab12, 0.002); end
  def test_outputs_energy_flows_ac12; assert_in_epsilon(3.1157967661676977, worksheet.outputs_energy_flows_ac12, 0.002); end
  def test_outputs_energy_flows_ad12; assert_in_epsilon(3.860680886409402, worksheet.outputs_energy_flows_ad12, 0.002); end
  def test_outputs_energy_flows_c14; assert_equal("R.01", worksheet.outputs_energy_flows_c14); end
  def test_outputs_energy_flows_d14; assert_equal("Global Solar", worksheet.outputs_energy_flows_d14); end
  def test_outputs_energy_flows_e14; assert_equal("N/A", worksheet.outputs_energy_flows_e14); end
  def test_outputs_energy_flows_f14; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f14); end
  def test_outputs_energy_flows_g14; assert_equal("n/a", worksheet.outputs_energy_flows_g14); end
  def test_outputs_energy_flows_h14; assert_equal("Global buildings", worksheet.outputs_energy_flows_h14); end
  def test_outputs_energy_flows_i14; assert_equal("N/A", worksheet.outputs_energy_flows_i14); end
  def test_outputs_energy_flows_j14; assert_equal("Heating, cooling and hot water", worksheet.outputs_energy_flows_j14); end
  def test_outputs_energy_flows_v14; assert_in_delta(0.3652678323974, worksheet.outputs_energy_flows_v14, 0.002); end
  def test_outputs_energy_flows_w14; assert_in_delta(0.4437888320379728, worksheet.outputs_energy_flows_w14, 0.002); end
  def test_outputs_energy_flows_x14; assert_in_delta(0.5605627439552463, worksheet.outputs_energy_flows_x14, 0.002); end
  def test_outputs_energy_flows_y14; assert_in_delta(0.6975303059619533, worksheet.outputs_energy_flows_y14, 0.002); end
  def test_outputs_energy_flows_z14; assert_in_delta(0.8644424512297011, worksheet.outputs_energy_flows_z14, 0.002); end
  def test_outputs_energy_flows_aa14; assert_in_epsilon(1.0543179726879837, worksheet.outputs_energy_flows_aa14, 0.002); end
  def test_outputs_energy_flows_ab14; assert_in_epsilon(1.2595444822707536, worksheet.outputs_energy_flows_ab14, 0.002); end
  def test_outputs_energy_flows_ac14; assert_in_epsilon(1.4964251336322378, worksheet.outputs_energy_flows_ac14, 0.002); end
  def test_outputs_energy_flows_ad14; assert_in_epsilon(1.7252662306546875, worksheet.outputs_energy_flows_ad14, 0.002); end
  def test_outputs_energy_flows_c16; assert_equal("R.02", worksheet.outputs_energy_flows_c16); end
  def test_outputs_energy_flows_d16; assert_equal("Global Wind", worksheet.outputs_energy_flows_d16); end
  def test_outputs_energy_flows_e16; assert_equal("n/a", worksheet.outputs_energy_flows_e16); end
  def test_outputs_energy_flows_f16; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f16); end
  def test_outputs_energy_flows_h16; assert_equal("wind", worksheet.outputs_energy_flows_h16); end
  def test_outputs_energy_flows_i16; assert_equal("E.02", worksheet.outputs_energy_flows_i16); end
  def test_outputs_energy_flows_j16; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j16); end
  def test_outputs_energy_flows_v16; assert_in_epsilon(1.5996452767199998, worksheet.outputs_energy_flows_v16, 0.002); end
  def test_outputs_energy_flows_w16; assert_in_epsilon(2.9582094239999996, worksheet.outputs_energy_flows_w16, 0.002); end
  def test_outputs_energy_flows_x16; assert_in_epsilon(3.5750973887999997, worksheet.outputs_energy_flows_x16, 0.002); end
  def test_outputs_energy_flows_y16; assert_in_epsilon(3.7459502352, worksheet.outputs_energy_flows_y16, 0.002); end
  def test_outputs_energy_flows_z16; assert_in_epsilon(4.1983599888, worksheet.outputs_energy_flows_z16, 0.002); end
  def test_outputs_energy_flows_aa16; assert_in_epsilon(4.604506300800001, worksheet.outputs_energy_flows_aa16, 0.002); end
  def test_outputs_energy_flows_ab16; assert_in_epsilon(5.912884396800001, worksheet.outputs_energy_flows_ab16, 0.002); end
  def test_outputs_energy_flows_ac16; assert_in_epsilon(8.808167966400001, worksheet.outputs_energy_flows_ac16, 0.002); end
  def test_outputs_energy_flows_ad16; assert_in_epsilon(10.849881571200003, worksheet.outputs_energy_flows_ad16, 0.002); end
  def test_outputs_energy_flows_c18; assert_equal("R.03", worksheet.outputs_energy_flows_c18); end
  def test_outputs_energy_flows_d18; assert_equal("Global Tidal", worksheet.outputs_energy_flows_d18); end
  def test_outputs_energy_flows_e18; assert_equal("n/a", worksheet.outputs_energy_flows_e18); end
  def test_outputs_energy_flows_f18; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f18); end
  def test_outputs_energy_flows_g18; assert_equal("tidal.elec", worksheet.outputs_energy_flows_g18); end
  def test_outputs_energy_flows_h18; assert_equal("Global Tidal", worksheet.outputs_energy_flows_h18); end
  def test_outputs_energy_flows_i18; assert_equal("E.02", worksheet.outputs_energy_flows_i18); end
  def test_outputs_energy_flows_j18; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j18); end
  def test_outputs_energy_flows_v18; assert_in_delta(0.0041577138, worksheet.outputs_energy_flows_v18, 0.002); end
  def test_outputs_energy_flows_w18; assert_in_delta(0.0069426719999999996, worksheet.outputs_energy_flows_w18, 0.002); end
  def test_outputs_energy_flows_x18; assert_in_delta(0.01104516, worksheet.outputs_energy_flows_x18, 0.002); end
  def test_outputs_energy_flows_y18; assert_in_delta(0.01735668, worksheet.outputs_energy_flows_y18, 0.002); end
  def test_outputs_energy_flows_z18; assert_in_delta(0.029979719999999994, worksheet.outputs_energy_flows_z18, 0.002); end
  def test_outputs_energy_flows_aa18; assert_in_delta(0.04575851999999999, worksheet.outputs_energy_flows_aa18, 0.002); end
  def test_outputs_energy_flows_ab18; assert_in_delta(0.07100459999999999, worksheet.outputs_energy_flows_ab18, 0.002); end
  def test_outputs_energy_flows_ac18; assert_in_delta(0.08836127999999997, worksheet.outputs_energy_flows_ac18, 0.002); end
  def test_outputs_energy_flows_ad18; assert_in_delta(0.11045159999999997, worksheet.outputs_energy_flows_ad18, 0.002); end
  def test_outputs_energy_flows_c20; assert_equal("R.04", worksheet.outputs_energy_flows_c20); end
  def test_outputs_energy_flows_d20; assert_equal("Global Wave", worksheet.outputs_energy_flows_d20); end
  def test_outputs_energy_flows_e20; assert_equal("n/a", worksheet.outputs_energy_flows_e20); end
  def test_outputs_energy_flows_f20; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f20); end
  def test_outputs_energy_flows_g20; assert_equal("wave.elec", worksheet.outputs_energy_flows_g20); end
  def test_outputs_energy_flows_h20; assert_equal("Global Wave", worksheet.outputs_energy_flows_h20); end
  def test_outputs_energy_flows_i20; assert_equal("E.02", worksheet.outputs_energy_flows_i20); end
  def test_outputs_energy_flows_j20; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j20); end
  def test_outputs_energy_flows_v20; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v20||0), 0.002); end
  def test_outputs_energy_flows_w20; assert_in_delta(0.0043549487999999985, worksheet.outputs_energy_flows_w20, 0.002); end
  def test_outputs_energy_flows_x20; assert_in_delta(0.0043549487999999985, worksheet.outputs_energy_flows_x20, 0.002); end
  def test_outputs_energy_flows_y20; assert_in_delta(0.023289508799999994, worksheet.outputs_energy_flows_y20, 0.002); end
  def test_outputs_energy_flows_z20; assert_in_delta(0.06627095999999998, worksheet.outputs_energy_flows_z20, 0.002); end
  def test_outputs_energy_flows_aa20; assert_in_delta(0.11360735999999995, worksheet.outputs_energy_flows_aa20, 0.002); end
  def test_outputs_energy_flows_ab20; assert_in_delta(0.16662412799999995, worksheet.outputs_energy_flows_ab20, 0.002); end
  def test_outputs_energy_flows_ac20; assert_in_delta(0.23289508799999994, worksheet.outputs_energy_flows_ac20, 0.002); end
  def test_outputs_energy_flows_ad20; assert_in_delta(0.2802314879999999, worksheet.outputs_energy_flows_ad20, 0.002); end
  def test_outputs_energy_flows_c22; assert_equal("R.05", worksheet.outputs_energy_flows_c22); end
  def test_outputs_energy_flows_d22; assert_equal("Global Geothermal", worksheet.outputs_energy_flows_d22); end
  def test_outputs_energy_flows_e22; assert_equal("n/a", worksheet.outputs_energy_flows_e22); end
  def test_outputs_energy_flows_f22; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f22); end
  def test_outputs_energy_flows_g22; assert_equal("geothermal.elec", worksheet.outputs_energy_flows_g22); end
  def test_outputs_energy_flows_h22; assert_equal("Global Geothermal", worksheet.outputs_energy_flows_h22); end
  def test_outputs_energy_flows_i22; assert_equal("E.02", worksheet.outputs_energy_flows_i22); end
  def test_outputs_energy_flows_j22; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j22); end
  def test_outputs_energy_flows_v22; assert_in_delta(0.2885626944, worksheet.outputs_energy_flows_v22, 0.002); end
  def test_outputs_energy_flows_w22; assert_in_delta(0.36354355200000005, worksheet.outputs_energy_flows_w22, 0.002); end
  def test_outputs_energy_flows_x22; assert_in_delta(0.44938022399999994, worksheet.outputs_energy_flows_x22, 0.002); end
  def test_outputs_energy_flows_y22; assert_in_delta(0.509970816, worksheet.outputs_energy_flows_y22, 0.002); end
  def test_outputs_energy_flows_z22; assert_in_delta(0.5453153279999999, worksheet.outputs_energy_flows_z22, 0.002); end
  def test_outputs_energy_flows_aa22; assert_in_delta(0.8432190719999999, worksheet.outputs_energy_flows_aa22, 0.002); end
  def test_outputs_energy_flows_ab22; assert_in_epsilon(1.0502369279999997, worksheet.outputs_energy_flows_ab22, 0.002); end
  def test_outputs_energy_flows_ac22; assert_in_epsilon(1.383485184, worksheet.outputs_energy_flows_ac22, 0.002); end
  def test_outputs_energy_flows_ad22; assert_in_epsilon(1.7369303039999997, worksheet.outputs_energy_flows_ad22, 0.002); end
  def test_outputs_energy_flows_c24; assert_equal("R.05", worksheet.outputs_energy_flows_c24); end
  def test_outputs_energy_flows_d24; assert_equal("Global Geothermal", worksheet.outputs_energy_flows_d24); end
  def test_outputs_energy_flows_e24; assert_equal("L.01", worksheet.outputs_energy_flows_e24); end
  def test_outputs_energy_flows_f24; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f24); end
  def test_outputs_energy_flows_g24; assert_equal("geothermal.elec", worksheet.outputs_energy_flows_g24); end
  def test_outputs_energy_flows_h24; assert_equal("Global Geothermal", worksheet.outputs_energy_flows_h24); end
  def test_outputs_energy_flows_i24; assert_equal("L.01", worksheet.outputs_energy_flows_i24); end
  def test_outputs_energy_flows_j24; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j24); end
  def test_outputs_energy_flows_v24; assert_in_epsilon(2.5970642496, worksheet.outputs_energy_flows_v24, 0.002); end
  def test_outputs_energy_flows_w24; assert_in_epsilon(3.2640786279201723, worksheet.outputs_energy_flows_w24, 0.002); end
  def test_outputs_energy_flows_x24; assert_in_epsilon(4.022749387880884, worksheet.outputs_energy_flows_x24, 0.002); end
  def test_outputs_energy_flows_y24; assert_in_epsilon(4.551581030083372, worksheet.outputs_energy_flows_y24, 0.002); end
  def test_outputs_energy_flows_z24; assert_in_epsilon(4.852612993023374, worksheet.outputs_energy_flows_z24, 0.002); end
  def test_outputs_energy_flows_aa24; assert_in_epsilon(7.481392058012148, worksheet.outputs_energy_flows_aa24, 0.002); end
  def test_outputs_energy_flows_ab24; assert_in_epsilon(9.290655341938646, worksheet.outputs_energy_flows_ab24, 0.002); end
  def test_outputs_energy_flows_ac24; assert_in_epsilon(12.20263612737634, worksheet.outputs_energy_flows_ac24, 0.002); end
  def test_outputs_energy_flows_ad24; assert_in_epsilon(15.275119686205679, worksheet.outputs_energy_flows_ad24, 0.002); end
  def test_outputs_energy_flows_c26; assert_equal("R.06", worksheet.outputs_energy_flows_c26); end
  def test_outputs_energy_flows_d26; assert_equal("Global Hydro", worksheet.outputs_energy_flows_d26); end
  def test_outputs_energy_flows_e26; assert_equal("n/a", worksheet.outputs_energy_flows_e26); end
  def test_outputs_energy_flows_f26; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f26); end
  def test_outputs_energy_flows_g26; assert_equal("hydro.elec", worksheet.outputs_energy_flows_g26); end
  def test_outputs_energy_flows_h26; assert_equal("Global Hydroelectric dam", worksheet.outputs_energy_flows_h26); end
  def test_outputs_energy_flows_i26; assert_equal("E.02", worksheet.outputs_energy_flows_i26); end
  def test_outputs_energy_flows_j26; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j26); end
  def test_outputs_energy_flows_v26; assert_in_epsilon(13.46878368, worksheet.outputs_energy_flows_v26, 0.002); end
  def test_outputs_energy_flows_w26; assert_in_epsilon(13.9769872704, worksheet.outputs_energy_flows_w26, 0.002); end
  def test_outputs_energy_flows_x26; assert_in_epsilon(15.035050483199997, worksheet.outputs_energy_flows_x26, 0.002); end
  def test_outputs_energy_flows_y26; assert_in_epsilon(16.17642576, worksheet.outputs_energy_flows_y26, 0.002); end
  def test_outputs_energy_flows_z26; assert_in_epsilon(17.4080557728, worksheet.outputs_energy_flows_z26, 0.002); end
  def test_outputs_energy_flows_aa26; assert_in_epsilon(18.7216093152, worksheet.outputs_energy_flows_aa26, 0.002); end
  def test_outputs_energy_flows_ab26; assert_in_epsilon(20.121251990399998, worksheet.outputs_energy_flows_ab26, 0.002); end
  def test_outputs_energy_flows_ac26; assert_in_epsilon(21.5333914752, worksheet.outputs_energy_flows_ac26, 0.002); end
  def test_outputs_energy_flows_ad26; assert_in_epsilon(23.045505436800003, worksheet.outputs_energy_flows_ad26, 0.002); end
  def test_outputs_energy_flows_c28; assert_equal("R.06", worksheet.outputs_energy_flows_c28); end
  def test_outputs_energy_flows_d28; assert_equal("Global Hydro", worksheet.outputs_energy_flows_d28); end
  def test_outputs_energy_flows_e28; assert_equal("E.02", worksheet.outputs_energy_flows_e28); end
  def test_outputs_energy_flows_f28; assert_equal("Storage", worksheet.outputs_energy_flows_f28); end
  def test_outputs_energy_flows_g28; assert_equal("storage.elec", worksheet.outputs_energy_flows_g28); end
  def test_outputs_energy_flows_h28; assert_equal("Global Storage unit", worksheet.outputs_energy_flows_h28); end
  def test_outputs_energy_flows_i28; assert_equal("E.02", worksheet.outputs_energy_flows_i28); end
  def test_outputs_energy_flows_j28; assert_equal("Storage", worksheet.outputs_energy_flows_j28); end
  def test_outputs_energy_flows_v28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v28||0), 0.002); end
  def test_outputs_energy_flows_w28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w28||0), 0.002); end
  def test_outputs_energy_flows_x28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x28||0), 0.002); end
  def test_outputs_energy_flows_y28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y28||0), 0.002); end
  def test_outputs_energy_flows_z28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z28||0), 0.002); end
  def test_outputs_energy_flows_aa28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa28||0), 0.002); end
  def test_outputs_energy_flows_ab28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab28||0), 0.002); end
  def test_outputs_energy_flows_ac28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac28||0), 0.002); end
  def test_outputs_energy_flows_ad28; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad28||0), 0.002); end
  def test_outputs_energy_flows_c30; assert_equal("R.07", worksheet.outputs_energy_flows_c30); end
  def test_outputs_energy_flows_d30; assert_equal("Global Environmental heat", worksheet.outputs_energy_flows_d30); end
  def test_outputs_energy_flows_e30; assert_equal("n/a", worksheet.outputs_energy_flows_e30); end
  def test_outputs_energy_flows_f30; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f30); end
  def test_outputs_energy_flows_g30; assert_equal("n/a", worksheet.outputs_energy_flows_g30); end
  def test_outputs_energy_flows_h30; assert_equal("Global buildings", worksheet.outputs_energy_flows_h30); end
  def test_outputs_energy_flows_v30; assert_in_epsilon(6.54163397005528, worksheet.outputs_energy_flows_v30, 0.002); end
  def test_outputs_energy_flows_w30; assert_in_epsilon(7.302853304231076, worksheet.outputs_energy_flows_w30, 0.002); end
  def test_outputs_energy_flows_x30; assert_in_epsilon(8.206703064226135, worksheet.outputs_energy_flows_x30, 0.002); end
  def test_outputs_energy_flows_y30; assert_in_epsilon(9.038255104076995, worksheet.outputs_energy_flows_y30, 0.002); end
  def test_outputs_energy_flows_z30; assert_in_epsilon(9.905850674076177, worksheet.outputs_energy_flows_z30, 0.002); end
  def test_outputs_energy_flows_aa30; assert_in_epsilon(10.71698451690964, worksheet.outputs_energy_flows_aa30, 0.002); end
  def test_outputs_energy_flows_ab30; assert_in_epsilon(11.399401988519696, worksheet.outputs_energy_flows_ab30, 0.002); end
  def test_outputs_energy_flows_ac30; assert_in_epsilon(12.081119702892632, worksheet.outputs_energy_flows_ac30, 0.002); end
  def test_outputs_energy_flows_ad30; assert_in_epsilon(12.530001711455089, worksheet.outputs_energy_flows_ad30, 0.002); end
  def test_outputs_energy_flows_d32; assert_equal("Forest residues", worksheet.outputs_energy_flows_d32); end
  def test_outputs_energy_flows_e32; assert_equal("Forest", worksheet.outputs_energy_flows_e32); end
  def test_outputs_energy_flows_f32; assert_equal("Solid", worksheet.outputs_energy_flows_f32); end
  def test_outputs_energy_flows_g32; assert_equal("Forest", worksheet.outputs_energy_flows_g32); end
  def test_outputs_energy_flows_h32; assert_equal("Global Native forest", worksheet.outputs_energy_flows_h32); end
  def test_outputs_energy_flows_i32; assert_equal("C.01", worksheet.outputs_energy_flows_i32); end
  def test_outputs_energy_flows_j32; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j32); end
  def test_outputs_energy_flows_v32; assert_in_epsilon(19.52229479302264, worksheet.outputs_energy_flows_v32, 0.002); end
  def test_outputs_energy_flows_w32; assert_in_epsilon(19.16699397132284, worksheet.outputs_energy_flows_w32, 0.002); end
  def test_outputs_energy_flows_x32; assert_in_epsilon(18.179964134941905, worksheet.outputs_energy_flows_x32, 0.002); end
  def test_outputs_energy_flows_y32; assert_in_epsilon(17.22052238709775, worksheet.outputs_energy_flows_y32, 0.002); end
  def test_outputs_energy_flows_z32; assert_in_epsilon(16.38891904030321, worksheet.outputs_energy_flows_z32, 0.002); end
  def test_outputs_energy_flows_aa32; assert_in_epsilon(15.510862895895764, worksheet.outputs_energy_flows_aa32, 0.002); end
  def test_outputs_energy_flows_ab32; assert_in_epsilon(14.908258705411104, worksheet.outputs_energy_flows_ab32, 0.002); end
  def test_outputs_energy_flows_ac32; assert_in_epsilon(14.424174367174464, worksheet.outputs_energy_flows_ac32, 0.002); end
  def test_outputs_energy_flows_ad32; assert_in_epsilon(14.061398361436364, worksheet.outputs_energy_flows_ad32, 0.002); end
  def test_outputs_energy_flows_d34; assert_equal("Traditional biomass", worksheet.outputs_energy_flows_d34); end
  def test_outputs_energy_flows_e34; assert_equal("Forest", worksheet.outputs_energy_flows_e34); end
  def test_outputs_energy_flows_f34; assert_equal("Solid", worksheet.outputs_energy_flows_f34); end
  def test_outputs_energy_flows_g34; assert_equal("Forest", worksheet.outputs_energy_flows_g34); end
  def test_outputs_energy_flows_h34; assert_equal("Global Native forest", worksheet.outputs_energy_flows_h34); end
  def test_outputs_energy_flows_i34; assert_equal("BM.13", worksheet.outputs_energy_flows_i34); end
  def test_outputs_energy_flows_j34; assert_equal("Global Traditional biomass", worksheet.outputs_energy_flows_j34); end
  def test_outputs_energy_flows_v34; assert_in_epsilon(21.277705206977366, worksheet.outputs_energy_flows_v34, 0.002); end
  def test_outputs_energy_flows_w34; assert_in_epsilon(21.27043340628122, worksheet.outputs_energy_flows_w34, 0.002); end
  def test_outputs_energy_flows_x34; assert_in_epsilon(20.97736429204835, worksheet.outputs_energy_flows_x34, 0.002); end
  def test_outputs_energy_flows_y34; assert_in_epsilon(20.634944203589413, worksheet.outputs_energy_flows_y34, 0.002); end
  def test_outputs_energy_flows_z34; assert_in_epsilon(19.858183835796467, worksheet.outputs_energy_flows_z34, 0.002); end
  def test_outputs_energy_flows_aa34; assert_in_epsilon(19.27561130717662, worksheet.outputs_energy_flows_aa34, 0.002); end
  def test_outputs_energy_flows_ab34; assert_in_epsilon(18.782649421189532, worksheet.outputs_energy_flows_ab34, 0.002); end
  def test_outputs_energy_flows_ac34; assert_in_epsilon(17.88946466891831, worksheet.outputs_energy_flows_ac34, 0.002); end
  def test_outputs_energy_flows_ad34; assert_in_epsilon(18.2175946322212, worksheet.outputs_energy_flows_ad34, 0.002); end
  def test_outputs_energy_flows_d36; assert_equal("Biocrops", worksheet.outputs_energy_flows_d36); end
  def test_outputs_energy_flows_f36; assert_equal("Solid", worksheet.outputs_energy_flows_f36); end
  def test_outputs_energy_flows_g36; assert_equal("arable.bio", worksheet.outputs_energy_flows_g36); end
  def test_outputs_energy_flows_h36; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_h36); end
  def test_outputs_energy_flows_i36; assert_equal("C.01", worksheet.outputs_energy_flows_i36); end
  def test_outputs_energy_flows_j36; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j36); end
  def test_outputs_energy_flows_v36; assert_in_epsilon(8.807824862870735, worksheet.outputs_energy_flows_v36, 0.002); end
  def test_outputs_energy_flows_w36; assert_in_epsilon(9.798501314583001, worksheet.outputs_energy_flows_w36, 0.002); end
  def test_outputs_energy_flows_x36; assert_in_epsilon(11.031734993016343, worksheet.outputs_energy_flows_x36, 0.002); end
  def test_outputs_energy_flows_y36; assert_in_epsilon(12.24928173197055, worksheet.outputs_energy_flows_y36, 0.002); end
  def test_outputs_energy_flows_z36; assert_in_epsilon(13.447128508775872, worksheet.outputs_energy_flows_z36, 0.002); end
  def test_outputs_energy_flows_aa36; assert_in_epsilon(14.620003462091596, worksheet.outputs_energy_flows_aa36, 0.002); end
  def test_outputs_energy_flows_ab36; assert_in_epsilon(15.761018889748227, worksheet.outputs_energy_flows_ab36, 0.002); end
  def test_outputs_energy_flows_ac36; assert_in_epsilon(16.861242176316594, worksheet.outputs_energy_flows_ac36, 0.002); end
  def test_outputs_energy_flows_ad36; assert_in_epsilon(17.90920021535305, worksheet.outputs_energy_flows_ad36, 0.002); end
  def test_outputs_energy_flows_d38; assert_equal("Biocrops", worksheet.outputs_energy_flows_d38); end
  def test_outputs_energy_flows_f38; assert_equal("Liquid", worksheet.outputs_energy_flows_f38); end
  def test_outputs_energy_flows_g38; assert_equal("arable.bio", worksheet.outputs_energy_flows_g38); end
  def test_outputs_energy_flows_h38; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_h38); end
  def test_outputs_energy_flows_i38; assert_equal("C.02", worksheet.outputs_energy_flows_i38); end
  def test_outputs_energy_flows_j38; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j38); end
  def test_outputs_energy_flows_v38; assert_in_delta(0.6921751371292655, worksheet.outputs_energy_flows_v38, 0.002); end
  def test_outputs_energy_flows_w38; assert_in_delta(0.8025243264426388, worksheet.outputs_energy_flows_w38, 0.002); end
  def test_outputs_energy_flows_x38; assert_in_delta(0.9455726992913466, worksheet.outputs_energy_flows_x38, 0.002); end
  def test_outputs_energy_flows_y38; assert_in_epsilon(1.1043080116191915, worksheet.outputs_energy_flows_y38, 0.002); end
  def test_outputs_energy_flows_z38; assert_in_epsilon(1.2827432860959211, worksheet.outputs_energy_flows_z38, 0.002); end
  def test_outputs_energy_flows_aa38; assert_in_epsilon(1.4861503840622479, worksheet.outputs_energy_flows_aa38, 0.002); end
  def test_outputs_energy_flows_ab38; assert_in_epsilon(1.7214170076876676, worksheet.outputs_energy_flows_ab38, 0.002); end
  def test_outputs_energy_flows_ac38; assert_in_epsilon(1.9974757724013559, worksheet.outputs_energy_flows_ac38, 0.002); end
  def test_outputs_energy_flows_ad38; assert_in_epsilon(2.3257997846469514, worksheet.outputs_energy_flows_ad38, 0.002); end
  def test_outputs_energy_flows_d40; assert_equal("Biocrops", worksheet.outputs_energy_flows_d40); end
  def test_outputs_energy_flows_f40; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f40); end
  def test_outputs_energy_flows_g40; assert_equal("arable.bio", worksheet.outputs_energy_flows_g40); end
  def test_outputs_energy_flows_h40; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_h40); end
  def test_outputs_energy_flows_i40; assert_equal("L.01", worksheet.outputs_energy_flows_i40); end
  def test_outputs_energy_flows_j40; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j40); end
  def test_outputs_energy_flows_v40; assert_in_epsilon(2.375, worksheet.outputs_energy_flows_v40, 0.002); end
  def test_outputs_energy_flows_w40; assert_in_epsilon(2.4825186627718274, worksheet.outputs_energy_flows_w40, 0.002); end
  def test_outputs_energy_flows_x40; assert_in_epsilon(2.5745614665708114, worksheet.outputs_energy_flows_x40, 0.002); end
  def test_outputs_energy_flows_y40; assert_in_epsilon(2.6215636306433847, worksheet.outputs_energy_flows_y40, 0.002); end
  def test_outputs_energy_flows_z40; assert_in_epsilon(2.62556627159346, worksheet.outputs_energy_flows_z40, 0.002); end
  def test_outputs_energy_flows_aa40; assert_in_epsilon(2.588489010989008, worksheet.outputs_energy_flows_aa40, 0.002); end
  def test_outputs_energy_flows_ab40; assert_in_epsilon(2.5121388826227538, worksheet.outputs_energy_flows_ab40, 0.002); end
  def test_outputs_energy_flows_ac40; assert_in_epsilon(2.3982184674670215, worksheet.outputs_energy_flows_ac40, 0.002); end
  def test_outputs_energy_flows_ad40; assert_in_epsilon(2.2483333333333313, worksheet.outputs_energy_flows_ad40, 0.002); end
  def test_outputs_energy_flows_d42; assert_equal("Biocrops", worksheet.outputs_energy_flows_d42); end
  def test_outputs_energy_flows_f42; assert_equal("Global oversupply", worksheet.outputs_energy_flows_f42); end
  def test_outputs_energy_flows_g42; assert_equal("arable.bio", worksheet.outputs_energy_flows_g42); end
  def test_outputs_energy_flows_h42; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_h42); end
  def test_outputs_energy_flows_i42; assert_equal("O.01", worksheet.outputs_energy_flows_i42); end
  def test_outputs_energy_flows_j42; assert_equal("Global Oversupply", worksheet.outputs_energy_flows_j42); end
  def test_outputs_energy_flows_v42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v42||0), 0.002); end
  def test_outputs_energy_flows_w42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w42||0), 0.002); end
  def test_outputs_energy_flows_x42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x42||0), 0.002); end
  def test_outputs_energy_flows_y42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y42||0), 0.002); end
  def test_outputs_energy_flows_z42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z42||0), 0.002); end
  def test_outputs_energy_flows_aa42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa42||0), 0.002); end
  def test_outputs_energy_flows_ab42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab42||0), 0.002); end
  def test_outputs_energy_flows_ac42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac42||0), 0.002); end
  def test_outputs_energy_flows_ad42; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad42||0), 0.002); end
  def test_outputs_energy_flows_c44; assert_equal("n/a", worksheet.outputs_energy_flows_c44); end
  def test_outputs_energy_flows_d44; assert_equal("Food waste", worksheet.outputs_energy_flows_d44); end
  def test_outputs_energy_flows_e44; assert_equal("n/a", worksheet.outputs_energy_flows_e44); end
  def test_outputs_energy_flows_f44; assert_equal("Bio conversion", worksheet.outputs_energy_flows_f44); end
  def test_outputs_energy_flows_g44; assert_equal("Arable.food", worksheet.outputs_energy_flows_g44); end
  def test_outputs_energy_flows_h44; assert_equal("Global Arable land for food crops", worksheet.outputs_energy_flows_h44); end
  def test_outputs_energy_flows_i44; assert_equal("BM.09", worksheet.outputs_energy_flows_i44); end
  def test_outputs_energy_flows_j44; assert_equal("Global Dry biomass and waste", worksheet.outputs_energy_flows_j44); end
  def test_outputs_energy_flows_v44; assert_in_epsilon(4.366532977240504, worksheet.outputs_energy_flows_v44, 0.002); end
  def test_outputs_energy_flows_w44; assert_in_epsilon(4.643988321301491, worksheet.outputs_energy_flows_w44, 0.002); end
  def test_outputs_energy_flows_x44; assert_in_epsilon(5.010773610627841, worksheet.outputs_energy_flows_x44, 0.002); end
  def test_outputs_energy_flows_y44; assert_in_epsilon(5.371705575377009, worksheet.outputs_energy_flows_y44, 0.002); end
  def test_outputs_energy_flows_z44; assert_in_epsilon(5.727263177438184, worksheet.outputs_energy_flows_z44, 0.002); end
  def test_outputs_energy_flows_aa44; assert_in_epsilon(6.077823924156319, worksheet.outputs_energy_flows_aa44, 0.002); end
  def test_outputs_energy_flows_ab44; assert_in_epsilon(6.422191706396695, worksheet.outputs_energy_flows_ab44, 0.002); end
  def test_outputs_energy_flows_ac44; assert_in_epsilon(6.757718810934998, worksheet.outputs_energy_flows_ac44, 0.002); end
  def test_outputs_energy_flows_ad44; assert_in_epsilon(7.081953615610837, worksheet.outputs_energy_flows_ad44, 0.002); end
  def test_outputs_energy_flows_c46; assert_equal("n/a ", worksheet.outputs_energy_flows_c46); end
  def test_outputs_energy_flows_d46; assert_equal("Waste from animals", worksheet.outputs_energy_flows_d46); end
  def test_outputs_energy_flows_e46; assert_equal("n/a", worksheet.outputs_energy_flows_e46); end
  def test_outputs_energy_flows_f46; assert_equal("Bio conversion", worksheet.outputs_energy_flows_f46); end
  def test_outputs_energy_flows_g46; assert_equal("Pasture.food", worksheet.outputs_energy_flows_g46); end
  def test_outputs_energy_flows_h46; assert_equal("Global Pasture for animals", worksheet.outputs_energy_flows_h46); end
  def test_outputs_energy_flows_i46; assert_equal("BM.09", worksheet.outputs_energy_flows_i46); end
  def test_outputs_energy_flows_j46; assert_equal("Global Dry biomass and waste", worksheet.outputs_energy_flows_j46); end
  def test_outputs_energy_flows_v46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v46||0), 0.002); end
  def test_outputs_energy_flows_w46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w46||0), 0.002); end
  def test_outputs_energy_flows_x46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x46||0), 0.002); end
  def test_outputs_energy_flows_y46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y46||0), 0.002); end
  def test_outputs_energy_flows_z46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z46||0), 0.002); end
  def test_outputs_energy_flows_aa46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa46||0), 0.002); end
  def test_outputs_energy_flows_ab46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab46||0), 0.002); end
  def test_outputs_energy_flows_ac46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac46||0), 0.002); end
  def test_outputs_energy_flows_ad46; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad46||0), 0.002); end
  def test_outputs_energy_flows_c48; assert_equal("Q.01", worksheet.outputs_energy_flows_c48); end
  def test_outputs_energy_flows_d48; assert_equal("Global Coal reserves ", worksheet.outputs_energy_flows_d48); end
  def test_outputs_energy_flows_e48; assert_equal("CFF.01", worksheet.outputs_energy_flows_e48); end
  def test_outputs_energy_flows_f48; assert_equal("Global Crude coal", worksheet.outputs_energy_flows_f48); end
  def test_outputs_energy_flows_g48; assert_equal("Coal.extract", worksheet.outputs_energy_flows_g48); end
  def test_outputs_energy_flows_h48; assert_equal("Global Coal Extraction", worksheet.outputs_energy_flows_h48); end
  def test_outputs_energy_flows_v48; assert_in_epsilon(126.67735671248202, worksheet.outputs_energy_flows_v48, 0.002); end
  def test_outputs_energy_flows_w48; assert_in_epsilon(131.3579346371513, worksheet.outputs_energy_flows_w48, 0.002); end
  def test_outputs_energy_flows_x48; assert_in_epsilon(149.49852157596357, worksheet.outputs_energy_flows_x48, 0.002); end
  def test_outputs_energy_flows_y48; assert_in_epsilon(167.23098195488186, worksheet.outputs_energy_flows_y48, 0.002); end
  def test_outputs_energy_flows_z48; assert_in_epsilon(183.62377768274672, worksheet.outputs_energy_flows_z48, 0.002); end
  def test_outputs_energy_flows_aa48; assert_in_epsilon(197.1356847146045, worksheet.outputs_energy_flows_aa48, 0.002); end
  def test_outputs_energy_flows_ab48; assert_in_epsilon(206.53948303013172, worksheet.outputs_energy_flows_ab48, 0.002); end
  def test_outputs_energy_flows_ac48; assert_in_epsilon(208.2177439907133, worksheet.outputs_energy_flows_ac48, 0.002); end
  def test_outputs_energy_flows_ad48; assert_in_epsilon(211.87663984789575, worksheet.outputs_energy_flows_ad48, 0.002); end
  def test_outputs_energy_flows_c50; assert_equal("Q.01", worksheet.outputs_energy_flows_c50); end
  def test_outputs_energy_flows_d50; assert_equal("Global Coal reserves ", worksheet.outputs_energy_flows_d50); end
  def test_outputs_energy_flows_e50; assert_equal("L.02", worksheet.outputs_energy_flows_e50); end
  def test_outputs_energy_flows_f50; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f50); end
  def test_outputs_energy_flows_g50; assert_equal("Coal.extract", worksheet.outputs_energy_flows_g50); end
  def test_outputs_energy_flows_h50; assert_equal("Global Coal Extraction", worksheet.outputs_energy_flows_h50); end
  def test_outputs_energy_flows_v50; assert_in_epsilon(31.669339178120495, worksheet.outputs_energy_flows_v50, 0.002); end
  def test_outputs_energy_flows_w50; assert_in_epsilon(29.817445285733726, worksheet.outputs_energy_flows_w50, 0.002); end
  def test_outputs_energy_flows_x50; assert_in_epsilon(33.935247228899726, worksheet.outputs_energy_flows_x50, 0.002); end
  def test_outputs_energy_flows_y50; assert_in_epsilon(37.96040694681369, worksheet.outputs_energy_flows_y50, 0.002); end
  def test_outputs_energy_flows_z50; assert_in_epsilon(28.658046227943146, worksheet.outputs_energy_flows_z50, 0.002); end
  def test_outputs_energy_flows_aa50; assert_in_epsilon(30.766840967019192, worksheet.outputs_energy_flows_aa50, 0.002); end
  def test_outputs_energy_flows_ab50; assert_in_epsilon(32.23448579082981, worksheet.outputs_energy_flows_ab50, 0.002); end
  def test_outputs_energy_flows_ac50; assert_in_epsilon(32.49641091184543, worksheet.outputs_energy_flows_ac50, 0.002); end
  def test_outputs_energy_flows_ad50; assert_in_epsilon(31.380122319607977, worksheet.outputs_energy_flows_ad50, 0.002); end
  def test_outputs_energy_flows_c52; assert_equal("Q.02", worksheet.outputs_energy_flows_c52); end
  def test_outputs_energy_flows_d52; assert_equal("Global Oil reserves ", worksheet.outputs_energy_flows_d52); end
  def test_outputs_energy_flows_e52; assert_equal("CFF.02", worksheet.outputs_energy_flows_e52); end
  def test_outputs_energy_flows_f52; assert_equal("Global Crude oil", worksheet.outputs_energy_flows_f52); end
  def test_outputs_energy_flows_g52; assert_equal("Oil.extract", worksheet.outputs_energy_flows_g52); end
  def test_outputs_energy_flows_h52; assert_equal("Global Oil Extraction", worksheet.outputs_energy_flows_h52); end
  def test_outputs_energy_flows_v52; assert_in_epsilon(165.2139601973134, worksheet.outputs_energy_flows_v52, 0.002); end
  def test_outputs_energy_flows_w52; assert_in_epsilon(182.4621450161924, worksheet.outputs_energy_flows_w52, 0.002); end
  def test_outputs_energy_flows_x52; assert_in_epsilon(198.08689369710876, worksheet.outputs_energy_flows_x52, 0.002); end
  def test_outputs_energy_flows_y52; assert_in_epsilon(213.55284706206785, worksheet.outputs_energy_flows_y52, 0.002); end
  def test_outputs_energy_flows_z52; assert_in_epsilon(231.13893431306352, worksheet.outputs_energy_flows_z52, 0.002); end
  def test_outputs_energy_flows_aa52; assert_in_epsilon(246.5466434702447, worksheet.outputs_energy_flows_aa52, 0.002); end
  def test_outputs_energy_flows_ab52; assert_in_epsilon(265.0817399308658, worksheet.outputs_energy_flows_ab52, 0.002); end
  def test_outputs_energy_flows_ac52; assert_in_epsilon(286.0808675729464, worksheet.outputs_energy_flows_ac52, 0.002); end
  def test_outputs_energy_flows_ad52; assert_in_epsilon(303.6444246463092, worksheet.outputs_energy_flows_ad52, 0.002); end
  def test_outputs_energy_flows_c54; assert_equal("Q.02", worksheet.outputs_energy_flows_c54); end
  def test_outputs_energy_flows_d54; assert_equal("Global Oil reserves ", worksheet.outputs_energy_flows_d54); end
  def test_outputs_energy_flows_e54; assert_equal("L.02", worksheet.outputs_energy_flows_e54); end
  def test_outputs_energy_flows_f54; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f54); end
  def test_outputs_energy_flows_g54; assert_equal("Oil.extract", worksheet.outputs_energy_flows_g54); end
  def test_outputs_energy_flows_h54; assert_equal("Global Oil Extraction", worksheet.outputs_energy_flows_h54); end
  def test_outputs_energy_flows_v54; assert_in_epsilon(12.435459369690221, worksheet.outputs_energy_flows_v54, 0.002); end
  def test_outputs_energy_flows_w54; assert_in_epsilon(13.733709839928423, worksheet.outputs_energy_flows_w54, 0.002); end
  def test_outputs_energy_flows_x54; assert_in_epsilon(14.90976619225546, worksheet.outputs_energy_flows_x54, 0.002); end
  def test_outputs_energy_flows_y54; assert_in_epsilon(16.073870208972806, worksheet.outputs_energy_flows_y54, 0.002); end
  def test_outputs_energy_flows_z54; assert_in_epsilon(17.397554195606887, worksheet.outputs_energy_flows_z54, 0.002); end
  def test_outputs_energy_flows_aa54; assert_in_epsilon(14.902607293535482, worksheet.outputs_energy_flows_aa54, 0.002); end
  def test_outputs_energy_flows_ab54; assert_in_epsilon(16.022968373339722, worksheet.outputs_energy_flows_ab54, 0.002); end
  def test_outputs_energy_flows_ac54; assert_in_epsilon(17.292268771641545, worksheet.outputs_energy_flows_ac54, 0.002); end
  def test_outputs_energy_flows_ad54; assert_in_epsilon(18.353904777136393, worksheet.outputs_energy_flows_ad54, 0.002); end
  def test_outputs_energy_flows_c56; assert_equal("Q.03", worksheet.outputs_energy_flows_c56); end
  def test_outputs_energy_flows_d56; assert_equal("Global Gas reserves ", worksheet.outputs_energy_flows_d56); end
  def test_outputs_energy_flows_e56; assert_equal("CFF.03", worksheet.outputs_energy_flows_e56); end
  def test_outputs_energy_flows_f56; assert_equal("Global Unprocessed gas", worksheet.outputs_energy_flows_f56); end
  def test_outputs_energy_flows_g56; assert_equal("NaturalGas.extract", worksheet.outputs_energy_flows_g56); end
  def test_outputs_energy_flows_h56; assert_equal("Global Natural Gas Extraction", worksheet.outputs_energy_flows_h56); end
  def test_outputs_energy_flows_v56; assert_in_epsilon(89.96839014856472, worksheet.outputs_energy_flows_v56, 0.002); end
  def test_outputs_energy_flows_w56; assert_in_epsilon(95.6665400731284, worksheet.outputs_energy_flows_w56, 0.002); end
  def test_outputs_energy_flows_x56; assert_in_epsilon(102.09531878888724, worksheet.outputs_energy_flows_x56, 0.002); end
  def test_outputs_energy_flows_y56; assert_in_epsilon(109.84206163266036, worksheet.outputs_energy_flows_y56, 0.002); end
  def test_outputs_energy_flows_z56; assert_in_epsilon(119.32612883043343, worksheet.outputs_energy_flows_z56, 0.002); end
  def test_outputs_energy_flows_aa56; assert_in_epsilon(128.97651342323692, worksheet.outputs_energy_flows_aa56, 0.002); end
  def test_outputs_energy_flows_ab56; assert_in_epsilon(137.01598890548516, worksheet.outputs_energy_flows_ab56, 0.002); end
  def test_outputs_energy_flows_ac56; assert_in_epsilon(148.2341350798628, worksheet.outputs_energy_flows_ac56, 0.002); end
  def test_outputs_energy_flows_ad56; assert_in_epsilon(157.55938705603702, worksheet.outputs_energy_flows_ad56, 0.002); end
  def test_outputs_energy_flows_c58; assert_equal("Q.03", worksheet.outputs_energy_flows_c58); end
  def test_outputs_energy_flows_d58; assert_equal("Global Gas reserves ", worksheet.outputs_energy_flows_d58); end
  def test_outputs_energy_flows_e58; assert_equal("L.02", worksheet.outputs_energy_flows_e58); end
  def test_outputs_energy_flows_f58; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f58); end
  def test_outputs_energy_flows_g58; assert_equal("NaturalGas.extract", worksheet.outputs_energy_flows_g58); end
  def test_outputs_energy_flows_h58; assert_equal("Global Natural Gas Extraction", worksheet.outputs_energy_flows_h58); end
  def test_outputs_energy_flows_v58; assert_in_epsilon(38.55788149224203, worksheet.outputs_energy_flows_v58, 0.002); end
  def test_outputs_energy_flows_w58; assert_in_epsilon(40.99994574562646, worksheet.outputs_energy_flows_w58, 0.002); end
  def test_outputs_energy_flows_x58; assert_in_epsilon(43.75513662380884, worksheet.outputs_energy_flows_x58, 0.002); end
  def test_outputs_energy_flows_y58; assert_in_epsilon(47.075169271140155, worksheet.outputs_energy_flows_y58, 0.002); end
  def test_outputs_energy_flows_z58; assert_in_epsilon(36.65573892176714, worksheet.outputs_energy_flows_z58, 0.002); end
  def test_outputs_energy_flows_aa58; assert_in_epsilon(39.6202361496218, worksheet.outputs_energy_flows_aa58, 0.002); end
  def test_outputs_energy_flows_ab58; assert_in_epsilon(42.08987894482223, worksheet.outputs_energy_flows_ab58, 0.002); end
  def test_outputs_energy_flows_ac58; assert_in_epsilon(45.53597613564412, worksheet.outputs_energy_flows_ac58, 0.002); end
  def test_outputs_energy_flows_ad58; assert_in_epsilon(48.40059602374993, worksheet.outputs_energy_flows_ad58, 0.002); end
  def test_outputs_energy_flows_c60; assert_equal("CFF.01", worksheet.outputs_energy_flows_c60); end
  def test_outputs_energy_flows_d60; assert_equal("Global Crude coal", worksheet.outputs_energy_flows_d60); end
  def test_outputs_energy_flows_e60; assert_equal("FF.01", worksheet.outputs_energy_flows_e60); end
  def test_outputs_energy_flows_f60; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_f60); end
  def test_outputs_energy_flows_g60; assert_equal("Coal.wash", worksheet.outputs_energy_flows_g60); end
  def test_outputs_energy_flows_h60; assert_equal("Global Coal washeries", worksheet.outputs_energy_flows_h60); end
  def test_outputs_energy_flows_v60; assert_in_epsilon(120.34348887685792, worksheet.outputs_energy_flows_v60, 0.002); end
  def test_outputs_energy_flows_w60; assert_in_epsilon(123.87053236283366, worksheet.outputs_energy_flows_w60, 0.002); end
  def test_outputs_energy_flows_x60; assert_in_epsilon(139.48212063037403, worksheet.outputs_energy_flows_x60, 0.002); end
  def test_outputs_energy_flows_y60; assert_in_epsilon(154.8558892902206, worksheet.outputs_energy_flows_y60, 0.002); end
  def test_outputs_energy_flows_z60; assert_in_epsilon(168.19938035739602, worksheet.outputs_energy_flows_z60, 0.002); end
  def test_outputs_energy_flows_aa60; assert_in_epsilon(179.1963374055755, worksheet.outputs_energy_flows_aa60, 0.002); end
  def test_outputs_energy_flows_ab60; assert_in_epsilon(185.6789952440884, worksheet.outputs_energy_flows_ab60, 0.002); end
  def test_outputs_energy_flows_ac60; assert_in_epsilon(185.7302276397163, worksheet.outputs_energy_flows_ac60, 0.002); end
  def test_outputs_energy_flows_ad60; assert_in_epsilon(186.87519634584402, worksheet.outputs_energy_flows_ad60, 0.002); end
  def test_outputs_energy_flows_c62; assert_equal("CFF.01", worksheet.outputs_energy_flows_c62); end
  def test_outputs_energy_flows_d62; assert_equal("Global Crude coal", worksheet.outputs_energy_flows_d62); end
  def test_outputs_energy_flows_e62; assert_equal("L.02", worksheet.outputs_energy_flows_e62); end
  def test_outputs_energy_flows_f62; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f62); end
  def test_outputs_energy_flows_g62; assert_equal("Coal.wash", worksheet.outputs_energy_flows_g62); end
  def test_outputs_energy_flows_h62; assert_equal("Global Coal washeries", worksheet.outputs_energy_flows_h62); end
  def test_outputs_energy_flows_v62; assert_in_epsilon(6.333867835624105, worksheet.outputs_energy_flows_v62, 0.002); end
  def test_outputs_energy_flows_w62; assert_in_epsilon(7.487402274317631, worksheet.outputs_energy_flows_w62, 0.002); end
  def test_outputs_energy_flows_x62; assert_in_epsilon(10.016400945589538, worksheet.outputs_energy_flows_x62, 0.002); end
  def test_outputs_energy_flows_y62; assert_in_epsilon(12.375092664661253, worksheet.outputs_energy_flows_y62, 0.002); end
  def test_outputs_energy_flows_z62; assert_in_epsilon(15.424397325350697, worksheet.outputs_energy_flows_z62, 0.002); end
  def test_outputs_energy_flows_aa62; assert_in_epsilon(17.939347309029017, worksheet.outputs_energy_flows_aa62, 0.002); end
  def test_outputs_energy_flows_ab62; assert_in_epsilon(20.860487786043308, worksheet.outputs_energy_flows_ab62, 0.002); end
  def test_outputs_energy_flows_ac62; assert_in_epsilon(22.487516350996998, worksheet.outputs_energy_flows_ac62, 0.002); end
  def test_outputs_energy_flows_ad62; assert_in_epsilon(25.00144350205173, worksheet.outputs_energy_flows_ad62, 0.002); end
  def test_outputs_energy_flows_c64; assert_equal("CFF.02", worksheet.outputs_energy_flows_c64); end
  def test_outputs_energy_flows_d64; assert_equal("Global Crude oil", worksheet.outputs_energy_flows_d64); end
  def test_outputs_energy_flows_e64; assert_equal("FF.02", worksheet.outputs_energy_flows_e64); end
  def test_outputs_energy_flows_f64; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_f64); end
  def test_outputs_energy_flows_g64; assert_equal("Oil.refine", worksheet.outputs_energy_flows_g64); end
  def test_outputs_energy_flows_h64; assert_equal("Global Oil refineries", worksheet.outputs_energy_flows_h64); end
  def test_outputs_energy_flows_v64; assert_in_epsilon(153.1552875458585, worksheet.outputs_energy_flows_v64, 0.002); end
  def test_outputs_energy_flows_w64; assert_in_epsilon(169.68979486505896, worksheet.outputs_energy_flows_w64, 0.002); end
  def test_outputs_energy_flows_x64; assert_in_epsilon(184.22081113831118, worksheet.outputs_energy_flows_x64, 0.002); end
  def test_outputs_energy_flows_y64; assert_in_epsilon(198.60414776772313, worksheet.outputs_energy_flows_y64, 0.002); end
  def test_outputs_energy_flows_z64; assert_in_epsilon(214.95920891114912, worksheet.outputs_energy_flows_z64, 0.002); end
  def test_outputs_energy_flows_aa64; assert_in_epsilon(231.75384486203, worksheet.outputs_energy_flows_aa64, 0.002); end
  def test_outputs_energy_flows_ab64; assert_in_epsilon(249.17683553501385, worksheet.outputs_energy_flows_ab64, 0.002); end
  def test_outputs_energy_flows_ac64; assert_in_epsilon(268.91601551856957, worksheet.outputs_energy_flows_ac64, 0.002); end
  def test_outputs_energy_flows_ad64; assert_in_epsilon(285.4257591675306, worksheet.outputs_energy_flows_ad64, 0.002); end
  def test_outputs_energy_flows_c66; assert_equal("CFF.02", worksheet.outputs_energy_flows_c66); end
  def test_outputs_energy_flows_d66; assert_equal("Global Crude oil", worksheet.outputs_energy_flows_d66); end
  def test_outputs_energy_flows_e66; assert_equal("L.02", worksheet.outputs_energy_flows_e66); end
  def test_outputs_energy_flows_f66; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f66); end
  def test_outputs_energy_flows_g66; assert_equal("Oil.refine", worksheet.outputs_energy_flows_g66); end
  def test_outputs_energy_flows_h66; assert_equal("Global Oil refineries", worksheet.outputs_energy_flows_h66); end
  def test_outputs_energy_flows_v66; assert_in_epsilon(12.058672651454913, worksheet.outputs_energy_flows_v66, 0.002); end
  def test_outputs_energy_flows_w66; assert_in_epsilon(12.772350151133452, worksheet.outputs_energy_flows_w66, 0.002); end
  def test_outputs_energy_flows_x66; assert_in_epsilon(13.866082558797586, worksheet.outputs_energy_flows_x66, 0.002); end
  def test_outputs_energy_flows_y66; assert_in_epsilon(14.94869929434472, worksheet.outputs_energy_flows_y66, 0.002); end
  def test_outputs_energy_flows_z66; assert_in_epsilon(16.179725401914396, worksheet.outputs_energy_flows_z66, 0.002); end
  def test_outputs_energy_flows_aa66; assert_in_epsilon(14.792798608214696, worksheet.outputs_energy_flows_aa66, 0.002); end
  def test_outputs_energy_flows_ab66; assert_in_epsilon(15.904904395851958, worksheet.outputs_energy_flows_ab66, 0.002); end
  def test_outputs_energy_flows_ac66; assert_in_epsilon(17.16485205437681, worksheet.outputs_energy_flows_ac66, 0.002); end
  def test_outputs_energy_flows_ad66; assert_in_epsilon(18.218665478778576, worksheet.outputs_energy_flows_ad66, 0.002); end
  def test_outputs_energy_flows_c68; assert_equal("CFF.03", worksheet.outputs_energy_flows_c68); end
  def test_outputs_energy_flows_d68; assert_equal("Global Unprocessed gas", worksheet.outputs_energy_flows_d68); end
  def test_outputs_energy_flows_e68; assert_equal("FF.03", worksheet.outputs_energy_flows_e68); end
  def test_outputs_energy_flows_f68; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_f68); end
  def test_outputs_energy_flows_g68; assert_equal("Natural.gas.process", worksheet.outputs_energy_flows_g68); end
  def test_outputs_energy_flows_h68; assert_equal("Global Natural gas processing plants", worksheet.outputs_energy_flows_h68); end
  def test_outputs_energy_flows_v68; assert_in_epsilon(88.16902234559343, worksheet.outputs_energy_flows_v68, 0.002); end
  def test_outputs_energy_flows_w68; assert_in_epsilon(93.75320927166584, worksheet.outputs_energy_flows_w68, 0.002); end
  def test_outputs_energy_flows_x68; assert_in_epsilon(100.0534124131095, worksheet.outputs_energy_flows_x68, 0.002); end
  def test_outputs_energy_flows_y68; assert_in_epsilon(107.64522040000715, worksheet.outputs_energy_flows_y68, 0.002); end
  def test_outputs_energy_flows_z68; assert_in_epsilon(116.93960625382476, worksheet.outputs_energy_flows_z68, 0.002); end
  def test_outputs_energy_flows_aa68; assert_in_epsilon(126.39698315477219, worksheet.outputs_energy_flows_aa68, 0.002); end
  def test_outputs_energy_flows_ab68; assert_in_epsilon(134.27566912737547, worksheet.outputs_energy_flows_ab68, 0.002); end
  def test_outputs_energy_flows_ac68; assert_in_epsilon(145.26945237826553, worksheet.outputs_energy_flows_ac68, 0.002); end
  def test_outputs_energy_flows_ad68; assert_in_epsilon(154.4081993149163, worksheet.outputs_energy_flows_ad68, 0.002); end
  def test_outputs_energy_flows_c70; assert_equal("CFF.03", worksheet.outputs_energy_flows_c70); end
  def test_outputs_energy_flows_d70; assert_equal("Global Unprocessed gas", worksheet.outputs_energy_flows_d70); end
  def test_outputs_energy_flows_e70; assert_equal("L.02", worksheet.outputs_energy_flows_e70); end
  def test_outputs_energy_flows_f70; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f70); end
  def test_outputs_energy_flows_g70; assert_equal("Natural.gas.process", worksheet.outputs_energy_flows_g70); end
  def test_outputs_energy_flows_h70; assert_equal("Global Natural gas processing plants", worksheet.outputs_energy_flows_h70); end
  def test_outputs_energy_flows_v70; assert_in_epsilon(1.7993678029712896, worksheet.outputs_energy_flows_v70, 0.002); end
  def test_outputs_energy_flows_w70; assert_in_epsilon(1.913330801462564, worksheet.outputs_energy_flows_w70, 0.002); end
  def test_outputs_energy_flows_x70; assert_in_epsilon(2.0419063757777423, worksheet.outputs_energy_flows_x70, 0.002); end
  def test_outputs_energy_flows_y70; assert_in_epsilon(2.196841232653213, worksheet.outputs_energy_flows_y70, 0.002); end
  def test_outputs_energy_flows_z70; assert_in_epsilon(2.3865225766086695, worksheet.outputs_energy_flows_z70, 0.002); end
  def test_outputs_energy_flows_aa70; assert_in_epsilon(2.5795302684647368, worksheet.outputs_energy_flows_aa70, 0.002); end
  def test_outputs_energy_flows_ab70; assert_in_epsilon(2.7403197781096935, worksheet.outputs_energy_flows_ab70, 0.002); end
  def test_outputs_energy_flows_ac70; assert_in_epsilon(2.964682701597269, worksheet.outputs_energy_flows_ac70, 0.002); end
  def test_outputs_energy_flows_ad70; assert_in_epsilon(3.1511877411207365, worksheet.outputs_energy_flows_ad70, 0.002); end
  def test_outputs_energy_flows_c72; assert_equal("FF.01", worksheet.outputs_energy_flows_c72); end
  def test_outputs_energy_flows_d72; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d72); end
  def test_outputs_energy_flows_e72; assert_equal("n/a", worksheet.outputs_energy_flows_e72); end
  def test_outputs_energy_flows_f72; assert_equal("Solid", worksheet.outputs_energy_flows_f72); end
  def test_outputs_energy_flows_g72; assert_equal("coal.network", worksheet.outputs_energy_flows_g72); end
  def test_outputs_energy_flows_h72; assert_equal("Global Coal distribution network", worksheet.outputs_energy_flows_h72); end
  def test_outputs_energy_flows_i72; assert_equal("C.01", worksheet.outputs_energy_flows_i72); end
  def test_outputs_energy_flows_j72; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j72); end
  def test_outputs_energy_flows_v72; assert_in_epsilon(120.08870818706784, worksheet.outputs_energy_flows_v72, 0.002); end
  def test_outputs_energy_flows_w72; assert_in_epsilon(123.60828452562527, worksheet.outputs_energy_flows_w72, 0.002); end
  def test_outputs_energy_flows_x72; assert_in_epsilon(139.18682130642011, worksheet.outputs_energy_flows_x72, 0.002); end
  def test_outputs_energy_flows_y72; assert_in_epsilon(154.5280419703561, worksheet.outputs_energy_flows_y72, 0.002); end
  def test_outputs_energy_flows_z72; assert_in_epsilon(167.8432833674411, worksheet.outputs_energy_flows_z72, 0.002); end
  def test_outputs_energy_flows_aa72; assert_in_epsilon(178.81695862174476, worksheet.outputs_energy_flows_aa72, 0.002); end
  def test_outputs_energy_flows_ab72; assert_in_epsilon(185.28589194511204, worksheet.outputs_energy_flows_ab72, 0.002); end
  def test_outputs_energy_flows_ac72; assert_in_epsilon(185.33701587600103, worksheet.outputs_energy_flows_ac72, 0.002); end
  def test_outputs_energy_flows_ad72; assert_in_epsilon(186.47956055470976, worksheet.outputs_energy_flows_ad72, 0.002); end
  def test_outputs_energy_flows_c74; assert_equal("FF.01", worksheet.outputs_energy_flows_c74); end
  def test_outputs_energy_flows_d74; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d74); end
  def test_outputs_energy_flows_e74; assert_equal("L.02", worksheet.outputs_energy_flows_e74); end
  def test_outputs_energy_flows_f74; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f74); end
  def test_outputs_energy_flows_g74; assert_equal("coal.network", worksheet.outputs_energy_flows_g74); end
  def test_outputs_energy_flows_h74; assert_equal("Global Coal distribution network", worksheet.outputs_energy_flows_h74); end
  def test_outputs_energy_flows_i74; assert_equal("C.01", worksheet.outputs_energy_flows_i74); end
  def test_outputs_energy_flows_j74; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j74); end
  def test_outputs_energy_flows_v74; assert_in_delta(0.2547806897900884, worksheet.outputs_energy_flows_v74, 0.002); end
  def test_outputs_energy_flows_w74; assert_in_delta(0.26224783720839245, worksheet.outputs_energy_flows_w74, 0.002); end
  def test_outputs_energy_flows_x74; assert_in_delta(0.2952993239539098, worksheet.outputs_energy_flows_x74, 0.002); end
  def test_outputs_energy_flows_y74; assert_in_delta(0.3278473198644902, worksheet.outputs_energy_flows_y74, 0.002); end
  def test_outputs_energy_flows_z74; assert_in_delta(0.35609698995492245, worksheet.outputs_energy_flows_z74, 0.002); end
  def test_outputs_energy_flows_aa74; assert_in_delta(0.379378783830735, worksheet.outputs_energy_flows_aa74, 0.002); end
  def test_outputs_energy_flows_ab74; assert_in_delta(0.3931032989763737, worksheet.outputs_energy_flows_ab74, 0.002); end
  def test_outputs_energy_flows_ac74; assert_in_delta(0.3932117637152598, worksheet.outputs_energy_flows_ac74, 0.002); end
  def test_outputs_energy_flows_ad74; assert_in_delta(0.395635791134257, worksheet.outputs_energy_flows_ad74, 0.002); end
  def test_outputs_energy_flows_c76; assert_equal("FF.02", worksheet.outputs_energy_flows_c76); end
  def test_outputs_energy_flows_d76; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d76); end
  def test_outputs_energy_flows_e76; assert_equal("n/a", worksheet.outputs_energy_flows_e76); end
  def test_outputs_energy_flows_f76; assert_equal("Liquid", worksheet.outputs_energy_flows_f76); end
  def test_outputs_energy_flows_g76; assert_equal("oil.network", worksheet.outputs_energy_flows_g76); end
  def test_outputs_energy_flows_h76; assert_equal("Global Oil distribution network", worksheet.outputs_energy_flows_h76); end
  def test_outputs_energy_flows_i76; assert_equal("C.02", worksheet.outputs_energy_flows_i76); end
  def test_outputs_energy_flows_j76; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j76); end
  def test_outputs_energy_flows_v76; assert_in_epsilon(153.0104275275249, worksheet.outputs_energy_flows_v76, 0.002); end
  def test_outputs_energy_flows_w76; assert_in_epsilon(169.5292958892217, worksheet.outputs_energy_flows_w76, 0.002); end
  def test_outputs_energy_flows_x76; assert_in_epsilon(184.04656818198535, worksheet.outputs_energy_flows_x76, 0.002); end
  def test_outputs_energy_flows_y76; assert_in_epsilon(198.4163005118578, worksheet.outputs_energy_flows_y76, 0.002); end
  def test_outputs_energy_flows_z76; assert_in_epsilon(214.7558924247071, worksheet.outputs_energy_flows_z76, 0.002); end
  def test_outputs_energy_flows_aa76; assert_in_epsilon(231.53464337866276, worksheet.outputs_energy_flows_aa76, 0.002); end
  def test_outputs_energy_flows_ab76; assert_in_epsilon(248.94115473324527, worksheet.outputs_energy_flows_ab76, 0.002); end
  def test_outputs_energy_flows_ac76; assert_in_epsilon(268.6616646596314, worksheet.outputs_energy_flows_ac76, 0.002); end
  def test_outputs_energy_flows_ad76; assert_in_epsilon(285.15579277349735, worksheet.outputs_energy_flows_ad76, 0.002); end
  def test_outputs_energy_flows_c78; assert_equal("FF.02", worksheet.outputs_energy_flows_c78); end
  def test_outputs_energy_flows_d78; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d78); end
  def test_outputs_energy_flows_e78; assert_equal("L.02", worksheet.outputs_energy_flows_e78); end
  def test_outputs_energy_flows_f78; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f78); end
  def test_outputs_energy_flows_g78; assert_equal("oil.network", worksheet.outputs_energy_flows_g78); end
  def test_outputs_energy_flows_h78; assert_equal("Global Oil distribution network", worksheet.outputs_energy_flows_h78); end
  def test_outputs_energy_flows_i78; assert_equal("C.02", worksheet.outputs_energy_flows_i78); end
  def test_outputs_energy_flows_j78; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j78); end
  def test_outputs_energy_flows_v78; assert_in_delta(0.14486001833357612, worksheet.outputs_energy_flows_v78, 0.002); end
  def test_outputs_energy_flows_w78; assert_in_delta(0.16049897583727216, worksheet.outputs_energy_flows_w78, 0.002); end
  def test_outputs_energy_flows_x78; assert_in_delta(0.17424295632582387, worksheet.outputs_energy_flows_x78, 0.002); end
  def test_outputs_energy_flows_y78; assert_in_delta(0.1878472558653402, worksheet.outputs_energy_flows_y78, 0.002); end
  def test_outputs_energy_flows_z78; assert_in_delta(0.2033164864420126, worksheet.outputs_energy_flows_z78, 0.002); end
  def test_outputs_energy_flows_aa78; assert_in_delta(0.21920148336725348, worksheet.outputs_energy_flows_aa78, 0.002); end
  def test_outputs_energy_flows_ab78; assert_in_delta(0.23568080176857506, worksheet.outputs_energy_flows_ab78, 0.002); end
  def test_outputs_energy_flows_ac78; assert_in_delta(0.25435085893817466, worksheet.outputs_energy_flows_ac78, 0.002); end
  def test_outputs_energy_flows_ad78; assert_in_delta(0.26996639403326583, worksheet.outputs_energy_flows_ad78, 0.002); end
  def test_outputs_energy_flows_c80; assert_equal("FF.03", worksheet.outputs_energy_flows_c80); end
  def test_outputs_energy_flows_d80; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d80); end
  def test_outputs_energy_flows_e80; assert_equal("n/a", worksheet.outputs_energy_flows_e80); end
  def test_outputs_energy_flows_f80; assert_equal("Gas", worksheet.outputs_energy_flows_f80); end
  def test_outputs_energy_flows_g80; assert_equal("gas.nework", worksheet.outputs_energy_flows_g80); end
  def test_outputs_energy_flows_h80; assert_equal("Global Gas distribution network", worksheet.outputs_energy_flows_h80); end
  def test_outputs_energy_flows_i80; assert_equal("C.03", worksheet.outputs_energy_flows_i80); end
  def test_outputs_energy_flows_j80; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j80); end
  def test_outputs_energy_flows_v80; assert_in_epsilon(85.74387898879355, worksheet.outputs_energy_flows_v80, 0.002); end
  def test_outputs_energy_flows_w80; assert_in_epsilon(91.1744694082175, worksheet.outputs_energy_flows_w80, 0.002); end
  def test_outputs_energy_flows_x80; assert_in_epsilon(97.30138157525211, worksheet.outputs_energy_flows_x80, 0.002); end
  def test_outputs_energy_flows_y80; assert_in_epsilon(104.68437219959175, worksheet.outputs_energy_flows_y80, 0.002); end
  def test_outputs_energy_flows_z80; assert_in_epsilon(113.72311023619109, worksheet.outputs_energy_flows_z80, 0.002); end
  def test_outputs_energy_flows_aa80; assert_in_epsilon(122.92035615060918, worksheet.outputs_energy_flows_aa80, 0.002); end
  def test_outputs_energy_flows_ab80; assert_in_epsilon(130.582334004664, worksheet.outputs_energy_flows_ab80, 0.002); end
  def test_outputs_energy_flows_ac80; assert_in_epsilon(141.2737264644609, worksheet.outputs_energy_flows_ac80, 0.002); end
  def test_outputs_energy_flows_ad80; assert_in_epsilon(150.1611065283338, worksheet.outputs_energy_flows_ad80, 0.002); end
  def test_outputs_energy_flows_c82; assert_equal("FF.03", worksheet.outputs_energy_flows_c82); end
  def test_outputs_energy_flows_d82; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d82); end
  def test_outputs_energy_flows_e82; assert_equal("L.02", worksheet.outputs_energy_flows_e82); end
  def test_outputs_energy_flows_f82; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f82); end
  def test_outputs_energy_flows_g82; assert_equal("gas.nework", worksheet.outputs_energy_flows_g82); end
  def test_outputs_energy_flows_h82; assert_equal("Global Gas distribution network", worksheet.outputs_energy_flows_h82); end
  def test_outputs_energy_flows_i82; assert_equal("C.03", worksheet.outputs_energy_flows_i82); end
  def test_outputs_energy_flows_j82; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j82); end
  def test_outputs_energy_flows_v82; assert_in_epsilon(2.4251433567998735, worksheet.outputs_energy_flows_v82, 0.002); end
  def test_outputs_energy_flows_w82; assert_in_epsilon(2.578739863448334, worksheet.outputs_energy_flows_w82, 0.002); end
  def test_outputs_energy_flows_x82; assert_in_epsilon(2.752030837857391, worksheet.outputs_energy_flows_x82, 0.002); end
  def test_outputs_energy_flows_y82; assert_in_epsilon(2.9608482004154006, worksheet.outputs_energy_flows_y82, 0.002); end
  def test_outputs_energy_flows_z82; assert_in_epsilon(3.2164960176336783, worksheet.outputs_energy_flows_z82, 0.002); end
  def test_outputs_energy_flows_aa82; assert_in_epsilon(3.476627004163002, worksheet.outputs_energy_flows_aa82, 0.002); end
  def test_outputs_energy_flows_ab82; assert_in_epsilon(3.6933351227114684, worksheet.outputs_energy_flows_ab82, 0.002); end
  def test_outputs_energy_flows_ac82; assert_in_epsilon(3.9957259138046197, worksheet.outputs_energy_flows_ac82, 0.002); end
  def test_outputs_energy_flows_ad82; assert_in_epsilon(4.2470927865824875, worksheet.outputs_energy_flows_ad82, 0.002); end
  def test_outputs_energy_flows_c84; assert_equal("n/a ", worksheet.outputs_energy_flows_c84); end
  def test_outputs_energy_flows_d84; assert_equal("Bio conversion", worksheet.outputs_energy_flows_d84); end
  def test_outputs_energy_flows_e84; assert_equal("n/a ", worksheet.outputs_energy_flows_e84); end
  def test_outputs_energy_flows_f84; assert_equal("Solid", worksheet.outputs_energy_flows_f84); end
  def test_outputs_energy_flows_g84; assert_equal("n/a", worksheet.outputs_energy_flows_g84); end
  def test_outputs_energy_flows_h84; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_h84); end
  def test_outputs_energy_flows_i84; assert_equal("C.01", worksheet.outputs_energy_flows_i84); end
  def test_outputs_energy_flows_j84; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j84); end
  def test_outputs_energy_flows_v84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v84||0), 0.002); end
  def test_outputs_energy_flows_w84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w84||0), 0.002); end
  def test_outputs_energy_flows_x84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x84||0), 0.002); end
  def test_outputs_energy_flows_y84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y84||0), 0.002); end
  def test_outputs_energy_flows_z84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z84||0), 0.002); end
  def test_outputs_energy_flows_aa84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa84||0), 0.002); end
  def test_outputs_energy_flows_ab84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab84||0), 0.002); end
  def test_outputs_energy_flows_ac84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac84||0), 0.002); end
  def test_outputs_energy_flows_ad84; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad84||0), 0.002); end
  def test_outputs_energy_flows_c86; assert_equal("n/a ", worksheet.outputs_energy_flows_c86); end
  def test_outputs_energy_flows_d86; assert_equal("Bio conversion", worksheet.outputs_energy_flows_d86); end
  def test_outputs_energy_flows_e86; assert_equal("n/a ", worksheet.outputs_energy_flows_e86); end
  def test_outputs_energy_flows_f86; assert_equal("Liquid", worksheet.outputs_energy_flows_f86); end
  def test_outputs_energy_flows_g86; assert_equal("n/a", worksheet.outputs_energy_flows_g86); end
  def test_outputs_energy_flows_h86; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_h86); end
  def test_outputs_energy_flows_i86; assert_equal("C.02", worksheet.outputs_energy_flows_i86); end
  def test_outputs_energy_flows_j86; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j86); end
  def test_outputs_energy_flows_v86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v86||0), 0.002); end
  def test_outputs_energy_flows_w86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w86||0), 0.002); end
  def test_outputs_energy_flows_x86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x86||0), 0.002); end
  def test_outputs_energy_flows_y86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y86||0), 0.002); end
  def test_outputs_energy_flows_z86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z86||0), 0.002); end
  def test_outputs_energy_flows_aa86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa86||0), 0.002); end
  def test_outputs_energy_flows_ab86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab86||0), 0.002); end
  def test_outputs_energy_flows_ac86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac86||0), 0.002); end
  def test_outputs_energy_flows_ad86; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad86||0), 0.002); end
  def test_outputs_energy_flows_c88; assert_equal("n/a ", worksheet.outputs_energy_flows_c88); end
  def test_outputs_energy_flows_d88; assert_equal("Bio conversion", worksheet.outputs_energy_flows_d88); end
  def test_outputs_energy_flows_e88; assert_equal("n/a ", worksheet.outputs_energy_flows_e88); end
  def test_outputs_energy_flows_f88; assert_equal("Gas", worksheet.outputs_energy_flows_f88); end
  def test_outputs_energy_flows_g88; assert_equal("n/a", worksheet.outputs_energy_flows_g88); end
  def test_outputs_energy_flows_h88; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_h88); end
  def test_outputs_energy_flows_i88; assert_equal("C.03", worksheet.outputs_energy_flows_i88); end
  def test_outputs_energy_flows_j88; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j88); end
  def test_outputs_energy_flows_v88; assert_in_epsilon(3.711553030654428, worksheet.outputs_energy_flows_v88, 0.002); end
  def test_outputs_energy_flows_w88; assert_in_epsilon(3.9473900731062677, worksheet.outputs_energy_flows_w88, 0.002); end
  def test_outputs_energy_flows_x88; assert_in_epsilon(4.259157569033665, worksheet.outputs_energy_flows_x88, 0.002); end
  def test_outputs_energy_flows_y88; assert_in_epsilon(4.565949739070457, worksheet.outputs_energy_flows_y88, 0.002); end
  def test_outputs_energy_flows_z88; assert_in_epsilon(4.971264438016344, worksheet.outputs_energy_flows_z88, 0.002); end
  def test_outputs_energy_flows_aa88; assert_in_epsilon(5.275551166167685, worksheet.outputs_energy_flows_aa88, 0.002); end
  def test_outputs_energy_flows_ab88; assert_in_epsilon(5.574462401152331, worksheet.outputs_energy_flows_ab88, 0.002); end
  def test_outputs_energy_flows_ac88; assert_in_epsilon(5.865699927891578, worksheet.outputs_energy_flows_ac88, 0.002); end
  def test_outputs_energy_flows_ad88; assert_in_epsilon(6.147135738350207, worksheet.outputs_energy_flows_ad88, 0.002); end
  def test_outputs_energy_flows_c90; assert_equal("n/a ", worksheet.outputs_energy_flows_c90); end
  def test_outputs_energy_flows_d90; assert_equal("Bio conversion", worksheet.outputs_energy_flows_d90); end
  def test_outputs_energy_flows_e90; assert_equal("n/a ", worksheet.outputs_energy_flows_e90); end
  def test_outputs_energy_flows_f90; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f90); end
  def test_outputs_energy_flows_g90; assert_equal("n/a", worksheet.outputs_energy_flows_g90); end
  def test_outputs_energy_flows_h90; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_h90); end
  def test_outputs_energy_flows_i90; assert_equal("L.01", worksheet.outputs_energy_flows_i90); end
  def test_outputs_energy_flows_j90; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j90); end
  def test_outputs_energy_flows_v90; assert_in_delta(0.6549799465860757, worksheet.outputs_energy_flows_v90, 0.002); end
  def test_outputs_energy_flows_w90; assert_in_delta(0.6965982481952238, worksheet.outputs_energy_flows_w90, 0.002); end
  def test_outputs_energy_flows_x90; assert_in_delta(0.7516160415941764, worksheet.outputs_energy_flows_x90, 0.002); end
  def test_outputs_energy_flows_y90; assert_in_delta(0.8057558363065516, worksheet.outputs_energy_flows_y90, 0.002); end
  def test_outputs_energy_flows_z90; assert_in_delta(0.7559987394218401, worksheet.outputs_energy_flows_z90, 0.002); end
  def test_outputs_energy_flows_aa90; assert_in_delta(0.802272757988634, worksheet.outputs_energy_flows_aa90, 0.002); end
  def test_outputs_energy_flows_ab90; assert_in_delta(0.8477293052443633, worksheet.outputs_energy_flows_ab90, 0.002); end
  def test_outputs_energy_flows_ac90; assert_in_delta(0.8920188830434199, worksheet.outputs_energy_flows_ac90, 0.002); end
  def test_outputs_energy_flows_ad90; assert_in_delta(0.9348178772606301, worksheet.outputs_energy_flows_ad90, 0.002); end
  def test_outputs_energy_flows_c92; assert_equal("n/a", worksheet.outputs_energy_flows_c92); end
  def test_outputs_energy_flows_d92; assert_equal("Solid", worksheet.outputs_energy_flows_d92); end
  def test_outputs_energy_flows_e92; assert_equal("n/a", worksheet.outputs_energy_flows_e92); end
  def test_outputs_energy_flows_f92; assert_equal("Thermal generation", worksheet.outputs_energy_flows_f92); end
  def test_outputs_energy_flows_i92; assert_equal("C.01", worksheet.outputs_energy_flows_i92); end
  def test_outputs_energy_flows_j92; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j92); end
  def test_outputs_energy_flows_k92; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k92); end
  def test_outputs_energy_flows_l92; assert_equal("Unabated power", worksheet.outputs_energy_flows_l92); end
  def test_outputs_energy_flows_v92; assert_in_epsilon(86.94146718841361, worksheet.outputs_energy_flows_v92, 0.002); end
  def test_outputs_energy_flows_w92; assert_in_epsilon(87.48399041048222, worksheet.outputs_energy_flows_w92, 0.002); end
  def test_outputs_energy_flows_x92; assert_in_epsilon(98.49694684060279, worksheet.outputs_energy_flows_x92, 0.002); end
  def test_outputs_energy_flows_y92; assert_in_epsilon(109.26811266218962, worksheet.outputs_energy_flows_y92, 0.002); end
  def test_outputs_energy_flows_z92; assert_in_epsilon(118.21801346454676, worksheet.outputs_energy_flows_z92, 0.002); end
  def test_outputs_energy_flows_aa92; assert_in_epsilon(124.87672342113856, worksheet.outputs_energy_flows_aa92, 0.002); end
  def test_outputs_energy_flows_ab92; assert_in_epsilon(127.26114478351867, worksheet.outputs_energy_flows_ab92, 0.002); end
  def test_outputs_energy_flows_ac92; assert_in_epsilon(123.06311651388268, worksheet.outputs_energy_flows_ac92, 0.002); end
  def test_outputs_energy_flows_ad92; assert_in_epsilon(120.7122656041492, worksheet.outputs_energy_flows_ad92, 0.002); end
  def test_outputs_energy_flows_c94; assert_equal("n/a", worksheet.outputs_energy_flows_c94); end
  def test_outputs_energy_flows_d94; assert_equal("Liquid", worksheet.outputs_energy_flows_d94); end
  def test_outputs_energy_flows_e94; assert_equal("n/a", worksheet.outputs_energy_flows_e94); end
  def test_outputs_energy_flows_f94; assert_equal("Thermal generation", worksheet.outputs_energy_flows_f94); end
  def test_outputs_energy_flows_i94; assert_equal("C.02", worksheet.outputs_energy_flows_i94); end
  def test_outputs_energy_flows_j94; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j94); end
  def test_outputs_energy_flows_k94; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k94); end
  def test_outputs_energy_flows_l94; assert_equal("Unabated power", worksheet.outputs_energy_flows_l94); end
  def test_outputs_energy_flows_v94; assert_in_epsilon(13.366790608402482, worksheet.outputs_energy_flows_v94, 0.002); end
  def test_outputs_energy_flows_w94; assert_in_epsilon(21.183974722149724, worksheet.outputs_energy_flows_w94, 0.002); end
  def test_outputs_energy_flows_x94; assert_in_epsilon(24.439565117480907, worksheet.outputs_energy_flows_x94, 0.002); end
  def test_outputs_energy_flows_y94; assert_in_epsilon(27.993091565164942, worksheet.outputs_energy_flows_y94, 0.002); end
  def test_outputs_energy_flows_z94; assert_in_epsilon(33.20102825737788, worksheet.outputs_energy_flows_z94, 0.002); end
  def test_outputs_energy_flows_aa94; assert_in_epsilon(38.893455559908006, worksheet.outputs_energy_flows_aa94, 0.002); end
  def test_outputs_energy_flows_ab94; assert_in_epsilon(45.51246083488472, worksheet.outputs_energy_flows_ab94, 0.002); end
  def test_outputs_energy_flows_ac94; assert_in_epsilon(53.899326107720576, worksheet.outputs_energy_flows_ac94, 0.002); end
  def test_outputs_energy_flows_ad94; assert_in_epsilon(59.82319129543151, worksheet.outputs_energy_flows_ad94, 0.002); end
  def test_outputs_energy_flows_c96; assert_equal("n/a", worksheet.outputs_energy_flows_c96); end
  def test_outputs_energy_flows_d96; assert_equal("Gas", worksheet.outputs_energy_flows_d96); end
  def test_outputs_energy_flows_e96; assert_equal("n/a", worksheet.outputs_energy_flows_e96); end
  def test_outputs_energy_flows_f96; assert_equal("Thermal generation", worksheet.outputs_energy_flows_f96); end
  def test_outputs_energy_flows_i96; assert_equal("C.03", worksheet.outputs_energy_flows_i96); end
  def test_outputs_energy_flows_j96; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j96); end
  def test_outputs_energy_flows_k96; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k96); end
  def test_outputs_energy_flows_l96; assert_equal("Unabated power", worksheet.outputs_energy_flows_l96); end
  def test_outputs_energy_flows_v96; assert_in_epsilon(35.74892547965594, worksheet.outputs_energy_flows_v96, 0.002); end
  def test_outputs_energy_flows_w96; assert_in_epsilon(37.606499006064425, worksheet.outputs_energy_flows_w96, 0.002); end
  def test_outputs_energy_flows_x96; assert_in_epsilon(38.812965580488836, worksheet.outputs_energy_flows_x96, 0.002); end
  def test_outputs_energy_flows_y96; assert_in_epsilon(41.676177229280896, worksheet.outputs_energy_flows_y96, 0.002); end
  def test_outputs_energy_flows_z96; assert_in_epsilon(45.9776308200029, worksheet.outputs_energy_flows_z96, 0.002); end
  def test_outputs_energy_flows_aa96; assert_in_epsilon(50.53957159868566, worksheet.outputs_energy_flows_aa96, 0.002); end
  def test_outputs_energy_flows_ab96; assert_in_epsilon(54.05592547101497, worksheet.outputs_energy_flows_ab96, 0.002); end
  def test_outputs_energy_flows_ac96; assert_in_epsilon(60.25835660258358, worksheet.outputs_energy_flows_ac96, 0.002); end
  def test_outputs_energy_flows_ad96; assert_in_epsilon(65.62948510782317, worksheet.outputs_energy_flows_ad96, 0.002); end
  def test_outputs_energy_flows_c98; assert_equal("N.01", worksheet.outputs_energy_flows_c98); end
  def test_outputs_energy_flows_d98; assert_equal("Global Nuclear fission", worksheet.outputs_energy_flows_d98); end
  def test_outputs_energy_flows_e98; assert_equal("n/a", worksheet.outputs_energy_flows_e98); end
  def test_outputs_energy_flows_f98; assert_equal("Thermal generation", worksheet.outputs_energy_flows_f98); end
  def test_outputs_energy_flows_g98; assert_equal("nuclear.elec", worksheet.outputs_energy_flows_g98); end
  def test_outputs_energy_flows_h98; assert_equal("Global Nuclear power stations", worksheet.outputs_energy_flows_h98); end
  def test_outputs_energy_flows_v98; assert_in_epsilon(29.05342456550469, worksheet.outputs_energy_flows_v98, 0.002); end
  def test_outputs_energy_flows_w98; assert_in_epsilon(30.810010146552408, worksheet.outputs_energy_flows_w98, 0.002); end
  def test_outputs_energy_flows_x98; assert_in_epsilon(31.225696864304222, worksheet.outputs_energy_flows_x98, 0.002); end
  def test_outputs_energy_flows_y98; assert_in_epsilon(32.18595686107117, worksheet.outputs_energy_flows_y98, 0.002); end
  def test_outputs_energy_flows_z98; assert_in_epsilon(32.43266849176103, worksheet.outputs_energy_flows_z98, 0.002); end
  def test_outputs_energy_flows_aa98; assert_in_epsilon(33.479333152855254, worksheet.outputs_energy_flows_aa98, 0.002); end
  def test_outputs_energy_flows_ab98; assert_in_epsilon(33.89666579819007, worksheet.outputs_energy_flows_ab98, 0.002); end
  def test_outputs_energy_flows_ac98; assert_in_epsilon(34.72611971550832, worksheet.outputs_energy_flows_ac98, 0.002); end
  def test_outputs_energy_flows_ad98; assert_in_epsilon(35.59554910606688, worksheet.outputs_energy_flows_ad98, 0.002); end
  def test_outputs_energy_flows_c100; assert_equal("n/a", worksheet.outputs_energy_flows_c100); end
  def test_outputs_energy_flows_d100; assert_equal("Thermal generation", worksheet.outputs_energy_flows_d100); end
  def test_outputs_energy_flows_e100; assert_equal("H.01", worksheet.outputs_energy_flows_e100); end
  def test_outputs_energy_flows_f100; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_f100); end
  def test_outputs_energy_flows_k100; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k100); end
  def test_outputs_energy_flows_l100; assert_equal("Unabated power", worksheet.outputs_energy_flows_l100); end
  def test_outputs_energy_flows_m100; assert_equal("Nuclear", worksheet.outputs_energy_flows_m100); end
  def test_outputs_energy_flows_v100; assert_in_epsilon(9.635809154838396, worksheet.outputs_energy_flows_v100, 0.002); end
  def test_outputs_energy_flows_w100; assert_in_epsilon(10.545354721530195, worksheet.outputs_energy_flows_w100, 0.002); end
  def test_outputs_energy_flows_x100; assert_in_epsilon(11.884088679352642, worksheet.outputs_energy_flows_x100, 0.002); end
  def test_outputs_energy_flows_y100; assert_in_epsilon(13.154345007096746, worksheet.outputs_energy_flows_y100, 0.002); end
  def test_outputs_energy_flows_z100; assert_in_epsilon(14.557343049174946, worksheet.outputs_energy_flows_z100, 0.002); end
  def test_outputs_energy_flows_aa100; assert_in_epsilon(15.938892910355834, worksheet.outputs_energy_flows_aa100, 0.002); end
  def test_outputs_energy_flows_ab100; assert_in_epsilon(17.166026876989314, worksheet.outputs_energy_flows_ab100, 0.002); end
  def test_outputs_energy_flows_ac100; assert_in_epsilon(18.51761706815896, worksheet.outputs_energy_flows_ac100, 0.002); end
  def test_outputs_energy_flows_ad100; assert_in_epsilon(19.5086660428596, worksheet.outputs_energy_flows_ad100, 0.002); end
  def test_outputs_energy_flows_c102; assert_equal("n/a", worksheet.outputs_energy_flows_c102); end
  def test_outputs_energy_flows_d102; assert_equal("Thermal generation", worksheet.outputs_energy_flows_d102); end
  def test_outputs_energy_flows_f102; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f102); end
  def test_outputs_energy_flows_i102; assert_equal("E.02", worksheet.outputs_energy_flows_i102); end
  def test_outputs_energy_flows_j102; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j102); end
  def test_outputs_energy_flows_k102; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k102); end
  def test_outputs_energy_flows_l102; assert_equal("Unabated power", worksheet.outputs_energy_flows_l102); end
  def test_outputs_energy_flows_m102; assert_equal("Nuclear", worksheet.outputs_energy_flows_m102); end
  def test_outputs_energy_flows_v102; assert_in_epsilon(58.64944014387076, worksheet.outputs_energy_flows_v102, 0.002); end
  def test_outputs_energy_flows_w102; assert_in_epsilon(63.778848803611815, worksheet.outputs_energy_flows_w102, 0.002); end
  def test_outputs_energy_flows_x102; assert_in_epsilon(70.81870490295437, worksheet.outputs_energy_flows_x102, 0.002); end
  def test_outputs_energy_flows_y102; assert_in_epsilon(78.98150206709649, worksheet.outputs_energy_flows_y102, 0.002); end
  def test_outputs_energy_flows_z102; assert_in_epsilon(87.4202340527809, worksheet.outputs_energy_flows_z102, 0.002); end
  def test_outputs_energy_flows_aa102; assert_in_epsilon(95.9625593420769, worksheet.outputs_energy_flows_aa102, 0.002); end
  def test_outputs_energy_flows_ab102; assert_in_epsilon(102.77303590799978, worksheet.outputs_energy_flows_ab102, 0.002); end
  def test_outputs_energy_flows_ac102; assert_in_epsilon(108.76626739520572, worksheet.outputs_energy_flows_ac102, 0.002); end
  def test_outputs_energy_flows_ad102; assert_in_epsilon(114.19751612817821, worksheet.outputs_energy_flows_ad102, 0.002); end
  def test_outputs_energy_flows_c104; assert_equal("n/a", worksheet.outputs_energy_flows_c104); end
  def test_outputs_energy_flows_d104; assert_equal("Thermal generation", worksheet.outputs_energy_flows_d104); end
  def test_outputs_energy_flows_e104; assert_equal("L.02", worksheet.outputs_energy_flows_e104); end
  def test_outputs_energy_flows_f104; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f104); end
  def test_outputs_energy_flows_k104; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k104); end
  def test_outputs_energy_flows_l104; assert_equal("Unabated power", worksheet.outputs_energy_flows_l104); end
  def test_outputs_energy_flows_m104; assert_equal("Nuclear", worksheet.outputs_energy_flows_m104); end
  def test_outputs_energy_flows_v104; assert_in_epsilon(2.5219259261864426, worksheet.outputs_energy_flows_v104, 0.002); end
  def test_outputs_energy_flows_w104; assert_in_epsilon(2.7481363468656435, worksheet.outputs_energy_flows_w104, 0.002); end
  def test_outputs_energy_flows_x104; assert_in_epsilon(3.0617718411162045, worksheet.outputs_energy_flows_x104, 0.002); end
  def test_outputs_energy_flows_y104; assert_in_epsilon(3.421412035069035, worksheet.outputs_energy_flows_y104, 0.002); end
  def test_outputs_energy_flows_z104; assert_in_epsilon(3.8218883238919132, worksheet.outputs_energy_flows_z104, 0.002); end
  def test_outputs_energy_flows_aa104; assert_in_epsilon(4.211320013218496, worksheet.outputs_energy_flows_aa104, 0.002); end
  def test_outputs_energy_flows_ab104; assert_in_epsilon(4.534207961473349, worksheet.outputs_energy_flows_ab104, 0.002); end
  def test_outputs_energy_flows_ac104; assert_in_epsilon(4.834210368225704, worksheet.outputs_energy_flows_ac104, 0.002); end
  def test_outputs_energy_flows_ad104; assert_in_epsilon(5.151712853236764, worksheet.outputs_energy_flows_ad104, 0.002); end
  def test_outputs_energy_flows_c106; assert_equal("n/a", worksheet.outputs_energy_flows_c106); end
  def test_outputs_energy_flows_d106; assert_equal("Thermal generation", worksheet.outputs_energy_flows_d106); end
  def test_outputs_energy_flows_e106; assert_equal("L.01", worksheet.outputs_energy_flows_e106); end
  def test_outputs_energy_flows_f106; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f106); end
  def test_outputs_energy_flows_k106; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k106); end
  def test_outputs_energy_flows_l106; assert_equal("Unabated power", worksheet.outputs_energy_flows_l106); end
  def test_outputs_energy_flows_m106; assert_equal("Nuclear", worksheet.outputs_energy_flows_m106); end
  def test_outputs_energy_flows_v106; assert_in_epsilon(94.30343261708111, worksheet.outputs_energy_flows_v106, 0.002); end
  def test_outputs_energy_flows_w106; assert_in_epsilon(100.01213441324113, worksheet.outputs_energy_flows_w106, 0.002); end
  def test_outputs_energy_flows_x106; assert_in_epsilon(107.21060897945354, worksheet.outputs_energy_flows_x106, 0.002); end
  def test_outputs_energy_flows_y106; assert_in_epsilon(115.56607920844436, worksheet.outputs_energy_flows_y106, 0.002); end
  def test_outputs_energy_flows_z106; assert_in_epsilon(124.0298756078408, worksheet.outputs_energy_flows_z106, 0.002); end
  def test_outputs_energy_flows_aa106; assert_in_epsilon(131.67631146693626, worksheet.outputs_energy_flows_aa106, 0.002); end
  def test_outputs_energy_flows_ab106; assert_in_epsilon(136.252926141146, worksheet.outputs_energy_flows_ab106, 0.002); end
  def test_outputs_energy_flows_ac106; assert_in_epsilon(139.82882410810478, worksheet.outputs_energy_flows_ac106, 0.002); end
  def test_outputs_energy_flows_ad106; assert_in_epsilon(142.9025960891962, worksheet.outputs_energy_flows_ad106, 0.002); end
  def test_outputs_energy_flows_c108; assert_equal("n/a", worksheet.outputs_energy_flows_c108); end
  def test_outputs_energy_flows_d108; assert_equal("Storage", worksheet.outputs_energy_flows_d108); end
  def test_outputs_energy_flows_e108; assert_equal("n/a", worksheet.outputs_energy_flows_e108); end
  def test_outputs_energy_flows_f108; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f108); end
  def test_outputs_energy_flows_g108; assert_equal("storage.elec", worksheet.outputs_energy_flows_g108); end
  def test_outputs_energy_flows_h108; assert_equal("Global Storage unit", worksheet.outputs_energy_flows_h108); end
  def test_outputs_energy_flows_i108; assert_equal("E.02", worksheet.outputs_energy_flows_i108); end
  def test_outputs_energy_flows_j108; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j108); end
  def test_outputs_energy_flows_v108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v108||0), 0.002); end
  def test_outputs_energy_flows_w108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w108||0), 0.002); end
  def test_outputs_energy_flows_x108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x108||0), 0.002); end
  def test_outputs_energy_flows_y108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y108||0), 0.002); end
  def test_outputs_energy_flows_z108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z108||0), 0.002); end
  def test_outputs_energy_flows_aa108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa108||0), 0.002); end
  def test_outputs_energy_flows_ab108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab108||0), 0.002); end
  def test_outputs_energy_flows_ac108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac108||0), 0.002); end
  def test_outputs_energy_flows_ad108; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad108||0), 0.002); end
  def test_outputs_energy_flows_c110; assert_equal("n/a", worksheet.outputs_energy_flows_c110); end
  def test_outputs_energy_flows_d110; assert_equal("Storage", worksheet.outputs_energy_flows_d110); end
  def test_outputs_energy_flows_e110; assert_equal("L.01", worksheet.outputs_energy_flows_e110); end
  def test_outputs_energy_flows_f110; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f110); end
  def test_outputs_energy_flows_g110; assert_equal("storage.elec", worksheet.outputs_energy_flows_g110); end
  def test_outputs_energy_flows_h110; assert_equal("Global Storage unit", worksheet.outputs_energy_flows_h110); end
  def test_outputs_energy_flows_v110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v110||0), 0.002); end
  def test_outputs_energy_flows_w110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w110||0), 0.002); end
  def test_outputs_energy_flows_x110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x110||0), 0.002); end
  def test_outputs_energy_flows_y110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y110||0), 0.002); end
  def test_outputs_energy_flows_z110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z110||0), 0.002); end
  def test_outputs_energy_flows_aa110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa110||0), 0.002); end
  def test_outputs_energy_flows_ab110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab110||0), 0.002); end
  def test_outputs_energy_flows_ac110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac110||0), 0.002); end
  def test_outputs_energy_flows_ad110; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad110||0), 0.002); end
  def test_outputs_energy_flows_c112; assert_equal("n/a", worksheet.outputs_energy_flows_c112); end
  def test_outputs_energy_flows_d112; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d112); end
  def test_outputs_energy_flows_e112; assert_equal("L.02", worksheet.outputs_energy_flows_e112); end
  def test_outputs_energy_flows_f112; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f112); end
  def test_outputs_energy_flows_g112; assert_equal("electricity.network", worksheet.outputs_energy_flows_g112); end
  def test_outputs_energy_flows_h112; assert_equal("Global Electricity distribution network", worksheet.outputs_energy_flows_h112); end
  def test_outputs_energy_flows_v112; assert_in_epsilon(5.813633087299332, worksheet.outputs_energy_flows_v112, 0.002); end
  def test_outputs_energy_flows_w112; assert_in_epsilon(6.392648219454592, worksheet.outputs_energy_flows_w112, 0.002); end
  def test_outputs_energy_flows_x112; assert_in_epsilon(7.163231521911023, worksheet.outputs_energy_flows_x112, 0.002); end
  def test_outputs_energy_flows_y112; assert_in_epsilon(7.925116100718461, worksheet.outputs_energy_flows_y112, 0.002); end
  def test_outputs_energy_flows_z112; assert_in_epsilon(8.753493464977764, worksheet.outputs_energy_flows_z112, 0.002); end
  def test_outputs_energy_flows_aa112; assert_in_epsilon(9.591004258387715, worksheet.outputs_energy_flows_aa112, 0.002); end
  def test_outputs_energy_flows_ab112; assert_in_epsilon(10.392675749660167, worksheet.outputs_energy_flows_ab112, 0.002); end
  def test_outputs_energy_flows_ac112; assert_in_epsilon(11.243552770938162, worksheet.outputs_energy_flows_ac112, 0.002); end
  def test_outputs_energy_flows_ad112; assert_in_epsilon(12.04447104978893, worksheet.outputs_energy_flows_ad112, 0.002); end
  def test_outputs_energy_flows_c114; assert_equal("n/a", worksheet.outputs_energy_flows_c114); end
  def test_outputs_energy_flows_d114; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d114); end
  def test_outputs_energy_flows_e114; assert_equal("n/a", worksheet.outputs_energy_flows_e114); end
  def test_outputs_energy_flows_f114; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f114); end
  def test_outputs_energy_flows_i114; assert_equal("E.01", worksheet.outputs_energy_flows_i114); end
  def test_outputs_energy_flows_j114; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j114); end
  def test_outputs_energy_flows_k114; assert_equal("Global buildings", worksheet.outputs_energy_flows_k114); end
  def test_outputs_energy_flows_v114; assert_in_epsilon(4.565082420333475, worksheet.outputs_energy_flows_v114, 0.002); end
  def test_outputs_energy_flows_w114; assert_in_epsilon(5.408373830599736, worksheet.outputs_energy_flows_w114, 0.002); end
  def test_outputs_energy_flows_x114; assert_in_epsilon(6.491387190828249, worksheet.outputs_energy_flows_x114, 0.002); end
  def test_outputs_energy_flows_y114; assert_in_epsilon(7.556842652504315, worksheet.outputs_energy_flows_y114, 0.002); end
  def test_outputs_energy_flows_z114; assert_in_epsilon(8.77935954056288, worksheet.outputs_energy_flows_z114, 0.002); end
  def test_outputs_energy_flows_aa114; assert_in_epsilon(10.02732191881477, worksheet.outputs_energy_flows_aa114, 0.002); end
  def test_outputs_energy_flows_ab114; assert_in_epsilon(11.190022961076153, worksheet.outputs_energy_flows_ab114, 0.002); end
  def test_outputs_energy_flows_ac114; assert_in_epsilon(12.502905829217362, worksheet.outputs_energy_flows_ac114, 0.002); end
  def test_outputs_energy_flows_ad114; assert_in_epsilon(13.555354260156832, worksheet.outputs_energy_flows_ad114, 0.002); end
  def test_outputs_energy_flows_c116; assert_equal("n/a", worksheet.outputs_energy_flows_c116); end
  def test_outputs_energy_flows_d116; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d116); end
  def test_outputs_energy_flows_e116; assert_equal("n/a", worksheet.outputs_energy_flows_e116); end
  def test_outputs_energy_flows_f116; assert_equal("Domestic lighting", worksheet.outputs_energy_flows_f116); end
  def test_outputs_energy_flows_i116; assert_equal("E.01", worksheet.outputs_energy_flows_i116); end
  def test_outputs_energy_flows_j116; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j116); end
  def test_outputs_energy_flows_k116; assert_equal("Urban lighting", worksheet.outputs_energy_flows_k116); end
  def test_outputs_energy_flows_l116; assert_equal("Rural lighting", worksheet.outputs_energy_flows_l116); end
  def test_outputs_energy_flows_v116; assert_in_epsilon(2.696296869435333, worksheet.outputs_energy_flows_v116, 0.002); end
  def test_outputs_energy_flows_w116; assert_in_epsilon(3.1971445633683806, worksheet.outputs_energy_flows_w116, 0.002); end
  def test_outputs_energy_flows_x116; assert_in_epsilon(3.8511042175954886, worksheet.outputs_energy_flows_x116, 0.002); end
  def test_outputs_energy_flows_y116; assert_in_epsilon(4.509871643341354, worksheet.outputs_energy_flows_y116, 0.002); end
  def test_outputs_energy_flows_z116; assert_in_epsilon(5.281577833925848, worksheet.outputs_energy_flows_z116, 0.002); end
  def test_outputs_energy_flows_aa116; assert_in_epsilon(6.091886328161163, worksheet.outputs_energy_flows_aa116, 0.002); end
  def test_outputs_energy_flows_ab116; assert_in_epsilon(6.878158668656366, worksheet.outputs_energy_flows_ab116, 0.002); end
  def test_outputs_energy_flows_ac116; assert_in_epsilon(7.786561298332795, worksheet.outputs_energy_flows_ac116, 0.002); end
  def test_outputs_energy_flows_ad116; assert_in_epsilon(8.570214548045183, worksheet.outputs_energy_flows_ad116, 0.002); end
  def test_outputs_energy_flows_c118; assert_equal("n/a", worksheet.outputs_energy_flows_c118); end
  def test_outputs_energy_flows_d118; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d118); end
  def test_outputs_energy_flows_e118; assert_equal("n/a", worksheet.outputs_energy_flows_e118); end
  def test_outputs_energy_flows_f118; assert_equal("Domestic appliances", worksheet.outputs_energy_flows_f118); end
  def test_outputs_energy_flows_i118; assert_equal("E.01", worksheet.outputs_energy_flows_i118); end
  def test_outputs_energy_flows_j118; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j118); end
  def test_outputs_energy_flows_k118; assert_equal("Urban appliances", worksheet.outputs_energy_flows_k118); end
  def test_outputs_energy_flows_l118; assert_equal("Rural appliances", worksheet.outputs_energy_flows_l118); end
  def test_outputs_energy_flows_v118; assert_in_epsilon(12.860587736407986, worksheet.outputs_energy_flows_v118, 0.002); end
  def test_outputs_energy_flows_w118; assert_in_epsilon(14.220735830241354, worksheet.outputs_energy_flows_w118, 0.002); end
  def test_outputs_energy_flows_x118; assert_in_epsilon(15.794098070189783, worksheet.outputs_energy_flows_x118, 0.002); end
  def test_outputs_energy_flows_y118; assert_in_epsilon(17.18693997802466, worksheet.outputs_energy_flows_y118, 0.002); end
  def test_outputs_energy_flows_z118; assert_in_epsilon(18.684389522161958, worksheet.outputs_energy_flows_z118, 0.002); end
  def test_outputs_energy_flows_aa118; assert_in_epsilon(20.03841799108141, worksheet.outputs_energy_flows_aa118, 0.002); end
  def test_outputs_energy_flows_ab118; assert_in_epsilon(21.150969327320006, worksheet.outputs_energy_flows_ab118, 0.002); end
  def test_outputs_energy_flows_ac118; assert_in_epsilon(22.29415696576302, worksheet.outputs_energy_flows_ac118, 0.002); end
  def test_outputs_energy_flows_ad118; assert_in_epsilon(22.97537101917237, worksheet.outputs_energy_flows_ad118, 0.002); end
  def test_outputs_energy_flows_c120; assert_equal("n/a", worksheet.outputs_energy_flows_c120); end
  def test_outputs_energy_flows_d120; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d120); end
  def test_outputs_energy_flows_e120; assert_equal("n/a", worksheet.outputs_energy_flows_e120); end
  def test_outputs_energy_flows_f120; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f120); end
  def test_outputs_energy_flows_i120; assert_equal("E.01", worksheet.outputs_energy_flows_i120); end
  def test_outputs_energy_flows_j120; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j120); end
  def test_outputs_energy_flows_k120; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k120); end
  def test_outputs_energy_flows_l120; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l120); end
  def test_outputs_energy_flows_v120; assert_in_epsilon(1.808542414355401, worksheet.outputs_energy_flows_v120, 0.002); end
  def test_outputs_energy_flows_w120; assert_in_epsilon(2.010772270460809, worksheet.outputs_energy_flows_w120, 0.002); end
  def test_outputs_energy_flows_x120; assert_in_epsilon(2.251727139170066, worksheet.outputs_energy_flows_x120, 0.002); end
  def test_outputs_energy_flows_y120; assert_in_epsilon(2.4640997921327426, worksheet.outputs_energy_flows_y120, 0.002); end
  def test_outputs_energy_flows_z120; assert_in_epsilon(2.721831566235524, worksheet.outputs_energy_flows_z120, 0.002); end
  def test_outputs_energy_flows_aa120; assert_in_epsilon(2.977376546759662, worksheet.outputs_energy_flows_aa120, 0.002); end
  def test_outputs_energy_flows_ab120; assert_in_epsilon(3.194575486055124, worksheet.outputs_energy_flows_ab120, 0.002); end
  def test_outputs_energy_flows_ac120; assert_in_epsilon(3.459438271334942, worksheet.outputs_energy_flows_ac120, 0.002); end
  def test_outputs_energy_flows_ad120; assert_in_epsilon(3.6436724477857894, worksheet.outputs_energy_flows_ad120, 0.002); end
  def test_outputs_energy_flows_c122; assert_equal("n/a", worksheet.outputs_energy_flows_c122); end
  def test_outputs_energy_flows_d122; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d122); end
  def test_outputs_energy_flows_e122; assert_equal("n/a", worksheet.outputs_energy_flows_e122); end
  def test_outputs_energy_flows_f122; assert_equal("Non domestic", worksheet.outputs_energy_flows_f122); end
  def test_outputs_energy_flows_i122; assert_equal("E.01", worksheet.outputs_energy_flows_i122); end
  def test_outputs_energy_flows_j122; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j122); end
  def test_outputs_energy_flows_k122; assert_equal("Non-residential", worksheet.outputs_energy_flows_k122); end
  def test_outputs_energy_flows_v122; assert_in_epsilon(13.646668116774995, worksheet.outputs_energy_flows_v122, 0.002); end
  def test_outputs_energy_flows_w122; assert_in_epsilon(15.259822627795598, worksheet.outputs_energy_flows_w122, 0.002); end
  def test_outputs_energy_flows_x122; assert_in_epsilon(17.25730502081801, worksheet.outputs_energy_flows_x122, 0.002); end
  def test_outputs_energy_flows_y122; assert_in_epsilon(19.285063302912736, worksheet.outputs_energy_flows_y122, 0.002); end
  def test_outputs_energy_flows_z122; assert_in_epsilon(21.320271103929915, worksheet.outputs_energy_flows_z122, 0.002); end
  def test_outputs_energy_flows_aa122; assert_in_epsilon(23.344756397912427, worksheet.outputs_energy_flows_aa122, 0.002); end
  def test_outputs_energy_flows_ab122; assert_in_epsilon(25.33434844611405, worksheet.outputs_energy_flows_ab122, 0.002); end
  def test_outputs_energy_flows_ac122; assert_in_epsilon(27.258684236066564, worksheet.outputs_energy_flows_ac122, 0.002); end
  def test_outputs_energy_flows_ad122; assert_in_epsilon(29.087684486681244, worksheet.outputs_energy_flows_ad122, 0.002); end
  def test_outputs_energy_flows_c124; assert_equal("n/a", worksheet.outputs_energy_flows_c124); end
  def test_outputs_energy_flows_d124; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d124); end
  def test_outputs_energy_flows_e124; assert_equal("n/a", worksheet.outputs_energy_flows_e124); end
  def test_outputs_energy_flows_f124; assert_equal("Steel", worksheet.outputs_energy_flows_f124); end
  def test_outputs_energy_flows_i124; assert_equal("E.01", worksheet.outputs_energy_flows_i124); end
  def test_outputs_energy_flows_j124; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j124); end
  def test_outputs_energy_flows_v124; assert_in_epsilon(3.944226186432, worksheet.outputs_energy_flows_v124, 0.002); end
  def test_outputs_energy_flows_w124; assert_in_epsilon(4.1039954202384745, worksheet.outputs_energy_flows_w124, 0.002); end
  def test_outputs_energy_flows_x124; assert_in_epsilon(4.425200697012075, worksheet.outputs_energy_flows_x124, 0.002); end
  def test_outputs_energy_flows_y124; assert_in_epsilon(4.775437976083743, worksheet.outputs_energy_flows_y124, 0.002); end
  def test_outputs_energy_flows_z124; assert_in_epsilon(5.17354346214832, worksheet.outputs_energy_flows_z124, 0.002); end
  def test_outputs_energy_flows_aa124; assert_in_epsilon(5.597525405776015, worksheet.outputs_energy_flows_aa124, 0.002); end
  def test_outputs_energy_flows_ab124; assert_in_epsilon(6.051074988637828, worksheet.outputs_energy_flows_ab124, 0.002); end
  def test_outputs_energy_flows_ac124; assert_in_epsilon(6.645962100657496, worksheet.outputs_energy_flows_ac124, 0.002); end
  def test_outputs_energy_flows_ad124; assert_in_epsilon(7.629042451369937, worksheet.outputs_energy_flows_ad124, 0.002); end
  def test_outputs_energy_flows_c126; assert_equal("n/a", worksheet.outputs_energy_flows_c126); end
  def test_outputs_energy_flows_d126; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d126); end
  def test_outputs_energy_flows_e126; assert_equal("n/a", worksheet.outputs_energy_flows_e126); end
  def test_outputs_energy_flows_f126; assert_equal("Aluminium", worksheet.outputs_energy_flows_f126); end
  def test_outputs_energy_flows_i126; assert_equal("E.01", worksheet.outputs_energy_flows_i126); end
  def test_outputs_energy_flows_j126; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j126); end
  def test_outputs_energy_flows_v126; assert_in_epsilon(2.4366032392955352, worksheet.outputs_energy_flows_v126, 0.002); end
  def test_outputs_energy_flows_w126; assert_in_epsilon(2.760499767067086, worksheet.outputs_energy_flows_w126, 0.002); end
  def test_outputs_energy_flows_x126; assert_in_epsilon(3.3093549251368968, worksheet.outputs_energy_flows_x126, 0.002); end
  def test_outputs_energy_flows_y126; assert_in_epsilon(3.922911153132523, worksheet.outputs_energy_flows_y126, 0.002); end
  def test_outputs_energy_flows_z126; assert_in_epsilon(4.6263574229628235, worksheet.outputs_energy_flows_z126, 0.002); end
  def test_outputs_energy_flows_aa126; assert_in_epsilon(5.406309124357828, worksheet.outputs_energy_flows_aa126, 0.002); end
  def test_outputs_energy_flows_ab126; assert_in_epsilon(6.249786901412033, worksheet.outputs_energy_flows_ab126, 0.002); end
  def test_outputs_energy_flows_ac126; assert_in_epsilon(7.2277468572941785, worksheet.outputs_energy_flows_ac126, 0.002); end
  def test_outputs_energy_flows_ad126; assert_in_epsilon(8.302563940861893, worksheet.outputs_energy_flows_ad126, 0.002); end
  def test_outputs_energy_flows_c128; assert_equal("n/a", worksheet.outputs_energy_flows_c128); end
  def test_outputs_energy_flows_d128; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d128); end
  def test_outputs_energy_flows_e128; assert_equal("n/a", worksheet.outputs_energy_flows_e128); end
  def test_outputs_energy_flows_f128; assert_equal("Cement", worksheet.outputs_energy_flows_f128); end
  def test_outputs_energy_flows_i128; assert_equal("E.01", worksheet.outputs_energy_flows_i128); end
  def test_outputs_energy_flows_j128; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j128); end
  def test_outputs_energy_flows_v128; assert_in_epsilon(1.2888723312000763, worksheet.outputs_energy_flows_v128, 0.002); end
  def test_outputs_energy_flows_w128; assert_in_epsilon(1.3846071333947918, worksheet.outputs_energy_flows_w128, 0.002); end
  def test_outputs_energy_flows_x128; assert_in_epsilon(1.4829172066151368, worksheet.outputs_energy_flows_x128, 0.002); end
  def test_outputs_energy_flows_y128; assert_in_epsilon(1.5787874324150841, worksheet.outputs_energy_flows_y128, 0.002); end
  def test_outputs_energy_flows_z128; assert_in_epsilon(1.8259964734237109, worksheet.outputs_energy_flows_z128, 0.002); end
  def test_outputs_energy_flows_aa128; assert_in_epsilon(2.093818275035305, worksheet.outputs_energy_flows_aa128, 0.002); end
  def test_outputs_energy_flows_ab128; assert_in_epsilon(2.3802825202008595, worksheet.outputs_energy_flows_ab128, 0.002); end
  def test_outputs_energy_flows_ac128; assert_in_epsilon(2.6912242671095647, worksheet.outputs_energy_flows_ac128, 0.002); end
  def test_outputs_energy_flows_ad128; assert_in_epsilon(3.0211452846367446, worksheet.outputs_energy_flows_ad128, 0.002); end
  def test_outputs_energy_flows_c130; assert_equal("n/a", worksheet.outputs_energy_flows_c130); end
  def test_outputs_energy_flows_d130; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d130); end
  def test_outputs_energy_flows_e130; assert_equal("n/a", worksheet.outputs_energy_flows_e130); end
  def test_outputs_energy_flows_f130; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f130); end
  def test_outputs_energy_flows_i130; assert_equal("E.01", worksheet.outputs_energy_flows_i130); end
  def test_outputs_energy_flows_j130; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j130); end
  def test_outputs_energy_flows_v130; assert_in_epsilon(1.82013932102304, worksheet.outputs_energy_flows_v130, 0.002); end
  def test_outputs_energy_flows_w130; assert_in_epsilon(1.870096311600729, worksheet.outputs_energy_flows_w130, 0.002); end
  def test_outputs_energy_flows_x130; assert_in_epsilon(1.9129576978001386, worksheet.outputs_energy_flows_x130, 0.002); end
  def test_outputs_energy_flows_y130; assert_in_epsilon(1.944281346884742, worksheet.outputs_energy_flows_y130, 0.002); end
  def test_outputs_energy_flows_z130; assert_in_epsilon(1.987237561097818, worksheet.outputs_energy_flows_z130, 0.002); end
  def test_outputs_energy_flows_aa130; assert_in_epsilon(2.0211108677900347, worksheet.outputs_energy_flows_aa130, 0.002); end
  def test_outputs_energy_flows_ab130; assert_in_epsilon(2.0461132177621404, worksheet.outputs_energy_flows_ab130, 0.002); end
  def test_outputs_energy_flows_ac130; assert_in_epsilon(2.0620370321125376, worksheet.outputs_energy_flows_ac130, 0.002); end
  def test_outputs_energy_flows_ad130; assert_in_epsilon(2.0688291270362136, worksheet.outputs_energy_flows_ad130, 0.002); end
  def test_outputs_energy_flows_c132; assert_equal("n/a", worksheet.outputs_energy_flows_c132); end
  def test_outputs_energy_flows_d132; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d132); end
  def test_outputs_energy_flows_e132; assert_equal("n/a", worksheet.outputs_energy_flows_e132); end
  def test_outputs_energy_flows_f132; assert_equal("Chemicals", worksheet.outputs_energy_flows_f132); end
  def test_outputs_energy_flows_i132; assert_equal("E.01", worksheet.outputs_energy_flows_i132); end
  def test_outputs_energy_flows_j132; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j132); end
  def test_outputs_energy_flows_v132; assert_in_epsilon(4.185756900815473, worksheet.outputs_energy_flows_v132, 0.002); end
  def test_outputs_energy_flows_w132; assert_in_epsilon(4.091046384889203, worksheet.outputs_energy_flows_w132, 0.002); end
  def test_outputs_energy_flows_x132; assert_in_epsilon(4.40040498577041, worksheet.outputs_energy_flows_x132, 0.002); end
  def test_outputs_energy_flows_y132; assert_in_epsilon(4.715033160674547, worksheet.outputs_energy_flows_y132, 0.002); end
  def test_outputs_energy_flows_z132; assert_in_epsilon(5.088141391193289, worksheet.outputs_energy_flows_z132, 0.002); end
  def test_outputs_energy_flows_aa132; assert_in_epsilon(5.465268831282463, worksheet.outputs_energy_flows_aa132, 0.002); end
  def test_outputs_energy_flows_ab132; assert_in_epsilon(5.841602186428505, worksheet.outputs_energy_flows_ab132, 0.002); end
  def test_outputs_energy_flows_ac132; assert_in_epsilon(6.242020691716972, worksheet.outputs_energy_flows_ac132, 0.002); end
  def test_outputs_energy_flows_ad132; assert_in_epsilon(6.621532900431212, worksheet.outputs_energy_flows_ad132, 0.002); end
  def test_outputs_energy_flows_c134; assert_equal("n/a", worksheet.outputs_energy_flows_c134); end
  def test_outputs_energy_flows_d134; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d134); end
  def test_outputs_energy_flows_e134; assert_equal("n/a", worksheet.outputs_energy_flows_e134); end
  def test_outputs_energy_flows_f134; assert_equal("Other manufacturing", worksheet.outputs_energy_flows_f134); end
  def test_outputs_energy_flows_i134; assert_equal("E.01", worksheet.outputs_energy_flows_i134); end
  def test_outputs_energy_flows_j134; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j134); end
  def test_outputs_energy_flows_l134; assert_equal("Global Other industries technology", worksheet.outputs_energy_flows_l134); end
  def test_outputs_energy_flows_v134; assert_in_epsilon(12.67679058486839, worksheet.outputs_energy_flows_v134, 0.002); end
  def test_outputs_energy_flows_w134; assert_in_epsilon(13.872938112498934, worksheet.outputs_energy_flows_w134, 0.002); end
  def test_outputs_energy_flows_x134; assert_in_epsilon(15.273145010439574, worksheet.outputs_energy_flows_x134, 0.002); end
  def test_outputs_energy_flows_y134; assert_in_epsilon(16.62087226244228, worksheet.outputs_energy_flows_y134, 0.002); end
  def test_outputs_energy_flows_z134; assert_in_epsilon(17.90282955493113, worksheet.outputs_energy_flows_z134, 0.002); end
  def test_outputs_energy_flows_aa134; assert_in_epsilon(19.111510752859274, worksheet.outputs_energy_flows_aa134, 0.002); end
  def test_outputs_energy_flows_ab134; assert_in_epsilon(20.235932790995914, worksheet.outputs_energy_flows_ab134, 0.002); end
  def test_outputs_energy_flows_ac134; assert_in_epsilon(21.26184931411551, worksheet.outputs_energy_flows_ac134, 0.002); end
  def test_outputs_energy_flows_ad134; assert_in_epsilon(22.17699723024908, worksheet.outputs_energy_flows_ad134, 0.002); end
  def test_outputs_energy_flows_c136; assert_equal("n/a", worksheet.outputs_energy_flows_c136); end
  def test_outputs_energy_flows_d136; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d136); end
  def test_outputs_energy_flows_e136; assert_equal("n/a", worksheet.outputs_energy_flows_e136); end
  def test_outputs_energy_flows_f136; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f136); end
  def test_outputs_energy_flows_i136; assert_equal("E.01", worksheet.outputs_energy_flows_i136); end
  def test_outputs_energy_flows_j136; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j136); end
  def test_outputs_energy_flows_l136; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l136); end
  def test_outputs_energy_flows_m136; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m136); end
  def test_outputs_energy_flows_v136; assert_in_delta(0.19890659712863298, worksheet.outputs_energy_flows_v136, 0.002); end
  def test_outputs_energy_flows_w136; assert_in_delta(0.40535788516303334, worksheet.outputs_energy_flows_w136, 0.002); end
  def test_outputs_energy_flows_x136; assert_in_delta(0.6957254469608317, worksheet.outputs_energy_flows_x136, 0.002); end
  def test_outputs_energy_flows_y136; assert_in_epsilon(1.0250369215804276, worksheet.outputs_energy_flows_y136, 0.002); end
  def test_outputs_energy_flows_z136; assert_in_epsilon(1.3923405542186469, worksheet.outputs_energy_flows_z136, 0.002); end
  def test_outputs_energy_flows_aa136; assert_in_epsilon(1.7988501226331497, worksheet.outputs_energy_flows_aa136, 0.002); end
  def test_outputs_energy_flows_ab136; assert_in_epsilon(2.241987116191904, worksheet.outputs_energy_flows_ab136, 0.002); end
  def test_outputs_energy_flows_ac136; assert_in_epsilon(2.7247451913642617, worksheet.outputs_energy_flows_ac136, 0.002); end
  def test_outputs_energy_flows_ad136; assert_in_epsilon(3.2393474207041555, worksheet.outputs_energy_flows_ad136, 0.002); end
  def test_outputs_energy_flows_c138; assert_equal("n/a", worksheet.outputs_energy_flows_c138); end
  def test_outputs_energy_flows_d138; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d138); end
  def test_outputs_energy_flows_e138; assert_equal("n/a", worksheet.outputs_energy_flows_e138); end
  def test_outputs_energy_flows_f138; assert_equal("International passenger", worksheet.outputs_energy_flows_f138); end
  def test_outputs_energy_flows_i138; assert_equal("E.01", worksheet.outputs_energy_flows_i138); end
  def test_outputs_energy_flows_j138; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j138); end
  def test_outputs_energy_flows_l138; assert_equal("International", worksheet.outputs_energy_flows_l138); end
  def test_outputs_energy_flows_v138; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v138||0), 0.002); end
  def test_outputs_energy_flows_w138; assert_in_delta(0.003204206031493881, worksheet.outputs_energy_flows_w138, 0.002); end
  def test_outputs_energy_flows_x138; assert_in_delta(0.008049037591251957, worksheet.outputs_energy_flows_x138, 0.002); end
  def test_outputs_energy_flows_y138; assert_in_delta(0.013975092924225968, worksheet.outputs_energy_flows_y138, 0.002); end
  def test_outputs_energy_flows_z138; assert_in_delta(0.0211844002213404, worksheet.outputs_energy_flows_z138, 0.002); end
  def test_outputs_energy_flows_aa138; assert_in_delta(0.029940676239874786, worksheet.outputs_energy_flows_aa138, 0.002); end
  def test_outputs_energy_flows_ab138; assert_in_delta(0.040572061582101936, worksheet.outputs_energy_flows_ab138, 0.002); end
  def test_outputs_energy_flows_ac138; assert_in_delta(0.05347621094209685, worksheet.outputs_energy_flows_ac138, 0.002); end
  def test_outputs_energy_flows_ad138; assert_in_delta(0.06913937321711161, worksheet.outputs_energy_flows_ad138, 0.002); end
  def test_outputs_energy_flows_c140; assert_equal("n/a", worksheet.outputs_energy_flows_c140); end
  def test_outputs_energy_flows_d140; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d140); end
  def test_outputs_energy_flows_e140; assert_equal("n/a", worksheet.outputs_energy_flows_e140); end
  def test_outputs_energy_flows_f140; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f140); end
  def test_outputs_energy_flows_i140; assert_equal("E.01", worksheet.outputs_energy_flows_i140); end
  def test_outputs_energy_flows_j140; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j140); end
  def test_outputs_energy_flows_l140; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l140); end
  def test_outputs_energy_flows_v140; assert_in_delta(0.13826458288412322, worksheet.outputs_energy_flows_v140, 0.002); end
  def test_outputs_energy_flows_w140; assert_in_delta(0.19004219594257146, worksheet.outputs_energy_flows_w140, 0.002); end
  def test_outputs_energy_flows_x140; assert_in_delta(0.25849129898071566, worksheet.outputs_energy_flows_x140, 0.002); end
  def test_outputs_energy_flows_y140; assert_in_delta(0.33243917204966966, worksheet.outputs_energy_flows_y140, 0.002); end
  def test_outputs_energy_flows_z140; assert_in_delta(0.4120354032782465, worksheet.outputs_energy_flows_z140, 0.002); end
  def test_outputs_energy_flows_aa140; assert_in_delta(0.4974273914021824, worksheet.outputs_energy_flows_aa140, 0.002); end
  def test_outputs_energy_flows_ab140; assert_in_delta(0.5887598490159364, worksheet.outputs_energy_flows_ab140, 0.002); end
  def test_outputs_energy_flows_ac140; assert_in_delta(0.6861742701978992, worksheet.outputs_energy_flows_ac140, 0.002); end
  def test_outputs_energy_flows_ad140; assert_in_delta(0.7898083605620982, worksheet.outputs_energy_flows_ad140, 0.002); end
  def test_outputs_energy_flows_c142; assert_equal("n/a", worksheet.outputs_energy_flows_c142); end
  def test_outputs_energy_flows_d142; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d142); end
  def test_outputs_energy_flows_e142; assert_equal("n/a", worksheet.outputs_energy_flows_e142); end
  def test_outputs_energy_flows_f142; assert_equal("International freight", worksheet.outputs_energy_flows_f142); end
  def test_outputs_energy_flows_i142; assert_equal("E.01", worksheet.outputs_energy_flows_i142); end
  def test_outputs_energy_flows_j142; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j142); end
  def test_outputs_energy_flows_l142; assert_equal("International freight", worksheet.outputs_energy_flows_l142); end
  def test_outputs_energy_flows_v142; assert_in_delta(0.27579627474268875, worksheet.outputs_energy_flows_v142, 0.002); end
  def test_outputs_energy_flows_w142; assert_in_delta(0.39469535021934604, worksheet.outputs_energy_flows_w142, 0.002); end
  def test_outputs_energy_flows_x142; assert_in_delta(0.571257221358368, worksheet.outputs_energy_flows_x142, 0.002); end
  def test_outputs_energy_flows_y142; assert_in_delta(0.7848792988637536, worksheet.outputs_energy_flows_y142, 0.002); end
  def test_outputs_energy_flows_z142; assert_in_epsilon(1.038834965832911, worksheet.outputs_energy_flows_z142, 0.002); end
  def test_outputs_energy_flows_aa142; assert_in_epsilon(1.3366169537367862, worksheet.outputs_energy_flows_aa142, 0.002); end
  def test_outputs_energy_flows_ab142; assert_in_epsilon(1.6819502345189528, worksheet.outputs_energy_flows_ab142, 0.002); end
  def test_outputs_energy_flows_ac142; assert_in_epsilon(2.078805617470999, worksheet.outputs_energy_flows_ac142, 0.002); end
  def test_outputs_energy_flows_ad142; assert_in_epsilon(2.5314140877723013, worksheet.outputs_energy_flows_ad142, 0.002); end
  def test_outputs_energy_flows_c144; assert_equal("n/a", worksheet.outputs_energy_flows_c144); end
  def test_outputs_energy_flows_d144; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d144); end
  def test_outputs_energy_flows_e144; assert_equal("n/a", worksheet.outputs_energy_flows_e144); end
  def test_outputs_energy_flows_f144; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f144); end
  def test_outputs_energy_flows_i144; assert_equal("E.01", worksheet.outputs_energy_flows_i144); end
  def test_outputs_energy_flows_j144; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j144); end
  def test_outputs_energy_flows_v144; assert_in_delta(5.69986361910142e-09, worksheet.outputs_energy_flows_v144, 0.002); end
  def test_outputs_energy_flows_w144; assert_in_delta(5.573200389548103e-09, worksheet.outputs_energy_flows_w144, 0.002); end
  def test_outputs_energy_flows_x144; assert_in_delta(5.265882281156492e-09, worksheet.outputs_energy_flows_x144, 0.002); end
  def test_outputs_energy_flows_y144; assert_in_delta(6.239478703641386e-09, worksheet.outputs_energy_flows_y144, 0.002); end
  def test_outputs_energy_flows_z144; assert_in_delta(1.2515710154246595e-08, worksheet.outputs_energy_flows_z144, 0.002); end
  def test_outputs_energy_flows_aa144; assert_in_delta(1.5987535706478306e-08, worksheet.outputs_energy_flows_aa144, 0.002); end
  def test_outputs_energy_flows_ab144; assert_in_delta(1.545673404018984e-08, worksheet.outputs_energy_flows_ab144, 0.002); end
  def test_outputs_energy_flows_ac144; assert_in_delta(1.0440486755312655e-08, worksheet.outputs_energy_flows_ac144, 0.002); end
  def test_outputs_energy_flows_ad144; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad144||0), 0.002); end
  def test_outputs_energy_flows_c146; assert_equal("n/a", worksheet.outputs_energy_flows_c146); end
  def test_outputs_energy_flows_d146; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d146); end
  def test_outputs_energy_flows_e146; assert_equal("G.01", worksheet.outputs_energy_flows_e146); end
  def test_outputs_energy_flows_f146; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_f146); end
  def test_outputs_energy_flows_g146; assert_equal("GGR.tech", worksheet.outputs_energy_flows_g146); end
  def test_outputs_energy_flows_h146; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_h146); end
  def test_outputs_energy_flows_i146; assert_equal("E.01", worksheet.outputs_energy_flows_i146); end
  def test_outputs_energy_flows_j146; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j146); end
  def test_outputs_energy_flows_v146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v146||0), 0.002); end
  def test_outputs_energy_flows_w146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w146||0), 0.002); end
  def test_outputs_energy_flows_x146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x146||0), 0.002); end
  def test_outputs_energy_flows_y146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y146||0), 0.002); end
  def test_outputs_energy_flows_z146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z146||0), 0.002); end
  def test_outputs_energy_flows_aa146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa146||0), 0.002); end
  def test_outputs_energy_flows_ab146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab146||0), 0.002); end
  def test_outputs_energy_flows_ac146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac146||0), 0.002); end
  def test_outputs_energy_flows_ad146; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad146||0), 0.002); end
  def test_outputs_energy_flows_c148; assert_equal("n/a", worksheet.outputs_energy_flows_c148); end
  def test_outputs_energy_flows_d148; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d148); end
  def test_outputs_energy_flows_e148; assert_equal("n/a", worksheet.outputs_energy_flows_e148); end
  def test_outputs_energy_flows_f148; assert_equal("Agriculture including bioenergy production", worksheet.outputs_energy_flows_f148); end
  def test_outputs_energy_flows_g148; assert_equal("n/a", worksheet.outputs_energy_flows_g148); end
  def test_outputs_energy_flows_h148; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_energy_flows_h148); end
  def test_outputs_energy_flows_i148; assert_equal("E.01", worksheet.outputs_energy_flows_i148); end
  def test_outputs_energy_flows_j148; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j148); end
  def test_outputs_energy_flows_v148; assert_in_epsilon(3.9999999999999996, worksheet.outputs_energy_flows_v148, 0.002); end
  def test_outputs_energy_flows_w148; assert_in_epsilon(4.088955043780237, worksheet.outputs_energy_flows_w148, 0.002); end
  def test_outputs_energy_flows_x148; assert_in_epsilon(4.246972465792244, worksheet.outputs_energy_flows_x148, 0.002); end
  def test_outputs_energy_flows_y148; assert_in_epsilon(4.388818930974344, worksheet.outputs_energy_flows_y148, 0.002); end
  def test_outputs_energy_flows_z148; assert_in_epsilon(4.516559556192925, worksheet.outputs_energy_flows_z148, 0.002); end
  def test_outputs_energy_flows_aa148; assert_in_epsilon(4.718341318072903, worksheet.outputs_energy_flows_aa148, 0.002); end
  def test_outputs_energy_flows_ab148; assert_in_epsilon(4.822216243466424, worksheet.outputs_energy_flows_ab148, 0.002); end
  def test_outputs_energy_flows_ac148; assert_in_epsilon(4.913068492116926, worksheet.outputs_energy_flows_ac148, 0.002); end
  def test_outputs_energy_flows_ad148; assert_in_epsilon(4.990372596096302, worksheet.outputs_energy_flows_ad148, 0.002); end
  def test_outputs_energy_flows_c150; assert_equal("n/a", worksheet.outputs_energy_flows_c150); end
  def test_outputs_energy_flows_d150; assert_equal("Solid", worksheet.outputs_energy_flows_d150); end
  def test_outputs_energy_flows_e150; assert_equal("n/a", worksheet.outputs_energy_flows_e150); end
  def test_outputs_energy_flows_f150; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f150); end
  def test_outputs_energy_flows_i150; assert_equal("C.01", worksheet.outputs_energy_flows_i150); end
  def test_outputs_energy_flows_j150; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j150); end
  def test_outputs_energy_flows_k150; assert_equal("Global buildings", worksheet.outputs_energy_flows_k150); end
  def test_outputs_energy_flows_v150; assert_in_epsilon(8.470045508651591, worksheet.outputs_energy_flows_v150, 0.002); end
  def test_outputs_energy_flows_w150; assert_in_epsilon(8.698053883733106, worksheet.outputs_energy_flows_w150, 0.002); end
  def test_outputs_energy_flows_x150; assert_in_epsilon(8.900313354544743, worksheet.outputs_energy_flows_x150, 0.002); end
  def test_outputs_energy_flows_y150; assert_in_epsilon(9.137796315766142, worksheet.outputs_energy_flows_y150, 0.002); end
  def test_outputs_energy_flows_z150; assert_in_epsilon(9.166618747137171, worksheet.outputs_energy_flows_z150, 0.002); end
  def test_outputs_energy_flows_aa150; assert_in_epsilon(9.112107322279195, worksheet.outputs_energy_flows_aa150, 0.002); end
  def test_outputs_energy_flows_ab150; assert_in_epsilon(9.12812895295708, worksheet.outputs_energy_flows_ab150, 0.002); end
  def test_outputs_energy_flows_ac150; assert_in_epsilon(8.911415459954961, worksheet.outputs_energy_flows_ac150, 0.002); end
  def test_outputs_energy_flows_ad150; assert_in_epsilon(8.872074718256297, worksheet.outputs_energy_flows_ad150, 0.002); end
  def test_outputs_energy_flows_c152; assert_equal("n/a", worksheet.outputs_energy_flows_c152); end
  def test_outputs_energy_flows_d152; assert_equal("Solid", worksheet.outputs_energy_flows_d152); end
  def test_outputs_energy_flows_e152; assert_equal("n/a", worksheet.outputs_energy_flows_e152); end
  def test_outputs_energy_flows_f152; assert_equal("Domestic lighting", worksheet.outputs_energy_flows_f152); end
  def test_outputs_energy_flows_i152; assert_equal("C.01", worksheet.outputs_energy_flows_i152); end
  def test_outputs_energy_flows_j152; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j152); end
  def test_outputs_energy_flows_k152; assert_equal("Urban lighting", worksheet.outputs_energy_flows_k152); end
  def test_outputs_energy_flows_l152; assert_equal("Rural lighting", worksheet.outputs_energy_flows_l152); end
  def test_outputs_energy_flows_v152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v152||0), 0.002); end
  def test_outputs_energy_flows_w152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w152||0), 0.002); end
  def test_outputs_energy_flows_x152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x152||0), 0.002); end
  def test_outputs_energy_flows_y152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y152||0), 0.002); end
  def test_outputs_energy_flows_z152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z152||0), 0.002); end
  def test_outputs_energy_flows_aa152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa152||0), 0.002); end
  def test_outputs_energy_flows_ab152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab152||0), 0.002); end
  def test_outputs_energy_flows_ac152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac152||0), 0.002); end
  def test_outputs_energy_flows_ad152; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad152||0), 0.002); end
  def test_outputs_energy_flows_c154; assert_equal("n/a", worksheet.outputs_energy_flows_c154); end
  def test_outputs_energy_flows_d154; assert_equal("Solid", worksheet.outputs_energy_flows_d154); end
  def test_outputs_energy_flows_e154; assert_equal("n/a", worksheet.outputs_energy_flows_e154); end
  def test_outputs_energy_flows_f154; assert_equal("Domestic appliances", worksheet.outputs_energy_flows_f154); end
  def test_outputs_energy_flows_i154; assert_equal("C.01", worksheet.outputs_energy_flows_i154); end
  def test_outputs_energy_flows_j154; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j154); end
  def test_outputs_energy_flows_k154; assert_equal("Urban appliances", worksheet.outputs_energy_flows_k154); end
  def test_outputs_energy_flows_l154; assert_equal("Rural appliances", worksheet.outputs_energy_flows_l154); end
  def test_outputs_energy_flows_v154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v154||0), 0.002); end
  def test_outputs_energy_flows_w154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w154||0), 0.002); end
  def test_outputs_energy_flows_x154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x154||0), 0.002); end
  def test_outputs_energy_flows_y154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y154||0), 0.002); end
  def test_outputs_energy_flows_z154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z154||0), 0.002); end
  def test_outputs_energy_flows_aa154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa154||0), 0.002); end
  def test_outputs_energy_flows_ab154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab154||0), 0.002); end
  def test_outputs_energy_flows_ac154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac154||0), 0.002); end
  def test_outputs_energy_flows_ad154; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad154||0), 0.002); end
  def test_outputs_energy_flows_c156; assert_equal("n/a", worksheet.outputs_energy_flows_c156); end
  def test_outputs_energy_flows_d156; assert_equal("Solid", worksheet.outputs_energy_flows_d156); end
  def test_outputs_energy_flows_e156; assert_equal("n/a", worksheet.outputs_energy_flows_e156); end
  def test_outputs_energy_flows_f156; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f156); end
  def test_outputs_energy_flows_i156; assert_equal("C.01", worksheet.outputs_energy_flows_i156); end
  def test_outputs_energy_flows_j156; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j156); end
  def test_outputs_energy_flows_k156; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k156); end
  def test_outputs_energy_flows_l156; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l156); end
  def test_outputs_energy_flows_v156; assert_in_epsilon(2.1382507723101822, worksheet.outputs_energy_flows_v156, 0.002); end
  def test_outputs_energy_flows_w156; assert_in_epsilon(2.277015105728907, worksheet.outputs_energy_flows_w156, 0.002); end
  def test_outputs_energy_flows_x156; assert_in_epsilon(2.4276552352108602, worksheet.outputs_energy_flows_x156, 0.002); end
  def test_outputs_energy_flows_y156; assert_in_epsilon(2.5533402260014086, worksheet.outputs_energy_flows_y156, 0.002); end
  def test_outputs_energy_flows_z156; assert_in_epsilon(2.687743816064057, worksheet.outputs_energy_flows_z156, 0.002); end
  def test_outputs_energy_flows_aa156; assert_in_epsilon(2.8032063888092185, worksheet.outputs_energy_flows_aa156, 0.002); end
  def test_outputs_energy_flows_ab156; assert_in_epsilon(2.8912681182638837, worksheet.outputs_energy_flows_ab156, 0.002); end
  def test_outputs_energy_flows_ac156; assert_in_epsilon(2.987541053432132, worksheet.outputs_energy_flows_ac156, 0.002); end
  def test_outputs_energy_flows_ad156; assert_in_epsilon(3.029896641878182, worksheet.outputs_energy_flows_ad156, 0.002); end
  def test_outputs_energy_flows_c158; assert_equal("n/a", worksheet.outputs_energy_flows_c158); end
  def test_outputs_energy_flows_d158; assert_equal("Solid", worksheet.outputs_energy_flows_d158); end
  def test_outputs_energy_flows_e158; assert_equal("n/a", worksheet.outputs_energy_flows_e158); end
  def test_outputs_energy_flows_f158; assert_equal("Non domestic", worksheet.outputs_energy_flows_f158); end
  def test_outputs_energy_flows_i158; assert_equal("C.01", worksheet.outputs_energy_flows_i158); end
  def test_outputs_energy_flows_j158; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j158); end
  def test_outputs_energy_flows_k158; assert_equal("Non-residential", worksheet.outputs_energy_flows_k158); end
  def test_outputs_energy_flows_v158; assert_in_epsilon(1.6596305639567048, worksheet.outputs_energy_flows_v158, 0.002); end
  def test_outputs_energy_flows_w158; assert_in_epsilon(1.690437325965139, worksheet.outputs_energy_flows_w158, 0.002); end
  def test_outputs_energy_flows_x158; assert_in_epsilon(1.6950048251492187, worksheet.outputs_energy_flows_x158, 0.002); end
  def test_outputs_energy_flows_y158; assert_in_epsilon(1.6713975827046799, worksheet.outputs_energy_flows_y158, 0.002); end
  def test_outputs_energy_flows_z158; assert_in_epsilon(1.6211061493524228, worksheet.outputs_energy_flows_z158, 0.002); end
  def test_outputs_energy_flows_aa158; assert_in_epsilon(1.5465735785626356, worksheet.outputs_energy_flows_aa158, 0.002); end
  def test_outputs_energy_flows_ab158; assert_in_epsilon(1.450261071109459, worksheet.outputs_energy_flows_ab158, 0.002); end
  def test_outputs_energy_flows_ac158; assert_in_epsilon(1.3348245635630462, worksheet.outputs_energy_flows_ac158, 0.002); end
  def test_outputs_energy_flows_ad158; assert_in_epsilon(1.2035251410933747, worksheet.outputs_energy_flows_ad158, 0.002); end
  def test_outputs_energy_flows_c160; assert_equal("n/a", worksheet.outputs_energy_flows_c160); end
  def test_outputs_energy_flows_d160; assert_equal("Solid", worksheet.outputs_energy_flows_d160); end
  def test_outputs_energy_flows_e160; assert_equal("n/a", worksheet.outputs_energy_flows_e160); end
  def test_outputs_energy_flows_f160; assert_equal("Steel", worksheet.outputs_energy_flows_f160); end
  def test_outputs_energy_flows_i160; assert_equal("C.01", worksheet.outputs_energy_flows_i160); end
  def test_outputs_energy_flows_j160; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j160); end
  def test_outputs_energy_flows_v160; assert_in_delta(0.5489501886, worksheet.outputs_energy_flows_v160, 0.002); end
  def test_outputs_energy_flows_w160; assert_in_delta(0.7312387290551746, worksheet.outputs_energy_flows_w160, 0.002); end
  def test_outputs_energy_flows_x160; assert_in_delta(0.9980469918687263, worksheet.outputs_energy_flows_x160, 0.002); end
  def test_outputs_energy_flows_y160; assert_in_epsilon(1.2959418212520548, worksheet.outputs_energy_flows_y160, 0.002); end
  def test_outputs_energy_flows_z160; assert_in_epsilon(1.6333883228853472, worksheet.outputs_energy_flows_z160, 0.002); end
  def test_outputs_energy_flows_aa160; assert_in_epsilon(2.007211287723595, worksheet.outputs_energy_flows_aa160, 0.002); end
  def test_outputs_energy_flows_ab160; assert_in_epsilon(2.42047697939301, worksheet.outputs_energy_flows_ab160, 0.002); end
  def test_outputs_energy_flows_ac160; assert_in_epsilon(2.92420581721506, worksheet.outputs_energy_flows_ac160, 0.002); end
  def test_outputs_energy_flows_ad160; assert_in_epsilon(3.396721967737, worksheet.outputs_energy_flows_ad160, 0.002); end
  def test_outputs_energy_flows_c162; assert_equal("n/a", worksheet.outputs_energy_flows_c162); end
  def test_outputs_energy_flows_d162; assert_equal("Solid", worksheet.outputs_energy_flows_d162); end
  def test_outputs_energy_flows_e162; assert_equal("n/a", worksheet.outputs_energy_flows_e162); end
  def test_outputs_energy_flows_f162; assert_equal("Aluminium", worksheet.outputs_energy_flows_f162); end
  def test_outputs_energy_flows_i162; assert_equal("C.01", worksheet.outputs_energy_flows_i162); end
  def test_outputs_energy_flows_j162; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j162); end
  def test_outputs_energy_flows_v162; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v162||0), 0.002); end
  def test_outputs_energy_flows_w162; assert_in_delta(0.00017026272727571702, worksheet.outputs_energy_flows_w162, 0.002); end
  def test_outputs_energy_flows_x162; assert_in_delta(0.0004598198421809886, worksheet.outputs_energy_flows_x162, 0.002); end
  def test_outputs_energy_flows_y162; assert_in_delta(0.0008487428840506834, worksheet.outputs_energy_flows_y162, 0.002); end
  def test_outputs_energy_flows_z162; assert_in_delta(0.0013585334220363877, worksheet.outputs_energy_flows_z162, 0.002); end
  def test_outputs_energy_flows_aa162; assert_in_delta(0.002008307213540394, worksheet.outputs_energy_flows_aa162, 0.002); end
  def test_outputs_energy_flows_ab162; assert_in_delta(0.0028070374280311844, worksheet.outputs_energy_flows_ab162, 0.002); end
  def test_outputs_energy_flows_ac162; assert_in_delta(0.00380800662574233, worksheet.outputs_energy_flows_ac162, 0.002); end
  def test_outputs_energy_flows_ad162; assert_in_delta(0.00500322247524546, worksheet.outputs_energy_flows_ad162, 0.002); end
  def test_outputs_energy_flows_c164; assert_equal("n/a", worksheet.outputs_energy_flows_c164); end
  def test_outputs_energy_flows_d164; assert_equal("Solid", worksheet.outputs_energy_flows_d164); end
  def test_outputs_energy_flows_e164; assert_equal("n/a", worksheet.outputs_energy_flows_e164); end
  def test_outputs_energy_flows_f164; assert_equal("Cement", worksheet.outputs_energy_flows_f164); end
  def test_outputs_energy_flows_i164; assert_equal("C.01", worksheet.outputs_energy_flows_i164); end
  def test_outputs_energy_flows_j164; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j164); end
  def test_outputs_energy_flows_v164; assert_in_delta(0.4925092998042991, worksheet.outputs_energy_flows_v164, 0.002); end
  def test_outputs_energy_flows_w164; assert_in_delta(0.5585248483742106, worksheet.outputs_energy_flows_w164, 0.002); end
  def test_outputs_energy_flows_x164; assert_in_delta(0.6375847694123521, worksheet.outputs_energy_flows_x164, 0.002); end
  def test_outputs_energy_flows_y164; assert_in_delta(0.7207553488723307, worksheet.outputs_energy_flows_y164, 0.002); end
  def test_outputs_energy_flows_z164; assert_in_delta(0.8097739581488761, worksheet.outputs_energy_flows_z164, 0.002); end
  def test_outputs_energy_flows_aa164; assert_in_delta(0.9041356672942024, worksheet.outputs_energy_flows_aa164, 0.002); end
  def test_outputs_energy_flows_ab164; assert_in_epsilon(1.0027621690965014, worksheet.outputs_energy_flows_ab164, 0.002); end
  def test_outputs_energy_flows_ac164; assert_in_epsilon(1.107877816182336, worksheet.outputs_energy_flows_ac164, 0.002); end
  def test_outputs_energy_flows_ad164; assert_in_epsilon(1.2169355442115624, worksheet.outputs_energy_flows_ad164, 0.002); end
  def test_outputs_energy_flows_c166; assert_equal("n/a", worksheet.outputs_energy_flows_c166); end
  def test_outputs_energy_flows_d166; assert_equal("Solid", worksheet.outputs_energy_flows_d166); end
  def test_outputs_energy_flows_e166; assert_equal("n/a", worksheet.outputs_energy_flows_e166); end
  def test_outputs_energy_flows_f166; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f166); end
  def test_outputs_energy_flows_i166; assert_equal("C.01", worksheet.outputs_energy_flows_i166); end
  def test_outputs_energy_flows_j166; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j166); end
  def test_outputs_energy_flows_v166; assert_in_epsilon(1.7854467564492018, worksheet.outputs_energy_flows_v166, 0.002); end
  def test_outputs_energy_flows_w166; assert_in_epsilon(1.8457842904757378, worksheet.outputs_energy_flows_w166, 0.002); end
  def test_outputs_energy_flows_x166; assert_in_epsilon(1.9027372809669514, worksheet.outputs_energy_flows_x166, 0.002); end
  def test_outputs_energy_flows_y166; assert_in_epsilon(1.9489640244623705, worksheet.outputs_energy_flows_y166, 0.002); end
  def test_outputs_energy_flows_z166; assert_in_epsilon(1.9848803356179343, worksheet.outputs_energy_flows_z166, 0.002); end
  def test_outputs_energy_flows_aa166; assert_in_epsilon(2.0113591145427914, worksheet.outputs_energy_flows_aa166, 0.002); end
  def test_outputs_energy_flows_ab166; assert_in_epsilon(2.0286997313235857, worksheet.outputs_energy_flows_ab166, 0.002); end
  def test_outputs_energy_flows_ac166; assert_in_epsilon(2.03678557132408, worksheet.outputs_energy_flows_ac166, 0.002); end
  def test_outputs_energy_flows_ad166; assert_in_epsilon(2.035656734025988, worksheet.outputs_energy_flows_ad166, 0.002); end
  def test_outputs_energy_flows_c168; assert_equal("n/a", worksheet.outputs_energy_flows_c168); end
  def test_outputs_energy_flows_d168; assert_equal("Solid", worksheet.outputs_energy_flows_d168); end
  def test_outputs_energy_flows_e168; assert_equal("n/a", worksheet.outputs_energy_flows_e168); end
  def test_outputs_energy_flows_f168; assert_equal("Chemicals", worksheet.outputs_energy_flows_f168); end
  def test_outputs_energy_flows_i168; assert_equal("C.01", worksheet.outputs_energy_flows_i168); end
  def test_outputs_energy_flows_j168; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j168); end
  def test_outputs_energy_flows_v168; assert_in_delta(0.16313870478909603, worksheet.outputs_energy_flows_v168, 0.002); end
  def test_outputs_energy_flows_w168; assert_in_delta(0.15944738891379792, worksheet.outputs_energy_flows_w168, 0.002); end
  def test_outputs_energy_flows_x168; assert_in_delta(0.17150455388037655, worksheet.outputs_energy_flows_x168, 0.002); end
  def test_outputs_energy_flows_y168; assert_in_delta(0.183767099021022, worksheet.outputs_energy_flows_y168, 0.002); end
  def test_outputs_energy_flows_z168; assert_in_delta(0.1966367881739866, worksheet.outputs_energy_flows_z168, 0.002); end
  def test_outputs_energy_flows_aa168; assert_in_delta(0.20946185544384238, worksheet.outputs_energy_flows_aa168, 0.002); end
  def test_outputs_energy_flows_ab168; assert_in_delta(0.22205191705681243, worksheet.outputs_energy_flows_ab168, 0.002); end
  def test_outputs_energy_flows_ac168; assert_in_delta(0.23537771777380032, worksheet.outputs_energy_flows_ac168, 0.002); end
  def test_outputs_energy_flows_ad168; assert_in_delta(0.24771311247970934, worksheet.outputs_energy_flows_ad168, 0.002); end
  def test_outputs_energy_flows_c170; assert_equal("n/a", worksheet.outputs_energy_flows_c170); end
  def test_outputs_energy_flows_d170; assert_equal("Solid", worksheet.outputs_energy_flows_d170); end
  def test_outputs_energy_flows_e170; assert_equal("n/a", worksheet.outputs_energy_flows_e170); end
  def test_outputs_energy_flows_f170; assert_equal("Other manufacturing", worksheet.outputs_energy_flows_f170); end
  def test_outputs_energy_flows_i170; assert_equal("C.01", worksheet.outputs_energy_flows_i170); end
  def test_outputs_energy_flows_j170; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j170); end
  def test_outputs_energy_flows_l170; assert_equal("Global Other industries technology", worksheet.outputs_energy_flows_l170); end
  def test_outputs_energy_flows_v170; assert_in_epsilon(4.059168104018365, worksheet.outputs_energy_flows_v170, 0.002); end
  def test_outputs_energy_flows_w170; assert_in_epsilon(4.4900335748438875, worksheet.outputs_energy_flows_w170, 0.002); end
  def test_outputs_energy_flows_x170; assert_in_epsilon(5.0097982190972985, worksheet.outputs_energy_flows_x170, 0.002); end
  def test_outputs_energy_flows_y170; assert_in_epsilon(5.525223473467528, worksheet.outputs_energy_flows_y170, 0.002); end
  def test_outputs_energy_flows_z170; assert_in_epsilon(6.03137285690867, worksheet.outputs_energy_flows_z170, 0.002); end
  def test_outputs_energy_flows_aa170; assert_in_epsilon(6.525032727412139, worksheet.outputs_energy_flows_aa170, 0.002); end
  def test_outputs_energy_flows_ab170; assert_in_epsilon(7.001632494158044, worksheet.outputs_energy_flows_ab170, 0.002); end
  def test_outputs_energy_flows_ac170; assert_in_epsilon(7.4552340047953285, worksheet.outputs_energy_flows_ac170, 0.002); end
  def test_outputs_energy_flows_ad170; assert_in_epsilon(7.880312065083034, worksheet.outputs_energy_flows_ad170, 0.002); end
  def test_outputs_energy_flows_c172; assert_equal("n/a", worksheet.outputs_energy_flows_c172); end
  def test_outputs_energy_flows_d172; assert_equal("Solid", worksheet.outputs_energy_flows_d172); end
  def test_outputs_energy_flows_e172; assert_equal("n/a", worksheet.outputs_energy_flows_e172); end
  def test_outputs_energy_flows_f172; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f172); end
  def test_outputs_energy_flows_i172; assert_equal("C.01", worksheet.outputs_energy_flows_i172); end
  def test_outputs_energy_flows_j172; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j172); end
  def test_outputs_energy_flows_l172; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l172); end
  def test_outputs_energy_flows_m172; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m172); end
  def test_outputs_energy_flows_v172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v172||0), 0.002); end
  def test_outputs_energy_flows_w172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w172||0), 0.002); end
  def test_outputs_energy_flows_x172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x172||0), 0.002); end
  def test_outputs_energy_flows_y172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y172||0), 0.002); end
  def test_outputs_energy_flows_z172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z172||0), 0.002); end
  def test_outputs_energy_flows_aa172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa172||0), 0.002); end
  def test_outputs_energy_flows_ab172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab172||0), 0.002); end
  def test_outputs_energy_flows_ac172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac172||0), 0.002); end
  def test_outputs_energy_flows_ad172; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad172||0), 0.002); end
  def test_outputs_energy_flows_c174; assert_equal("n/a", worksheet.outputs_energy_flows_c174); end
  def test_outputs_energy_flows_d174; assert_equal("Solid", worksheet.outputs_energy_flows_d174); end
  def test_outputs_energy_flows_e174; assert_equal("n/a", worksheet.outputs_energy_flows_e174); end
  def test_outputs_energy_flows_f174; assert_equal("International passenger", worksheet.outputs_energy_flows_f174); end
  def test_outputs_energy_flows_i174; assert_equal("C.01", worksheet.outputs_energy_flows_i174); end
  def test_outputs_energy_flows_j174; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j174); end
  def test_outputs_energy_flows_l174; assert_equal("International", worksheet.outputs_energy_flows_l174); end
  def test_outputs_energy_flows_v174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v174||0), 0.002); end
  def test_outputs_energy_flows_w174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w174||0), 0.002); end
  def test_outputs_energy_flows_x174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x174||0), 0.002); end
  def test_outputs_energy_flows_y174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y174||0), 0.002); end
  def test_outputs_energy_flows_z174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z174||0), 0.002); end
  def test_outputs_energy_flows_aa174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa174||0), 0.002); end
  def test_outputs_energy_flows_ab174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab174||0), 0.002); end
  def test_outputs_energy_flows_ac174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac174||0), 0.002); end
  def test_outputs_energy_flows_ad174; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad174||0), 0.002); end
  def test_outputs_energy_flows_c176; assert_equal("n/a", worksheet.outputs_energy_flows_c176); end
  def test_outputs_energy_flows_d176; assert_equal("Solid", worksheet.outputs_energy_flows_d176); end
  def test_outputs_energy_flows_e176; assert_equal("n/a", worksheet.outputs_energy_flows_e176); end
  def test_outputs_energy_flows_f176; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f176); end
  def test_outputs_energy_flows_i176; assert_equal("C.01", worksheet.outputs_energy_flows_i176); end
  def test_outputs_energy_flows_j176; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j176); end
  def test_outputs_energy_flows_l176; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l176); end
  def test_outputs_energy_flows_v176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v176||0), 0.002); end
  def test_outputs_energy_flows_w176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w176||0), 0.002); end
  def test_outputs_energy_flows_x176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x176||0), 0.002); end
  def test_outputs_energy_flows_y176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y176||0), 0.002); end
  def test_outputs_energy_flows_z176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z176||0), 0.002); end
  def test_outputs_energy_flows_aa176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa176||0), 0.002); end
  def test_outputs_energy_flows_ab176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab176||0), 0.002); end
  def test_outputs_energy_flows_ac176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac176||0), 0.002); end
  def test_outputs_energy_flows_ad176; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad176||0), 0.002); end
  def test_outputs_energy_flows_c178; assert_equal("n/a", worksheet.outputs_energy_flows_c178); end
  def test_outputs_energy_flows_d178; assert_equal("Solid", worksheet.outputs_energy_flows_d178); end
  def test_outputs_energy_flows_e178; assert_equal("n/a", worksheet.outputs_energy_flows_e178); end
  def test_outputs_energy_flows_f178; assert_equal("International freight", worksheet.outputs_energy_flows_f178); end
  def test_outputs_energy_flows_i178; assert_equal("C.01", worksheet.outputs_energy_flows_i178); end
  def test_outputs_energy_flows_j178; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j178); end
  def test_outputs_energy_flows_l178; assert_equal("International freight", worksheet.outputs_energy_flows_l178); end
  def test_outputs_energy_flows_v178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v178||0), 0.002); end
  def test_outputs_energy_flows_w178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w178||0), 0.002); end
  def test_outputs_energy_flows_x178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x178||0), 0.002); end
  def test_outputs_energy_flows_y178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y178||0), 0.002); end
  def test_outputs_energy_flows_z178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z178||0), 0.002); end
  def test_outputs_energy_flows_aa178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa178||0), 0.002); end
  def test_outputs_energy_flows_ab178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab178||0), 0.002); end
  def test_outputs_energy_flows_ac178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac178||0), 0.002); end
  def test_outputs_energy_flows_ad178; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad178||0), 0.002); end
  def test_outputs_energy_flows_c180; assert_equal("n/a", worksheet.outputs_energy_flows_c180); end
  def test_outputs_energy_flows_d180; assert_equal("Solid", worksheet.outputs_energy_flows_d180); end
  def test_outputs_energy_flows_e180; assert_equal("n/a", worksheet.outputs_energy_flows_e180); end
  def test_outputs_energy_flows_f180; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f180); end
  def test_outputs_energy_flows_i180; assert_equal("C.01", worksheet.outputs_energy_flows_i180); end
  def test_outputs_energy_flows_j180; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j180); end
  def test_outputs_energy_flows_v180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v180||0), 0.002); end
  def test_outputs_energy_flows_w180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w180||0), 0.002); end
  def test_outputs_energy_flows_x180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x180||0), 0.002); end
  def test_outputs_energy_flows_y180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y180||0), 0.002); end
  def test_outputs_energy_flows_z180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z180||0), 0.002); end
  def test_outputs_energy_flows_aa180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa180||0), 0.002); end
  def test_outputs_energy_flows_ab180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab180||0), 0.002); end
  def test_outputs_energy_flows_ac180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac180||0), 0.002); end
  def test_outputs_energy_flows_ad180; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad180||0), 0.002); end
  def test_outputs_energy_flows_c182; assert_equal("n/a", worksheet.outputs_energy_flows_c182); end
  def test_outputs_energy_flows_d182; assert_equal("Solid", worksheet.outputs_energy_flows_d182); end
  def test_outputs_energy_flows_e182; assert_equal("G.01", worksheet.outputs_energy_flows_e182); end
  def test_outputs_energy_flows_f182; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_f182); end
  def test_outputs_energy_flows_g182; assert_equal("GGR.tech", worksheet.outputs_energy_flows_g182); end
  def test_outputs_energy_flows_h182; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_h182); end
  def test_outputs_energy_flows_i182; assert_equal("C.01", worksheet.outputs_energy_flows_i182); end
  def test_outputs_energy_flows_j182; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j182); end
  def test_outputs_energy_flows_v182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v182||0), 0.002); end
  def test_outputs_energy_flows_w182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w182||0), 0.002); end
  def test_outputs_energy_flows_x182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x182||0), 0.002); end
  def test_outputs_energy_flows_y182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y182||0), 0.002); end
  def test_outputs_energy_flows_z182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z182||0), 0.002); end
  def test_outputs_energy_flows_aa182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa182||0), 0.002); end
  def test_outputs_energy_flows_ab182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab182||0), 0.002); end
  def test_outputs_energy_flows_ac182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac182||0), 0.002); end
  def test_outputs_energy_flows_ad182; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad182||0), 0.002); end
  def test_outputs_energy_flows_c184; assert_equal("n/a", worksheet.outputs_energy_flows_c184); end
  def test_outputs_energy_flows_d184; assert_equal("Solid", worksheet.outputs_energy_flows_d184); end
  def test_outputs_energy_flows_e184; assert_equal("n/a", worksheet.outputs_energy_flows_e184); end
  def test_outputs_energy_flows_f184; assert_equal("Agriculture including bioenergy production", worksheet.outputs_energy_flows_f184); end
  def test_outputs_energy_flows_g184; assert_equal("n/a", worksheet.outputs_energy_flows_g184); end
  def test_outputs_energy_flows_h184; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_energy_flows_h184); end
  def test_outputs_energy_flows_i184; assert_equal("C.01", worksheet.outputs_energy_flows_i184); end
  def test_outputs_energy_flows_j184; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j184); end
  def test_outputs_energy_flows_v184; assert_in_epsilon(29.830037655893374, worksheet.outputs_energy_flows_v184, 0.002); end
  def test_outputs_energy_flows_w184; assert_in_epsilon(30.46541328590584, worksheet.outputs_energy_flows_w184, 0.002); end
  def test_outputs_energy_flows_x184; assert_in_epsilon(30.71161712795825, worksheet.outputs_energy_flows_x184, 0.002); end
  def test_outputs_energy_flows_y184; assert_in_epsilon(30.9697221190683, worksheet.outputs_energy_flows_y184, 0.002); end
  def test_outputs_energy_flows_z184; assert_in_epsilon(31.335965549079084, worksheet.outputs_energy_flows_z184, 0.002); end
  def test_outputs_energy_flows_aa184; assert_in_epsilon(31.63078435798736, worksheet.outputs_energy_flows_aa184, 0.002); end
  def test_outputs_energy_flows_ab184; assert_in_epsilon(32.16919559515933, worksheet.outputs_energy_flows_ab184, 0.002); end
  def test_outputs_energy_flows_ac184; assert_in_epsilon(32.78533454349106, worksheet.outputs_energy_flows_ac184, 0.002); end
  def test_outputs_energy_flows_ad184; assert_in_epsilon(33.470516576789414, worksheet.outputs_energy_flows_ad184, 0.002); end
  def test_outputs_energy_flows_c186; assert_equal("n/a", worksheet.outputs_energy_flows_c186); end
  def test_outputs_energy_flows_d186; assert_equal("Liquid", worksheet.outputs_energy_flows_d186); end
  def test_outputs_energy_flows_e186; assert_equal("n/a", worksheet.outputs_energy_flows_e186); end
  def test_outputs_energy_flows_f186; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f186); end
  def test_outputs_energy_flows_i186; assert_equal("C.02", worksheet.outputs_energy_flows_i186); end
  def test_outputs_energy_flows_j186; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j186); end
  def test_outputs_energy_flows_k186; assert_equal("Global buildings", worksheet.outputs_energy_flows_k186); end
  def test_outputs_energy_flows_v186; assert_in_epsilon(5.364578134811718, worksheet.outputs_energy_flows_v186, 0.002); end
  def test_outputs_energy_flows_w186; assert_in_epsilon(5.618216426519331, worksheet.outputs_energy_flows_w186, 0.002); end
  def test_outputs_energy_flows_x186; assert_in_epsilon(5.828230269747275, worksheet.outputs_energy_flows_x186, 0.002); end
  def test_outputs_energy_flows_y186; assert_in_epsilon(5.900934073125029, worksheet.outputs_energy_flows_y186, 0.002); end
  def test_outputs_energy_flows_z186; assert_in_epsilon(5.989398282942185, worksheet.outputs_energy_flows_z186, 0.002); end
  def test_outputs_energy_flows_aa186; assert_in_epsilon(5.991194330240045, worksheet.outputs_energy_flows_aa186, 0.002); end
  def test_outputs_energy_flows_ab186; assert_in_epsilon(5.857217220114866, worksheet.outputs_energy_flows_ab186, 0.002); end
  def test_outputs_energy_flows_ac186; assert_in_epsilon(5.7303985941046145, worksheet.outputs_energy_flows_ac186, 0.002); end
  def test_outputs_energy_flows_ad186; assert_in_epsilon(5.422877936806172, worksheet.outputs_energy_flows_ad186, 0.002); end
  def test_outputs_energy_flows_c188; assert_equal("n/a", worksheet.outputs_energy_flows_c188); end
  def test_outputs_energy_flows_d188; assert_equal("Liquid", worksheet.outputs_energy_flows_d188); end
  def test_outputs_energy_flows_e188; assert_equal("n/a", worksheet.outputs_energy_flows_e188); end
  def test_outputs_energy_flows_f188; assert_equal("Domestic lighting", worksheet.outputs_energy_flows_f188); end
  def test_outputs_energy_flows_i188; assert_equal("C.02", worksheet.outputs_energy_flows_i188); end
  def test_outputs_energy_flows_j188; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j188); end
  def test_outputs_energy_flows_k188; assert_equal("Urban lighting", worksheet.outputs_energy_flows_k188); end
  def test_outputs_energy_flows_l188; assert_equal("Rural lighting", worksheet.outputs_energy_flows_l188); end
  def test_outputs_energy_flows_v188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v188||0), 0.002); end
  def test_outputs_energy_flows_w188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w188||0), 0.002); end
  def test_outputs_energy_flows_x188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x188||0), 0.002); end
  def test_outputs_energy_flows_y188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y188||0), 0.002); end
  def test_outputs_energy_flows_z188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z188||0), 0.002); end
  def test_outputs_energy_flows_aa188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa188||0), 0.002); end
  def test_outputs_energy_flows_ab188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab188||0), 0.002); end
  def test_outputs_energy_flows_ac188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac188||0), 0.002); end
  def test_outputs_energy_flows_ad188; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad188||0), 0.002); end
  def test_outputs_energy_flows_c190; assert_equal("n/a", worksheet.outputs_energy_flows_c190); end
  def test_outputs_energy_flows_d190; assert_equal("Liquid", worksheet.outputs_energy_flows_d190); end
  def test_outputs_energy_flows_e190; assert_equal("n/a", worksheet.outputs_energy_flows_e190); end
  def test_outputs_energy_flows_f190; assert_equal("Domestic appliances", worksheet.outputs_energy_flows_f190); end
  def test_outputs_energy_flows_i190; assert_equal("C.02", worksheet.outputs_energy_flows_i190); end
  def test_outputs_energy_flows_j190; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j190); end
  def test_outputs_energy_flows_k190; assert_equal("Urban appliances", worksheet.outputs_energy_flows_k190); end
  def test_outputs_energy_flows_l190; assert_equal("Rural appliances", worksheet.outputs_energy_flows_l190); end
  def test_outputs_energy_flows_v190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v190||0), 0.002); end
  def test_outputs_energy_flows_w190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w190||0), 0.002); end
  def test_outputs_energy_flows_x190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x190||0), 0.002); end
  def test_outputs_energy_flows_y190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y190||0), 0.002); end
  def test_outputs_energy_flows_z190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z190||0), 0.002); end
  def test_outputs_energy_flows_aa190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa190||0), 0.002); end
  def test_outputs_energy_flows_ab190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab190||0), 0.002); end
  def test_outputs_energy_flows_ac190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac190||0), 0.002); end
  def test_outputs_energy_flows_ad190; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad190||0), 0.002); end
  def test_outputs_energy_flows_c192; assert_equal("n/a", worksheet.outputs_energy_flows_c192); end
  def test_outputs_energy_flows_d192; assert_equal("Liquid", worksheet.outputs_energy_flows_d192); end
  def test_outputs_energy_flows_e192; assert_equal("n/a", worksheet.outputs_energy_flows_e192); end
  def test_outputs_energy_flows_f192; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f192); end
  def test_outputs_energy_flows_i192; assert_equal("C.02", worksheet.outputs_energy_flows_i192); end
  def test_outputs_energy_flows_j192; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j192); end
  def test_outputs_energy_flows_k192; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k192); end
  def test_outputs_energy_flows_l192; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l192); end
  def test_outputs_energy_flows_v192; assert_in_epsilon(2.0556868496129796, worksheet.outputs_energy_flows_v192, 0.002); end
  def test_outputs_energy_flows_w192; assert_in_epsilon(2.1904962442879765, worksheet.outputs_energy_flows_w192, 0.002); end
  def test_outputs_energy_flows_x192; assert_in_epsilon(2.3314858882695235, worksheet.outputs_energy_flows_x192, 0.002); end
  def test_outputs_energy_flows_y192; assert_in_epsilon(2.4382224451068786, worksheet.outputs_energy_flows_y192, 0.002); end
  def test_outputs_energy_flows_z192; assert_in_epsilon(2.5573713329325485, worksheet.outputs_energy_flows_z192, 0.002); end
  def test_outputs_energy_flows_aa192; assert_in_epsilon(2.654535287788324, worksheet.outputs_energy_flows_aa192, 0.002); end
  def test_outputs_energy_flows_ab192; assert_in_epsilon(2.715917068166765, worksheet.outputs_energy_flows_ab192, 0.002); end
  def test_outputs_energy_flows_ac192; assert_in_epsilon(2.7863167446590698, worksheet.outputs_energy_flows_ac192, 0.002); end
  def test_outputs_energy_flows_ad192; assert_in_epsilon(2.796890485256591, worksheet.outputs_energy_flows_ad192, 0.002); end
  def test_outputs_energy_flows_c194; assert_equal("n/a", worksheet.outputs_energy_flows_c194); end
  def test_outputs_energy_flows_d194; assert_equal("Liquid", worksheet.outputs_energy_flows_d194); end
  def test_outputs_energy_flows_e194; assert_equal("n/a", worksheet.outputs_energy_flows_e194); end
  def test_outputs_energy_flows_f194; assert_equal("Non domestic", worksheet.outputs_energy_flows_f194); end
  def test_outputs_energy_flows_i194; assert_equal("C.02", worksheet.outputs_energy_flows_i194); end
  def test_outputs_energy_flows_j194; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j194); end
  def test_outputs_energy_flows_k194; assert_equal("Non-residential", worksheet.outputs_energy_flows_k194); end
  def test_outputs_energy_flows_v194; assert_in_epsilon(3.7325044031620873, worksheet.outputs_energy_flows_v194, 0.002); end
  def test_outputs_energy_flows_w194; assert_in_epsilon(3.8185317428208934, worksheet.outputs_energy_flows_w194, 0.002); end
  def test_outputs_energy_flows_x194; assert_in_epsilon(3.8526323291002997, worksheet.outputs_energy_flows_x194, 0.002); end
  def test_outputs_energy_flows_y194; assert_in_epsilon(3.8261346977681674, worksheet.outputs_energy_flows_y194, 0.002); end
  def test_outputs_energy_flows_z194; assert_in_epsilon(3.7418183765542476, worksheet.outputs_energy_flows_z194, 0.002); end
  def test_outputs_energy_flows_aa194; assert_in_epsilon(3.6045555537242566, worksheet.outputs_energy_flows_aa194, 0.002); end
  def test_outputs_energy_flows_ab194; assert_in_epsilon(3.4191755572086464, worksheet.outputs_energy_flows_ab194, 0.002); end
  def test_outputs_energy_flows_ac194; assert_in_epsilon(3.1908462587886506, worksheet.outputs_energy_flows_ac194, 0.002); end
  def test_outputs_energy_flows_ad194; assert_in_epsilon(2.9260384952008445, worksheet.outputs_energy_flows_ad194, 0.002); end
  def test_outputs_energy_flows_c196; assert_equal("n/a", worksheet.outputs_energy_flows_c196); end
  def test_outputs_energy_flows_d196; assert_equal("Liquid", worksheet.outputs_energy_flows_d196); end
  def test_outputs_energy_flows_e196; assert_equal("n/a", worksheet.outputs_energy_flows_e196); end
  def test_outputs_energy_flows_f196; assert_equal("Steel", worksheet.outputs_energy_flows_f196); end
  def test_outputs_energy_flows_i196; assert_equal("C.02", worksheet.outputs_energy_flows_i196); end
  def test_outputs_energy_flows_j196; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j196); end
  def test_outputs_energy_flows_v196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v196||0), 0.002); end
  def test_outputs_energy_flows_w196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w196||0), 0.002); end
  def test_outputs_energy_flows_x196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x196||0), 0.002); end
  def test_outputs_energy_flows_y196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y196||0), 0.002); end
  def test_outputs_energy_flows_z196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z196||0), 0.002); end
  def test_outputs_energy_flows_aa196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa196||0), 0.002); end
  def test_outputs_energy_flows_ab196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab196||0), 0.002); end
  def test_outputs_energy_flows_ac196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac196||0), 0.002); end
  def test_outputs_energy_flows_ad196; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad196||0), 0.002); end
  def test_outputs_energy_flows_c198; assert_equal("n/a", worksheet.outputs_energy_flows_c198); end
  def test_outputs_energy_flows_d198; assert_equal("Liquid", worksheet.outputs_energy_flows_d198); end
  def test_outputs_energy_flows_e198; assert_equal("n/a", worksheet.outputs_energy_flows_e198); end
  def test_outputs_energy_flows_f198; assert_equal("Aluminium", worksheet.outputs_energy_flows_f198); end
  def test_outputs_energy_flows_i198; assert_equal("C.02", worksheet.outputs_energy_flows_i198); end
  def test_outputs_energy_flows_j198; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j198); end
  def test_outputs_energy_flows_v198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v198||0), 0.002); end
  def test_outputs_energy_flows_w198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w198||0), 0.002); end
  def test_outputs_energy_flows_x198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x198||0), 0.002); end
  def test_outputs_energy_flows_y198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y198||0), 0.002); end
  def test_outputs_energy_flows_z198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z198||0), 0.002); end
  def test_outputs_energy_flows_aa198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa198||0), 0.002); end
  def test_outputs_energy_flows_ab198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab198||0), 0.002); end
  def test_outputs_energy_flows_ac198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac198||0), 0.002); end
  def test_outputs_energy_flows_ad198; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad198||0), 0.002); end
  def test_outputs_energy_flows_c200; assert_equal("n/a", worksheet.outputs_energy_flows_c200); end
  def test_outputs_energy_flows_d200; assert_equal("Liquid", worksheet.outputs_energy_flows_d200); end
  def test_outputs_energy_flows_e200; assert_equal("n/a", worksheet.outputs_energy_flows_e200); end
  def test_outputs_energy_flows_f200; assert_equal("Cement", worksheet.outputs_energy_flows_f200); end
  def test_outputs_energy_flows_i200; assert_equal("C.02", worksheet.outputs_energy_flows_i200); end
  def test_outputs_energy_flows_j200; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j200); end
  def test_outputs_energy_flows_v200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v200||0), 0.002); end
  def test_outputs_energy_flows_w200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w200||0), 0.002); end
  def test_outputs_energy_flows_x200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x200||0), 0.002); end
  def test_outputs_energy_flows_y200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y200||0), 0.002); end
  def test_outputs_energy_flows_z200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z200||0), 0.002); end
  def test_outputs_energy_flows_aa200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa200||0), 0.002); end
  def test_outputs_energy_flows_ab200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab200||0), 0.002); end
  def test_outputs_energy_flows_ac200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac200||0), 0.002); end
  def test_outputs_energy_flows_ad200; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad200||0), 0.002); end
  def test_outputs_energy_flows_c202; assert_equal("n/a", worksheet.outputs_energy_flows_c202); end
  def test_outputs_energy_flows_d202; assert_equal("Liquid", worksheet.outputs_energy_flows_d202); end
  def test_outputs_energy_flows_e202; assert_equal("n/a", worksheet.outputs_energy_flows_e202); end
  def test_outputs_energy_flows_f202; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f202); end
  def test_outputs_energy_flows_i202; assert_equal("C.02", worksheet.outputs_energy_flows_i202); end
  def test_outputs_energy_flows_j202; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j202); end
  def test_outputs_energy_flows_v202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v202||0), 0.002); end
  def test_outputs_energy_flows_w202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w202||0), 0.002); end
  def test_outputs_energy_flows_x202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x202||0), 0.002); end
  def test_outputs_energy_flows_y202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y202||0), 0.002); end
  def test_outputs_energy_flows_z202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z202||0), 0.002); end
  def test_outputs_energy_flows_aa202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa202||0), 0.002); end
  def test_outputs_energy_flows_ab202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab202||0), 0.002); end
  def test_outputs_energy_flows_ac202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac202||0), 0.002); end
  def test_outputs_energy_flows_ad202; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad202||0), 0.002); end
  def test_outputs_energy_flows_c204; assert_equal("n/a", worksheet.outputs_energy_flows_c204); end
  def test_outputs_energy_flows_d204; assert_equal("Liquid", worksheet.outputs_energy_flows_d204); end
  def test_outputs_energy_flows_e204; assert_equal("n/a", worksheet.outputs_energy_flows_e204); end
  def test_outputs_energy_flows_f204; assert_equal("Chemicals", worksheet.outputs_energy_flows_f204); end
  def test_outputs_energy_flows_i204; assert_equal("C.02", worksheet.outputs_energy_flows_i204); end
  def test_outputs_energy_flows_j204; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j204); end
  def test_outputs_energy_flows_v204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v204||0), 0.002); end
  def test_outputs_energy_flows_w204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w204||0), 0.002); end
  def test_outputs_energy_flows_x204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x204||0), 0.002); end
  def test_outputs_energy_flows_y204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y204||0), 0.002); end
  def test_outputs_energy_flows_z204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z204||0), 0.002); end
  def test_outputs_energy_flows_aa204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa204||0), 0.002); end
  def test_outputs_energy_flows_ab204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab204||0), 0.002); end
  def test_outputs_energy_flows_ac204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac204||0), 0.002); end
  def test_outputs_energy_flows_ad204; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad204||0), 0.002); end
  def test_outputs_energy_flows_c206; assert_equal("n/a", worksheet.outputs_energy_flows_c206); end
  def test_outputs_energy_flows_d206; assert_equal("Liquid", worksheet.outputs_energy_flows_d206); end
  def test_outputs_energy_flows_e206; assert_equal("n/a", worksheet.outputs_energy_flows_e206); end
  def test_outputs_energy_flows_f206; assert_equal("Other manufacturing", worksheet.outputs_energy_flows_f206); end
  def test_outputs_energy_flows_i206; assert_equal("C.02", worksheet.outputs_energy_flows_i206); end
  def test_outputs_energy_flows_j206; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j206); end
  def test_outputs_energy_flows_l206; assert_equal("Global Other industries technology", worksheet.outputs_energy_flows_l206); end
  def test_outputs_energy_flows_v206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v206||0), 0.002); end
  def test_outputs_energy_flows_w206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w206||0), 0.002); end
  def test_outputs_energy_flows_x206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x206||0), 0.002); end
  def test_outputs_energy_flows_y206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y206||0), 0.002); end
  def test_outputs_energy_flows_z206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z206||0), 0.002); end
  def test_outputs_energy_flows_aa206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa206||0), 0.002); end
  def test_outputs_energy_flows_ab206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab206||0), 0.002); end
  def test_outputs_energy_flows_ac206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac206||0), 0.002); end
  def test_outputs_energy_flows_ad206; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad206||0), 0.002); end
  def test_outputs_energy_flows_c208; assert_equal("n/a", worksheet.outputs_energy_flows_c208); end
  def test_outputs_energy_flows_d208; assert_equal("Liquid", worksheet.outputs_energy_flows_d208); end
  def test_outputs_energy_flows_e208; assert_equal("n/a", worksheet.outputs_energy_flows_e208); end
  def test_outputs_energy_flows_f208; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f208); end
  def test_outputs_energy_flows_i208; assert_equal("C.02", worksheet.outputs_energy_flows_i208); end
  def test_outputs_energy_flows_j208; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j208); end
  def test_outputs_energy_flows_l208; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l208); end
  def test_outputs_energy_flows_m208; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m208); end
  def test_outputs_energy_flows_v208; assert_in_epsilon(46.55007264288778, worksheet.outputs_energy_flows_v208, 0.002); end
  def test_outputs_energy_flows_w208; assert_in_epsilon(49.39123422579897, worksheet.outputs_energy_flows_w208, 0.002); end
  def test_outputs_energy_flows_x208; assert_in_epsilon(52.09901172150406, worksheet.outputs_energy_flows_x208, 0.002); end
  def test_outputs_energy_flows_y208; assert_in_epsilon(54.51428765506151, worksheet.outputs_energy_flows_y208, 0.002); end
  def test_outputs_energy_flows_z208; assert_in_epsilon(56.923653386817364, worksheet.outputs_energy_flows_z208, 0.002); end
  def test_outputs_energy_flows_aa208; assert_in_epsilon(59.19083092637051, worksheet.outputs_energy_flows_aa208, 0.002); end
  def test_outputs_energy_flows_ab208; assert_in_epsilon(61.16664072872282, worksheet.outputs_energy_flows_ab208, 0.002); end
  def test_outputs_energy_flows_ac208; assert_in_epsilon(63.110422558340474, worksheet.outputs_energy_flows_ac208, 0.002); end
  def test_outputs_energy_flows_ad208; assert_in_epsilon(64.73199233241415, worksheet.outputs_energy_flows_ad208, 0.002); end
  def test_outputs_energy_flows_c210; assert_equal("n/a", worksheet.outputs_energy_flows_c210); end
  def test_outputs_energy_flows_d210; assert_equal("Liquid", worksheet.outputs_energy_flows_d210); end
  def test_outputs_energy_flows_e210; assert_equal("n/a", worksheet.outputs_energy_flows_e210); end
  def test_outputs_energy_flows_f210; assert_equal("International passenger", worksheet.outputs_energy_flows_f210); end
  def test_outputs_energy_flows_i210; assert_equal("C.02", worksheet.outputs_energy_flows_i210); end
  def test_outputs_energy_flows_j210; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j210); end
  def test_outputs_energy_flows_l210; assert_equal("International", worksheet.outputs_energy_flows_l210); end
  def test_outputs_energy_flows_v210; assert_in_epsilon(11.200783672219371, worksheet.outputs_energy_flows_v210, 0.002); end
  def test_outputs_energy_flows_w210; assert_in_epsilon(12.146667367690121, worksheet.outputs_energy_flows_w210, 0.002); end
  def test_outputs_energy_flows_x210; assert_in_epsilon(13.041576297999917, worksheet.outputs_energy_flows_x210, 0.002); end
  def test_outputs_energy_flows_y210; assert_in_epsilon(13.994520262161275, worksheet.outputs_energy_flows_y210, 0.002); end
  def test_outputs_energy_flows_z210; assert_in_epsilon(15.02373716356804, worksheet.outputs_energy_flows_z210, 0.002); end
  def test_outputs_energy_flows_aa210; assert_in_epsilon(16.152770488215708, worksheet.outputs_energy_flows_aa210, 0.002); end
  def test_outputs_energy_flows_ab210; assert_in_epsilon(17.403011123212302, worksheet.outputs_energy_flows_ab210, 0.002); end
  def test_outputs_energy_flows_ac210; assert_in_epsilon(18.793876351906423, worksheet.outputs_energy_flows_ac210, 0.002); end
  def test_outputs_energy_flows_ad210; assert_in_epsilon(20.346989927192123, worksheet.outputs_energy_flows_ad210, 0.002); end
  def test_outputs_energy_flows_c212; assert_equal("n/a", worksheet.outputs_energy_flows_c212); end
  def test_outputs_energy_flows_d212; assert_equal("Liquid", worksheet.outputs_energy_flows_d212); end
  def test_outputs_energy_flows_e212; assert_equal("n/a", worksheet.outputs_energy_flows_e212); end
  def test_outputs_energy_flows_f212; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f212); end
  def test_outputs_energy_flows_i212; assert_equal("C.02", worksheet.outputs_energy_flows_i212); end
  def test_outputs_energy_flows_j212; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j212); end
  def test_outputs_energy_flows_l212; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l212); end
  def test_outputs_energy_flows_v212; assert_in_epsilon(13.538303988230114, worksheet.outputs_energy_flows_v212, 0.002); end
  def test_outputs_energy_flows_w212; assert_in_epsilon(14.487451845731506, worksheet.outputs_energy_flows_w212, 0.002); end
  def test_outputs_energy_flows_x212; assert_in_epsilon(15.622052807587586, worksheet.outputs_energy_flows_x212, 0.002); end
  def test_outputs_energy_flows_y212; assert_in_epsilon(16.78157525476413, worksheet.outputs_energy_flows_y212, 0.002); end
  def test_outputs_energy_flows_z212; assert_in_epsilon(17.96629351239568, worksheet.outputs_energy_flows_z212, 0.002); end
  def test_outputs_energy_flows_aa212; assert_in_epsilon(19.176480798492722, worksheet.outputs_energy_flows_aa212, 0.002); end
  def test_outputs_energy_flows_ab212; assert_in_epsilon(20.412409212037648, worksheet.outputs_energy_flows_ab212, 0.002); end
  def test_outputs_energy_flows_ac212; assert_in_epsilon(21.67434973243271, worksheet.outputs_energy_flows_ac212, 0.002); end
  def test_outputs_energy_flows_ad212; assert_in_epsilon(22.96257223134874, worksheet.outputs_energy_flows_ad212, 0.002); end
  def test_outputs_energy_flows_c214; assert_equal("n/a", worksheet.outputs_energy_flows_c214); end
  def test_outputs_energy_flows_d214; assert_equal("Liquid", worksheet.outputs_energy_flows_d214); end
  def test_outputs_energy_flows_e214; assert_equal("n/a", worksheet.outputs_energy_flows_e214); end
  def test_outputs_energy_flows_f214; assert_equal("International freight", worksheet.outputs_energy_flows_f214); end
  def test_outputs_energy_flows_i214; assert_equal("C.02", worksheet.outputs_energy_flows_i214); end
  def test_outputs_energy_flows_j214; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j214); end
  def test_outputs_energy_flows_l214; assert_equal("International freight", worksheet.outputs_energy_flows_l214); end
  def test_outputs_energy_flows_v214; assert_in_epsilon(27.084375466003895, worksheet.outputs_energy_flows_v214, 0.002); end
  def test_outputs_energy_flows_w214; assert_in_epsilon(29.933123698225636, worksheet.outputs_energy_flows_w214, 0.002); end
  def test_outputs_energy_flows_x214; assert_in_epsilon(33.34882050413014, worksheet.outputs_energy_flows_x214, 0.002); end
  def test_outputs_energy_flows_y214; assert_in_epsilon(36.88372053458789, worksheet.outputs_energy_flows_y214, 0.002); end
  def test_outputs_energy_flows_z214; assert_in_epsilon(40.53956659274071, worksheet.outputs_energy_flows_z214, 0.002); end
  def test_outputs_energy_flows_aa214; assert_in_epsilon(44.31800196650838, worksheet.outputs_energy_flows_aa214, 0.002); end
  def test_outputs_energy_flows_ab214; assert_in_epsilon(48.22055870668986, worksheet.outputs_energy_flows_ab214, 0.002); end
  def test_outputs_energy_flows_ac214; assert_in_epsilon(52.248645104039355, worksheet.outputs_energy_flows_ac214, 0.002); end
  def test_outputs_energy_flows_ad214; assert_in_epsilon(56.40353231918637, worksheet.outputs_energy_flows_ad214, 0.002); end
  def test_outputs_energy_flows_c216; assert_equal("n/a", worksheet.outputs_energy_flows_c216); end
  def test_outputs_energy_flows_d216; assert_equal("Liquid", worksheet.outputs_energy_flows_d216); end
  def test_outputs_energy_flows_e216; assert_equal("n/a", worksheet.outputs_energy_flows_e216); end
  def test_outputs_energy_flows_f216; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f216); end
  def test_outputs_energy_flows_i216; assert_equal("C.02", worksheet.outputs_energy_flows_i216); end
  def test_outputs_energy_flows_j216; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j216); end
  def test_outputs_energy_flows_v216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v216||0), 0.002); end
  def test_outputs_energy_flows_w216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w216||0), 0.002); end
  def test_outputs_energy_flows_x216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x216||0), 0.002); end
  def test_outputs_energy_flows_y216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y216||0), 0.002); end
  def test_outputs_energy_flows_z216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z216||0), 0.002); end
  def test_outputs_energy_flows_aa216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa216||0), 0.002); end
  def test_outputs_energy_flows_ab216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab216||0), 0.002); end
  def test_outputs_energy_flows_ac216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac216||0), 0.002); end
  def test_outputs_energy_flows_ad216; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad216||0), 0.002); end
  def test_outputs_energy_flows_c218; assert_equal("n/a", worksheet.outputs_energy_flows_c218); end
  def test_outputs_energy_flows_d218; assert_equal("Liquid", worksheet.outputs_energy_flows_d218); end
  def test_outputs_energy_flows_e218; assert_equal("G.01", worksheet.outputs_energy_flows_e218); end
  def test_outputs_energy_flows_f218; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_f218); end
  def test_outputs_energy_flows_g218; assert_equal("GGR.tech", worksheet.outputs_energy_flows_g218); end
  def test_outputs_energy_flows_h218; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_h218); end
  def test_outputs_energy_flows_i218; assert_equal("C.02", worksheet.outputs_energy_flows_i218); end
  def test_outputs_energy_flows_j218; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j218); end
  def test_outputs_energy_flows_v218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v218||0), 0.002); end
  def test_outputs_energy_flows_w218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w218||0), 0.002); end
  def test_outputs_energy_flows_x218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x218||0), 0.002); end
  def test_outputs_energy_flows_y218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y218||0), 0.002); end
  def test_outputs_energy_flows_z218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z218||0), 0.002); end
  def test_outputs_energy_flows_aa218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa218||0), 0.002); end
  def test_outputs_energy_flows_ab218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab218||0), 0.002); end
  def test_outputs_energy_flows_ac218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac218||0), 0.002); end
  def test_outputs_energy_flows_ad218; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad218||0), 0.002); end
  def test_outputs_energy_flows_c220; assert_equal("n/a", worksheet.outputs_energy_flows_c220); end
  def test_outputs_energy_flows_d220; assert_equal("Liquid", worksheet.outputs_energy_flows_d220); end
  def test_outputs_energy_flows_e220; assert_equal("n/a", worksheet.outputs_energy_flows_e220); end
  def test_outputs_energy_flows_f220; assert_equal("Agriculture including bioenergy production", worksheet.outputs_energy_flows_f220); end
  def test_outputs_energy_flows_g220; assert_equal("n/a", worksheet.outputs_energy_flows_g220); end
  def test_outputs_energy_flows_h220; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_energy_flows_h220); end
  def test_outputs_energy_flows_i220; assert_equal("C.02", worksheet.outputs_energy_flows_i220); end
  def test_outputs_energy_flows_j220; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j220); end
  def test_outputs_energy_flows_v220; assert_in_delta(0.6921751371292655, worksheet.outputs_energy_flows_v220, 0.002); end
  def test_outputs_energy_flows_w220; assert_in_delta(0.8025243264426388, worksheet.outputs_energy_flows_w220, 0.002); end
  def test_outputs_energy_flows_x220; assert_in_delta(0.9455726992913466, worksheet.outputs_energy_flows_x220, 0.002); end
  def test_outputs_energy_flows_y220; assert_in_epsilon(1.1043080116191915, worksheet.outputs_energy_flows_y220, 0.002); end
  def test_outputs_energy_flows_z220; assert_in_epsilon(1.2827432860959211, worksheet.outputs_energy_flows_z220, 0.002); end
  def test_outputs_energy_flows_aa220; assert_in_epsilon(1.4861503840622479, worksheet.outputs_energy_flows_aa220, 0.002); end
  def test_outputs_energy_flows_ab220; assert_in_epsilon(1.7214170076876676, worksheet.outputs_energy_flows_ab220, 0.002); end
  def test_outputs_energy_flows_ac220; assert_in_epsilon(1.9974757724013559, worksheet.outputs_energy_flows_ac220, 0.002); end
  def test_outputs_energy_flows_ad220; assert_in_epsilon(2.3257997846469514, worksheet.outputs_energy_flows_ad220, 0.002); end
  def test_outputs_energy_flows_c222; assert_equal("n/a", worksheet.outputs_energy_flows_c222); end
  def test_outputs_energy_flows_d222; assert_equal("Gas", worksheet.outputs_energy_flows_d222); end
  def test_outputs_energy_flows_e222; assert_equal("n/a", worksheet.outputs_energy_flows_e222); end
  def test_outputs_energy_flows_f222; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f222); end
  def test_outputs_energy_flows_i222; assert_equal("C.03", worksheet.outputs_energy_flows_i222); end
  def test_outputs_energy_flows_j222; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j222); end
  def test_outputs_energy_flows_k222; assert_equal("Global buildings", worksheet.outputs_energy_flows_k222); end
  def test_outputs_energy_flows_v222; assert_in_epsilon(15.120430855718622, worksheet.outputs_energy_flows_v222, 0.002); end
  def test_outputs_energy_flows_w222; assert_in_epsilon(16.15729364529046, worksheet.outputs_energy_flows_w222, 0.002); end
  def test_outputs_energy_flows_x222; assert_in_epsilon(17.202211360922472, worksheet.outputs_energy_flows_x222, 0.002); end
  def test_outputs_energy_flows_y222; assert_in_epsilon(17.873414202396887, worksheet.outputs_energy_flows_y222, 0.002); end
  def test_outputs_energy_flows_z222; assert_in_epsilon(18.7261796674535, worksheet.outputs_energy_flows_z222, 0.002); end
  def test_outputs_energy_flows_aa222; assert_in_epsilon(19.405271549662206, worksheet.outputs_energy_flows_aa222, 0.002); end
  def test_outputs_energy_flows_ab222; assert_in_epsilon(19.68913446199095, worksheet.outputs_energy_flows_ab222, 0.002); end
  def test_outputs_energy_flows_ac222; assert_in_epsilon(20.142440393828615, worksheet.outputs_energy_flows_ac222, 0.002); end
  def test_outputs_energy_flows_ad222; assert_in_epsilon(19.998075446564666, worksheet.outputs_energy_flows_ad222, 0.002); end
  def test_outputs_energy_flows_c224; assert_equal("n/a", worksheet.outputs_energy_flows_c224); end
  def test_outputs_energy_flows_d224; assert_equal("Gas", worksheet.outputs_energy_flows_d224); end
  def test_outputs_energy_flows_e224; assert_equal("n/a", worksheet.outputs_energy_flows_e224); end
  def test_outputs_energy_flows_f224; assert_equal("Domestic lighting", worksheet.outputs_energy_flows_f224); end
  def test_outputs_energy_flows_i224; assert_equal("C.03", worksheet.outputs_energy_flows_i224); end
  def test_outputs_energy_flows_j224; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j224); end
  def test_outputs_energy_flows_k224; assert_equal("Urban lighting", worksheet.outputs_energy_flows_k224); end
  def test_outputs_energy_flows_l224; assert_equal("Rural lighting", worksheet.outputs_energy_flows_l224); end
  def test_outputs_energy_flows_v224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v224||0), 0.002); end
  def test_outputs_energy_flows_w224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w224||0), 0.002); end
  def test_outputs_energy_flows_x224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x224||0), 0.002); end
  def test_outputs_energy_flows_y224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y224||0), 0.002); end
  def test_outputs_energy_flows_z224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z224||0), 0.002); end
  def test_outputs_energy_flows_aa224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa224||0), 0.002); end
  def test_outputs_energy_flows_ab224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab224||0), 0.002); end
  def test_outputs_energy_flows_ac224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac224||0), 0.002); end
  def test_outputs_energy_flows_ad224; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad224||0), 0.002); end
  def test_outputs_energy_flows_c226; assert_equal("n/a", worksheet.outputs_energy_flows_c226); end
  def test_outputs_energy_flows_d226; assert_equal("Gas", worksheet.outputs_energy_flows_d226); end
  def test_outputs_energy_flows_e226; assert_equal("n/a", worksheet.outputs_energy_flows_e226); end
  def test_outputs_energy_flows_f226; assert_equal("Domestic appliances", worksheet.outputs_energy_flows_f226); end
  def test_outputs_energy_flows_i226; assert_equal("C.03", worksheet.outputs_energy_flows_i226); end
  def test_outputs_energy_flows_j226; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j226); end
  def test_outputs_energy_flows_k226; assert_equal("Urban appliances", worksheet.outputs_energy_flows_k226); end
  def test_outputs_energy_flows_l226; assert_equal("Rural appliances", worksheet.outputs_energy_flows_l226); end
  def test_outputs_energy_flows_v226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v226||0), 0.002); end
  def test_outputs_energy_flows_w226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w226||0), 0.002); end
  def test_outputs_energy_flows_x226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x226||0), 0.002); end
  def test_outputs_energy_flows_y226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y226||0), 0.002); end
  def test_outputs_energy_flows_z226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z226||0), 0.002); end
  def test_outputs_energy_flows_aa226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa226||0), 0.002); end
  def test_outputs_energy_flows_ab226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab226||0), 0.002); end
  def test_outputs_energy_flows_ac226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac226||0), 0.002); end
  def test_outputs_energy_flows_ad226; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad226||0), 0.002); end
  def test_outputs_energy_flows_c228; assert_equal("n/a", worksheet.outputs_energy_flows_c228); end
  def test_outputs_energy_flows_d228; assert_equal("Gas", worksheet.outputs_energy_flows_d228); end
  def test_outputs_energy_flows_e228; assert_equal("n/a", worksheet.outputs_energy_flows_e228); end
  def test_outputs_energy_flows_f228; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f228); end
  def test_outputs_energy_flows_i228; assert_equal("C.03", worksheet.outputs_energy_flows_i228); end
  def test_outputs_energy_flows_j228; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j228); end
  def test_outputs_energy_flows_k228; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k228); end
  def test_outputs_energy_flows_l228; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l228); end
  def test_outputs_energy_flows_v228; assert_in_epsilon(3.380654782328101, worksheet.outputs_energy_flows_v228, 0.002); end
  def test_outputs_energy_flows_w228; assert_in_epsilon(3.7670399665491243, worksheet.outputs_energy_flows_w228, 0.002); end
  def test_outputs_energy_flows_x228; assert_in_epsilon(4.229362937155904, worksheet.outputs_energy_flows_x228, 0.002); end
  def test_outputs_energy_flows_y228; assert_in_epsilon(4.637233120556413, worksheet.outputs_energy_flows_y228, 0.002); end
  def test_outputs_energy_flows_z228; assert_in_epsilon(5.13596919684922, worksheet.outputs_energy_flows_z228, 0.002); end
  def test_outputs_energy_flows_aa228; assert_in_epsilon(5.633554081550067, worksheet.outputs_energy_flows_aa228, 0.002); end
  def test_outputs_energy_flows_ab228; assert_in_epsilon(6.056641390009421, worksheet.outputs_energy_flows_ab228, 0.002); end
  def test_outputs_energy_flows_ac228; assert_in_epsilon(6.577231051664689, worksheet.outputs_energy_flows_ac228, 0.002); end
  def test_outputs_energy_flows_ad228; assert_in_epsilon(6.9401949439842605, worksheet.outputs_energy_flows_ad228, 0.002); end
  def test_outputs_energy_flows_c230; assert_equal("n/a", worksheet.outputs_energy_flows_c230); end
  def test_outputs_energy_flows_d230; assert_equal("Gas", worksheet.outputs_energy_flows_d230); end
  def test_outputs_energy_flows_e230; assert_equal("n/a", worksheet.outputs_energy_flows_e230); end
  def test_outputs_energy_flows_f230; assert_equal("Non domestic", worksheet.outputs_energy_flows_f230); end
  def test_outputs_energy_flows_i230; assert_equal("C.03", worksheet.outputs_energy_flows_i230); end
  def test_outputs_energy_flows_j230; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j230); end
  def test_outputs_energy_flows_k230; assert_equal("Non-residential", worksheet.outputs_energy_flows_k230); end
  def test_outputs_energy_flows_v230; assert_in_epsilon(6.556587457639759, worksheet.outputs_energy_flows_v230, 0.002); end
  def test_outputs_energy_flows_w230; assert_in_epsilon(7.074889970486443, worksheet.outputs_energy_flows_w230, 0.002); end
  def test_outputs_energy_flows_x230; assert_in_epsilon(7.650723420882977, worksheet.outputs_energy_flows_x230, 0.002); end
  def test_outputs_energy_flows_y230; assert_in_epsilon(8.171763975579749, worksheet.outputs_energy_flows_y230, 0.002); end
  def test_outputs_energy_flows_z230; assert_in_epsilon(8.628773834739949, worksheet.outputs_energy_flows_z230, 0.002); end
  def test_outputs_energy_flows_aa230; assert_in_epsilon(9.015351733414985, worksheet.outputs_energy_flows_aa230, 0.002); end
  def test_outputs_energy_flows_ab230; assert_in_epsilon(9.323493945465337, worksheet.outputs_energy_flows_ab230, 0.002); end
  def test_outputs_energy_flows_ac230; assert_in_epsilon(9.544003237741855, worksheet.outputs_energy_flows_ac230, 0.002); end
  def test_outputs_energy_flows_ad230; assert_in_epsilon(9.669130595496522, worksheet.outputs_energy_flows_ad230, 0.002); end
  def test_outputs_energy_flows_c232; assert_equal("n/a", worksheet.outputs_energy_flows_c232); end
  def test_outputs_energy_flows_d232; assert_equal("Gas", worksheet.outputs_energy_flows_d232); end
  def test_outputs_energy_flows_e232; assert_equal("n/a", worksheet.outputs_energy_flows_e232); end
  def test_outputs_energy_flows_f232; assert_equal("Steel", worksheet.outputs_energy_flows_f232); end
  def test_outputs_energy_flows_i232; assert_equal("C.03", worksheet.outputs_energy_flows_i232); end
  def test_outputs_energy_flows_j232; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j232); end
  def test_outputs_energy_flows_v232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v232||0), 0.002); end
  def test_outputs_energy_flows_w232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w232||0), 0.002); end
  def test_outputs_energy_flows_x232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x232||0), 0.002); end
  def test_outputs_energy_flows_y232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y232||0), 0.002); end
  def test_outputs_energy_flows_z232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z232||0), 0.002); end
  def test_outputs_energy_flows_aa232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa232||0), 0.002); end
  def test_outputs_energy_flows_ab232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab232||0), 0.002); end
  def test_outputs_energy_flows_ac232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac232||0), 0.002); end
  def test_outputs_energy_flows_ad232; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad232||0), 0.002); end
  def test_outputs_energy_flows_c234; assert_equal("n/a", worksheet.outputs_energy_flows_c234); end
  def test_outputs_energy_flows_d234; assert_equal("Gas", worksheet.outputs_energy_flows_d234); end
  def test_outputs_energy_flows_e234; assert_equal("n/a", worksheet.outputs_energy_flows_e234); end
  def test_outputs_energy_flows_f234; assert_equal("Aluminium", worksheet.outputs_energy_flows_f234); end
  def test_outputs_energy_flows_i234; assert_equal("C.03", worksheet.outputs_energy_flows_i234); end
  def test_outputs_energy_flows_j234; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j234); end
  def test_outputs_energy_flows_v234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v234||0), 0.002); end
  def test_outputs_energy_flows_w234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w234||0), 0.002); end
  def test_outputs_energy_flows_x234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x234||0), 0.002); end
  def test_outputs_energy_flows_y234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y234||0), 0.002); end
  def test_outputs_energy_flows_z234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z234||0), 0.002); end
  def test_outputs_energy_flows_aa234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa234||0), 0.002); end
  def test_outputs_energy_flows_ab234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab234||0), 0.002); end
  def test_outputs_energy_flows_ac234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac234||0), 0.002); end
  def test_outputs_energy_flows_ad234; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad234||0), 0.002); end
  def test_outputs_energy_flows_c236; assert_equal("n/a", worksheet.outputs_energy_flows_c236); end
  def test_outputs_energy_flows_d236; assert_equal("Gas", worksheet.outputs_energy_flows_d236); end
  def test_outputs_energy_flows_e236; assert_equal("n/a", worksheet.outputs_energy_flows_e236); end
  def test_outputs_energy_flows_f236; assert_equal("Cement", worksheet.outputs_energy_flows_f236); end
  def test_outputs_energy_flows_i236; assert_equal("C.03", worksheet.outputs_energy_flows_i236); end
  def test_outputs_energy_flows_j236; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j236); end
  def test_outputs_energy_flows_v236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v236||0), 0.002); end
  def test_outputs_energy_flows_w236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w236||0), 0.002); end
  def test_outputs_energy_flows_x236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x236||0), 0.002); end
  def test_outputs_energy_flows_y236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y236||0), 0.002); end
  def test_outputs_energy_flows_z236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z236||0), 0.002); end
  def test_outputs_energy_flows_aa236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa236||0), 0.002); end
  def test_outputs_energy_flows_ab236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab236||0), 0.002); end
  def test_outputs_energy_flows_ac236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac236||0), 0.002); end
  def test_outputs_energy_flows_ad236; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad236||0), 0.002); end
  def test_outputs_energy_flows_c238; assert_equal("n/a", worksheet.outputs_energy_flows_c238); end
  def test_outputs_energy_flows_d238; assert_equal("Gas", worksheet.outputs_energy_flows_d238); end
  def test_outputs_energy_flows_e238; assert_equal("n/a", worksheet.outputs_energy_flows_e238); end
  def test_outputs_energy_flows_f238; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f238); end
  def test_outputs_energy_flows_i238; assert_equal("C.03", worksheet.outputs_energy_flows_i238); end
  def test_outputs_energy_flows_j238; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j238); end
  def test_outputs_energy_flows_v238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v238||0), 0.002); end
  def test_outputs_energy_flows_w238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w238||0), 0.002); end
  def test_outputs_energy_flows_x238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x238||0), 0.002); end
  def test_outputs_energy_flows_y238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y238||0), 0.002); end
  def test_outputs_energy_flows_z238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z238||0), 0.002); end
  def test_outputs_energy_flows_aa238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa238||0), 0.002); end
  def test_outputs_energy_flows_ab238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab238||0), 0.002); end
  def test_outputs_energy_flows_ac238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac238||0), 0.002); end
  def test_outputs_energy_flows_ad238; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad238||0), 0.002); end
  def test_outputs_energy_flows_c240; assert_equal("n/a", worksheet.outputs_energy_flows_c240); end
  def test_outputs_energy_flows_d240; assert_equal("Gas", worksheet.outputs_energy_flows_d240); end
  def test_outputs_energy_flows_e240; assert_equal("n/a", worksheet.outputs_energy_flows_e240); end
  def test_outputs_energy_flows_f240; assert_equal("Chemicals", worksheet.outputs_energy_flows_f240); end
  def test_outputs_energy_flows_i240; assert_equal("C.03", worksheet.outputs_energy_flows_i240); end
  def test_outputs_energy_flows_j240; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j240); end
  def test_outputs_energy_flows_v240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v240||0), 0.002); end
  def test_outputs_energy_flows_w240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w240||0), 0.002); end
  def test_outputs_energy_flows_x240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x240||0), 0.002); end
  def test_outputs_energy_flows_y240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y240||0), 0.002); end
  def test_outputs_energy_flows_z240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z240||0), 0.002); end
  def test_outputs_energy_flows_aa240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa240||0), 0.002); end
  def test_outputs_energy_flows_ab240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab240||0), 0.002); end
  def test_outputs_energy_flows_ac240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac240||0), 0.002); end
  def test_outputs_energy_flows_ad240; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad240||0), 0.002); end
  def test_outputs_energy_flows_c242; assert_equal("n/a", worksheet.outputs_energy_flows_c242); end
  def test_outputs_energy_flows_d242; assert_equal("Gas", worksheet.outputs_energy_flows_d242); end
  def test_outputs_energy_flows_e242; assert_equal("n/a", worksheet.outputs_energy_flows_e242); end
  def test_outputs_energy_flows_f242; assert_equal("Other manufacturing", worksheet.outputs_energy_flows_f242); end
  def test_outputs_energy_flows_i242; assert_equal("C.03", worksheet.outputs_energy_flows_i242); end
  def test_outputs_energy_flows_j242; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j242); end
  def test_outputs_energy_flows_l242; assert_equal("Global Other industries technology", worksheet.outputs_energy_flows_l242); end
  def test_outputs_energy_flows_v242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v242||0), 0.002); end
  def test_outputs_energy_flows_w242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w242||0), 0.002); end
  def test_outputs_energy_flows_x242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x242||0), 0.002); end
  def test_outputs_energy_flows_y242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y242||0), 0.002); end
  def test_outputs_energy_flows_z242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z242||0), 0.002); end
  def test_outputs_energy_flows_aa242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa242||0), 0.002); end
  def test_outputs_energy_flows_ab242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab242||0), 0.002); end
  def test_outputs_energy_flows_ac242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac242||0), 0.002); end
  def test_outputs_energy_flows_ad242; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad242||0), 0.002); end
  def test_outputs_energy_flows_c244; assert_equal("n/a", worksheet.outputs_energy_flows_c244); end
  def test_outputs_energy_flows_d244; assert_equal("Gas", worksheet.outputs_energy_flows_d244); end
  def test_outputs_energy_flows_e244; assert_equal("n/a", worksheet.outputs_energy_flows_e244); end
  def test_outputs_energy_flows_f244; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f244); end
  def test_outputs_energy_flows_i244; assert_equal("C.03", worksheet.outputs_energy_flows_i244); end
  def test_outputs_energy_flows_j244; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j244); end
  def test_outputs_energy_flows_l244; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l244); end
  def test_outputs_energy_flows_m244; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m244); end
  def test_outputs_energy_flows_v244; assert_in_delta(0.32187500895089427, worksheet.outputs_energy_flows_v244, 0.002); end
  def test_outputs_energy_flows_w244; assert_in_delta(0.39882826734994115, worksheet.outputs_energy_flows_w244, 0.002); end
  def test_outputs_energy_flows_x244; assert_in_delta(0.49801074706062376, worksheet.outputs_energy_flows_x244, 0.002); end
  def test_outputs_energy_flows_y244; assert_in_delta(0.6037479508266903, worksheet.outputs_energy_flows_y244, 0.002); end
  def test_outputs_energy_flows_z244; assert_in_delta(0.7185661979302298, worksheet.outputs_energy_flows_z244, 0.002); end
  def test_outputs_energy_flows_aa244; assert_in_delta(0.8408622009598699, worksheet.outputs_energy_flows_aa244, 0.002); end
  def test_outputs_energy_flows_ab244; assert_in_delta(0.9675918500133168, worksheet.outputs_energy_flows_ab244, 0.002); end
  def test_outputs_energy_flows_ac244; assert_in_epsilon(1.1026848112739787, worksheet.outputs_energy_flows_ac244, 0.002); end
  def test_outputs_energy_flows_ad244; assert_in_epsilon(1.2401252703528785, worksheet.outputs_energy_flows_ad244, 0.002); end
  def test_outputs_energy_flows_c246; assert_equal("n/a", worksheet.outputs_energy_flows_c246); end
  def test_outputs_energy_flows_d246; assert_equal("Gas", worksheet.outputs_energy_flows_d246); end
  def test_outputs_energy_flows_e246; assert_equal("n/a", worksheet.outputs_energy_flows_e246); end
  def test_outputs_energy_flows_f246; assert_equal("International passenger", worksheet.outputs_energy_flows_f246); end
  def test_outputs_energy_flows_i246; assert_equal("C.03", worksheet.outputs_energy_flows_i246); end
  def test_outputs_energy_flows_j246; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j246); end
  def test_outputs_energy_flows_l246; assert_equal("International", worksheet.outputs_energy_flows_l246); end
  def test_outputs_energy_flows_v246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v246||0), 0.002); end
  def test_outputs_energy_flows_w246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w246||0), 0.002); end
  def test_outputs_energy_flows_x246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x246||0), 0.002); end
  def test_outputs_energy_flows_y246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y246||0), 0.002); end
  def test_outputs_energy_flows_z246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z246||0), 0.002); end
  def test_outputs_energy_flows_aa246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa246||0), 0.002); end
  def test_outputs_energy_flows_ab246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab246||0), 0.002); end
  def test_outputs_energy_flows_ac246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac246||0), 0.002); end
  def test_outputs_energy_flows_ad246; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad246||0), 0.002); end
  def test_outputs_energy_flows_c248; assert_equal("n/a", worksheet.outputs_energy_flows_c248); end
  def test_outputs_energy_flows_d248; assert_equal("Gas", worksheet.outputs_energy_flows_d248); end
  def test_outputs_energy_flows_e248; assert_equal("n/a", worksheet.outputs_energy_flows_e248); end
  def test_outputs_energy_flows_f248; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f248); end
  def test_outputs_energy_flows_i248; assert_equal("C.03", worksheet.outputs_energy_flows_i248); end
  def test_outputs_energy_flows_j248; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j248); end
  def test_outputs_energy_flows_l248; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l248); end
  def test_outputs_energy_flows_v248; assert_in_delta(0.011926822007994763, worksheet.outputs_energy_flows_v248, 0.002); end
  def test_outputs_energy_flows_w248; assert_in_delta(0.08448662460339201, worksheet.outputs_energy_flows_w248, 0.002); end
  def test_outputs_energy_flows_x248; assert_in_delta(0.1901859936584497, worksheet.outputs_energy_flows_x248, 0.002); end
  def test_outputs_energy_flows_y248; assert_in_delta(0.3135202995611245, worksheet.outputs_energy_flows_y248, 0.002); end
  def test_outputs_energy_flows_z248; assert_in_delta(0.45548895952288876, worksheet.outputs_energy_flows_z248, 0.002); end
  def test_outputs_energy_flows_aa248; assert_in_delta(0.6171326170211417, worksheet.outputs_energy_flows_aa248, 0.002); end
  def test_outputs_energy_flows_ab248; assert_in_delta(0.7995345939054108, worksheet.outputs_energy_flows_ab248, 0.002); end
  def test_outputs_energy_flows_ac248; assert_in_epsilon(1.0038223890072617, worksheet.outputs_energy_flows_ac248, 0.002); end
  def test_outputs_energy_flows_ad248; assert_in_epsilon(1.231169224651188, worksheet.outputs_energy_flows_ad248, 0.002); end
  def test_outputs_energy_flows_c250; assert_equal("n/a", worksheet.outputs_energy_flows_c250); end
  def test_outputs_energy_flows_d250; assert_equal("Gas", worksheet.outputs_energy_flows_d250); end
  def test_outputs_energy_flows_e250; assert_equal("n/a", worksheet.outputs_energy_flows_e250); end
  def test_outputs_energy_flows_f250; assert_equal("International freight", worksheet.outputs_energy_flows_f250); end
  def test_outputs_energy_flows_i250; assert_equal("C.03", worksheet.outputs_energy_flows_i250); end
  def test_outputs_energy_flows_j250; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j250); end
  def test_outputs_energy_flows_l250; assert_equal("International freight", worksheet.outputs_energy_flows_l250); end
  def test_outputs_energy_flows_v250; assert_in_delta(1.237111016955099e-08, worksheet.outputs_energy_flows_v250, 0.002); end
  def test_outputs_energy_flows_w250; assert_in_delta(0.09620474391248193, worksheet.outputs_energy_flows_w250, 0.002); end
  def test_outputs_energy_flows_x250; assert_in_delta(0.25413498225499376, worksheet.outputs_energy_flows_x250, 0.002); end
  def test_outputs_energy_flows_y250; assert_in_delta(0.45726244040976444, worksheet.outputs_energy_flows_y250, 0.002); end
  def test_outputs_energy_flows_z250; assert_in_delta(0.7093678152297073, worksheet.outputs_energy_flows_z250, 0.002); end
  def test_outputs_energy_flows_aa250; assert_in_epsilon(1.0144587502537579, worksheet.outputs_energy_flows_aa250, 0.002); end
  def test_outputs_energy_flows_ab250; assert_in_epsilon(1.3767814181528002, worksheet.outputs_energy_flows_ab250, 0.002); end
  def test_outputs_energy_flows_ac250; assert_in_epsilon(1.800832639623204, worksheet.outputs_energy_flows_ac250, 0.002); end
  def test_outputs_energy_flows_ad250; assert_in_epsilon(2.2913725620159378, worksheet.outputs_energy_flows_ad250, 0.002); end
  def test_outputs_energy_flows_c252; assert_equal("n/a", worksheet.outputs_energy_flows_c252); end
  def test_outputs_energy_flows_d252; assert_equal("Gas", worksheet.outputs_energy_flows_d252); end
  def test_outputs_energy_flows_e252; assert_equal("n/a", worksheet.outputs_energy_flows_e252); end
  def test_outputs_energy_flows_f252; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f252); end
  def test_outputs_energy_flows_i252; assert_equal("C.03", worksheet.outputs_energy_flows_i252); end
  def test_outputs_energy_flows_j252; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j252); end
  def test_outputs_energy_flows_v252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v252||0), 0.002); end
  def test_outputs_energy_flows_w252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w252||0), 0.002); end
  def test_outputs_energy_flows_x252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x252||0), 0.002); end
  def test_outputs_energy_flows_y252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y252||0), 0.002); end
  def test_outputs_energy_flows_z252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z252||0), 0.002); end
  def test_outputs_energy_flows_aa252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa252||0), 0.002); end
  def test_outputs_energy_flows_ab252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab252||0), 0.002); end
  def test_outputs_energy_flows_ac252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac252||0), 0.002); end
  def test_outputs_energy_flows_ad252; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad252||0), 0.002); end
  def test_outputs_energy_flows_c254; assert_equal("n/a", worksheet.outputs_energy_flows_c254); end
  def test_outputs_energy_flows_d254; assert_equal("Gas", worksheet.outputs_energy_flows_d254); end
  def test_outputs_energy_flows_e254; assert_equal("G.01", worksheet.outputs_energy_flows_e254); end
  def test_outputs_energy_flows_f254; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_f254); end
  def test_outputs_energy_flows_g254; assert_equal("GGR.tech", worksheet.outputs_energy_flows_g254); end
  def test_outputs_energy_flows_h254; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_h254); end
  def test_outputs_energy_flows_i254; assert_equal("C.03", worksheet.outputs_energy_flows_i254); end
  def test_outputs_energy_flows_j254; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j254); end
  def test_outputs_energy_flows_v254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v254||0), 0.002); end
  def test_outputs_energy_flows_w254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w254||0), 0.002); end
  def test_outputs_energy_flows_x254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x254||0), 0.002); end
  def test_outputs_energy_flows_y254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y254||0), 0.002); end
  def test_outputs_energy_flows_z254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z254||0), 0.002); end
  def test_outputs_energy_flows_aa254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa254||0), 0.002); end
  def test_outputs_energy_flows_ab254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab254||0), 0.002); end
  def test_outputs_energy_flows_ac254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac254||0), 0.002); end
  def test_outputs_energy_flows_ad254; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad254||0), 0.002); end
  def test_outputs_energy_flows_c256; assert_equal("n/a", worksheet.outputs_energy_flows_c256); end
  def test_outputs_energy_flows_d256; assert_equal("Gas", worksheet.outputs_energy_flows_d256); end
  def test_outputs_energy_flows_e256; assert_equal("n/a", worksheet.outputs_energy_flows_e256); end
  def test_outputs_energy_flows_f256; assert_equal("Agriculture including bioenergy production", worksheet.outputs_energy_flows_f256); end
  def test_outputs_energy_flows_g256; assert_equal("n/a", worksheet.outputs_energy_flows_g256); end
  def test_outputs_energy_flows_h256; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_energy_flows_h256); end
  def test_outputs_energy_flows_i256; assert_equal("C.03", worksheet.outputs_energy_flows_i256); end
  def test_outputs_energy_flows_j256; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j256); end
  def test_outputs_energy_flows_v256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v256||0), 0.002); end
  def test_outputs_energy_flows_w256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w256||0), 0.002); end
  def test_outputs_energy_flows_x256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x256||0), 0.002); end
  def test_outputs_energy_flows_y256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y256||0), 0.002); end
  def test_outputs_energy_flows_z256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z256||0), 0.002); end
  def test_outputs_energy_flows_aa256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa256||0), 0.002); end
  def test_outputs_energy_flows_ab256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab256||0), 0.002); end
  def test_outputs_energy_flows_ac256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac256||0), 0.002); end
  def test_outputs_energy_flows_ad256; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad256||0), 0.002); end
  def test_outputs_energy_flows_c258; assert_equal("FF.01", worksheet.outputs_energy_flows_c258); end
  def test_outputs_energy_flows_d258; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d258); end
  def test_outputs_energy_flows_e258; assert_equal("n/a", worksheet.outputs_energy_flows_e258); end
  def test_outputs_energy_flows_f258; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f258); end
  def test_outputs_energy_flows_i258; assert_equal("FF.01", worksheet.outputs_energy_flows_i258); end
  def test_outputs_energy_flows_j258; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j258); end
  def test_outputs_energy_flows_k258; assert_equal("Global buildings", worksheet.outputs_energy_flows_k258); end
  def test_outputs_energy_flows_v258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v258||0), 0.002); end
  def test_outputs_energy_flows_w258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w258||0), 0.002); end
  def test_outputs_energy_flows_x258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x258||0), 0.002); end
  def test_outputs_energy_flows_y258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y258||0), 0.002); end
  def test_outputs_energy_flows_z258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z258||0), 0.002); end
  def test_outputs_energy_flows_aa258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa258||0), 0.002); end
  def test_outputs_energy_flows_ab258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab258||0), 0.002); end
  def test_outputs_energy_flows_ac258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac258||0), 0.002); end
  def test_outputs_energy_flows_ad258; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad258||0), 0.002); end
  def test_outputs_energy_flows_c260; assert_equal("FF.01", worksheet.outputs_energy_flows_c260); end
  def test_outputs_energy_flows_d260; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d260); end
  def test_outputs_energy_flows_e260; assert_equal("n/a", worksheet.outputs_energy_flows_e260); end
  def test_outputs_energy_flows_f260; assert_equal("Domestic lighting", worksheet.outputs_energy_flows_f260); end
  def test_outputs_energy_flows_i260; assert_equal("FF.01", worksheet.outputs_energy_flows_i260); end
  def test_outputs_energy_flows_j260; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j260); end
  def test_outputs_energy_flows_k260; assert_equal("Urban lighting", worksheet.outputs_energy_flows_k260); end
  def test_outputs_energy_flows_l260; assert_equal("Rural lighting", worksheet.outputs_energy_flows_l260); end
  def test_outputs_energy_flows_v260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v260||0), 0.002); end
  def test_outputs_energy_flows_w260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w260||0), 0.002); end
  def test_outputs_energy_flows_x260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x260||0), 0.002); end
  def test_outputs_energy_flows_y260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y260||0), 0.002); end
  def test_outputs_energy_flows_z260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z260||0), 0.002); end
  def test_outputs_energy_flows_aa260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa260||0), 0.002); end
  def test_outputs_energy_flows_ab260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab260||0), 0.002); end
  def test_outputs_energy_flows_ac260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac260||0), 0.002); end
  def test_outputs_energy_flows_ad260; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad260||0), 0.002); end
  def test_outputs_energy_flows_c262; assert_equal("FF.01", worksheet.outputs_energy_flows_c262); end
  def test_outputs_energy_flows_d262; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d262); end
  def test_outputs_energy_flows_e262; assert_equal("n/a", worksheet.outputs_energy_flows_e262); end
  def test_outputs_energy_flows_f262; assert_equal("Domestic appliances", worksheet.outputs_energy_flows_f262); end
  def test_outputs_energy_flows_i262; assert_equal("FF.01", worksheet.outputs_energy_flows_i262); end
  def test_outputs_energy_flows_j262; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j262); end
  def test_outputs_energy_flows_k262; assert_equal("Urban appliances", worksheet.outputs_energy_flows_k262); end
  def test_outputs_energy_flows_l262; assert_equal("Rural appliances", worksheet.outputs_energy_flows_l262); end
  def test_outputs_energy_flows_v262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v262||0), 0.002); end
  def test_outputs_energy_flows_w262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w262||0), 0.002); end
  def test_outputs_energy_flows_x262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x262||0), 0.002); end
  def test_outputs_energy_flows_y262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y262||0), 0.002); end
  def test_outputs_energy_flows_z262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z262||0), 0.002); end
  def test_outputs_energy_flows_aa262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa262||0), 0.002); end
  def test_outputs_energy_flows_ab262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab262||0), 0.002); end
  def test_outputs_energy_flows_ac262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac262||0), 0.002); end
  def test_outputs_energy_flows_ad262; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad262||0), 0.002); end
  def test_outputs_energy_flows_c264; assert_equal("FF.01", worksheet.outputs_energy_flows_c264); end
  def test_outputs_energy_flows_d264; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d264); end
  def test_outputs_energy_flows_e264; assert_equal("n/a", worksheet.outputs_energy_flows_e264); end
  def test_outputs_energy_flows_f264; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f264); end
  def test_outputs_energy_flows_i264; assert_equal("FF.01", worksheet.outputs_energy_flows_i264); end
  def test_outputs_energy_flows_j264; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j264); end
  def test_outputs_energy_flows_k264; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k264); end
  def test_outputs_energy_flows_l264; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l264); end
  def test_outputs_energy_flows_v264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v264||0), 0.002); end
  def test_outputs_energy_flows_w264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w264||0), 0.002); end
  def test_outputs_energy_flows_x264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x264||0), 0.002); end
  def test_outputs_energy_flows_y264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y264||0), 0.002); end
  def test_outputs_energy_flows_z264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z264||0), 0.002); end
  def test_outputs_energy_flows_aa264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa264||0), 0.002); end
  def test_outputs_energy_flows_ab264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab264||0), 0.002); end
  def test_outputs_energy_flows_ac264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac264||0), 0.002); end
  def test_outputs_energy_flows_ad264; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad264||0), 0.002); end
  def test_outputs_energy_flows_c266; assert_equal("FF.01", worksheet.outputs_energy_flows_c266); end
  def test_outputs_energy_flows_d266; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d266); end
  def test_outputs_energy_flows_e266; assert_equal("n/a", worksheet.outputs_energy_flows_e266); end
  def test_outputs_energy_flows_f266; assert_equal("Non domestic", worksheet.outputs_energy_flows_f266); end
  def test_outputs_energy_flows_i266; assert_equal("FF.01", worksheet.outputs_energy_flows_i266); end
  def test_outputs_energy_flows_j266; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j266); end
  def test_outputs_energy_flows_k266; assert_equal("Non-residential", worksheet.outputs_energy_flows_k266); end
  def test_outputs_energy_flows_v266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v266||0), 0.002); end
  def test_outputs_energy_flows_w266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w266||0), 0.002); end
  def test_outputs_energy_flows_x266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x266||0), 0.002); end
  def test_outputs_energy_flows_y266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y266||0), 0.002); end
  def test_outputs_energy_flows_z266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z266||0), 0.002); end
  def test_outputs_energy_flows_aa266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa266||0), 0.002); end
  def test_outputs_energy_flows_ab266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab266||0), 0.002); end
  def test_outputs_energy_flows_ac266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac266||0), 0.002); end
  def test_outputs_energy_flows_ad266; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad266||0), 0.002); end
  def test_outputs_energy_flows_c268; assert_equal("FF.01", worksheet.outputs_energy_flows_c268); end
  def test_outputs_energy_flows_d268; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d268); end
  def test_outputs_energy_flows_e268; assert_equal("n/a", worksheet.outputs_energy_flows_e268); end
  def test_outputs_energy_flows_f268; assert_equal("Steel", worksheet.outputs_energy_flows_f268); end
  def test_outputs_energy_flows_i268; assert_equal("FF.01", worksheet.outputs_energy_flows_i268); end
  def test_outputs_energy_flows_j268; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j268); end
  def test_outputs_energy_flows_v268; assert_in_epsilon(16.56400742938839, worksheet.outputs_energy_flows_v268, 0.002); end
  def test_outputs_energy_flows_w268; assert_in_epsilon(16.99319704728575, worksheet.outputs_energy_flows_w268, 0.002); end
  def test_outputs_energy_flows_x268; assert_in_epsilon(18.002826948621276, worksheet.outputs_energy_flows_x268, 0.002); end
  def test_outputs_energy_flows_y268; assert_in_epsilon(19.088404772597073, worksheet.outputs_energy_flows_y268, 0.002); end
  def test_outputs_energy_flows_z268; assert_in_epsilon(20.31897550071664, worksheet.outputs_energy_flows_z268, 0.002); end
  def test_outputs_energy_flows_aa268; assert_in_epsilon(21.601056703787542, worksheet.outputs_energy_flows_aa268, 0.002); end
  def test_outputs_energy_flows_ab268; assert_in_epsilon(22.944781302564483, worksheet.outputs_energy_flows_ab268, 0.002); end
  def test_outputs_energy_flows_ac268; assert_in_epsilon(24.762141841455527, worksheet.outputs_energy_flows_ac268, 0.002); end
  def test_outputs_energy_flows_ad268; assert_in_epsilon(25.984923557379766, worksheet.outputs_energy_flows_ad268, 0.002); end
  def test_outputs_energy_flows_c270; assert_equal("FF.01", worksheet.outputs_energy_flows_c270); end
  def test_outputs_energy_flows_d270; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d270); end
  def test_outputs_energy_flows_e270; assert_equal("n/a", worksheet.outputs_energy_flows_e270); end
  def test_outputs_energy_flows_f270; assert_equal("Aluminium", worksheet.outputs_energy_flows_f270); end
  def test_outputs_energy_flows_i270; assert_equal("FF.01", worksheet.outputs_energy_flows_i270); end
  def test_outputs_energy_flows_j270; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j270); end
  def test_outputs_energy_flows_v270; assert_in_delta(0.7339274805745354, worksheet.outputs_energy_flows_v270, 0.002); end
  def test_outputs_energy_flows_w270; assert_in_delta(0.8344670677382416, worksheet.outputs_energy_flows_w270, 0.002); end
  def test_outputs_energy_flows_x270; assert_in_epsilon(1.004625294051366, worksheet.outputs_energy_flows_x270, 0.002); end
  def test_outputs_energy_flows_y270; assert_in_epsilon(1.19570305199631, worksheet.outputs_energy_flows_y270, 0.002); end
  def test_outputs_energy_flows_z270; assert_in_epsilon(1.4145403442868507, worksheet.outputs_energy_flows_z270, 0.002); end
  def test_outputs_energy_flows_aa270; assert_in_epsilon(1.660534962668942, worksheet.outputs_energy_flows_aa270, 0.002); end
  def test_outputs_energy_flows_ab270; assert_in_epsilon(1.926712887968835, worksheet.outputs_energy_flows_ab270, 0.002); end
  def test_outputs_energy_flows_ac270; assert_in_epsilon(2.236302156227227, worksheet.outputs_energy_flows_ac270, 0.002); end
  def test_outputs_energy_flows_ad270; assert_in_epsilon(2.5695028401836844, worksheet.outputs_energy_flows_ad270, 0.002); end
  def test_outputs_energy_flows_c272; assert_equal("FF.01", worksheet.outputs_energy_flows_c272); end
  def test_outputs_energy_flows_d272; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d272); end
  def test_outputs_energy_flows_e272; assert_equal("n/a", worksheet.outputs_energy_flows_e272); end
  def test_outputs_energy_flows_f272; assert_equal("Cement", worksheet.outputs_energy_flows_f272); end
  def test_outputs_energy_flows_i272; assert_equal("FF.01", worksheet.outputs_energy_flows_i272); end
  def test_outputs_energy_flows_j272; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j272); end
  def test_outputs_energy_flows_v272; assert_in_epsilon(6.851960921136625, worksheet.outputs_energy_flows_v272, 0.002); end
  def test_outputs_energy_flows_w272; assert_in_epsilon(7.332879177582779, worksheet.outputs_energy_flows_w272, 0.002); end
  def test_outputs_energy_flows_x272; assert_in_epsilon(7.8160022062647165, worksheet.outputs_energy_flows_x272, 0.002); end
  def test_outputs_energy_flows_y272; assert_in_epsilon(8.281351567515637, worksheet.outputs_energy_flows_y272, 0.002); end
  def test_outputs_energy_flows_z272; assert_in_epsilon(8.749987179385432, worksheet.outputs_energy_flows_z272, 0.002); end
  def test_outputs_energy_flows_aa272; assert_in_epsilon(9.21537746287398, worksheet.outputs_energy_flows_aa272, 0.002); end
  def test_outputs_energy_flows_ab272; assert_in_epsilon(9.666853271736832, worksheet.outputs_energy_flows_ab272, 0.002); end
  def test_outputs_energy_flows_ac272; assert_in_epsilon(10.126140980129025, worksheet.outputs_energy_flows_ac272, 0.002); end
  def test_outputs_energy_flows_ad272; assert_in_epsilon(10.569226597060892, worksheet.outputs_energy_flows_ad272, 0.002); end
  def test_outputs_energy_flows_c274; assert_equal("FF.01", worksheet.outputs_energy_flows_c274); end
  def test_outputs_energy_flows_d274; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d274); end
  def test_outputs_energy_flows_e274; assert_equal("n/a", worksheet.outputs_energy_flows_e274); end
  def test_outputs_energy_flows_f274; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f274); end
  def test_outputs_energy_flows_i274; assert_equal("FF.01", worksheet.outputs_energy_flows_i274); end
  def test_outputs_energy_flows_j274; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j274); end
  def test_outputs_energy_flows_v274; assert_in_epsilon(1.518261087438881, worksheet.outputs_energy_flows_v274, 0.002); end
  def test_outputs_energy_flows_w274; assert_in_epsilon(1.5645062238759753, worksheet.outputs_energy_flows_w274, 0.002); end
  def test_outputs_energy_flows_x274; assert_in_epsilon(1.6062770692541974, worksheet.outputs_energy_flows_x274, 0.002); end
  def test_outputs_energy_flows_y274; assert_in_epsilon(1.6386640852134349, worksheet.outputs_energy_flows_y274, 0.002); end
  def test_outputs_energy_flows_z274; assert_in_epsilon(1.6621266203241438, worksheet.outputs_energy_flows_z274, 0.002); end
  def test_outputs_energy_flows_aa274; assert_in_epsilon(1.677498821467504, worksheet.outputs_energy_flows_aa274, 0.002); end
  def test_outputs_energy_flows_ab274; assert_in_epsilon(1.6851259170605475, worksheet.outputs_energy_flows_ab274, 0.002); end
  def test_outputs_energy_flows_ac274; assert_in_epsilon(1.6850042909433123, worksheet.outputs_energy_flows_ac274, 0.002); end
  def test_outputs_energy_flows_ad274; assert_in_epsilon(1.677260352277043, worksheet.outputs_energy_flows_ad274, 0.002); end
  def test_outputs_energy_flows_c276; assert_equal("FF.01", worksheet.outputs_energy_flows_c276); end
  def test_outputs_energy_flows_d276; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d276); end
  def test_outputs_energy_flows_e276; assert_equal("n/a", worksheet.outputs_energy_flows_e276); end
  def test_outputs_energy_flows_f276; assert_equal("Chemicals", worksheet.outputs_energy_flows_f276); end
  def test_outputs_energy_flows_i276; assert_equal("FF.01", worksheet.outputs_energy_flows_i276); end
  def test_outputs_energy_flows_j276; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j276); end
  def test_outputs_energy_flows_v276; assert_in_epsilon(2.7901474530640202, worksheet.outputs_energy_flows_v276, 0.002); end
  def test_outputs_energy_flows_w276; assert_in_epsilon(2.852626895928952, worksheet.outputs_energy_flows_w276, 0.002); end
  def test_outputs_energy_flows_x276; assert_in_epsilon(3.075621609987599, worksheet.outputs_energy_flows_x276, 0.002); end
  def test_outputs_energy_flows_y276; assert_in_epsilon(3.296424147913327, worksheet.outputs_energy_flows_y276, 0.002); end
  def test_outputs_energy_flows_z276; assert_in_epsilon(3.5210668207100455, worksheet.outputs_energy_flows_z276, 0.002); end
  def test_outputs_energy_flows_aa276; assert_in_epsilon(3.738181088620798, worksheet.outputs_energy_flows_aa276, 0.002); end
  def test_outputs_energy_flows_ab276; assert_in_epsilon(3.9565364861141727, worksheet.outputs_energy_flows_ab276, 0.002); end
  def test_outputs_energy_flows_ac276; assert_in_epsilon(4.180839060900631, worksheet.outputs_energy_flows_ac276, 0.002); end
  def test_outputs_energy_flows_ad276; assert_in_epsilon(4.389461021121362, worksheet.outputs_energy_flows_ad276, 0.002); end
  def test_outputs_energy_flows_c278; assert_equal("FF.01", worksheet.outputs_energy_flows_c278); end
  def test_outputs_energy_flows_d278; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d278); end
  def test_outputs_energy_flows_e278; assert_equal("n/a", worksheet.outputs_energy_flows_e278); end
  def test_outputs_energy_flows_f278; assert_equal("Other manufacturing", worksheet.outputs_energy_flows_f278); end
  def test_outputs_energy_flows_i278; assert_equal("FF.01", worksheet.outputs_energy_flows_i278); end
  def test_outputs_energy_flows_j278; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j278); end
  def test_outputs_energy_flows_l278; assert_equal("Global Other industries technology", worksheet.outputs_energy_flows_l278); end
  def test_outputs_energy_flows_v278; assert_in_epsilon(12.274837295623618, worksheet.outputs_energy_flows_v278, 0.002); end
  def test_outputs_energy_flows_w278; assert_in_epsilon(13.473717467803212, worksheet.outputs_energy_flows_w278, 0.002); end
  def test_outputs_energy_flows_x278; assert_in_epsilon(14.890203734799423, worksheet.outputs_energy_flows_x278, 0.002); end
  def test_outputs_energy_flows_y278; assert_in_epsilon(16.26646544217217, worksheet.outputs_energy_flows_y278, 0.002); end
  def test_outputs_energy_flows_z278; assert_in_epsilon(17.58905517292958, worksheet.outputs_energy_flows_z278, 0.002); end
  def test_outputs_energy_flows_aa278; assert_in_epsilon(18.850016437027925, worksheet.outputs_energy_flows_aa278, 0.002); end
  def test_outputs_energy_flows_ab278; assert_in_epsilon(20.03781906262696, worksheet.outputs_energy_flows_ab278, 0.002); end
  def test_outputs_energy_flows_ac278; assert_in_epsilon(21.13749891972583, worksheet.outputs_energy_flows_ac278, 0.002); end
  def test_outputs_energy_flows_ad278; assert_in_epsilon(22.135823550356385, worksheet.outputs_energy_flows_ad278, 0.002); end
  def test_outputs_energy_flows_c280; assert_equal("FF.01", worksheet.outputs_energy_flows_c280); end
  def test_outputs_energy_flows_d280; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d280); end
  def test_outputs_energy_flows_e280; assert_equal("n/a", worksheet.outputs_energy_flows_e280); end
  def test_outputs_energy_flows_f280; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f280); end
  def test_outputs_energy_flows_i280; assert_equal("FF.01", worksheet.outputs_energy_flows_i280); end
  def test_outputs_energy_flows_j280; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j280); end
  def test_outputs_energy_flows_l280; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l280); end
  def test_outputs_energy_flows_m280; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m280); end
  def test_outputs_energy_flows_v280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v280||0), 0.002); end
  def test_outputs_energy_flows_w280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w280||0), 0.002); end
  def test_outputs_energy_flows_x280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x280||0), 0.002); end
  def test_outputs_energy_flows_y280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y280||0), 0.002); end
  def test_outputs_energy_flows_z280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z280||0), 0.002); end
  def test_outputs_energy_flows_aa280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa280||0), 0.002); end
  def test_outputs_energy_flows_ab280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab280||0), 0.002); end
  def test_outputs_energy_flows_ac280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac280||0), 0.002); end
  def test_outputs_energy_flows_ad280; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad280||0), 0.002); end
  def test_outputs_energy_flows_c282; assert_equal("FF.01", worksheet.outputs_energy_flows_c282); end
  def test_outputs_energy_flows_d282; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d282); end
  def test_outputs_energy_flows_e282; assert_equal("n/a", worksheet.outputs_energy_flows_e282); end
  def test_outputs_energy_flows_f282; assert_equal("International passenger", worksheet.outputs_energy_flows_f282); end
  def test_outputs_energy_flows_i282; assert_equal("FF.01", worksheet.outputs_energy_flows_i282); end
  def test_outputs_energy_flows_j282; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j282); end
  def test_outputs_energy_flows_l282; assert_equal("International", worksheet.outputs_energy_flows_l282); end
  def test_outputs_energy_flows_v282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v282||0), 0.002); end
  def test_outputs_energy_flows_w282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w282||0), 0.002); end
  def test_outputs_energy_flows_x282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x282||0), 0.002); end
  def test_outputs_energy_flows_y282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y282||0), 0.002); end
  def test_outputs_energy_flows_z282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z282||0), 0.002); end
  def test_outputs_energy_flows_aa282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa282||0), 0.002); end
  def test_outputs_energy_flows_ab282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab282||0), 0.002); end
  def test_outputs_energy_flows_ac282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac282||0), 0.002); end
  def test_outputs_energy_flows_ad282; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad282||0), 0.002); end
  def test_outputs_energy_flows_c284; assert_equal("FF.01", worksheet.outputs_energy_flows_c284); end
  def test_outputs_energy_flows_d284; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d284); end
  def test_outputs_energy_flows_e284; assert_equal("n/a", worksheet.outputs_energy_flows_e284); end
  def test_outputs_energy_flows_f284; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f284); end
  def test_outputs_energy_flows_i284; assert_equal("FF.01", worksheet.outputs_energy_flows_i284); end
  def test_outputs_energy_flows_j284; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j284); end
  def test_outputs_energy_flows_l284; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l284); end
  def test_outputs_energy_flows_v284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v284||0), 0.002); end
  def test_outputs_energy_flows_w284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w284||0), 0.002); end
  def test_outputs_energy_flows_x284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x284||0), 0.002); end
  def test_outputs_energy_flows_y284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y284||0), 0.002); end
  def test_outputs_energy_flows_z284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z284||0), 0.002); end
  def test_outputs_energy_flows_aa284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa284||0), 0.002); end
  def test_outputs_energy_flows_ab284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab284||0), 0.002); end
  def test_outputs_energy_flows_ac284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac284||0), 0.002); end
  def test_outputs_energy_flows_ad284; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad284||0), 0.002); end
  def test_outputs_energy_flows_c286; assert_equal("FF.01", worksheet.outputs_energy_flows_c286); end
  def test_outputs_energy_flows_d286; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d286); end
  def test_outputs_energy_flows_e286; assert_equal("n/a", worksheet.outputs_energy_flows_e286); end
  def test_outputs_energy_flows_f286; assert_equal("International freight", worksheet.outputs_energy_flows_f286); end
  def test_outputs_energy_flows_i286; assert_equal("FF.01", worksheet.outputs_energy_flows_i286); end
  def test_outputs_energy_flows_j286; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j286); end
  def test_outputs_energy_flows_l286; assert_equal("International freight", worksheet.outputs_energy_flows_l286); end
  def test_outputs_energy_flows_v286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v286||0), 0.002); end
  def test_outputs_energy_flows_w286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w286||0), 0.002); end
  def test_outputs_energy_flows_x286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x286||0), 0.002); end
  def test_outputs_energy_flows_y286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y286||0), 0.002); end
  def test_outputs_energy_flows_z286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z286||0), 0.002); end
  def test_outputs_energy_flows_aa286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa286||0), 0.002); end
  def test_outputs_energy_flows_ab286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab286||0), 0.002); end
  def test_outputs_energy_flows_ac286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac286||0), 0.002); end
  def test_outputs_energy_flows_ad286; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad286||0), 0.002); end
  def test_outputs_energy_flows_c288; assert_equal("FF.01", worksheet.outputs_energy_flows_c288); end
  def test_outputs_energy_flows_d288; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d288); end
  def test_outputs_energy_flows_e288; assert_equal("n/a", worksheet.outputs_energy_flows_e288); end
  def test_outputs_energy_flows_f288; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f288); end
  def test_outputs_energy_flows_i288; assert_equal("FF.01", worksheet.outputs_energy_flows_i288); end
  def test_outputs_energy_flows_j288; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j288); end
  def test_outputs_energy_flows_v288; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v288||0), 0.002); end
  def test_outputs_energy_flows_w288; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w288||0), 0.002); end
  def test_outputs_energy_flows_x288; assert_in_delta(1.1522291058263352e-08, worksheet.outputs_energy_flows_x288, 0.002); end
  def test_outputs_energy_flows_y288; assert_in_delta(1.734166016123591e-08, worksheet.outputs_energy_flows_y288, 0.002); end
  def test_outputs_energy_flows_z288; assert_in_delta(2.5170947721584596e-08, worksheet.outputs_energy_flows_z288, 0.002); end
  def test_outputs_energy_flows_aa288; assert_in_delta(2.4103045325899932e-08, worksheet.outputs_energy_flows_aa288, 0.002); end
  def test_outputs_energy_flows_ab288; assert_in_delta(1.6398207403951226e-08, worksheet.outputs_energy_flows_ab288, 0.002); end
  def test_outputs_energy_flows_ac288; assert_in_delta(8.35197216210722e-09, worksheet.outputs_energy_flows_ac288, 0.002); end
  def test_outputs_energy_flows_ad288; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad288||0), 0.002); end
  def test_outputs_energy_flows_c290; assert_equal("FF.01", worksheet.outputs_energy_flows_c290); end
  def test_outputs_energy_flows_d290; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d290); end
  def test_outputs_energy_flows_e290; assert_equal("G.01", worksheet.outputs_energy_flows_e290); end
  def test_outputs_energy_flows_f290; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_f290); end
  def test_outputs_energy_flows_g290; assert_equal("GGR.tech", worksheet.outputs_energy_flows_g290); end
  def test_outputs_energy_flows_h290; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_h290); end
  def test_outputs_energy_flows_i290; assert_equal("FF.01", worksheet.outputs_energy_flows_i290); end
  def test_outputs_energy_flows_j290; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j290); end
  def test_outputs_energy_flows_v290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v290||0), 0.002); end
  def test_outputs_energy_flows_w290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w290||0), 0.002); end
  def test_outputs_energy_flows_x290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x290||0), 0.002); end
  def test_outputs_energy_flows_y290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y290||0), 0.002); end
  def test_outputs_energy_flows_z290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z290||0), 0.002); end
  def test_outputs_energy_flows_aa290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa290||0), 0.002); end
  def test_outputs_energy_flows_ab290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab290||0), 0.002); end
  def test_outputs_energy_flows_ac290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac290||0), 0.002); end
  def test_outputs_energy_flows_ad290; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad290||0), 0.002); end
  def test_outputs_energy_flows_c292; assert_equal("FF.01", worksheet.outputs_energy_flows_c292); end
  def test_outputs_energy_flows_d292; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d292); end
  def test_outputs_energy_flows_e292; assert_equal("n/a", worksheet.outputs_energy_flows_e292); end
  def test_outputs_energy_flows_f292; assert_equal("Agriculture including bioenergy production", worksheet.outputs_energy_flows_f292); end
  def test_outputs_energy_flows_g292; assert_equal("n/a", worksheet.outputs_energy_flows_g292); end
  def test_outputs_energy_flows_h292; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_energy_flows_h292); end
  def test_outputs_energy_flows_i292; assert_equal("FF.01", worksheet.outputs_energy_flows_i292); end
  def test_outputs_energy_flows_j292; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j292); end
  def test_outputs_energy_flows_v292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v292||0), 0.002); end
  def test_outputs_energy_flows_w292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w292||0), 0.002); end
  def test_outputs_energy_flows_x292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x292||0), 0.002); end
  def test_outputs_energy_flows_y292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y292||0), 0.002); end
  def test_outputs_energy_flows_z292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z292||0), 0.002); end
  def test_outputs_energy_flows_aa292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa292||0), 0.002); end
  def test_outputs_energy_flows_ab292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab292||0), 0.002); end
  def test_outputs_energy_flows_ac292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac292||0), 0.002); end
  def test_outputs_energy_flows_ad292; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad292||0), 0.002); end
  def test_outputs_energy_flows_c294; assert_equal("FF.02", worksheet.outputs_energy_flows_c294); end
  def test_outputs_energy_flows_d294; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d294); end
  def test_outputs_energy_flows_e294; assert_equal("n/a", worksheet.outputs_energy_flows_e294); end
  def test_outputs_energy_flows_f294; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f294); end
  def test_outputs_energy_flows_i294; assert_equal("FF.02", worksheet.outputs_energy_flows_i294); end
  def test_outputs_energy_flows_j294; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j294); end
  def test_outputs_energy_flows_k294; assert_equal("Global buildings", worksheet.outputs_energy_flows_k294); end
  def test_outputs_energy_flows_v294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v294||0), 0.002); end
  def test_outputs_energy_flows_w294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w294||0), 0.002); end
  def test_outputs_energy_flows_x294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x294||0), 0.002); end
  def test_outputs_energy_flows_y294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y294||0), 0.002); end
  def test_outputs_energy_flows_z294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z294||0), 0.002); end
  def test_outputs_energy_flows_aa294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa294||0), 0.002); end
  def test_outputs_energy_flows_ab294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab294||0), 0.002); end
  def test_outputs_energy_flows_ac294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac294||0), 0.002); end
  def test_outputs_energy_flows_ad294; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad294||0), 0.002); end
  def test_outputs_energy_flows_c296; assert_equal("FF.02", worksheet.outputs_energy_flows_c296); end
  def test_outputs_energy_flows_d296; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d296); end
  def test_outputs_energy_flows_e296; assert_equal("n/a", worksheet.outputs_energy_flows_e296); end
  def test_outputs_energy_flows_f296; assert_equal("Domestic lighting", worksheet.outputs_energy_flows_f296); end
  def test_outputs_energy_flows_i296; assert_equal("FF.02", worksheet.outputs_energy_flows_i296); end
  def test_outputs_energy_flows_j296; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j296); end
  def test_outputs_energy_flows_k296; assert_equal("Urban lighting", worksheet.outputs_energy_flows_k296); end
  def test_outputs_energy_flows_l296; assert_equal("Rural lighting", worksheet.outputs_energy_flows_l296); end
  def test_outputs_energy_flows_v296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v296||0), 0.002); end
  def test_outputs_energy_flows_w296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w296||0), 0.002); end
  def test_outputs_energy_flows_x296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x296||0), 0.002); end
  def test_outputs_energy_flows_y296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y296||0), 0.002); end
  def test_outputs_energy_flows_z296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z296||0), 0.002); end
  def test_outputs_energy_flows_aa296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa296||0), 0.002); end
  def test_outputs_energy_flows_ab296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab296||0), 0.002); end
  def test_outputs_energy_flows_ac296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac296||0), 0.002); end
  def test_outputs_energy_flows_ad296; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad296||0), 0.002); end
  def test_outputs_energy_flows_c298; assert_equal("FF.02", worksheet.outputs_energy_flows_c298); end
  def test_outputs_energy_flows_d298; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d298); end
  def test_outputs_energy_flows_e298; assert_equal("n/a", worksheet.outputs_energy_flows_e298); end
  def test_outputs_energy_flows_f298; assert_equal("Domestic appliances", worksheet.outputs_energy_flows_f298); end
  def test_outputs_energy_flows_i298; assert_equal("FF.02", worksheet.outputs_energy_flows_i298); end
  def test_outputs_energy_flows_j298; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j298); end
  def test_outputs_energy_flows_k298; assert_equal("Urban appliances", worksheet.outputs_energy_flows_k298); end
  def test_outputs_energy_flows_l298; assert_equal("Rural appliances", worksheet.outputs_energy_flows_l298); end
  def test_outputs_energy_flows_v298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v298||0), 0.002); end
  def test_outputs_energy_flows_w298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w298||0), 0.002); end
  def test_outputs_energy_flows_x298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x298||0), 0.002); end
  def test_outputs_energy_flows_y298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y298||0), 0.002); end
  def test_outputs_energy_flows_z298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z298||0), 0.002); end
  def test_outputs_energy_flows_aa298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa298||0), 0.002); end
  def test_outputs_energy_flows_ab298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab298||0), 0.002); end
  def test_outputs_energy_flows_ac298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac298||0), 0.002); end
  def test_outputs_energy_flows_ad298; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad298||0), 0.002); end
  def test_outputs_energy_flows_c300; assert_equal("FF.02", worksheet.outputs_energy_flows_c300); end
  def test_outputs_energy_flows_d300; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d300); end
  def test_outputs_energy_flows_e300; assert_equal("n/a", worksheet.outputs_energy_flows_e300); end
  def test_outputs_energy_flows_f300; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f300); end
  def test_outputs_energy_flows_i300; assert_equal("FF.02", worksheet.outputs_energy_flows_i300); end
  def test_outputs_energy_flows_j300; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j300); end
  def test_outputs_energy_flows_k300; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k300); end
  def test_outputs_energy_flows_l300; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l300); end
  def test_outputs_energy_flows_v300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v300||0), 0.002); end
  def test_outputs_energy_flows_w300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w300||0), 0.002); end
  def test_outputs_energy_flows_x300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x300||0), 0.002); end
  def test_outputs_energy_flows_y300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y300||0), 0.002); end
  def test_outputs_energy_flows_z300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z300||0), 0.002); end
  def test_outputs_energy_flows_aa300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa300||0), 0.002); end
  def test_outputs_energy_flows_ab300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab300||0), 0.002); end
  def test_outputs_energy_flows_ac300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac300||0), 0.002); end
  def test_outputs_energy_flows_ad300; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad300||0), 0.002); end
  def test_outputs_energy_flows_c302; assert_equal("FF.02", worksheet.outputs_energy_flows_c302); end
  def test_outputs_energy_flows_d302; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d302); end
  def test_outputs_energy_flows_e302; assert_equal("n/a", worksheet.outputs_energy_flows_e302); end
  def test_outputs_energy_flows_f302; assert_equal("Non domestic", worksheet.outputs_energy_flows_f302); end
  def test_outputs_energy_flows_i302; assert_equal("FF.02", worksheet.outputs_energy_flows_i302); end
  def test_outputs_energy_flows_j302; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j302); end
  def test_outputs_energy_flows_k302; assert_equal("Non-residential", worksheet.outputs_energy_flows_k302); end
  def test_outputs_energy_flows_v302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v302||0), 0.002); end
  def test_outputs_energy_flows_w302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w302||0), 0.002); end
  def test_outputs_energy_flows_x302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x302||0), 0.002); end
  def test_outputs_energy_flows_y302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y302||0), 0.002); end
  def test_outputs_energy_flows_z302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z302||0), 0.002); end
  def test_outputs_energy_flows_aa302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa302||0), 0.002); end
  def test_outputs_energy_flows_ab302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab302||0), 0.002); end
  def test_outputs_energy_flows_ac302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac302||0), 0.002); end
  def test_outputs_energy_flows_ad302; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad302||0), 0.002); end
  def test_outputs_energy_flows_c304; assert_equal("FF.02", worksheet.outputs_energy_flows_c304); end
  def test_outputs_energy_flows_d304; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d304); end
  def test_outputs_energy_flows_e304; assert_equal("n/a", worksheet.outputs_energy_flows_e304); end
  def test_outputs_energy_flows_f304; assert_equal("Steel", worksheet.outputs_energy_flows_f304); end
  def test_outputs_energy_flows_i304; assert_equal("FF.02", worksheet.outputs_energy_flows_i304); end
  def test_outputs_energy_flows_j304; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j304); end
  def test_outputs_energy_flows_v304; assert_in_delta(0.6053795859240001, worksheet.outputs_energy_flows_v304, 0.002); end
  def test_outputs_energy_flows_w304; assert_in_delta(0.6273542392556587, worksheet.outputs_energy_flows_w304, 0.002); end
  def test_outputs_energy_flows_x304; assert_in_delta(0.6729823299555331, worksheet.outputs_energy_flows_x304, 0.002); end
  def test_outputs_energy_flows_y304; assert_in_delta(0.7224507187043592, worksheet.outputs_energy_flows_y304, 0.002); end
  def test_outputs_energy_flows_z304; assert_in_delta(0.7785127741270507, worksheet.outputs_energy_flows_z304, 0.002); end
  def test_outputs_energy_flows_aa304; assert_in_delta(0.8377477132813957, worksheet.outputs_energy_flows_aa304, 0.002); end
  def test_outputs_energy_flows_ab304; assert_in_delta(0.9006264927755551, worksheet.outputs_energy_flows_ab304, 0.002); end
  def test_outputs_energy_flows_ac304; assert_in_delta(0.9836010918030875, worksheet.outputs_energy_flows_ac304, 0.002); end
  def test_outputs_energy_flows_ad304; assert_in_epsilon(1.044404937032579, worksheet.outputs_energy_flows_ad304, 0.002); end
  def test_outputs_energy_flows_c306; assert_equal("FF.02", worksheet.outputs_energy_flows_c306); end
  def test_outputs_energy_flows_d306; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d306); end
  def test_outputs_energy_flows_e306; assert_equal("n/a", worksheet.outputs_energy_flows_e306); end
  def test_outputs_energy_flows_f306; assert_equal("Aluminium", worksheet.outputs_energy_flows_f306); end
  def test_outputs_energy_flows_i306; assert_equal("FF.02", worksheet.outputs_energy_flows_i306); end
  def test_outputs_energy_flows_j306; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j306); end
  def test_outputs_energy_flows_v306; assert_in_delta(0.5405428608660057, worksheet.outputs_energy_flows_v306, 0.002); end
  def test_outputs_energy_flows_w306; assert_in_delta(0.6143457948797171, worksheet.outputs_energy_flows_w306, 0.002); end
  def test_outputs_energy_flows_x306; assert_in_delta(0.7392561225264793, worksheet.outputs_energy_flows_x306, 0.002); end
  def test_outputs_energy_flows_y306; assert_in_delta(0.8794358946737981, worksheet.outputs_energy_flows_y306, 0.002); end
  def test_outputs_energy_flows_z306; assert_in_epsilon(1.0398917811036377, worksheet.outputs_energy_flows_z306, 0.002); end
  def test_outputs_energy_flows_aa306; assert_in_epsilon(1.2201522652077028, worksheet.outputs_energy_flows_aa306, 0.002); end
  def test_outputs_energy_flows_ab306; assert_in_epsilon(1.4150668176656027, worksheet.outputs_energy_flows_ab306, 0.002); end
  def test_outputs_energy_flows_ac306; assert_in_epsilon(1.6416657147615135, worksheet.outputs_energy_flows_ac306, 0.002); end
  def test_outputs_energy_flows_ad306; assert_in_epsilon(1.885374911371554, worksheet.outputs_energy_flows_ad306, 0.002); end
  def test_outputs_energy_flows_c308; assert_equal("FF.02", worksheet.outputs_energy_flows_c308); end
  def test_outputs_energy_flows_d308; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d308); end
  def test_outputs_energy_flows_e308; assert_equal("n/a", worksheet.outputs_energy_flows_e308); end
  def test_outputs_energy_flows_f308; assert_equal("Cement", worksheet.outputs_energy_flows_f308); end
  def test_outputs_energy_flows_i308; assert_equal("FF.02", worksheet.outputs_energy_flows_i308); end
  def test_outputs_energy_flows_j308; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j308); end
  def test_outputs_energy_flows_v308; assert_in_epsilon(1.1385974140784139, worksheet.outputs_energy_flows_v308, 0.002); end
  def test_outputs_energy_flows_w308; assert_in_epsilon(1.223170102604296, worksheet.outputs_energy_flows_w308, 0.002); end
  def test_outputs_energy_flows_x308; assert_in_epsilon(1.310017800733032, worksheet.outputs_energy_flows_x308, 0.002); end
  def test_outputs_energy_flows_y308; assert_in_epsilon(1.3947101232699712, worksheet.outputs_energy_flows_y308, 0.002); end
  def test_outputs_energy_flows_z308; assert_in_epsilon(1.4807797399245577, worksheet.outputs_energy_flows_z308, 0.002); end
  def test_outputs_energy_flows_aa308; assert_in_epsilon(1.5671360407855743, worksheet.outputs_energy_flows_aa308, 0.002); end
  def test_outputs_energy_flows_ab308; assert_in_epsilon(1.651959995143544, worksheet.outputs_energy_flows_ab308, 0.002); end
  def test_outputs_energy_flows_ac308; assert_in_epsilon(1.738960053900707, worksheet.outputs_energy_flows_ac308, 0.002); end
  def test_outputs_energy_flows_ad308; assert_in_epsilon(1.824024186147758, worksheet.outputs_energy_flows_ad308, 0.002); end
  def test_outputs_energy_flows_c310; assert_equal("FF.02", worksheet.outputs_energy_flows_c310); end
  def test_outputs_energy_flows_d310; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d310); end
  def test_outputs_energy_flows_e310; assert_equal("n/a", worksheet.outputs_energy_flows_e310); end
  def test_outputs_energy_flows_f310; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f310); end
  def test_outputs_energy_flows_i310; assert_equal("FF.02", worksheet.outputs_energy_flows_i310); end
  def test_outputs_energy_flows_j310; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j310); end
  def test_outputs_energy_flows_v310; assert_in_delta(0.40529936521738275, worksheet.outputs_energy_flows_v310, 0.002); end
  def test_outputs_energy_flows_w310; assert_in_delta(0.4184158777467711, worksheet.outputs_energy_flows_w310, 0.002); end
  def test_outputs_energy_flows_x310; assert_in_delta(0.4305812928767621, worksheet.outputs_energy_flows_x310, 0.002); end
  def test_outputs_energy_flows_y310; assert_in_delta(0.4402818672585882, worksheet.outputs_energy_flows_y310, 0.002); end
  def test_outputs_energy_flows_z310; assert_in_delta(0.44762411621476944, worksheet.outputs_energy_flows_z310, 0.002); end
  def test_outputs_energy_flows_aa310; assert_in_delta(0.4528167191989318, worksheet.outputs_energy_flows_aa310, 0.002); end
  def test_outputs_energy_flows_ab310; assert_in_delta(0.4559380204389863, worksheet.outputs_energy_flows_ab310, 0.002); end
  def test_outputs_energy_flows_ac310; assert_in_delta(0.4569724912154991, worksheet.outputs_energy_flows_ac310, 0.002); end
  def test_outputs_energy_flows_ad310; assert_in_delta(0.4559398024886942, worksheet.outputs_energy_flows_ad310, 0.002); end
  def test_outputs_energy_flows_c312; assert_equal("FF.02", worksheet.outputs_energy_flows_c312); end
  def test_outputs_energy_flows_d312; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d312); end
  def test_outputs_energy_flows_e312; assert_equal("n/a", worksheet.outputs_energy_flows_e312); end
  def test_outputs_energy_flows_f312; assert_equal("Chemicals", worksheet.outputs_energy_flows_f312); end
  def test_outputs_energy_flows_i312; assert_equal("FF.02", worksheet.outputs_energy_flows_i312); end
  def test_outputs_energy_flows_j312; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j312); end
  def test_outputs_energy_flows_v312; assert_in_epsilon(19.21087929417574, worksheet.outputs_energy_flows_v312, 0.002); end
  def test_outputs_energy_flows_w312; assert_in_epsilon(18.898011083683905, worksheet.outputs_energy_flows_w312, 0.002); end
  def test_outputs_energy_flows_x312; assert_in_epsilon(20.461207053084625, worksheet.outputs_energy_flows_x312, 0.002); end
  def test_outputs_energy_flows_y312; assert_in_epsilon(21.927778761057233, worksheet.outputs_energy_flows_y312, 0.002); end
  def test_outputs_energy_flows_z312; assert_in_epsilon(23.55155500365839, worksheet.outputs_energy_flows_z312, 0.002); end
  def test_outputs_energy_flows_aa312; assert_in_epsilon(25.230354385601327, worksheet.outputs_energy_flows_aa312, 0.002); end
  def test_outputs_energy_flows_ab312; assert_in_epsilon(26.916534033725824, worksheet.outputs_energy_flows_ab312, 0.002); end
  def test_outputs_energy_flows_ac312; assert_in_epsilon(28.964473922638113, worksheet.outputs_energy_flows_ac312, 0.002); end
  def test_outputs_energy_flows_ad312; assert_in_epsilon(30.66436778633991, worksheet.outputs_energy_flows_ad312, 0.002); end
  def test_outputs_energy_flows_c314; assert_equal("FF.02", worksheet.outputs_energy_flows_c314); end
  def test_outputs_energy_flows_d314; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d314); end
  def test_outputs_energy_flows_e314; assert_equal("n/a", worksheet.outputs_energy_flows_e314); end
  def test_outputs_energy_flows_f314; assert_equal("Other manufacturing", worksheet.outputs_energy_flows_f314); end
  def test_outputs_energy_flows_i314; assert_equal("FF.02", worksheet.outputs_energy_flows_i314); end
  def test_outputs_energy_flows_j314; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j314); end
  def test_outputs_energy_flows_l314; assert_equal("Global Other industries technology", worksheet.outputs_energy_flows_l314); end
  def test_outputs_energy_flows_v314; assert_in_epsilon(8.548078329803383, worksheet.outputs_energy_flows_v314, 0.002); end
  def test_outputs_energy_flows_w314; assert_in_epsilon(9.400321360673662, worksheet.outputs_energy_flows_w314, 0.002); end
  def test_outputs_energy_flows_x314; assert_in_epsilon(10.412646831782085, worksheet.outputs_energy_flows_x314, 0.002); end
  def test_outputs_energy_flows_y314; assert_in_epsilon(11.401480787518071, worksheet.outputs_energy_flows_y314, 0.002); end
  def test_outputs_energy_flows_z314; assert_in_epsilon(12.35721165670455, worksheet.outputs_energy_flows_z314, 0.002); end
  def test_outputs_energy_flows_aa314; assert_in_epsilon(13.274004811458479, worksheet.outputs_energy_flows_aa314, 0.002); end
  def test_outputs_energy_flows_ab314; assert_in_epsilon(14.143448595719239, worksheet.outputs_energy_flows_ab314, 0.002); end
  def test_outputs_energy_flows_ac314; assert_in_epsilon(14.954622969690535, worksheet.outputs_energy_flows_ac314, 0.002); end
  def test_outputs_energy_flows_ad314; assert_in_epsilon(15.6977332696842, worksheet.outputs_energy_flows_ad314, 0.002); end
  def test_outputs_energy_flows_c316; assert_equal("FF.02", worksheet.outputs_energy_flows_c316); end
  def test_outputs_energy_flows_d316; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d316); end
  def test_outputs_energy_flows_e316; assert_equal("n/a", worksheet.outputs_energy_flows_e316); end
  def test_outputs_energy_flows_f316; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f316); end
  def test_outputs_energy_flows_i316; assert_equal("FF.02", worksheet.outputs_energy_flows_i316); end
  def test_outputs_energy_flows_j316; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j316); end
  def test_outputs_energy_flows_l316; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l316); end
  def test_outputs_energy_flows_m316; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m316); end
  def test_outputs_energy_flows_v316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v316||0), 0.002); end
  def test_outputs_energy_flows_w316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w316||0), 0.002); end
  def test_outputs_energy_flows_x316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x316||0), 0.002); end
  def test_outputs_energy_flows_y316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y316||0), 0.002); end
  def test_outputs_energy_flows_z316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z316||0), 0.002); end
  def test_outputs_energy_flows_aa316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa316||0), 0.002); end
  def test_outputs_energy_flows_ab316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab316||0), 0.002); end
  def test_outputs_energy_flows_ac316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac316||0), 0.002); end
  def test_outputs_energy_flows_ad316; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad316||0), 0.002); end
  def test_outputs_energy_flows_c318; assert_equal("FF.02", worksheet.outputs_energy_flows_c318); end
  def test_outputs_energy_flows_d318; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d318); end
  def test_outputs_energy_flows_e318; assert_equal("n/a", worksheet.outputs_energy_flows_e318); end
  def test_outputs_energy_flows_f318; assert_equal("International passenger", worksheet.outputs_energy_flows_f318); end
  def test_outputs_energy_flows_i318; assert_equal("FF.02", worksheet.outputs_energy_flows_i318); end
  def test_outputs_energy_flows_j318; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j318); end
  def test_outputs_energy_flows_l318; assert_equal("International", worksheet.outputs_energy_flows_l318); end
  def test_outputs_energy_flows_v318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v318||0), 0.002); end
  def test_outputs_energy_flows_w318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w318||0), 0.002); end
  def test_outputs_energy_flows_x318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x318||0), 0.002); end
  def test_outputs_energy_flows_y318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y318||0), 0.002); end
  def test_outputs_energy_flows_z318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z318||0), 0.002); end
  def test_outputs_energy_flows_aa318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa318||0), 0.002); end
  def test_outputs_energy_flows_ab318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab318||0), 0.002); end
  def test_outputs_energy_flows_ac318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac318||0), 0.002); end
  def test_outputs_energy_flows_ad318; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad318||0), 0.002); end
  def test_outputs_energy_flows_c320; assert_equal("FF.02", worksheet.outputs_energy_flows_c320); end
  def test_outputs_energy_flows_d320; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d320); end
  def test_outputs_energy_flows_e320; assert_equal("n/a", worksheet.outputs_energy_flows_e320); end
  def test_outputs_energy_flows_f320; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f320); end
  def test_outputs_energy_flows_i320; assert_equal("FF.02", worksheet.outputs_energy_flows_i320); end
  def test_outputs_energy_flows_j320; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j320); end
  def test_outputs_energy_flows_l320; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l320); end
  def test_outputs_energy_flows_v320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v320||0), 0.002); end
  def test_outputs_energy_flows_w320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w320||0), 0.002); end
  def test_outputs_energy_flows_x320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x320||0), 0.002); end
  def test_outputs_energy_flows_y320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y320||0), 0.002); end
  def test_outputs_energy_flows_z320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z320||0), 0.002); end
  def test_outputs_energy_flows_aa320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa320||0), 0.002); end
  def test_outputs_energy_flows_ab320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab320||0), 0.002); end
  def test_outputs_energy_flows_ac320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac320||0), 0.002); end
  def test_outputs_energy_flows_ad320; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad320||0), 0.002); end
  def test_outputs_energy_flows_c322; assert_equal("FF.02", worksheet.outputs_energy_flows_c322); end
  def test_outputs_energy_flows_d322; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d322); end
  def test_outputs_energy_flows_e322; assert_equal("n/a", worksheet.outputs_energy_flows_e322); end
  def test_outputs_energy_flows_f322; assert_equal("International freight", worksheet.outputs_energy_flows_f322); end
  def test_outputs_energy_flows_i322; assert_equal("FF.02", worksheet.outputs_energy_flows_i322); end
  def test_outputs_energy_flows_j322; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j322); end
  def test_outputs_energy_flows_l322; assert_equal("International freight", worksheet.outputs_energy_flows_l322); end
  def test_outputs_energy_flows_v322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v322||0), 0.002); end
  def test_outputs_energy_flows_w322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w322||0), 0.002); end
  def test_outputs_energy_flows_x322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x322||0), 0.002); end
  def test_outputs_energy_flows_y322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y322||0), 0.002); end
  def test_outputs_energy_flows_z322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z322||0), 0.002); end
  def test_outputs_energy_flows_aa322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa322||0), 0.002); end
  def test_outputs_energy_flows_ab322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab322||0), 0.002); end
  def test_outputs_energy_flows_ac322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac322||0), 0.002); end
  def test_outputs_energy_flows_ad322; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad322||0), 0.002); end
  def test_outputs_energy_flows_c324; assert_equal("FF.02", worksheet.outputs_energy_flows_c324); end
  def test_outputs_energy_flows_d324; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d324); end
  def test_outputs_energy_flows_e324; assert_equal("n/a", worksheet.outputs_energy_flows_e324); end
  def test_outputs_energy_flows_f324; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f324); end
  def test_outputs_energy_flows_i324; assert_equal("FF.02", worksheet.outputs_energy_flows_i324); end
  def test_outputs_energy_flows_j324; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j324); end
  def test_outputs_energy_flows_v324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v324||0), 0.002); end
  def test_outputs_energy_flows_w324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w324||0), 0.002); end
  def test_outputs_energy_flows_x324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x324||0), 0.002); end
  def test_outputs_energy_flows_y324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y324||0), 0.002); end
  def test_outputs_energy_flows_z324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z324||0), 0.002); end
  def test_outputs_energy_flows_aa324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa324||0), 0.002); end
  def test_outputs_energy_flows_ab324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab324||0), 0.002); end
  def test_outputs_energy_flows_ac324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac324||0), 0.002); end
  def test_outputs_energy_flows_ad324; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad324||0), 0.002); end
  def test_outputs_energy_flows_c326; assert_equal("FF.02", worksheet.outputs_energy_flows_c326); end
  def test_outputs_energy_flows_d326; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d326); end
  def test_outputs_energy_flows_e326; assert_equal("G.01", worksheet.outputs_energy_flows_e326); end
  def test_outputs_energy_flows_f326; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_f326); end
  def test_outputs_energy_flows_g326; assert_equal("GGR.tech", worksheet.outputs_energy_flows_g326); end
  def test_outputs_energy_flows_h326; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_h326); end
  def test_outputs_energy_flows_i326; assert_equal("FF.02", worksheet.outputs_energy_flows_i326); end
  def test_outputs_energy_flows_j326; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j326); end
  def test_outputs_energy_flows_v326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v326||0), 0.002); end
  def test_outputs_energy_flows_w326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w326||0), 0.002); end
  def test_outputs_energy_flows_x326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x326||0), 0.002); end
  def test_outputs_energy_flows_y326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y326||0), 0.002); end
  def test_outputs_energy_flows_z326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z326||0), 0.002); end
  def test_outputs_energy_flows_aa326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa326||0), 0.002); end
  def test_outputs_energy_flows_ab326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab326||0), 0.002); end
  def test_outputs_energy_flows_ac326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac326||0), 0.002); end
  def test_outputs_energy_flows_ad326; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad326||0), 0.002); end
  def test_outputs_energy_flows_c328; assert_equal("FF.02", worksheet.outputs_energy_flows_c328); end
  def test_outputs_energy_flows_d328; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d328); end
  def test_outputs_energy_flows_e328; assert_equal("n/a", worksheet.outputs_energy_flows_e328); end
  def test_outputs_energy_flows_f328; assert_equal("Agriculture including bioenergy production", worksheet.outputs_energy_flows_f328); end
  def test_outputs_energy_flows_g328; assert_equal("n/a", worksheet.outputs_energy_flows_g328); end
  def test_outputs_energy_flows_h328; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_energy_flows_h328); end
  def test_outputs_energy_flows_i328; assert_equal("FF.02", worksheet.outputs_energy_flows_i328); end
  def test_outputs_energy_flows_j328; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j328); end
  def test_outputs_energy_flows_v328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v328||0), 0.002); end
  def test_outputs_energy_flows_w328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w328||0), 0.002); end
  def test_outputs_energy_flows_x328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x328||0), 0.002); end
  def test_outputs_energy_flows_y328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y328||0), 0.002); end
  def test_outputs_energy_flows_z328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z328||0), 0.002); end
  def test_outputs_energy_flows_aa328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa328||0), 0.002); end
  def test_outputs_energy_flows_ab328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab328||0), 0.002); end
  def test_outputs_energy_flows_ac328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac328||0), 0.002); end
  def test_outputs_energy_flows_ad328; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad328||0), 0.002); end
  def test_outputs_energy_flows_c330; assert_equal("FF.03", worksheet.outputs_energy_flows_c330); end
  def test_outputs_energy_flows_d330; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d330); end
  def test_outputs_energy_flows_e330; assert_equal("n/a", worksheet.outputs_energy_flows_e330); end
  def test_outputs_energy_flows_f330; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f330); end
  def test_outputs_energy_flows_i330; assert_equal("FF.03", worksheet.outputs_energy_flows_i330); end
  def test_outputs_energy_flows_j330; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j330); end
  def test_outputs_energy_flows_k330; assert_equal("Global buildings", worksheet.outputs_energy_flows_k330); end
  def test_outputs_energy_flows_v330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v330||0), 0.002); end
  def test_outputs_energy_flows_w330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w330||0), 0.002); end
  def test_outputs_energy_flows_x330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x330||0), 0.002); end
  def test_outputs_energy_flows_y330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y330||0), 0.002); end
  def test_outputs_energy_flows_z330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z330||0), 0.002); end
  def test_outputs_energy_flows_aa330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa330||0), 0.002); end
  def test_outputs_energy_flows_ab330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab330||0), 0.002); end
  def test_outputs_energy_flows_ac330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac330||0), 0.002); end
  def test_outputs_energy_flows_ad330; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad330||0), 0.002); end
  def test_outputs_energy_flows_c332; assert_equal("FF.03", worksheet.outputs_energy_flows_c332); end
  def test_outputs_energy_flows_d332; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d332); end
  def test_outputs_energy_flows_e332; assert_equal("n/a", worksheet.outputs_energy_flows_e332); end
  def test_outputs_energy_flows_f332; assert_equal("Domestic lighting", worksheet.outputs_energy_flows_f332); end
  def test_outputs_energy_flows_i332; assert_equal("FF.03", worksheet.outputs_energy_flows_i332); end
  def test_outputs_energy_flows_j332; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j332); end
  def test_outputs_energy_flows_k332; assert_equal("Urban lighting", worksheet.outputs_energy_flows_k332); end
  def test_outputs_energy_flows_l332; assert_equal("Rural lighting", worksheet.outputs_energy_flows_l332); end
  def test_outputs_energy_flows_v332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v332||0), 0.002); end
  def test_outputs_energy_flows_w332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w332||0), 0.002); end
  def test_outputs_energy_flows_x332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x332||0), 0.002); end
  def test_outputs_energy_flows_y332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y332||0), 0.002); end
  def test_outputs_energy_flows_z332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z332||0), 0.002); end
  def test_outputs_energy_flows_aa332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa332||0), 0.002); end
  def test_outputs_energy_flows_ab332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab332||0), 0.002); end
  def test_outputs_energy_flows_ac332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac332||0), 0.002); end
  def test_outputs_energy_flows_ad332; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad332||0), 0.002); end
  def test_outputs_energy_flows_c334; assert_equal("FF.03", worksheet.outputs_energy_flows_c334); end
  def test_outputs_energy_flows_d334; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d334); end
  def test_outputs_energy_flows_e334; assert_equal("n/a", worksheet.outputs_energy_flows_e334); end
  def test_outputs_energy_flows_f334; assert_equal("Domestic appliances", worksheet.outputs_energy_flows_f334); end
  def test_outputs_energy_flows_i334; assert_equal("FF.03", worksheet.outputs_energy_flows_i334); end
  def test_outputs_energy_flows_j334; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j334); end
  def test_outputs_energy_flows_k334; assert_equal("Urban appliances", worksheet.outputs_energy_flows_k334); end
  def test_outputs_energy_flows_l334; assert_equal("Rural appliances", worksheet.outputs_energy_flows_l334); end
  def test_outputs_energy_flows_v334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v334||0), 0.002); end
  def test_outputs_energy_flows_w334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w334||0), 0.002); end
  def test_outputs_energy_flows_x334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x334||0), 0.002); end
  def test_outputs_energy_flows_y334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y334||0), 0.002); end
  def test_outputs_energy_flows_z334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z334||0), 0.002); end
  def test_outputs_energy_flows_aa334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa334||0), 0.002); end
  def test_outputs_energy_flows_ab334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab334||0), 0.002); end
  def test_outputs_energy_flows_ac334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac334||0), 0.002); end
  def test_outputs_energy_flows_ad334; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad334||0), 0.002); end
  def test_outputs_energy_flows_c336; assert_equal("FF.03", worksheet.outputs_energy_flows_c336); end
  def test_outputs_energy_flows_d336; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d336); end
  def test_outputs_energy_flows_e336; assert_equal("n/a", worksheet.outputs_energy_flows_e336); end
  def test_outputs_energy_flows_f336; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f336); end
  def test_outputs_energy_flows_i336; assert_equal("FF.03", worksheet.outputs_energy_flows_i336); end
  def test_outputs_energy_flows_j336; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j336); end
  def test_outputs_energy_flows_k336; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k336); end
  def test_outputs_energy_flows_l336; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l336); end
  def test_outputs_energy_flows_v336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v336||0), 0.002); end
  def test_outputs_energy_flows_w336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w336||0), 0.002); end
  def test_outputs_energy_flows_x336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x336||0), 0.002); end
  def test_outputs_energy_flows_y336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y336||0), 0.002); end
  def test_outputs_energy_flows_z336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z336||0), 0.002); end
  def test_outputs_energy_flows_aa336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa336||0), 0.002); end
  def test_outputs_energy_flows_ab336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab336||0), 0.002); end
  def test_outputs_energy_flows_ac336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac336||0), 0.002); end
  def test_outputs_energy_flows_ad336; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad336||0), 0.002); end
  def test_outputs_energy_flows_c338; assert_equal("FF.03", worksheet.outputs_energy_flows_c338); end
  def test_outputs_energy_flows_d338; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d338); end
  def test_outputs_energy_flows_e338; assert_equal("n/a", worksheet.outputs_energy_flows_e338); end
  def test_outputs_energy_flows_f338; assert_equal("Non domestic", worksheet.outputs_energy_flows_f338); end
  def test_outputs_energy_flows_i338; assert_equal("FF.03", worksheet.outputs_energy_flows_i338); end
  def test_outputs_energy_flows_j338; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j338); end
  def test_outputs_energy_flows_k338; assert_equal("Non-residential", worksheet.outputs_energy_flows_k338); end
  def test_outputs_energy_flows_v338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v338||0), 0.002); end
  def test_outputs_energy_flows_w338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w338||0), 0.002); end
  def test_outputs_energy_flows_x338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x338||0), 0.002); end
  def test_outputs_energy_flows_y338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y338||0), 0.002); end
  def test_outputs_energy_flows_z338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z338||0), 0.002); end
  def test_outputs_energy_flows_aa338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa338||0), 0.002); end
  def test_outputs_energy_flows_ab338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab338||0), 0.002); end
  def test_outputs_energy_flows_ac338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac338||0), 0.002); end
  def test_outputs_energy_flows_ad338; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad338||0), 0.002); end
  def test_outputs_energy_flows_c340; assert_equal("FF.03", worksheet.outputs_energy_flows_c340); end
  def test_outputs_energy_flows_d340; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d340); end
  def test_outputs_energy_flows_e340; assert_equal("n/a", worksheet.outputs_energy_flows_e340); end
  def test_outputs_energy_flows_f340; assert_equal("Steel", worksheet.outputs_energy_flows_f340); end
  def test_outputs_energy_flows_i340; assert_equal("FF.03", worksheet.outputs_energy_flows_i340); end
  def test_outputs_energy_flows_j340; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j340); end
  def test_outputs_energy_flows_v340; assert_in_epsilon(2.304566114688002, worksheet.outputs_energy_flows_v340, 0.002); end
  def test_outputs_energy_flows_w340; assert_in_epsilon(2.4215782316590158, worksheet.outputs_energy_flows_w340, 0.002); end
  def test_outputs_energy_flows_x340; assert_in_epsilon(2.6423427772744006, worksheet.outputs_energy_flows_x340, 0.002); end
  def test_outputs_energy_flows_y340; assert_in_epsilon(2.88440903050252, worksheet.outputs_energy_flows_y340, 0.002); end
  def test_outputs_energy_flows_z340; assert_in_epsilon(3.1597250083474844, worksheet.outputs_energy_flows_z340, 0.002); end
  def test_outputs_energy_flows_aa340; assert_in_epsilon(3.455505971742453, worksheet.outputs_energy_flows_aa340, 0.002); end
  def test_outputs_energy_flows_ab340; assert_in_epsilon(3.7743805133220536, worksheet.outputs_energy_flows_ab340, 0.002); end
  def test_outputs_energy_flows_ac340; assert_in_epsilon(4.187142378950333, worksheet.outputs_energy_flows_ac340, 0.002); end
  def test_outputs_energy_flows_ad340; assert_in_epsilon(4.515104566110777, worksheet.outputs_energy_flows_ad340, 0.002); end
  def test_outputs_energy_flows_c342; assert_equal("FF.03", worksheet.outputs_energy_flows_c342); end
  def test_outputs_energy_flows_d342; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d342); end
  def test_outputs_energy_flows_e342; assert_equal("n/a", worksheet.outputs_energy_flows_e342); end
  def test_outputs_energy_flows_f342; assert_equal("Aluminium", worksheet.outputs_energy_flows_f342); end
  def test_outputs_energy_flows_i342; assert_equal("FF.03", worksheet.outputs_energy_flows_i342); end
  def test_outputs_energy_flows_j342; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j342); end
  def test_outputs_energy_flows_v342; assert_in_delta(0.6799566079776811, worksheet.outputs_energy_flows_v342, 0.002); end
  def test_outputs_energy_flows_w342; assert_in_delta(0.7291758288457159, worksheet.outputs_energy_flows_w342, 0.002); end
  def test_outputs_energy_flows_x342; assert_in_delta(0.8229296205412224, worksheet.outputs_energy_flows_x342, 0.002); end
  def test_outputs_energy_flows_y342; assert_in_delta(0.9253406156930564, worksheet.outputs_energy_flows_y342, 0.002); end
  def test_outputs_energy_flows_z342; assert_in_epsilon(1.0409014026751473, worksheet.outputs_energy_flows_z342, 0.002); end
  def test_outputs_energy_flows_aa342; assert_in_epsilon(1.1681588636274987, worksheet.outputs_energy_flows_aa342, 0.002); end
  def test_outputs_energy_flows_ab342; assert_in_epsilon(1.3017235128153537, worksheet.outputs_energy_flows_ab342, 0.002); end
  def test_outputs_energy_flows_ac342; assert_in_epsilon(1.45674807204665, worksheet.outputs_energy_flows_ac342, 0.002); end
  def test_outputs_energy_flows_ad342; assert_in_epsilon(1.6193085190052283, worksheet.outputs_energy_flows_ad342, 0.002); end
  def test_outputs_energy_flows_c344; assert_equal("FF.03", worksheet.outputs_energy_flows_c344); end
  def test_outputs_energy_flows_d344; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d344); end
  def test_outputs_energy_flows_e344; assert_equal("n/a", worksheet.outputs_energy_flows_e344); end
  def test_outputs_energy_flows_f344; assert_equal("Cement", worksheet.outputs_energy_flows_f344); end
  def test_outputs_energy_flows_i344; assert_equal("FF.03", worksheet.outputs_energy_flows_i344); end
  def test_outputs_energy_flows_j344; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j344); end
  def test_outputs_energy_flows_v344; assert_in_delta(0.8284396320493046, worksheet.outputs_energy_flows_v344, 0.002); end
  def test_outputs_energy_flows_w344; assert_in_delta(0.8899744345154703, worksheet.outputs_energy_flows_w344, 0.002); end
  def test_outputs_energy_flows_x344; assert_in_delta(0.9531645262831866, worksheet.outputs_energy_flows_x344, 0.002); end
  def test_outputs_energy_flows_y344; assert_in_epsilon(1.0147863740516463, worksheet.outputs_energy_flows_y344, 0.002); end
  def test_outputs_energy_flows_z344; assert_in_epsilon(1.0774103363673044, worksheet.outputs_energy_flows_z344, 0.002); end
  def test_outputs_energy_flows_aa344; assert_in_epsilon(1.1402428891430754, worksheet.outputs_energy_flows_aa344, 0.002); end
  def test_outputs_energy_flows_ab344; assert_in_epsilon(1.201960511779837, worksheet.outputs_energy_flows_ab344, 0.002); end
  def test_outputs_energy_flows_ac344; assert_in_epsilon(1.265261460626088, worksheet.outputs_energy_flows_ac344, 0.002); end
  def test_outputs_energy_flows_ad344; assert_in_epsilon(1.3271538358835708, worksheet.outputs_energy_flows_ad344, 0.002); end
  def test_outputs_energy_flows_c346; assert_equal("FF.03", worksheet.outputs_energy_flows_c346); end
  def test_outputs_energy_flows_d346; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d346); end
  def test_outputs_energy_flows_e346; assert_equal("n/a", worksheet.outputs_energy_flows_e346); end
  def test_outputs_energy_flows_f346; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f346); end
  def test_outputs_energy_flows_i346; assert_equal("FF.03", worksheet.outputs_energy_flows_i346); end
  def test_outputs_energy_flows_j346; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j346); end
  def test_outputs_energy_flows_v346; assert_in_epsilon(1.0822193748413809, worksheet.outputs_energy_flows_v346, 0.002); end
  def test_outputs_energy_flows_w346; assert_in_epsilon(1.1263842134283533, worksheet.outputs_energy_flows_w346, 0.002); end
  def test_outputs_energy_flows_x346; assert_in_epsilon(1.1708954442146826, worksheet.outputs_energy_flows_x346, 0.002); end
  def test_outputs_energy_flows_y346; assert_in_epsilon(1.2093041838796004, worksheet.outputs_energy_flows_y346, 0.002); end
  def test_outputs_energy_flows_z346; assert_in_epsilon(1.2417040704087587, worksheet.outputs_energy_flows_z346, 0.002); end
  def test_outputs_energy_flows_aa346; assert_in_epsilon(1.2684864846192008, worksheet.outputs_energy_flows_aa346, 0.002); end
  def test_outputs_energy_flows_ab346; assert_in_epsilon(1.2896968609098671, worksheet.outputs_energy_flows_ab346, 0.002); end
  def test_outputs_energy_flows_ac346; assert_in_epsilon(1.305121014838671, worksheet.outputs_energy_flows_ac346, 0.002); end
  def test_outputs_energy_flows_ad346; assert_in_epsilon(1.3146444725020374, worksheet.outputs_energy_flows_ad346, 0.002); end
  def test_outputs_energy_flows_c348; assert_equal("FF.03", worksheet.outputs_energy_flows_c348); end
  def test_outputs_energy_flows_d348; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d348); end
  def test_outputs_energy_flows_e348; assert_equal("n/a", worksheet.outputs_energy_flows_e348); end
  def test_outputs_energy_flows_f348; assert_equal("Chemicals", worksheet.outputs_energy_flows_f348); end
  def test_outputs_energy_flows_i348; assert_equal("FF.03", worksheet.outputs_energy_flows_i348); end
  def test_outputs_energy_flows_j348; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j348); end
  def test_outputs_energy_flows_v348; assert_in_epsilon(11.488845061925616, worksheet.outputs_energy_flows_v348, 0.002); end
  def test_outputs_energy_flows_w348; assert_in_epsilon(11.616808817517285, worksheet.outputs_energy_flows_w348, 0.002); end
  def test_outputs_energy_flows_x348; assert_in_epsilon(12.512670978422449, worksheet.outputs_energy_flows_x348, 0.002); end
  def test_outputs_energy_flows_y348; assert_in_epsilon(13.409983195210518, worksheet.outputs_energy_flows_y348, 0.002); end
  def test_outputs_energy_flows_z348; assert_in_epsilon(14.326167258199018, worksheet.outputs_energy_flows_z348, 0.002); end
  def test_outputs_energy_flows_aa348; assert_in_epsilon(15.215646605006746, worksheet.outputs_energy_flows_aa348, 0.002); end
  def test_outputs_energy_flows_ab348; assert_in_epsilon(16.10362511085644, worksheet.outputs_energy_flows_ab348, 0.002); end
  def test_outputs_energy_flows_ac348; assert_in_epsilon(17.01167782108314, worksheet.outputs_energy_flows_ac348, 0.002); end
  def test_outputs_energy_flows_ad348; assert_in_epsilon(17.86315964633551, worksheet.outputs_energy_flows_ad348, 0.002); end
  def test_outputs_energy_flows_c350; assert_equal("FF.03", worksheet.outputs_energy_flows_c350); end
  def test_outputs_energy_flows_d350; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d350); end
  def test_outputs_energy_flows_e350; assert_equal("n/a", worksheet.outputs_energy_flows_e350); end
  def test_outputs_energy_flows_f350; assert_equal("Other manufacturing", worksheet.outputs_energy_flows_f350); end
  def test_outputs_energy_flows_i350; assert_equal("FF.03", worksheet.outputs_energy_flows_i350); end
  def test_outputs_energy_flows_j350; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j350); end
  def test_outputs_energy_flows_l350; assert_equal("Global Other industries technology", worksheet.outputs_energy_flows_l350); end
  def test_outputs_energy_flows_v350; assert_in_epsilon(10.927323455067915, worksheet.outputs_energy_flows_v350, 0.002); end
  def test_outputs_energy_flows_w350; assert_in_epsilon(12.084505051746616, worksheet.outputs_energy_flows_w350, 0.002); end
  def test_outputs_energy_flows_x350; assert_in_epsilon(13.479668638686068, worksheet.outputs_energy_flows_x350, 0.002); end
  def test_outputs_energy_flows_y350; assert_in_epsilon(14.862443911019772, worksheet.outputs_energy_flows_y350, 0.002); end
  def test_outputs_energy_flows_z350; assert_in_epsilon(16.2195804074953, worksheet.outputs_energy_flows_z350, 0.002); end
  def test_outputs_energy_flows_aa350; assert_in_epsilon(17.542472896765982, worksheet.outputs_energy_flows_aa350, 0.002); end
  def test_outputs_energy_flows_ab350; assert_in_epsilon(18.818877037707754, worksheet.outputs_energy_flows_ab350, 0.002); end
  def test_outputs_energy_flows_ac350; assert_in_epsilon(20.032885289579394, worksheet.outputs_energy_flows_ac350, 0.002); end
  def test_outputs_energy_flows_ad350; assert_in_epsilon(21.16971438963038, worksheet.outputs_energy_flows_ad350, 0.002); end
  def test_outputs_energy_flows_c352; assert_equal("FF.03", worksheet.outputs_energy_flows_c352); end
  def test_outputs_energy_flows_d352; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d352); end
  def test_outputs_energy_flows_e352; assert_equal("n/a", worksheet.outputs_energy_flows_e352); end
  def test_outputs_energy_flows_f352; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f352); end
  def test_outputs_energy_flows_i352; assert_equal("FF.03", worksheet.outputs_energy_flows_i352); end
  def test_outputs_energy_flows_j352; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j352); end
  def test_outputs_energy_flows_l352; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l352); end
  def test_outputs_energy_flows_m352; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m352); end
  def test_outputs_energy_flows_v352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v352||0), 0.002); end
  def test_outputs_energy_flows_w352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w352||0), 0.002); end
  def test_outputs_energy_flows_x352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x352||0), 0.002); end
  def test_outputs_energy_flows_y352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y352||0), 0.002); end
  def test_outputs_energy_flows_z352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z352||0), 0.002); end
  def test_outputs_energy_flows_aa352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa352||0), 0.002); end
  def test_outputs_energy_flows_ab352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab352||0), 0.002); end
  def test_outputs_energy_flows_ac352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac352||0), 0.002); end
  def test_outputs_energy_flows_ad352; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad352||0), 0.002); end
  def test_outputs_energy_flows_c354; assert_equal("FF.03", worksheet.outputs_energy_flows_c354); end
  def test_outputs_energy_flows_d354; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d354); end
  def test_outputs_energy_flows_e354; assert_equal("n/a", worksheet.outputs_energy_flows_e354); end
  def test_outputs_energy_flows_f354; assert_equal("International passenger", worksheet.outputs_energy_flows_f354); end
  def test_outputs_energy_flows_i354; assert_equal("FF.03", worksheet.outputs_energy_flows_i354); end
  def test_outputs_energy_flows_j354; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j354); end
  def test_outputs_energy_flows_l354; assert_equal("International", worksheet.outputs_energy_flows_l354); end
  def test_outputs_energy_flows_v354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v354||0), 0.002); end
  def test_outputs_energy_flows_w354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w354||0), 0.002); end
  def test_outputs_energy_flows_x354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x354||0), 0.002); end
  def test_outputs_energy_flows_y354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y354||0), 0.002); end
  def test_outputs_energy_flows_z354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z354||0), 0.002); end
  def test_outputs_energy_flows_aa354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa354||0), 0.002); end
  def test_outputs_energy_flows_ab354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab354||0), 0.002); end
  def test_outputs_energy_flows_ac354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac354||0), 0.002); end
  def test_outputs_energy_flows_ad354; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad354||0), 0.002); end
  def test_outputs_energy_flows_c356; assert_equal("FF.03", worksheet.outputs_energy_flows_c356); end
  def test_outputs_energy_flows_d356; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d356); end
  def test_outputs_energy_flows_e356; assert_equal("n/a", worksheet.outputs_energy_flows_e356); end
  def test_outputs_energy_flows_f356; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f356); end
  def test_outputs_energy_flows_i356; assert_equal("FF.03", worksheet.outputs_energy_flows_i356); end
  def test_outputs_energy_flows_j356; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j356); end
  def test_outputs_energy_flows_l356; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l356); end
  def test_outputs_energy_flows_v356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v356||0), 0.002); end
  def test_outputs_energy_flows_w356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w356||0), 0.002); end
  def test_outputs_energy_flows_x356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x356||0), 0.002); end
  def test_outputs_energy_flows_y356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y356||0), 0.002); end
  def test_outputs_energy_flows_z356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z356||0), 0.002); end
  def test_outputs_energy_flows_aa356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa356||0), 0.002); end
  def test_outputs_energy_flows_ab356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab356||0), 0.002); end
  def test_outputs_energy_flows_ac356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac356||0), 0.002); end
  def test_outputs_energy_flows_ad356; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad356||0), 0.002); end
  def test_outputs_energy_flows_c358; assert_equal("FF.03", worksheet.outputs_energy_flows_c358); end
  def test_outputs_energy_flows_d358; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d358); end
  def test_outputs_energy_flows_e358; assert_equal("n/a", worksheet.outputs_energy_flows_e358); end
  def test_outputs_energy_flows_f358; assert_equal("International freight", worksheet.outputs_energy_flows_f358); end
  def test_outputs_energy_flows_i358; assert_equal("FF.03", worksheet.outputs_energy_flows_i358); end
  def test_outputs_energy_flows_j358; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j358); end
  def test_outputs_energy_flows_l358; assert_equal("International freight", worksheet.outputs_energy_flows_l358); end
  def test_outputs_energy_flows_v358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v358||0), 0.002); end
  def test_outputs_energy_flows_w358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w358||0), 0.002); end
  def test_outputs_energy_flows_x358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x358||0), 0.002); end
  def test_outputs_energy_flows_y358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y358||0), 0.002); end
  def test_outputs_energy_flows_z358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z358||0), 0.002); end
  def test_outputs_energy_flows_aa358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa358||0), 0.002); end
  def test_outputs_energy_flows_ab358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab358||0), 0.002); end
  def test_outputs_energy_flows_ac358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac358||0), 0.002); end
  def test_outputs_energy_flows_ad358; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad358||0), 0.002); end
  def test_outputs_energy_flows_c360; assert_equal("FF.03", worksheet.outputs_energy_flows_c360); end
  def test_outputs_energy_flows_d360; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d360); end
  def test_outputs_energy_flows_e360; assert_equal("n/a", worksheet.outputs_energy_flows_e360); end
  def test_outputs_energy_flows_f360; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f360); end
  def test_outputs_energy_flows_i360; assert_equal("FF.03", worksheet.outputs_energy_flows_i360); end
  def test_outputs_energy_flows_j360; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j360); end
  def test_outputs_energy_flows_v360; assert_in_delta(8.663792701034158e-08, worksheet.outputs_energy_flows_v360, 0.002); end
  def test_outputs_energy_flows_w360; assert_in_delta(8.606804825586925e-08, worksheet.outputs_energy_flows_w360, 0.002); end
  def test_outputs_energy_flows_x360; assert_in_delta(7.388669141111375e-08, worksheet.outputs_energy_flows_x360, 0.002); end
  def test_outputs_energy_flows_y360; assert_in_delta(6.443093736828417e-08, worksheet.outputs_energy_flows_y360, 0.002); end
  def test_outputs_energy_flows_z360; assert_in_delta(4.46052608461569e-08, worksheet.outputs_energy_flows_z360, 0.002); end
  def test_outputs_energy_flows_aa360; assert_in_delta(2.979136402281232e-08, worksheet.outputs_energy_flows_aa360, 0.002); end
  def test_outputs_energy_flows_ab360; assert_in_delta(1.8840493613050346e-08, worksheet.outputs_energy_flows_ab360, 0.002); end
  def test_outputs_energy_flows_ac360; assert_in_delta(8.769570770212583e-09, worksheet.outputs_energy_flows_ac360, 0.002); end
  def test_outputs_energy_flows_ad360; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad360||0), 0.002); end
  def test_outputs_energy_flows_c362; assert_equal("FF.03", worksheet.outputs_energy_flows_c362); end
  def test_outputs_energy_flows_d362; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d362); end
  def test_outputs_energy_flows_e362; assert_equal("G.01", worksheet.outputs_energy_flows_e362); end
  def test_outputs_energy_flows_f362; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_f362); end
  def test_outputs_energy_flows_g362; assert_equal("GGR.tech", worksheet.outputs_energy_flows_g362); end
  def test_outputs_energy_flows_h362; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_h362); end
  def test_outputs_energy_flows_i362; assert_equal("FF.03", worksheet.outputs_energy_flows_i362); end
  def test_outputs_energy_flows_j362; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j362); end
  def test_outputs_energy_flows_v362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v362||0), 0.002); end
  def test_outputs_energy_flows_w362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w362||0), 0.002); end
  def test_outputs_energy_flows_x362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x362||0), 0.002); end
  def test_outputs_energy_flows_y362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y362||0), 0.002); end
  def test_outputs_energy_flows_z362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z362||0), 0.002); end
  def test_outputs_energy_flows_aa362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa362||0), 0.002); end
  def test_outputs_energy_flows_ab362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab362||0), 0.002); end
  def test_outputs_energy_flows_ac362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac362||0), 0.002); end
  def test_outputs_energy_flows_ad362; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad362||0), 0.002); end
  def test_outputs_energy_flows_c364; assert_equal("FF.03", worksheet.outputs_energy_flows_c364); end
  def test_outputs_energy_flows_d364; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d364); end
  def test_outputs_energy_flows_e364; assert_equal("n/a", worksheet.outputs_energy_flows_e364); end
  def test_outputs_energy_flows_f364; assert_equal("Agriculture including bioenergy production", worksheet.outputs_energy_flows_f364); end
  def test_outputs_energy_flows_g364; assert_equal("n/a", worksheet.outputs_energy_flows_g364); end
  def test_outputs_energy_flows_h364; assert_equal("Global Land / Food / Bioenergy / Sequestration", worksheet.outputs_energy_flows_h364); end
  def test_outputs_energy_flows_i364; assert_equal("FF.03", worksheet.outputs_energy_flows_i364); end
  def test_outputs_energy_flows_j364; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j364); end
  def test_outputs_energy_flows_v364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v364||0), 0.002); end
  def test_outputs_energy_flows_w364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w364||0), 0.002); end
  def test_outputs_energy_flows_x364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x364||0), 0.002); end
  def test_outputs_energy_flows_y364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y364||0), 0.002); end
  def test_outputs_energy_flows_z364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z364||0), 0.002); end
  def test_outputs_energy_flows_aa364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa364||0), 0.002); end
  def test_outputs_energy_flows_ab364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab364||0), 0.002); end
  def test_outputs_energy_flows_ac364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac364||0), 0.002); end
  def test_outputs_energy_flows_ad364; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad364||0), 0.002); end
  def test_outputs_energy_flows_c366; assert_equal("n/a", worksheet.outputs_energy_flows_c366); end
  def test_outputs_energy_flows_d366; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_d366); end
  def test_outputs_energy_flows_e366; assert_equal("L.01", worksheet.outputs_energy_flows_e366); end
  def test_outputs_energy_flows_f366; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f366); end
  def test_outputs_energy_flows_v366; assert_in_epsilon(-3.9999999760605722, worksheet.outputs_energy_flows_v366, 0.002); end
  def test_outputs_energy_flows_w366; assert_in_epsilon(-4.088955020087448, worksheet.outputs_energy_flows_w366, 0.002); end
  def test_outputs_energy_flows_x366; assert_in_epsilon(-4.246972439373038, worksheet.outputs_energy_flows_x366, 0.002); end
  def test_outputs_energy_flows_y366; assert_in_epsilon(-4.388818903381279, worksheet.outputs_energy_flows_y366, 0.002); end
  def test_outputs_energy_flows_z366; assert_in_epsilon(-4.516559527271771, worksheet.outputs_energy_flows_z366, 0.002); end
  def test_outputs_energy_flows_aa366; assert_in_epsilon(-4.718341292142512, worksheet.outputs_energy_flows_aa366, 0.002); end
  def test_outputs_energy_flows_ab366; assert_in_epsilon(-4.8222162247886144, worksheet.outputs_energy_flows_ab366, 0.002); end
  def test_outputs_energy_flows_ac366; assert_in_epsilon(-4.913068481974046, worksheet.outputs_energy_flows_ac366, 0.002); end
  def test_outputs_energy_flows_ad366; assert_in_epsilon(-4.990372596096302, worksheet.outputs_energy_flows_ad366, 0.002); end
  def test_outputs_energy_flows_c368; assert_equal("HY.01", worksheet.outputs_energy_flows_c368); end
  def test_outputs_energy_flows_d368; assert_equal("Global H2", worksheet.outputs_energy_flows_d368); end
  def test_outputs_energy_flows_e368; assert_equal("n/a", worksheet.outputs_energy_flows_e368); end
  def test_outputs_energy_flows_f368; assert_equal("Domestic passenger", worksheet.outputs_energy_flows_f368); end
  def test_outputs_energy_flows_i368; assert_equal("HY.01", worksheet.outputs_energy_flows_i368); end
  def test_outputs_energy_flows_j368; assert_equal("Global H2", worksheet.outputs_energy_flows_j368); end
  def test_outputs_energy_flows_l368; assert_equal("Urban passenger", worksheet.outputs_energy_flows_l368); end
  def test_outputs_energy_flows_m368; assert_equal("Rural passenger", worksheet.outputs_energy_flows_m368); end
  def test_outputs_energy_flows_v368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v368||0), 0.002); end
  def test_outputs_energy_flows_w368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w368||0), 0.002); end
  def test_outputs_energy_flows_x368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x368||0), 0.002); end
  def test_outputs_energy_flows_y368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y368||0), 0.002); end
  def test_outputs_energy_flows_z368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z368||0), 0.002); end
  def test_outputs_energy_flows_aa368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa368||0), 0.002); end
  def test_outputs_energy_flows_ab368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab368||0), 0.002); end
  def test_outputs_energy_flows_ac368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac368||0), 0.002); end
  def test_outputs_energy_flows_ad368; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad368||0), 0.002); end
  def test_outputs_energy_flows_c370; assert_equal("HY.01", worksheet.outputs_energy_flows_c370); end
  def test_outputs_energy_flows_d370; assert_equal("Global H2", worksheet.outputs_energy_flows_d370); end
  def test_outputs_energy_flows_e370; assert_equal("n/a", worksheet.outputs_energy_flows_e370); end
  def test_outputs_energy_flows_f370; assert_equal("International passenger", worksheet.outputs_energy_flows_f370); end
  def test_outputs_energy_flows_i370; assert_equal("HY.01", worksheet.outputs_energy_flows_i370); end
  def test_outputs_energy_flows_j370; assert_equal("Global H2", worksheet.outputs_energy_flows_j370); end
  def test_outputs_energy_flows_l370; assert_equal("International", worksheet.outputs_energy_flows_l370); end
  def test_outputs_energy_flows_v370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v370||0), 0.002); end
  def test_outputs_energy_flows_w370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w370||0), 0.002); end
  def test_outputs_energy_flows_x370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x370||0), 0.002); end
  def test_outputs_energy_flows_y370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y370||0), 0.002); end
  def test_outputs_energy_flows_z370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z370||0), 0.002); end
  def test_outputs_energy_flows_aa370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa370||0), 0.002); end
  def test_outputs_energy_flows_ab370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab370||0), 0.002); end
  def test_outputs_energy_flows_ac370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac370||0), 0.002); end
  def test_outputs_energy_flows_ad370; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad370||0), 0.002); end
  def test_outputs_energy_flows_c372; assert_equal("HY.01", worksheet.outputs_energy_flows_c372); end
  def test_outputs_energy_flows_d372; assert_equal("Global H2", worksheet.outputs_energy_flows_d372); end
  def test_outputs_energy_flows_e372; assert_equal("n/a", worksheet.outputs_energy_flows_e372); end
  def test_outputs_energy_flows_f372; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f372); end
  def test_outputs_energy_flows_i372; assert_equal("HY.01", worksheet.outputs_energy_flows_i372); end
  def test_outputs_energy_flows_j372; assert_equal("Global H2", worksheet.outputs_energy_flows_j372); end
  def test_outputs_energy_flows_l372; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l372); end
  def test_outputs_energy_flows_v372; assert_in_delta(6.839836342921704e-08, worksheet.outputs_energy_flows_v372, 0.002); end
  def test_outputs_energy_flows_w372; assert_in_delta(6.794845914937047e-08, worksheet.outputs_energy_flows_w372, 0.002); end
  def test_outputs_energy_flows_x372; assert_in_delta(6.523417096954911e-08, worksheet.outputs_energy_flows_x372, 0.002); end
  def test_outputs_energy_flows_y372; assert_in_delta(6.041901098867518e-08, worksheet.outputs_energy_flows_y372, 0.002); end
  def test_outputs_energy_flows_z372; assert_in_delta(5.337076533903203e-08, worksheet.outputs_energy_flows_z372, 0.002); end
  def test_outputs_energy_flows_aa372; assert_in_delta(4.3951553657621294e-08, worksheet.outputs_energy_flows_aa372, 0.002); end
  def test_outputs_energy_flows_ab372; assert_in_delta(3.201762551589326e-08, worksheet.outputs_energy_flows_ab372, 0.002); end
  def test_outputs_energy_flows_ac372; assert_in_delta(1.7419150251185364e-08, worksheet.outputs_energy_flows_ac372, 0.002); end
  def test_outputs_energy_flows_ad372; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad372||0), 0.002); end
  def test_outputs_energy_flows_c374; assert_equal("HY.01", worksheet.outputs_energy_flows_c374); end
  def test_outputs_energy_flows_d374; assert_equal("Global H2", worksheet.outputs_energy_flows_d374); end
  def test_outputs_energy_flows_e374; assert_equal("n/a", worksheet.outputs_energy_flows_e374); end
  def test_outputs_energy_flows_f374; assert_equal("International freight", worksheet.outputs_energy_flows_f374); end
  def test_outputs_energy_flows_i374; assert_equal("HY.01", worksheet.outputs_energy_flows_i374); end
  def test_outputs_energy_flows_j374; assert_equal("Global H2", worksheet.outputs_energy_flows_j374); end
  def test_outputs_energy_flows_l374; assert_equal("International freight", worksheet.outputs_energy_flows_l374); end
  def test_outputs_energy_flows_v374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v374||0), 0.002); end
  def test_outputs_energy_flows_w374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w374||0), 0.002); end
  def test_outputs_energy_flows_x374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x374||0), 0.002); end
  def test_outputs_energy_flows_y374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y374||0), 0.002); end
  def test_outputs_energy_flows_z374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z374||0), 0.002); end
  def test_outputs_energy_flows_aa374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa374||0), 0.002); end
  def test_outputs_energy_flows_ab374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab374||0), 0.002); end
  def test_outputs_energy_flows_ac374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac374||0), 0.002); end
  def test_outputs_energy_flows_ad374; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad374||0), 0.002); end
  def test_outputs_energy_flows_c376; assert_equal("H.01", worksheet.outputs_energy_flows_c376); end
  def test_outputs_energy_flows_d376; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d376); end
  def test_outputs_energy_flows_e376; assert_equal("n/a", worksheet.outputs_energy_flows_e376); end
  def test_outputs_energy_flows_f376; assert_equal("Domestic heating, cooling and hot water", worksheet.outputs_energy_flows_f376); end
  def test_outputs_energy_flows_i376; assert_equal("H.01", worksheet.outputs_energy_flows_i376); end
  def test_outputs_energy_flows_j376; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j376); end
  def test_outputs_energy_flows_k376; assert_equal("Global buildings", worksheet.outputs_energy_flows_k376); end
  def test_outputs_energy_flows_v376; assert_in_epsilon(4.077381210291773, worksheet.outputs_energy_flows_v376, 0.002); end
  def test_outputs_energy_flows_w376; assert_in_epsilon(4.736692064813091, worksheet.outputs_energy_flows_w376, 0.002); end
  def test_outputs_energy_flows_x376; assert_in_epsilon(5.55667580020587, worksheet.outputs_energy_flows_x376, 0.002); end
  def test_outputs_energy_flows_y376; assert_in_epsilon(6.310574252224414, worksheet.outputs_energy_flows_y376, 0.002); end
  def test_outputs_energy_flows_z376; assert_in_epsilon(7.194047922912921, worksheet.outputs_energy_flows_z376, 0.002); end
  def test_outputs_energy_flows_aa376; assert_in_epsilon(8.067028457756336, worksheet.outputs_energy_flows_aa376, 0.002); end
  def test_outputs_energy_flows_ab376; assert_in_epsilon(8.800737912192004, worksheet.outputs_energy_flows_ab376, 0.002); end
  def test_outputs_energy_flows_ac376; assert_in_epsilon(9.643771666628634, worksheet.outputs_energy_flows_ac376, 0.002); end
  def test_outputs_energy_flows_ad376; assert_in_epsilon(10.190954480292927, worksheet.outputs_energy_flows_ad376, 0.002); end
  def test_outputs_energy_flows_c378; assert_equal("H.01", worksheet.outputs_energy_flows_c378); end
  def test_outputs_energy_flows_d378; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d378); end
  def test_outputs_energy_flows_e378; assert_equal("n/a", worksheet.outputs_energy_flows_e378); end
  def test_outputs_energy_flows_f378; assert_equal("Domestic cooking", worksheet.outputs_energy_flows_f378); end
  def test_outputs_energy_flows_i378; assert_equal("H.01", worksheet.outputs_energy_flows_i378); end
  def test_outputs_energy_flows_j378; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j378); end
  def test_outputs_energy_flows_k378; assert_equal("Urban cooking", worksheet.outputs_energy_flows_k378); end
  def test_outputs_energy_flows_l378; assert_equal("Rural cooking", worksheet.outputs_energy_flows_l378); end
  def test_outputs_energy_flows_v378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v378||0), 0.002); end
  def test_outputs_energy_flows_w378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w378||0), 0.002); end
  def test_outputs_energy_flows_x378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x378||0), 0.002); end
  def test_outputs_energy_flows_y378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y378||0), 0.002); end
  def test_outputs_energy_flows_z378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z378||0), 0.002); end
  def test_outputs_energy_flows_aa378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa378||0), 0.002); end
  def test_outputs_energy_flows_ab378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab378||0), 0.002); end
  def test_outputs_energy_flows_ac378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac378||0), 0.002); end
  def test_outputs_energy_flows_ad378; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad378||0), 0.002); end
  def test_outputs_energy_flows_c380; assert_equal("H.01", worksheet.outputs_energy_flows_c380); end
  def test_outputs_energy_flows_d380; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d380); end
  def test_outputs_energy_flows_e380; assert_equal("n/a", worksheet.outputs_energy_flows_e380); end
  def test_outputs_energy_flows_f380; assert_equal("Non domestic", worksheet.outputs_energy_flows_f380); end
  def test_outputs_energy_flows_i380; assert_equal("H.01", worksheet.outputs_energy_flows_i380); end
  def test_outputs_energy_flows_j380; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j380); end
  def test_outputs_energy_flows_k380; assert_equal("Non-residential", worksheet.outputs_energy_flows_k380); end
  def test_outputs_energy_flows_v380; assert_in_delta(0.24832549720152441, worksheet.outputs_energy_flows_v380, 0.002); end
  def test_outputs_energy_flows_w380; assert_in_delta(0.26108088555671477, worksheet.outputs_energy_flows_w380, 0.002); end
  def test_outputs_energy_flows_x380; assert_in_delta(0.2732721664194328, worksheet.outputs_energy_flows_x380, 0.002); end
  def test_outputs_energy_flows_y380; assert_in_delta(0.2824651838565835, worksheet.outputs_energy_flows_y380, 0.002); end
  def test_outputs_energy_flows_z380; assert_in_delta(0.2885649921387108, worksheet.outputs_energy_flows_z380, 0.002); end
  def test_outputs_energy_flows_aa380; assert_in_delta(0.2915922175730178, worksheet.outputs_energy_flows_aa380, 0.002); end
  def test_outputs_energy_flows_ab380; assert_in_delta(0.29152731316507413, worksheet.outputs_energy_flows_ab380, 0.002); end
  def test_outputs_energy_flows_ac380; assert_in_delta(0.2883305886615848, worksheet.outputs_energy_flows_ac380, 0.002); end
  def test_outputs_energy_flows_ad380; assert_in_delta(0.28202466333176723, worksheet.outputs_energy_flows_ad380, 0.002); end
  def test_outputs_energy_flows_c382; assert_equal("H.01", worksheet.outputs_energy_flows_c382); end
  def test_outputs_energy_flows_d382; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d382); end
  def test_outputs_energy_flows_e382; assert_equal("n/a", worksheet.outputs_energy_flows_e382); end
  def test_outputs_energy_flows_f382; assert_equal("Steel", worksheet.outputs_energy_flows_f382); end
  def test_outputs_energy_flows_i382; assert_equal("H.01", worksheet.outputs_energy_flows_i382); end
  def test_outputs_energy_flows_j382; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j382); end
  def test_outputs_energy_flows_v382; assert_in_delta(0.803408652648, worksheet.outputs_energy_flows_v382, 0.002); end
  def test_outputs_energy_flows_w382; assert_in_delta(0.832571556446033, worksheet.outputs_energy_flows_w382, 0.002); end
  def test_outputs_energy_flows_x382; assert_in_delta(0.8931253044158052, worksheet.outputs_energy_flows_x382, 0.002); end
  def test_outputs_energy_flows_y382; assert_in_delta(0.9587755715828108, worksheet.outputs_energy_flows_y382, 0.002); end
  def test_outputs_energy_flows_z382; assert_in_epsilon(1.033176396220919, worksheet.outputs_energy_flows_z382, 0.002); end
  def test_outputs_energy_flows_aa382; assert_in_epsilon(1.111788004147938, worksheet.outputs_energy_flows_aa382, 0.002); end
  def test_outputs_energy_flows_ab382; assert_in_epsilon(1.195235409194555, worksheet.outputs_energy_flows_ab382, 0.002); end
  def test_outputs_energy_flows_ac382; assert_in_epsilon(1.3053522885190698, worksheet.outputs_energy_flows_ac382, 0.002); end
  def test_outputs_energy_flows_ad382; assert_in_epsilon(1.3860460160703256, worksheet.outputs_energy_flows_ad382, 0.002); end
  def test_outputs_energy_flows_c384; assert_equal("H.01", worksheet.outputs_energy_flows_c384); end
  def test_outputs_energy_flows_d384; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d384); end
  def test_outputs_energy_flows_e384; assert_equal("n/a", worksheet.outputs_energy_flows_e384); end
  def test_outputs_energy_flows_f384; assert_equal("Aluminium", worksheet.outputs_energy_flows_f384); end
  def test_outputs_energy_flows_i384; assert_equal("H.01", worksheet.outputs_energy_flows_i384); end
  def test_outputs_energy_flows_j384; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j384); end
  def test_outputs_energy_flows_v384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v384||0), 0.002); end
  def test_outputs_energy_flows_w384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w384||0), 0.002); end
  def test_outputs_energy_flows_x384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x384||0), 0.002); end
  def test_outputs_energy_flows_y384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y384||0), 0.002); end
  def test_outputs_energy_flows_z384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z384||0), 0.002); end
  def test_outputs_energy_flows_aa384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa384||0), 0.002); end
  def test_outputs_energy_flows_ab384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab384||0), 0.002); end
  def test_outputs_energy_flows_ac384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac384||0), 0.002); end
  def test_outputs_energy_flows_ad384; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad384||0), 0.002); end
  def test_outputs_energy_flows_c386; assert_equal("H.01", worksheet.outputs_energy_flows_c386); end
  def test_outputs_energy_flows_d386; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d386); end
  def test_outputs_energy_flows_e386; assert_equal("n/a", worksheet.outputs_energy_flows_e386); end
  def test_outputs_energy_flows_f386; assert_equal("Cement", worksheet.outputs_energy_flows_f386); end
  def test_outputs_energy_flows_i386; assert_equal("H.01", worksheet.outputs_energy_flows_i386); end
  def test_outputs_energy_flows_j386; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j386); end
  def test_outputs_energy_flows_v386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v386||0), 0.002); end
  def test_outputs_energy_flows_w386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w386||0), 0.002); end
  def test_outputs_energy_flows_x386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x386||0), 0.002); end
  def test_outputs_energy_flows_y386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y386||0), 0.002); end
  def test_outputs_energy_flows_z386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z386||0), 0.002); end
  def test_outputs_energy_flows_aa386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa386||0), 0.002); end
  def test_outputs_energy_flows_ab386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab386||0), 0.002); end
  def test_outputs_energy_flows_ac386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac386||0), 0.002); end
  def test_outputs_energy_flows_ad386; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad386||0), 0.002); end
  def test_outputs_energy_flows_c388; assert_equal("H.01", worksheet.outputs_energy_flows_c388); end
  def test_outputs_energy_flows_d388; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d388); end
  def test_outputs_energy_flows_e388; assert_equal("n/a", worksheet.outputs_energy_flows_e388); end
  def test_outputs_energy_flows_f388; assert_equal("Pulp and paper", worksheet.outputs_energy_flows_f388); end
  def test_outputs_energy_flows_i388; assert_equal("H.01", worksheet.outputs_energy_flows_i388); end
  def test_outputs_energy_flows_j388; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j388); end
  def test_outputs_energy_flows_v388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v388||0), 0.002); end
  def test_outputs_energy_flows_w388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w388||0), 0.002); end
  def test_outputs_energy_flows_x388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x388||0), 0.002); end
  def test_outputs_energy_flows_y388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y388||0), 0.002); end
  def test_outputs_energy_flows_z388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z388||0), 0.002); end
  def test_outputs_energy_flows_aa388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa388||0), 0.002); end
  def test_outputs_energy_flows_ab388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab388||0), 0.002); end
  def test_outputs_energy_flows_ac388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac388||0), 0.002); end
  def test_outputs_energy_flows_ad388; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad388||0), 0.002); end
  def test_outputs_energy_flows_c390; assert_equal("H.01", worksheet.outputs_energy_flows_c390); end
  def test_outputs_energy_flows_d390; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_d390); end
  def test_outputs_energy_flows_e390; assert_equal("n/a", worksheet.outputs_energy_flows_e390); end
  def test_outputs_energy_flows_f390; assert_equal("Chemicals", worksheet.outputs_energy_flows_f390); end
  def test_outputs_energy_flows_i390; assert_equal("H.01", worksheet.outputs_energy_flows_i390); end
  def test_outputs_energy_flows_j390; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j390); end
  def test_outputs_energy_flows_v390; assert_in_epsilon(1.970138431785092, worksheet.outputs_energy_flows_v390, 0.002); end
  def test_outputs_energy_flows_w390; assert_in_epsilon(1.9255603944690247, worksheet.outputs_energy_flows_w390, 0.002); end
  def test_outputs_energy_flows_x390; assert_in_epsilon(2.0711682936474487, worksheet.outputs_energy_flows_x390, 0.002); end
  def test_outputs_energy_flows_y390; assert_in_epsilon(2.219256458772442, worksheet.outputs_energy_flows_y390, 0.002); end
  def test_outputs_energy_flows_z390; assert_in_epsilon(2.3746767757239713, worksheet.outputs_energy_flows_z390, 0.002); end
  def test_outputs_energy_flows_aa390; assert_in_epsilon(2.529558218182627, worksheet.outputs_energy_flows_aa390, 0.002); end
  def test_outputs_energy_flows_ab390; assert_in_epsilon(2.6816016236658387, worksheet.outputs_energy_flows_ab390, 0.002); end
  def test_outputs_energy_flows_ac390; assert_in_epsilon(2.842530154763273, worksheet.outputs_energy_flows_ac390, 0.002); end
  def test_outputs_energy_flows_ad390; assert_in_epsilon(2.991498084922873, worksheet.outputs_energy_flows_ad390, 0.002); end
  def test_outputs_energy_flows_c398; assert_equal("Vector code energy is taken from", worksheet.outputs_energy_flows_c398); end
  def test_outputs_energy_flows_d398; assert_equal("TAKEN FROM", worksheet.outputs_energy_flows_d398); end
  def test_outputs_energy_flows_e398; assert_equal("Vector code energy is taken to", worksheet.outputs_energy_flows_e398); end
  def test_outputs_energy_flows_f398; assert_equal("TAKEN TO", worksheet.outputs_energy_flows_f398); end
  def test_outputs_energy_flows_g398; assert_equal("Technology code", worksheet.outputs_energy_flows_g398); end
  def test_outputs_energy_flows_h398; assert_equal("Technology description", worksheet.outputs_energy_flows_h398); end
  def test_outputs_energy_flows_i398; assert_equal("Energy code", worksheet.outputs_energy_flows_i398); end
  def test_outputs_energy_flows_j398; assert_equal("Description", worksheet.outputs_energy_flows_j398); end
  def test_outputs_energy_flows_k398; assert_equal("Other name of other lookup", worksheet.outputs_energy_flows_k398); end
  def test_outputs_energy_flows_l398; assert_equal("Other name of other lookup", worksheet.outputs_energy_flows_l398); end
  def test_outputs_energy_flows_m398; assert_equal("Other name of other lookup", worksheet.outputs_energy_flows_m398); end
  def test_outputs_energy_flows_v398; assert_in_epsilon(2011.0, worksheet.outputs_energy_flows_v398, 0.002); end
  def test_outputs_energy_flows_w398; assert_in_epsilon(2015.0, worksheet.outputs_energy_flows_w398, 0.002); end
  def test_outputs_energy_flows_x398; assert_in_epsilon(2020.0, worksheet.outputs_energy_flows_x398, 0.002); end
  def test_outputs_energy_flows_y398; assert_in_epsilon(2025.0, worksheet.outputs_energy_flows_y398, 0.002); end
  def test_outputs_energy_flows_z398; assert_in_epsilon(2030.0, worksheet.outputs_energy_flows_z398, 0.002); end
  def test_outputs_energy_flows_aa398; assert_in_epsilon(2035.0, worksheet.outputs_energy_flows_aa398, 0.002); end
  def test_outputs_energy_flows_ab398; assert_in_epsilon(2040.0, worksheet.outputs_energy_flows_ab398, 0.002); end
  def test_outputs_energy_flows_ac398; assert_in_epsilon(2045.0, worksheet.outputs_energy_flows_ac398, 0.002); end
  def test_outputs_energy_flows_ad398; assert_in_epsilon(2050.0, worksheet.outputs_energy_flows_ad398, 0.002); end
  def test_outputs_energy_flows_d400; assert_equal("Coal reserves", worksheet.outputs_energy_flows_d400); end
  def test_outputs_energy_flows_f400; assert_equal("Solid", worksheet.outputs_energy_flows_f400); end
  def test_outputs_energy_flows_i400; assert_equal("G.Q.01", worksheet.outputs_energy_flows_i400); end
  def test_outputs_energy_flows_j400; assert_equal("Global Coal reserves ", worksheet.outputs_energy_flows_j400); end
  def test_outputs_energy_flows_v400; assert_in_epsilon(120.08870818706782, worksheet.outputs_energy_flows_v400, 0.002); end
  def test_outputs_energy_flows_w400; assert_in_epsilon(123.60828452562527, worksheet.outputs_energy_flows_w400, 0.002); end
  def test_outputs_energy_flows_x400; assert_in_epsilon(139.18682130642011, worksheet.outputs_energy_flows_x400, 0.002); end
  def test_outputs_energy_flows_y400; assert_in_epsilon(154.52804197035613, worksheet.outputs_energy_flows_y400, 0.002); end
  def test_outputs_energy_flows_z400; assert_in_epsilon(167.8432833674411, worksheet.outputs_energy_flows_z400, 0.002); end
  def test_outputs_energy_flows_aa400; assert_in_epsilon(178.81695862174476, worksheet.outputs_energy_flows_aa400, 0.002); end
  def test_outputs_energy_flows_ab400; assert_in_epsilon(185.28589194511204, worksheet.outputs_energy_flows_ab400, 0.002); end
  def test_outputs_energy_flows_ac400; assert_in_epsilon(185.33701587600103, worksheet.outputs_energy_flows_ac400, 0.002); end
  def test_outputs_energy_flows_ad400; assert_in_epsilon(186.47956055470976, worksheet.outputs_energy_flows_ad400, 0.002); end
  def test_outputs_energy_flows_d402; assert_equal("Biomass and waste", worksheet.outputs_energy_flows_d402); end
  def test_outputs_energy_flows_f402; assert_equal("Solid", worksheet.outputs_energy_flows_f402); end
  def test_outputs_energy_flows_i402; assert_equal("G.C.01", worksheet.outputs_energy_flows_i402); end
  def test_outputs_energy_flows_j402; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j402); end
  def test_outputs_energy_flows_k402; assert_equal("G.BM.13", worksheet.outputs_energy_flows_k402); end
  def test_outputs_energy_flows_l402; assert_equal("Global Traditional biomass", worksheet.outputs_energy_flows_l402); end
  def test_outputs_energy_flows_n402; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_n402); end
  def test_outputs_energy_flows_o402; assert_equal("Forest", worksheet.outputs_energy_flows_o402); end
  def test_outputs_energy_flows_p402; assert_equal("Global Native forest", worksheet.outputs_energy_flows_p402); end
  def test_outputs_energy_flows_q402; assert_equal("Arable.bio", worksheet.outputs_energy_flows_q402); end
  def test_outputs_energy_flows_r402; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_r402); end
  def test_outputs_energy_flows_s402; assert_equal("industrial.municipal.non.renewable.waste", worksheet.outputs_energy_flows_s402); end
  def test_outputs_energy_flows_t402; assert_equal("Global ", worksheet.outputs_energy_flows_t402); end
  def test_outputs_energy_flows_v402; assert_in_epsilon(51.107742862870744, worksheet.outputs_energy_flows_v402, 0.002); end
  def test_outputs_energy_flows_w402; assert_in_epsilon(51.73584669218706, worksheet.outputs_energy_flows_w402, 0.002); end
  def test_outputs_energy_flows_x402; assert_in_epsilon(51.6889814200066, worksheet.outputs_energy_flows_x402, 0.002); end
  def test_outputs_energy_flows_y402; assert_in_epsilon(51.60466632265771, worksheet.outputs_energy_flows_y402, 0.002); end
  def test_outputs_energy_flows_z402; assert_in_epsilon(51.19414938487555, worksheet.outputs_energy_flows_z402, 0.002); end
  def test_outputs_energy_flows_aa402; assert_in_epsilon(50.906395665163984, worksheet.outputs_energy_flows_aa402, 0.002); end
  def test_outputs_energy_flows_ab402; assert_in_epsilon(50.95184501634886, worksheet.outputs_energy_flows_ab402, 0.002); end
  def test_outputs_energy_flows_ac402; assert_in_epsilon(50.67479921240937, worksheet.outputs_energy_flows_ac402, 0.002); end
  def test_outputs_energy_flows_ad402; assert_in_epsilon(51.68811120901062, worksheet.outputs_energy_flows_ad402, 0.002); end
  def test_outputs_energy_flows_d404; assert_equal("Oil reserves", worksheet.outputs_energy_flows_d404); end
  def test_outputs_energy_flows_f404; assert_equal("Liquid", worksheet.outputs_energy_flows_f404); end
  def test_outputs_energy_flows_i404; assert_equal("G.Q.02", worksheet.outputs_energy_flows_i404); end
  def test_outputs_energy_flows_j404; assert_equal("Global Oil reserves ", worksheet.outputs_energy_flows_j404); end
  def test_outputs_energy_flows_v404; assert_in_epsilon(153.0104275275249, worksheet.outputs_energy_flows_v404, 0.002); end
  def test_outputs_energy_flows_w404; assert_in_epsilon(169.5292958892217, worksheet.outputs_energy_flows_w404, 0.002); end
  def test_outputs_energy_flows_x404; assert_in_epsilon(184.04656818198535, worksheet.outputs_energy_flows_x404, 0.002); end
  def test_outputs_energy_flows_y404; assert_in_epsilon(198.4163005118578, worksheet.outputs_energy_flows_y404, 0.002); end
  def test_outputs_energy_flows_z404; assert_in_epsilon(214.7558924247071, worksheet.outputs_energy_flows_z404, 0.002); end
  def test_outputs_energy_flows_aa404; assert_in_epsilon(231.53464337866276, worksheet.outputs_energy_flows_aa404, 0.002); end
  def test_outputs_energy_flows_ab404; assert_in_epsilon(248.94115473324527, worksheet.outputs_energy_flows_ab404, 0.002); end
  def test_outputs_energy_flows_ac404; assert_in_epsilon(268.6616646596314, worksheet.outputs_energy_flows_ac404, 0.002); end
  def test_outputs_energy_flows_ad404; assert_in_epsilon(285.15579277349735, worksheet.outputs_energy_flows_ad404, 0.002); end
  def test_outputs_energy_flows_d406; assert_equal("Biomass and waste", worksheet.outputs_energy_flows_d406); end
  def test_outputs_energy_flows_f406; assert_equal("Liquid", worksheet.outputs_energy_flows_f406); end
  def test_outputs_energy_flows_i406; assert_equal("G.C.02", worksheet.outputs_energy_flows_i406); end
  def test_outputs_energy_flows_j406; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j406); end
  def test_outputs_energy_flows_n406; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_n406); end
  def test_outputs_energy_flows_o406; assert_equal("Forest", worksheet.outputs_energy_flows_o406); end
  def test_outputs_energy_flows_p406; assert_equal("Global Native forest", worksheet.outputs_energy_flows_p406); end
  def test_outputs_energy_flows_q406; assert_equal("Arable.bio", worksheet.outputs_energy_flows_q406); end
  def test_outputs_energy_flows_r406; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_r406); end
  def test_outputs_energy_flows_v406; assert_in_delta(0.6921751371292655, worksheet.outputs_energy_flows_v406, 0.002); end
  def test_outputs_energy_flows_w406; assert_in_delta(0.8025243264426388, worksheet.outputs_energy_flows_w406, 0.002); end
  def test_outputs_energy_flows_x406; assert_in_delta(0.9455726992913466, worksheet.outputs_energy_flows_x406, 0.002); end
  def test_outputs_energy_flows_y406; assert_in_epsilon(1.1043080116191915, worksheet.outputs_energy_flows_y406, 0.002); end
  def test_outputs_energy_flows_z406; assert_in_epsilon(1.2827432860959211, worksheet.outputs_energy_flows_z406, 0.002); end
  def test_outputs_energy_flows_aa406; assert_in_epsilon(1.4861503840622479, worksheet.outputs_energy_flows_aa406, 0.002); end
  def test_outputs_energy_flows_ab406; assert_in_epsilon(1.7214170076876676, worksheet.outputs_energy_flows_ab406, 0.002); end
  def test_outputs_energy_flows_ac406; assert_in_epsilon(1.9974757724013559, worksheet.outputs_energy_flows_ac406, 0.002); end
  def test_outputs_energy_flows_ad406; assert_in_epsilon(2.3257997846469514, worksheet.outputs_energy_flows_ad406, 0.002); end
  def test_outputs_energy_flows_d408; assert_equal("Gas reserves", worksheet.outputs_energy_flows_d408); end
  def test_outputs_energy_flows_f408; assert_equal("Gas", worksheet.outputs_energy_flows_f408); end
  def test_outputs_energy_flows_i408; assert_equal("G.Q.03", worksheet.outputs_energy_flows_i408); end
  def test_outputs_energy_flows_j408; assert_equal("Global Gas reserves ", worksheet.outputs_energy_flows_j408); end
  def test_outputs_energy_flows_v408; assert_in_epsilon(85.74387898879357, worksheet.outputs_energy_flows_v408, 0.002); end
  def test_outputs_energy_flows_w408; assert_in_epsilon(91.1744694082175, worksheet.outputs_energy_flows_w408, 0.002); end
  def test_outputs_energy_flows_x408; assert_in_epsilon(97.30138157525211, worksheet.outputs_energy_flows_x408, 0.002); end
  def test_outputs_energy_flows_y408; assert_in_epsilon(104.68437219959175, worksheet.outputs_energy_flows_y408, 0.002); end
  def test_outputs_energy_flows_z408; assert_in_epsilon(113.72311023619108, worksheet.outputs_energy_flows_z408, 0.002); end
  def test_outputs_energy_flows_aa408; assert_in_epsilon(122.9203561506092, worksheet.outputs_energy_flows_aa408, 0.002); end
  def test_outputs_energy_flows_ab408; assert_in_epsilon(130.582334004664, worksheet.outputs_energy_flows_ab408, 0.002); end
  def test_outputs_energy_flows_ac408; assert_in_epsilon(141.2737264644609, worksheet.outputs_energy_flows_ac408, 0.002); end
  def test_outputs_energy_flows_ad408; assert_in_epsilon(150.1611065283338, worksheet.outputs_energy_flows_ad408, 0.002); end
  def test_outputs_energy_flows_d410; assert_equal("Biomass and waste", worksheet.outputs_energy_flows_d410); end
  def test_outputs_energy_flows_f410; assert_equal("Gas", worksheet.outputs_energy_flows_f410); end
  def test_outputs_energy_flows_i410; assert_equal("G.C.03", worksheet.outputs_energy_flows_i410); end
  def test_outputs_energy_flows_j410; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j410); end
  def test_outputs_energy_flows_n410; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_n410); end
  def test_outputs_energy_flows_o410; assert_equal("Forest", worksheet.outputs_energy_flows_o410); end
  def test_outputs_energy_flows_p410; assert_equal("Global Native forest", worksheet.outputs_energy_flows_p410); end
  def test_outputs_energy_flows_q410; assert_equal("Arable.bio", worksheet.outputs_energy_flows_q410); end
  def test_outputs_energy_flows_r410; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_r410); end
  def test_outputs_energy_flows_v410; assert_in_epsilon(3.711553030654428, worksheet.outputs_energy_flows_v410, 0.002); end
  def test_outputs_energy_flows_w410; assert_in_epsilon(3.9473900731062677, worksheet.outputs_energy_flows_w410, 0.002); end
  def test_outputs_energy_flows_x410; assert_in_epsilon(4.259157569033665, worksheet.outputs_energy_flows_x410, 0.002); end
  def test_outputs_energy_flows_y410; assert_in_epsilon(4.565949739070457, worksheet.outputs_energy_flows_y410, 0.002); end
  def test_outputs_energy_flows_z410; assert_in_epsilon(4.971264438016344, worksheet.outputs_energy_flows_z410, 0.002); end
  def test_outputs_energy_flows_aa410; assert_in_epsilon(5.275551166167685, worksheet.outputs_energy_flows_aa410, 0.002); end
  def test_outputs_energy_flows_ab410; assert_in_epsilon(5.574462401152331, worksheet.outputs_energy_flows_ab410, 0.002); end
  def test_outputs_energy_flows_ac410; assert_in_epsilon(5.865699927891578, worksheet.outputs_energy_flows_ac410, 0.002); end
  def test_outputs_energy_flows_ad410; assert_in_epsilon(6.147135738350207, worksheet.outputs_energy_flows_ad410, 0.002); end
  def test_outputs_energy_flows_d412; assert_equal("Biomass and waste", worksheet.outputs_energy_flows_d412); end
  def test_outputs_energy_flows_f412; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f412); end
  def test_outputs_energy_flows_i412; assert_equal("G.L.01", worksheet.outputs_energy_flows_i412); end
  def test_outputs_energy_flows_j412; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j412); end
  def test_outputs_energy_flows_n412; assert_equal("Biomatter conversion", worksheet.outputs_energy_flows_n412); end
  def test_outputs_energy_flows_o412; assert_equal("Forest", worksheet.outputs_energy_flows_o412); end
  def test_outputs_energy_flows_p412; assert_equal("Global Native forest", worksheet.outputs_energy_flows_p412); end
  def test_outputs_energy_flows_q412; assert_equal("Arable.bio", worksheet.outputs_energy_flows_q412); end
  def test_outputs_energy_flows_r412; assert_equal("Global Arable land for bioenergy", worksheet.outputs_energy_flows_r412); end
  def test_outputs_energy_flows_v412; assert_in_epsilon(3.0299799465860757, worksheet.outputs_energy_flows_v412, 0.002); end
  def test_outputs_energy_flows_w412; assert_in_epsilon(3.179116910967051, worksheet.outputs_energy_flows_w412, 0.002); end
  def test_outputs_energy_flows_x412; assert_in_epsilon(3.326177508164988, worksheet.outputs_energy_flows_x412, 0.002); end
  def test_outputs_energy_flows_y412; assert_in_epsilon(3.4273194669499363, worksheet.outputs_energy_flows_y412, 0.002); end
  def test_outputs_energy_flows_z412; assert_in_epsilon(3.3815650110153, worksheet.outputs_energy_flows_z412, 0.002); end
  def test_outputs_energy_flows_aa412; assert_in_epsilon(3.390761768977642, worksheet.outputs_energy_flows_aa412, 0.002); end
  def test_outputs_energy_flows_ab412; assert_in_epsilon(3.359868187867117, worksheet.outputs_energy_flows_ab412, 0.002); end
  def test_outputs_energy_flows_ac412; assert_in_epsilon(3.2902373505104414, worksheet.outputs_energy_flows_ac412, 0.002); end
  def test_outputs_energy_flows_ad412; assert_in_epsilon(3.1831512105939614, worksheet.outputs_energy_flows_ad412, 0.002); end
  def test_outputs_energy_flows_d414; assert_equal("Coal reserves", worksheet.outputs_energy_flows_d414); end
  def test_outputs_energy_flows_f414; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f414); end
  def test_outputs_energy_flows_i414; assert_equal("G.L.02", worksheet.outputs_energy_flows_i414); end
  def test_outputs_energy_flows_j414; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_j414); end
  def test_outputs_energy_flows_o414; assert_equal("Coal.extract", worksheet.outputs_energy_flows_o414); end
  def test_outputs_energy_flows_p414; assert_equal("Global Coal Extraction", worksheet.outputs_energy_flows_p414); end
  def test_outputs_energy_flows_q414; assert_equal("Coal.wash", worksheet.outputs_energy_flows_q414); end
  def test_outputs_energy_flows_r414; assert_equal("Global Coal washeries", worksheet.outputs_energy_flows_r414); end
  def test_outputs_energy_flows_s414; assert_equal("coal.network", worksheet.outputs_energy_flows_s414); end
  def test_outputs_energy_flows_t414; assert_equal("Global Coal distribution network", worksheet.outputs_energy_flows_t414); end
  def test_outputs_energy_flows_v414; assert_in_epsilon(38.25798770353469, worksheet.outputs_energy_flows_v414, 0.002); end
  def test_outputs_energy_flows_w414; assert_in_epsilon(37.56709539725975, worksheet.outputs_energy_flows_w414, 0.002); end
  def test_outputs_energy_flows_x414; assert_in_epsilon(44.24694749844318, worksheet.outputs_energy_flows_x414, 0.002); end
  def test_outputs_energy_flows_y414; assert_in_epsilon(50.66334693133943, worksheet.outputs_energy_flows_y414, 0.002); end
  def test_outputs_energy_flows_z414; assert_in_epsilon(44.43854054324876, worksheet.outputs_energy_flows_z414, 0.002); end
  def test_outputs_energy_flows_aa414; assert_in_epsilon(49.08556705987895, worksheet.outputs_energy_flows_aa414, 0.002); end
  def test_outputs_energy_flows_ab414; assert_in_epsilon(53.48807687584949, worksheet.outputs_energy_flows_ab414, 0.002); end
  def test_outputs_energy_flows_ac414; assert_in_epsilon(55.377139026557685, worksheet.outputs_energy_flows_ac414, 0.002); end
  def test_outputs_energy_flows_ad414; assert_in_epsilon(56.77720161279396, worksheet.outputs_energy_flows_ad414, 0.002); end
  def test_outputs_energy_flows_d416; assert_equal("Oil reserves", worksheet.outputs_energy_flows_d416); end
  def test_outputs_energy_flows_f416; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f416); end
  def test_outputs_energy_flows_i416; assert_equal("G.L.02", worksheet.outputs_energy_flows_i416); end
  def test_outputs_energy_flows_j416; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_j416); end
  def test_outputs_energy_flows_o416; assert_equal("Oil.extract", worksheet.outputs_energy_flows_o416); end
  def test_outputs_energy_flows_p416; assert_equal("Global Oil Extraction", worksheet.outputs_energy_flows_p416); end
  def test_outputs_energy_flows_q416; assert_equal("Oil.refine", worksheet.outputs_energy_flows_q416); end
  def test_outputs_energy_flows_r416; assert_equal("Global Oil refineries", worksheet.outputs_energy_flows_r416); end
  def test_outputs_energy_flows_s416; assert_equal("oil.network", worksheet.outputs_energy_flows_s416); end
  def test_outputs_energy_flows_t416; assert_equal("Global Oil distribution network", worksheet.outputs_energy_flows_t416); end
  def test_outputs_energy_flows_v416; assert_in_epsilon(24.638992039478712, worksheet.outputs_energy_flows_v416, 0.002); end
  def test_outputs_energy_flows_w416; assert_in_epsilon(26.666558966899146, worksheet.outputs_energy_flows_w416, 0.002); end
  def test_outputs_energy_flows_x416; assert_in_epsilon(28.95009170737887, worksheet.outputs_energy_flows_x416, 0.002); end
  def test_outputs_energy_flows_y416; assert_in_epsilon(31.210416759182866, worksheet.outputs_energy_flows_y416, 0.002); end
  def test_outputs_energy_flows_z416; assert_in_epsilon(33.780596083963296, worksheet.outputs_energy_flows_z416, 0.002); end
  def test_outputs_energy_flows_aa416; assert_in_epsilon(29.91460738511743, worksheet.outputs_energy_flows_aa416, 0.002); end
  def test_outputs_energy_flows_ab416; assert_in_epsilon(32.163553570960254, worksheet.outputs_energy_flows_ab416, 0.002); end
  def test_outputs_energy_flows_ac416; assert_in_epsilon(34.71147168495653, worksheet.outputs_energy_flows_ac416, 0.002); end
  def test_outputs_energy_flows_ad416; assert_in_epsilon(36.84253664994824, worksheet.outputs_energy_flows_ad416, 0.002); end
  def test_outputs_energy_flows_d418; assert_equal("Gas reserves", worksheet.outputs_energy_flows_d418); end
  def test_outputs_energy_flows_f418; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f418); end
  def test_outputs_energy_flows_i418; assert_equal("G.L.02", worksheet.outputs_energy_flows_i418); end
  def test_outputs_energy_flows_j418; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_j418); end
  def test_outputs_energy_flows_o418; assert_equal("Naturalgas.extract", worksheet.outputs_energy_flows_o418); end
  def test_outputs_energy_flows_p418; assert_equal("Global Natural Gas Extraction", worksheet.outputs_energy_flows_p418); end
  def test_outputs_energy_flows_q418; assert_equal("Natural.gas.process", worksheet.outputs_energy_flows_q418); end
  def test_outputs_energy_flows_r418; assert_equal("Global Natural gas processing plants", worksheet.outputs_energy_flows_r418); end
  def test_outputs_energy_flows_s418; assert_equal("gas.nework", worksheet.outputs_energy_flows_s418); end
  def test_outputs_energy_flows_t418; assert_equal("Global Gas distribution network", worksheet.outputs_energy_flows_t418); end
  def test_outputs_energy_flows_v418; assert_in_epsilon(42.78239265201319, worksheet.outputs_energy_flows_v418, 0.002); end
  def test_outputs_energy_flows_w418; assert_in_epsilon(45.49201641053736, worksheet.outputs_energy_flows_w418, 0.002); end
  def test_outputs_energy_flows_x418; assert_in_epsilon(48.54907383744397, worksheet.outputs_energy_flows_x418, 0.002); end
  def test_outputs_energy_flows_y418; assert_in_epsilon(52.232858704208766, worksheet.outputs_energy_flows_y418, 0.002); end
  def test_outputs_energy_flows_z418; assert_in_epsilon(42.25875751600949, worksheet.outputs_energy_flows_z418, 0.002); end
  def test_outputs_energy_flows_aa418; assert_in_epsilon(45.67639342224954, worksheet.outputs_energy_flows_aa418, 0.002); end
  def test_outputs_energy_flows_ab418; assert_in_epsilon(48.52353384564339, worksheet.outputs_energy_flows_ab418, 0.002); end
  def test_outputs_energy_flows_ac418; assert_in_epsilon(52.49638475104601, worksheet.outputs_energy_flows_ac418, 0.002); end
  def test_outputs_energy_flows_ad418; assert_in_epsilon(55.79887655145315, worksheet.outputs_energy_flows_ad418, 0.002); end
  def test_outputs_energy_flows_d420; assert_equal("Solid", worksheet.outputs_energy_flows_d420); end
  def test_outputs_energy_flows_f420; assert_equal("Power plants", worksheet.outputs_energy_flows_f420); end
  def test_outputs_energy_flows_i420; assert_equal("G.C.01", worksheet.outputs_energy_flows_i420); end
  def test_outputs_energy_flows_j420; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j420); end
  def test_outputs_energy_flows_n420; assert_equal("Global Electricity Generation", worksheet.outputs_energy_flows_n420); end
  def test_outputs_energy_flows_v420; assert_in_epsilon(86.94146718841361, worksheet.outputs_energy_flows_v420, 0.002); end
  def test_outputs_energy_flows_w420; assert_in_epsilon(87.48399041048222, worksheet.outputs_energy_flows_w420, 0.002); end
  def test_outputs_energy_flows_x420; assert_in_epsilon(98.49694684060279, worksheet.outputs_energy_flows_x420, 0.002); end
  def test_outputs_energy_flows_y420; assert_in_epsilon(109.26811266218962, worksheet.outputs_energy_flows_y420, 0.002); end
  def test_outputs_energy_flows_z420; assert_in_epsilon(118.21801346454676, worksheet.outputs_energy_flows_z420, 0.002); end
  def test_outputs_energy_flows_aa420; assert_in_epsilon(124.87672342113856, worksheet.outputs_energy_flows_aa420, 0.002); end
  def test_outputs_energy_flows_ab420; assert_in_epsilon(127.26114478351867, worksheet.outputs_energy_flows_ab420, 0.002); end
  def test_outputs_energy_flows_ac420; assert_in_epsilon(123.06311651388268, worksheet.outputs_energy_flows_ac420, 0.002); end
  def test_outputs_energy_flows_ad420; assert_in_epsilon(120.7122656041492, worksheet.outputs_energy_flows_ad420, 0.002); end
  def test_outputs_energy_flows_d422; assert_equal("Liquid", worksheet.outputs_energy_flows_d422); end
  def test_outputs_energy_flows_f422; assert_equal("Power plants", worksheet.outputs_energy_flows_f422); end
  def test_outputs_energy_flows_i422; assert_equal("G.C.02", worksheet.outputs_energy_flows_i422); end
  def test_outputs_energy_flows_j422; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j422); end
  def test_outputs_energy_flows_n422; assert_equal("Global Electricity Generation", worksheet.outputs_energy_flows_n422); end
  def test_outputs_energy_flows_v422; assert_in_epsilon(13.366790608402482, worksheet.outputs_energy_flows_v422, 0.002); end
  def test_outputs_energy_flows_w422; assert_in_epsilon(21.183974722149724, worksheet.outputs_energy_flows_w422, 0.002); end
  def test_outputs_energy_flows_x422; assert_in_epsilon(24.439565117480907, worksheet.outputs_energy_flows_x422, 0.002); end
  def test_outputs_energy_flows_y422; assert_in_epsilon(27.993091565164942, worksheet.outputs_energy_flows_y422, 0.002); end
  def test_outputs_energy_flows_z422; assert_in_epsilon(33.20102825737788, worksheet.outputs_energy_flows_z422, 0.002); end
  def test_outputs_energy_flows_aa422; assert_in_epsilon(38.893455559908006, worksheet.outputs_energy_flows_aa422, 0.002); end
  def test_outputs_energy_flows_ab422; assert_in_epsilon(45.51246083488472, worksheet.outputs_energy_flows_ab422, 0.002); end
  def test_outputs_energy_flows_ac422; assert_in_epsilon(53.899326107720576, worksheet.outputs_energy_flows_ac422, 0.002); end
  def test_outputs_energy_flows_ad422; assert_in_epsilon(59.82319129543151, worksheet.outputs_energy_flows_ad422, 0.002); end
  def test_outputs_energy_flows_d424; assert_equal("Gas", worksheet.outputs_energy_flows_d424); end
  def test_outputs_energy_flows_f424; assert_equal("Power plants", worksheet.outputs_energy_flows_f424); end
  def test_outputs_energy_flows_i424; assert_equal("G.C.03", worksheet.outputs_energy_flows_i424); end
  def test_outputs_energy_flows_j424; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j424); end
  def test_outputs_energy_flows_n424; assert_equal("Global Electricity Generation", worksheet.outputs_energy_flows_n424); end
  def test_outputs_energy_flows_v424; assert_in_epsilon(35.74892547965594, worksheet.outputs_energy_flows_v424, 0.002); end
  def test_outputs_energy_flows_w424; assert_in_epsilon(37.606499006064425, worksheet.outputs_energy_flows_w424, 0.002); end
  def test_outputs_energy_flows_x424; assert_in_epsilon(38.812965580488836, worksheet.outputs_energy_flows_x424, 0.002); end
  def test_outputs_energy_flows_y424; assert_in_epsilon(41.676177229280896, worksheet.outputs_energy_flows_y424, 0.002); end
  def test_outputs_energy_flows_z424; assert_in_epsilon(45.9776308200029, worksheet.outputs_energy_flows_z424, 0.002); end
  def test_outputs_energy_flows_aa424; assert_in_epsilon(50.53957159868566, worksheet.outputs_energy_flows_aa424, 0.002); end
  def test_outputs_energy_flows_ab424; assert_in_epsilon(54.05592547101497, worksheet.outputs_energy_flows_ab424, 0.002); end
  def test_outputs_energy_flows_ac424; assert_in_epsilon(60.25835660258358, worksheet.outputs_energy_flows_ac424, 0.002); end
  def test_outputs_energy_flows_ad424; assert_in_epsilon(65.62948510782317, worksheet.outputs_energy_flows_ad424, 0.002); end
  def test_outputs_energy_flows_d426; assert_equal("Nuclear", worksheet.outputs_energy_flows_d426); end
  def test_outputs_energy_flows_f426; assert_equal("Power plants", worksheet.outputs_energy_flows_f426); end
  def test_outputs_energy_flows_i426; assert_equal("G.N.01", worksheet.outputs_energy_flows_i426); end
  def test_outputs_energy_flows_j426; assert_equal("Global Nuclear fission", worksheet.outputs_energy_flows_j426); end
  def test_outputs_energy_flows_n426; assert_equal("Global Electricity Generation", worksheet.outputs_energy_flows_n426); end
  def test_outputs_energy_flows_v426; assert_in_epsilon(29.05342456550469, worksheet.outputs_energy_flows_v426, 0.002); end
  def test_outputs_energy_flows_w426; assert_in_epsilon(30.810010146552408, worksheet.outputs_energy_flows_w426, 0.002); end
  def test_outputs_energy_flows_x426; assert_in_epsilon(31.225696864304222, worksheet.outputs_energy_flows_x426, 0.002); end
  def test_outputs_energy_flows_y426; assert_in_epsilon(32.18595686107117, worksheet.outputs_energy_flows_y426, 0.002); end
  def test_outputs_energy_flows_z426; assert_in_epsilon(32.43266849176103, worksheet.outputs_energy_flows_z426, 0.002); end
  def test_outputs_energy_flows_aa426; assert_in_epsilon(33.479333152855254, worksheet.outputs_energy_flows_aa426, 0.002); end
  def test_outputs_energy_flows_ab426; assert_in_epsilon(33.89666579819007, worksheet.outputs_energy_flows_ab426, 0.002); end
  def test_outputs_energy_flows_ac426; assert_in_epsilon(34.72611971550832, worksheet.outputs_energy_flows_ac426, 0.002); end
  def test_outputs_energy_flows_ad426; assert_in_epsilon(35.59554910606688, worksheet.outputs_energy_flows_ad426, 0.002); end
  def test_outputs_energy_flows_d428; assert_equal("Power plants", worksheet.outputs_energy_flows_d428); end
  def test_outputs_energy_flows_f428; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f428); end
  def test_outputs_energy_flows_i428; assert_equal("G.E.02", worksheet.outputs_energy_flows_i428); end
  def test_outputs_energy_flows_j428; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j428); end
  def test_outputs_energy_flows_p428; assert_equal("Unabated power", worksheet.outputs_energy_flows_p428); end
  def test_outputs_energy_flows_r428; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_r428); end
  def test_outputs_energy_flows_t428; assert_equal("Nuclear", worksheet.outputs_energy_flows_t428); end
  def test_outputs_energy_flows_v428; assert_in_epsilon(58.64944014387076, worksheet.outputs_energy_flows_v428, 0.002); end
  def test_outputs_energy_flows_w428; assert_in_epsilon(63.778848803611815, worksheet.outputs_energy_flows_w428, 0.002); end
  def test_outputs_energy_flows_x428; assert_in_epsilon(70.81870490295437, worksheet.outputs_energy_flows_x428, 0.002); end
  def test_outputs_energy_flows_y428; assert_in_epsilon(78.98150206709649, worksheet.outputs_energy_flows_y428, 0.002); end
  def test_outputs_energy_flows_z428; assert_in_epsilon(87.4202340527809, worksheet.outputs_energy_flows_z428, 0.002); end
  def test_outputs_energy_flows_aa428; assert_in_epsilon(95.9625593420769, worksheet.outputs_energy_flows_aa428, 0.002); end
  def test_outputs_energy_flows_ab428; assert_in_epsilon(102.77303590799978, worksheet.outputs_energy_flows_ab428, 0.002); end
  def test_outputs_energy_flows_ac428; assert_in_epsilon(108.76626739520572, worksheet.outputs_energy_flows_ac428, 0.002); end
  def test_outputs_energy_flows_ad428; assert_in_epsilon(114.19751612817821, worksheet.outputs_energy_flows_ad428, 0.002); end
  def test_outputs_energy_flows_d430; assert_equal("Power plants", worksheet.outputs_energy_flows_d430); end
  def test_outputs_energy_flows_f430; assert_equal("Heat network", worksheet.outputs_energy_flows_f430); end
  def test_outputs_energy_flows_i430; assert_equal("G.H.01", worksheet.outputs_energy_flows_i430); end
  def test_outputs_energy_flows_j430; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j430); end
  def test_outputs_energy_flows_p430; assert_equal("Unabated power", worksheet.outputs_energy_flows_p430); end
  def test_outputs_energy_flows_r430; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_r430); end
  def test_outputs_energy_flows_t430; assert_equal("Nuclear", worksheet.outputs_energy_flows_t430); end
  def test_outputs_energy_flows_v430; assert_in_epsilon(9.635809154838396, worksheet.outputs_energy_flows_v430, 0.002); end
  def test_outputs_energy_flows_w430; assert_in_epsilon(10.545354721530195, worksheet.outputs_energy_flows_w430, 0.002); end
  def test_outputs_energy_flows_x430; assert_in_epsilon(11.884088679352642, worksheet.outputs_energy_flows_x430, 0.002); end
  def test_outputs_energy_flows_y430; assert_in_epsilon(13.154345007096746, worksheet.outputs_energy_flows_y430, 0.002); end
  def test_outputs_energy_flows_z430; assert_in_epsilon(14.557343049174946, worksheet.outputs_energy_flows_z430, 0.002); end
  def test_outputs_energy_flows_aa430; assert_in_epsilon(15.938892910355834, worksheet.outputs_energy_flows_aa430, 0.002); end
  def test_outputs_energy_flows_ab430; assert_in_epsilon(17.166026876989314, worksheet.outputs_energy_flows_ab430, 0.002); end
  def test_outputs_energy_flows_ac430; assert_in_epsilon(18.51761706815896, worksheet.outputs_energy_flows_ac430, 0.002); end
  def test_outputs_energy_flows_ad430; assert_in_epsilon(19.5086660428596, worksheet.outputs_energy_flows_ad430, 0.002); end
  def test_outputs_energy_flows_d432; assert_equal("Solar", worksheet.outputs_energy_flows_d432); end
  def test_outputs_energy_flows_f432; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f432); end
  def test_outputs_energy_flows_i432; assert_equal("G.E.02", worksheet.outputs_energy_flows_i432); end
  def test_outputs_energy_flows_j432; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j432); end
  def test_outputs_energy_flows_p432; assert_equal("Solar", worksheet.outputs_energy_flows_p432); end
  def test_outputs_energy_flows_v432; assert_in_delta(0.19187020800000004, worksheet.outputs_energy_flows_v432, 0.002); end
  def test_outputs_energy_flows_w432; assert_in_delta(0.513757728, worksheet.outputs_energy_flows_w432, 0.002); end
  def test_outputs_energy_flows_x432; assert_in_epsilon(1.5387485759999997, worksheet.outputs_energy_flows_x432, 0.002); end
  def test_outputs_energy_flows_y432; assert_in_epsilon(1.6599297599999998, worksheet.outputs_energy_flows_y432, 0.002); end
  def test_outputs_energy_flows_z432; assert_in_epsilon(1.84296384, worksheet.outputs_energy_flows_z432, 0.002); end
  def test_outputs_energy_flows_aa432; assert_in_epsilon(2.12698224, worksheet.outputs_energy_flows_aa432, 0.002); end
  def test_outputs_energy_flows_ab432; assert_in_epsilon(2.187572832, worksheet.outputs_energy_flows_ab432, 0.002); end
  def test_outputs_energy_flows_ac432; assert_in_epsilon(2.6988059519999994, worksheet.outputs_energy_flows_ac432, 0.002); end
  def test_outputs_energy_flows_ad432; assert_in_epsilon(3.516778943999999, worksheet.outputs_energy_flows_ad432, 0.002); end
  def test_outputs_energy_flows_d434; assert_equal("Wind", worksheet.outputs_energy_flows_d434); end
  def test_outputs_energy_flows_f434; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f434); end
  def test_outputs_energy_flows_i434; assert_equal("G.E.02", worksheet.outputs_energy_flows_i434); end
  def test_outputs_energy_flows_j434; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j434); end
  def test_outputs_energy_flows_p434; assert_equal("Wind", worksheet.outputs_energy_flows_p434); end
  def test_outputs_energy_flows_v434; assert_in_epsilon(1.5996452767199998, worksheet.outputs_energy_flows_v434, 0.002); end
  def test_outputs_energy_flows_w434; assert_in_epsilon(2.9582094239999996, worksheet.outputs_energy_flows_w434, 0.002); end
  def test_outputs_energy_flows_x434; assert_in_epsilon(3.5750973887999997, worksheet.outputs_energy_flows_x434, 0.002); end
  def test_outputs_energy_flows_y434; assert_in_epsilon(3.7459502352, worksheet.outputs_energy_flows_y434, 0.002); end
  def test_outputs_energy_flows_z434; assert_in_epsilon(4.1983599888, worksheet.outputs_energy_flows_z434, 0.002); end
  def test_outputs_energy_flows_aa434; assert_in_epsilon(4.604506300800001, worksheet.outputs_energy_flows_aa434, 0.002); end
  def test_outputs_energy_flows_ab434; assert_in_epsilon(5.912884396800001, worksheet.outputs_energy_flows_ab434, 0.002); end
  def test_outputs_energy_flows_ac434; assert_in_epsilon(8.808167966400001, worksheet.outputs_energy_flows_ac434, 0.002); end
  def test_outputs_energy_flows_ad434; assert_in_epsilon(10.849881571200003, worksheet.outputs_energy_flows_ad434, 0.002); end
  def test_outputs_energy_flows_d436; assert_equal("Marine", worksheet.outputs_energy_flows_d436); end
  def test_outputs_energy_flows_f436; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f436); end
  def test_outputs_energy_flows_i436; assert_equal("G.E.02", worksheet.outputs_energy_flows_i436); end
  def test_outputs_energy_flows_j436; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j436); end
  def test_outputs_energy_flows_p436; assert_equal("Marine", worksheet.outputs_energy_flows_p436); end
  def test_outputs_energy_flows_v436; assert_in_delta(0.0041577138, worksheet.outputs_energy_flows_v436, 0.002); end
  def test_outputs_energy_flows_w436; assert_in_delta(0.011297620799999998, worksheet.outputs_energy_flows_w436, 0.002); end
  def test_outputs_energy_flows_x436; assert_in_delta(0.0154001088, worksheet.outputs_energy_flows_x436, 0.002); end
  def test_outputs_energy_flows_y436; assert_in_delta(0.0406461888, worksheet.outputs_energy_flows_y436, 0.002); end
  def test_outputs_energy_flows_z436; assert_in_delta(0.09625067999999998, worksheet.outputs_energy_flows_z436, 0.002); end
  def test_outputs_energy_flows_aa436; assert_in_delta(0.15936587999999993, worksheet.outputs_energy_flows_aa436, 0.002); end
  def test_outputs_energy_flows_ab436; assert_in_delta(0.23762872799999996, worksheet.outputs_energy_flows_ab436, 0.002); end
  def test_outputs_energy_flows_ac436; assert_in_delta(0.3212563679999999, worksheet.outputs_energy_flows_ac436, 0.002); end
  def test_outputs_energy_flows_ad436; assert_in_delta(0.3906830879999999, worksheet.outputs_energy_flows_ad436, 0.002); end
  def test_outputs_energy_flows_d438; assert_equal("Geothermal", worksheet.outputs_energy_flows_d438); end
  def test_outputs_energy_flows_f438; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f438); end
  def test_outputs_energy_flows_i438; assert_equal("G.E.02", worksheet.outputs_energy_flows_i438); end
  def test_outputs_energy_flows_j438; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j438); end
  def test_outputs_energy_flows_p438; assert_equal("Geothermal", worksheet.outputs_energy_flows_p438); end
  def test_outputs_energy_flows_v438; assert_in_delta(0.2885626944, worksheet.outputs_energy_flows_v438, 0.002); end
  def test_outputs_energy_flows_w438; assert_in_delta(0.36354355200000005, worksheet.outputs_energy_flows_w438, 0.002); end
  def test_outputs_energy_flows_x438; assert_in_delta(0.44938022399999994, worksheet.outputs_energy_flows_x438, 0.002); end
  def test_outputs_energy_flows_y438; assert_in_delta(0.509970816, worksheet.outputs_energy_flows_y438, 0.002); end
  def test_outputs_energy_flows_z438; assert_in_delta(0.5453153279999999, worksheet.outputs_energy_flows_z438, 0.002); end
  def test_outputs_energy_flows_aa438; assert_in_delta(0.8432190719999999, worksheet.outputs_energy_flows_aa438, 0.002); end
  def test_outputs_energy_flows_ab438; assert_in_epsilon(1.0502369279999997, worksheet.outputs_energy_flows_ab438, 0.002); end
  def test_outputs_energy_flows_ac438; assert_in_epsilon(1.383485184, worksheet.outputs_energy_flows_ac438, 0.002); end
  def test_outputs_energy_flows_ad438; assert_in_epsilon(1.7369303039999997, worksheet.outputs_energy_flows_ad438, 0.002); end
  def test_outputs_energy_flows_d440; assert_equal("Hydro", worksheet.outputs_energy_flows_d440); end
  def test_outputs_energy_flows_f440; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f440); end
  def test_outputs_energy_flows_i440; assert_equal("G.E.02", worksheet.outputs_energy_flows_i440); end
  def test_outputs_energy_flows_j440; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j440); end
  def test_outputs_energy_flows_p440; assert_equal("Hydro", worksheet.outputs_energy_flows_p440); end
  def test_outputs_energy_flows_v440; assert_in_epsilon(13.46878368, worksheet.outputs_energy_flows_v440, 0.002); end
  def test_outputs_energy_flows_w440; assert_in_epsilon(13.9769872704, worksheet.outputs_energy_flows_w440, 0.002); end
  def test_outputs_energy_flows_x440; assert_in_epsilon(15.035050483199997, worksheet.outputs_energy_flows_x440, 0.002); end
  def test_outputs_energy_flows_y440; assert_in_epsilon(16.17642576, worksheet.outputs_energy_flows_y440, 0.002); end
  def test_outputs_energy_flows_z440; assert_in_epsilon(17.4080557728, worksheet.outputs_energy_flows_z440, 0.002); end
  def test_outputs_energy_flows_aa440; assert_in_epsilon(18.7216093152, worksheet.outputs_energy_flows_aa440, 0.002); end
  def test_outputs_energy_flows_ab440; assert_in_epsilon(20.121251990399998, worksheet.outputs_energy_flows_ab440, 0.002); end
  def test_outputs_energy_flows_ac440; assert_in_epsilon(21.5333914752, worksheet.outputs_energy_flows_ac440, 0.002); end
  def test_outputs_energy_flows_ad440; assert_in_epsilon(23.045505436800003, worksheet.outputs_energy_flows_ad440, 0.002); end
  def test_outputs_energy_flows_d442; assert_equal("Solar", worksheet.outputs_energy_flows_d442); end
  def test_outputs_energy_flows_f442; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f442); end
  def test_outputs_energy_flows_i442; assert_equal("G.L.01", worksheet.outputs_energy_flows_i442); end
  def test_outputs_energy_flows_j442; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j442); end
  def test_outputs_energy_flows_p442; assert_equal("Solar", worksheet.outputs_energy_flows_p442); end
  def test_outputs_energy_flows_v442; assert_in_delta(0.040954752, worksheet.outputs_energy_flows_v442, 0.002); end
  def test_outputs_energy_flows_w442; assert_in_delta(0.26542214246730117, worksheet.outputs_energy_flows_w442, 0.002); end
  def test_outputs_energy_flows_x442; assert_in_epsilon(1.6375383400125538, worksheet.outputs_energy_flows_x442, 0.002); end
  def test_outputs_energy_flows_y442; assert_in_epsilon(1.9355457997544665, worksheet.outputs_energy_flows_y442, 0.002); end
  def test_outputs_energy_flows_z442; assert_in_epsilon(2.4130989906537725, worksheet.outputs_energy_flows_z442, 0.002); end
  def test_outputs_energy_flows_aa442; assert_in_epsilon(2.7563705591445915, worksheet.outputs_energy_flows_aa442, 0.002); end
  def test_outputs_energy_flows_ab442; assert_in_epsilon(2.676151755713701, worksheet.outputs_energy_flows_ab442, 0.002); end
  def test_outputs_energy_flows_ac442; assert_in_epsilon(3.1157967661676977, worksheet.outputs_energy_flows_ac442, 0.002); end
  def test_outputs_energy_flows_ad442; assert_in_epsilon(3.860680886409402, worksheet.outputs_energy_flows_ad442, 0.002); end
  def test_outputs_energy_flows_d444; assert_equal("Power plants", worksheet.outputs_energy_flows_d444); end
  def test_outputs_energy_flows_f444; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f444); end
  def test_outputs_energy_flows_i444; assert_equal("G.L.01", worksheet.outputs_energy_flows_i444); end
  def test_outputs_energy_flows_j444; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j444); end
  def test_outputs_energy_flows_k444; assert_equal("G.L.02", worksheet.outputs_energy_flows_k444); end
  def test_outputs_energy_flows_l444; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_l444); end
  def test_outputs_energy_flows_p444; assert_equal("Unabated power", worksheet.outputs_energy_flows_p444); end
  def test_outputs_energy_flows_r444; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_r444); end
  def test_outputs_energy_flows_t444; assert_equal("Nuclear", worksheet.outputs_energy_flows_t444); end
  def test_outputs_energy_flows_v444; assert_in_epsilon(94.30343261708111, worksheet.outputs_energy_flows_v444, 0.002); end
  def test_outputs_energy_flows_w444; assert_in_epsilon(100.01213441324113, worksheet.outputs_energy_flows_w444, 0.002); end
  def test_outputs_energy_flows_x444; assert_in_epsilon(107.21060897945354, worksheet.outputs_energy_flows_x444, 0.002); end
  def test_outputs_energy_flows_y444; assert_in_epsilon(115.56607920844436, worksheet.outputs_energy_flows_y444, 0.002); end
  def test_outputs_energy_flows_z444; assert_in_epsilon(124.0298756078408, worksheet.outputs_energy_flows_z444, 0.002); end
  def test_outputs_energy_flows_aa444; assert_in_epsilon(131.67631146693626, worksheet.outputs_energy_flows_aa444, 0.002); end
  def test_outputs_energy_flows_ab444; assert_in_epsilon(136.252926141146, worksheet.outputs_energy_flows_ab444, 0.002); end
  def test_outputs_energy_flows_ac444; assert_in_epsilon(139.82882410810478, worksheet.outputs_energy_flows_ac444, 0.002); end
  def test_outputs_energy_flows_ad444; assert_in_epsilon(142.9025960891962, worksheet.outputs_energy_flows_ad444, 0.002); end
  def test_outputs_energy_flows_d446; assert_equal("Geothermal", worksheet.outputs_energy_flows_d446); end
  def test_outputs_energy_flows_f446; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f446); end
  def test_outputs_energy_flows_i446; assert_equal("G.L.01", worksheet.outputs_energy_flows_i446); end
  def test_outputs_energy_flows_j446; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j446); end
  def test_outputs_energy_flows_p446; assert_equal("Geothermal", worksheet.outputs_energy_flows_p446); end
  def test_outputs_energy_flows_v446; assert_in_epsilon(2.5970642496, worksheet.outputs_energy_flows_v446, 0.002); end
  def test_outputs_energy_flows_w446; assert_in_epsilon(3.2640786279201723, worksheet.outputs_energy_flows_w446, 0.002); end
  def test_outputs_energy_flows_x446; assert_in_epsilon(4.022749387880884, worksheet.outputs_energy_flows_x446, 0.002); end
  def test_outputs_energy_flows_y446; assert_in_epsilon(4.551581030083372, worksheet.outputs_energy_flows_y446, 0.002); end
  def test_outputs_energy_flows_z446; assert_in_epsilon(4.852612993023374, worksheet.outputs_energy_flows_z446, 0.002); end
  def test_outputs_energy_flows_aa446; assert_in_epsilon(7.481392058012148, worksheet.outputs_energy_flows_aa446, 0.002); end
  def test_outputs_energy_flows_ab446; assert_in_epsilon(9.290655341938646, worksheet.outputs_energy_flows_ab446, 0.002); end
  def test_outputs_energy_flows_ac446; assert_in_epsilon(12.20263612737634, worksheet.outputs_energy_flows_ac446, 0.002); end
  def test_outputs_energy_flows_ad446; assert_in_epsilon(15.275119686205679, worksheet.outputs_energy_flows_ad446, 0.002); end
  def test_outputs_energy_flows_d448; assert_equal("Solid", worksheet.outputs_energy_flows_d448); end
  def test_outputs_energy_flows_f448; assert_equal("Hydrogen", worksheet.outputs_energy_flows_f448); end
  def test_outputs_energy_flows_i448; assert_equal("G.FF.01", worksheet.outputs_energy_flows_i448); end
  def test_outputs_energy_flows_j448; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j448); end
  def test_outputs_energy_flows_p448; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_p448); end
  def test_outputs_energy_flows_v448; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v448||0), 0.002); end
  def test_outputs_energy_flows_w448; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w448||0), 0.002); end
  def test_outputs_energy_flows_x448; assert_in_delta(1.1522291058263352e-08, worksheet.outputs_energy_flows_x448, 0.002); end
  def test_outputs_energy_flows_y448; assert_in_delta(1.734166016123591e-08, worksheet.outputs_energy_flows_y448, 0.002); end
  def test_outputs_energy_flows_z448; assert_in_delta(2.5170947721584596e-08, worksheet.outputs_energy_flows_z448, 0.002); end
  def test_outputs_energy_flows_aa448; assert_in_delta(2.4103045325899932e-08, worksheet.outputs_energy_flows_aa448, 0.002); end
  def test_outputs_energy_flows_ab448; assert_in_delta(1.6398207403951226e-08, worksheet.outputs_energy_flows_ab448, 0.002); end
  def test_outputs_energy_flows_ac448; assert_in_delta(8.35197216210722e-09, worksheet.outputs_energy_flows_ac448, 0.002); end
  def test_outputs_energy_flows_ad448; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad448||0), 0.002); end
  def test_outputs_energy_flows_d450; assert_equal("Gas", worksheet.outputs_energy_flows_d450); end
  def test_outputs_energy_flows_f450; assert_equal("Hydrogen", worksheet.outputs_energy_flows_f450); end
  def test_outputs_energy_flows_i450; assert_equal("G.FF.03", worksheet.outputs_energy_flows_i450); end
  def test_outputs_energy_flows_j450; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j450); end
  def test_outputs_energy_flows_p450; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_p450); end
  def test_outputs_energy_flows_v450; assert_in_delta(8.663792701034158e-08, worksheet.outputs_energy_flows_v450, 0.002); end
  def test_outputs_energy_flows_w450; assert_in_delta(8.606804825586925e-08, worksheet.outputs_energy_flows_w450, 0.002); end
  def test_outputs_energy_flows_x450; assert_in_delta(7.388669141111375e-08, worksheet.outputs_energy_flows_x450, 0.002); end
  def test_outputs_energy_flows_y450; assert_in_delta(6.443093736828417e-08, worksheet.outputs_energy_flows_y450, 0.002); end
  def test_outputs_energy_flows_z450; assert_in_delta(4.46052608461569e-08, worksheet.outputs_energy_flows_z450, 0.002); end
  def test_outputs_energy_flows_aa450; assert_in_delta(2.979136402281232e-08, worksheet.outputs_energy_flows_aa450, 0.002); end
  def test_outputs_energy_flows_ab450; assert_in_delta(1.8840493613050346e-08, worksheet.outputs_energy_flows_ab450, 0.002); end
  def test_outputs_energy_flows_ac450; assert_in_delta(8.769570770212583e-09, worksheet.outputs_energy_flows_ac450, 0.002); end
  def test_outputs_energy_flows_ad450; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad450||0), 0.002); end
  def test_outputs_energy_flows_d452; assert_equal("Electricity", worksheet.outputs_energy_flows_d452); end
  def test_outputs_energy_flows_f452; assert_equal("Hydrogen", worksheet.outputs_energy_flows_f452); end
  def test_outputs_energy_flows_i452; assert_equal("G.E.01", worksheet.outputs_energy_flows_i452); end
  def test_outputs_energy_flows_j452; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j452); end
  def test_outputs_energy_flows_p452; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_p452); end
  def test_outputs_energy_flows_v452; assert_in_delta(5.69986361910142e-09, worksheet.outputs_energy_flows_v452, 0.002); end
  def test_outputs_energy_flows_w452; assert_in_delta(5.573200389548103e-09, worksheet.outputs_energy_flows_w452, 0.002); end
  def test_outputs_energy_flows_x452; assert_in_delta(5.265882281156492e-09, worksheet.outputs_energy_flows_x452, 0.002); end
  def test_outputs_energy_flows_y452; assert_in_delta(6.239478703641386e-09, worksheet.outputs_energy_flows_y452, 0.002); end
  def test_outputs_energy_flows_z452; assert_in_delta(1.2515710154246595e-08, worksheet.outputs_energy_flows_z452, 0.002); end
  def test_outputs_energy_flows_aa452; assert_in_delta(1.5987535706478306e-08, worksheet.outputs_energy_flows_aa452, 0.002); end
  def test_outputs_energy_flows_ab452; assert_in_delta(1.545673404018984e-08, worksheet.outputs_energy_flows_ab452, 0.002); end
  def test_outputs_energy_flows_ac452; assert_in_delta(1.0440486755312655e-08, worksheet.outputs_energy_flows_ac452, 0.002); end
  def test_outputs_energy_flows_ad452; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad452||0), 0.002); end
  def test_outputs_energy_flows_d454; assert_equal("Hydrogen", worksheet.outputs_energy_flows_d454); end
  def test_outputs_energy_flows_f454; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f454); end
  def test_outputs_energy_flows_i454; assert_equal("G.L.01", worksheet.outputs_energy_flows_i454); end
  def test_outputs_energy_flows_j454; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j454); end
  def test_outputs_energy_flows_p454; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_p454); end
  def test_outputs_energy_flows_v454; assert_in_delta(2.393942720022596e-08, worksheet.outputs_energy_flows_v454, 0.002); end
  def test_outputs_energy_flows_w454; assert_in_delta(2.3692789496046897e-08, worksheet.outputs_energy_flows_w454, 0.002); end
  def test_outputs_energy_flows_x454; assert_in_delta(2.6419206345527718e-08, worksheet.outputs_energy_flows_x454, 0.002); end
  def test_outputs_energy_flows_y454; assert_in_delta(2.7593065244486288e-08, worksheet.outputs_energy_flows_y454, 0.002); end
  def test_outputs_energy_flows_z454; assert_in_delta(2.892115338295606e-08, worksheet.outputs_energy_flows_z454, 0.002); end
  def test_outputs_energy_flows_aa454; assert_in_delta(2.5930391397569264e-08, worksheet.outputs_energy_flows_aa454, 0.002); end
  def test_outputs_energy_flows_ab454; assert_in_delta(1.8677809541298154e-08, worksheet.outputs_energy_flows_ab454, 0.002); end
  def test_outputs_energy_flows_ac454; assert_in_delta(1.0142879436447095e-08, worksheet.outputs_energy_flows_ac454, 0.002); end
  def test_outputs_energy_flows_ad454; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad454||0), 0.002); end
  def test_outputs_energy_flows_d456; assert_equal("Hydrogen", worksheet.outputs_energy_flows_d456); end
  def test_outputs_energy_flows_f456; assert_equal("Transport", worksheet.outputs_energy_flows_f456); end
  def test_outputs_energy_flows_i456; assert_equal("G.HY.01", worksheet.outputs_energy_flows_i456); end
  def test_outputs_energy_flows_j456; assert_equal("Global H2", worksheet.outputs_energy_flows_j456); end
  def test_outputs_energy_flows_p456; assert_equal("Global transport", worksheet.outputs_energy_flows_p456); end
  def test_outputs_energy_flows_v456; assert_in_delta(6.839836342921704e-08, worksheet.outputs_energy_flows_v456, 0.002); end
  def test_outputs_energy_flows_w456; assert_in_delta(6.794845914937047e-08, worksheet.outputs_energy_flows_w456, 0.002); end
  def test_outputs_energy_flows_x456; assert_in_delta(6.523417096954911e-08, worksheet.outputs_energy_flows_x456, 0.002); end
  def test_outputs_energy_flows_y456; assert_in_delta(6.041901098867518e-08, worksheet.outputs_energy_flows_y456, 0.002); end
  def test_outputs_energy_flows_z456; assert_in_delta(5.337076533903203e-08, worksheet.outputs_energy_flows_z456, 0.002); end
  def test_outputs_energy_flows_aa456; assert_in_delta(4.3951553657621294e-08, worksheet.outputs_energy_flows_aa456, 0.002); end
  def test_outputs_energy_flows_ab456; assert_in_delta(3.201762551589326e-08, worksheet.outputs_energy_flows_ab456, 0.002); end
  def test_outputs_energy_flows_ac456; assert_in_delta(1.7419150251185364e-08, worksheet.outputs_energy_flows_ac456, 0.002); end
  def test_outputs_energy_flows_ad456; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad456||0), 0.002); end
  def test_outputs_energy_flows_d458; assert_equal("Solid", worksheet.outputs_energy_flows_d458); end
  def test_outputs_energy_flows_f458; assert_equal("Transport", worksheet.outputs_energy_flows_f458); end
  def test_outputs_energy_flows_i458; assert_equal("G.C.01", worksheet.outputs_energy_flows_i458); end
  def test_outputs_energy_flows_j458; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j458); end
  def test_outputs_energy_flows_p458; assert_equal("Global transport", worksheet.outputs_energy_flows_p458); end
  def test_outputs_energy_flows_v458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v458||0), 0.002); end
  def test_outputs_energy_flows_w458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w458||0), 0.002); end
  def test_outputs_energy_flows_x458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x458||0), 0.002); end
  def test_outputs_energy_flows_y458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y458||0), 0.002); end
  def test_outputs_energy_flows_z458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z458||0), 0.002); end
  def test_outputs_energy_flows_aa458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa458||0), 0.002); end
  def test_outputs_energy_flows_ab458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab458||0), 0.002); end
  def test_outputs_energy_flows_ac458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac458||0), 0.002); end
  def test_outputs_energy_flows_ad458; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad458||0), 0.002); end
  def test_outputs_energy_flows_d460; assert_equal("Liquid", worksheet.outputs_energy_flows_d460); end
  def test_outputs_energy_flows_f460; assert_equal("Transport", worksheet.outputs_energy_flows_f460); end
  def test_outputs_energy_flows_i460; assert_equal("G.C.02", worksheet.outputs_energy_flows_i460); end
  def test_outputs_energy_flows_j460; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j460); end
  def test_outputs_energy_flows_p460; assert_equal("Global transport", worksheet.outputs_energy_flows_p460); end
  def test_outputs_energy_flows_v460; assert_in_epsilon(98.37353576934116, worksheet.outputs_energy_flows_v460, 0.002); end
  def test_outputs_energy_flows_w460; assert_in_epsilon(105.95847713744624, worksheet.outputs_energy_flows_w460, 0.002); end
  def test_outputs_energy_flows_x460; assert_in_epsilon(114.1114613312217, worksheet.outputs_energy_flows_x460, 0.002); end
  def test_outputs_energy_flows_y460; assert_in_epsilon(122.17410370657481, worksheet.outputs_energy_flows_y460, 0.002); end
  def test_outputs_energy_flows_z460; assert_in_epsilon(130.4532506555218, worksheet.outputs_energy_flows_z460, 0.002); end
  def test_outputs_energy_flows_aa460; assert_in_epsilon(138.83808417958733, worksheet.outputs_energy_flows_aa460, 0.002); end
  def test_outputs_energy_flows_ab460; assert_in_epsilon(147.20261977066264, worksheet.outputs_energy_flows_ab460, 0.002); end
  def test_outputs_energy_flows_ac460; assert_in_epsilon(155.82729374671896, worksheet.outputs_energy_flows_ac460, 0.002); end
  def test_outputs_energy_flows_ad460; assert_in_epsilon(164.4450868101414, worksheet.outputs_energy_flows_ad460, 0.002); end
  def test_outputs_energy_flows_d462; assert_equal("Gas", worksheet.outputs_energy_flows_d462); end
  def test_outputs_energy_flows_f462; assert_equal("Transport", worksheet.outputs_energy_flows_f462); end
  def test_outputs_energy_flows_i462; assert_equal("G.C.03", worksheet.outputs_energy_flows_i462); end
  def test_outputs_energy_flows_j462; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j462); end
  def test_outputs_energy_flows_p462; assert_equal("Global transport", worksheet.outputs_energy_flows_p462); end
  def test_outputs_energy_flows_v462; assert_in_delta(0.33380184332999924, worksheet.outputs_energy_flows_v462, 0.002); end
  def test_outputs_energy_flows_w462; assert_in_delta(0.5795196358658151, worksheet.outputs_energy_flows_w462, 0.002); end
  def test_outputs_energy_flows_x462; assert_in_delta(0.9423317229740672, worksheet.outputs_energy_flows_x462, 0.002); end
  def test_outputs_energy_flows_y462; assert_in_epsilon(1.3745306907975792, worksheet.outputs_energy_flows_y462, 0.002); end
  def test_outputs_energy_flows_z462; assert_in_epsilon(1.8834229726828258, worksheet.outputs_energy_flows_z462, 0.002); end
  def test_outputs_energy_flows_aa462; assert_in_epsilon(2.4724535682347693, worksheet.outputs_energy_flows_aa462, 0.002); end
  def test_outputs_energy_flows_ab462; assert_in_epsilon(3.143907862071528, worksheet.outputs_energy_flows_ab462, 0.002); end
  def test_outputs_energy_flows_ac462; assert_in_epsilon(3.907339839904444, worksheet.outputs_energy_flows_ac462, 0.002); end
  def test_outputs_energy_flows_ad462; assert_in_epsilon(4.762667057020004, worksheet.outputs_energy_flows_ad462, 0.002); end
  def test_outputs_energy_flows_d464; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d464); end
  def test_outputs_energy_flows_f464; assert_equal("Transport", worksheet.outputs_energy_flows_f464); end
  def test_outputs_energy_flows_i464; assert_equal("G.E.01", worksheet.outputs_energy_flows_i464); end
  def test_outputs_energy_flows_j464; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j464); end
  def test_outputs_energy_flows_p464; assert_equal("Global transport", worksheet.outputs_energy_flows_p464); end
  def test_outputs_energy_flows_v464; assert_in_delta(0.6129674547554449, worksheet.outputs_energy_flows_v464, 0.002); end
  def test_outputs_energy_flows_w464; assert_in_delta(0.9932996373564447, worksheet.outputs_energy_flows_w464, 0.002); end
  def test_outputs_energy_flows_x464; assert_in_epsilon(1.5335230048911672, worksheet.outputs_energy_flows_x464, 0.002); end
  def test_outputs_energy_flows_y464; assert_in_epsilon(2.156330485418077, worksheet.outputs_energy_flows_y464, 0.002); end
  def test_outputs_energy_flows_z464; assert_in_epsilon(2.864395323551145, worksheet.outputs_energy_flows_z464, 0.002); end
  def test_outputs_energy_flows_aa464; assert_in_epsilon(3.6628351440119933, worksheet.outputs_energy_flows_aa464, 0.002); end
  def test_outputs_energy_flows_ab464; assert_in_epsilon(4.553269261308895, worksheet.outputs_energy_flows_ab464, 0.002); end
  def test_outputs_energy_flows_ac464; assert_in_epsilon(5.543201289975257, worksheet.outputs_energy_flows_ac464, 0.002); end
  def test_outputs_energy_flows_ad464; assert_in_epsilon(6.629709242255666, worksheet.outputs_energy_flows_ad464, 0.002); end
  def test_outputs_energy_flows_d466; assert_equal("Solid", worksheet.outputs_energy_flows_d466); end
  def test_outputs_energy_flows_f466; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f466); end
  def test_outputs_energy_flows_i466; assert_equal("G.C.01", worksheet.outputs_energy_flows_i466); end
  def test_outputs_energy_flows_j466; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j466); end
  def test_outputs_energy_flows_k466; assert_equal("G.FF.01", worksheet.outputs_energy_flows_k466); end
  def test_outputs_energy_flows_l466; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_l466); end
  def test_outputs_energy_flows_p466; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p466); end
  def test_outputs_energy_flows_v466; assert_in_epsilon(50.70935180962913, worksheet.outputs_energy_flows_v466, 0.002); end
  def test_outputs_energy_flows_w466; assert_in_epsilon(53.92420108562173, worksheet.outputs_energy_flows_w466, 0.002); end
  def test_outputs_energy_flows_x466; assert_in_epsilon(58.37851816734846, worksheet.outputs_energy_flows_x466, 0.002); end
  def test_outputs_energy_flows_y466; assert_in_epsilon(62.8671172854209, worksheet.outputs_energy_flows_y466, 0.002); end
  def test_outputs_energy_flows_z466; assert_in_epsilon(67.48576671424883, worksheet.outputs_energy_flows_z466, 0.002); end
  def test_outputs_energy_flows_aa466; assert_in_epsilon(72.10913224483946, worksheet.outputs_energy_flows_aa466, 0.002); end
  def test_outputs_energy_flows_ab466; assert_in_epsilon(76.72428459802406, worksheet.outputs_energy_flows_ab466, 0.002); end
  def test_outputs_energy_flows_ac466; assert_in_epsilon(81.82545282030729, worksheet.outputs_energy_flows_ac466, 0.002); end
  def test_outputs_energy_flows_ad466; assert_in_epsilon(86.13231502612213, worksheet.outputs_energy_flows_ad466, 0.002); end
  def test_outputs_energy_flows_d468; assert_equal("Liquid", worksheet.outputs_energy_flows_d468); end
  def test_outputs_energy_flows_f468; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f468); end
  def test_outputs_energy_flows_i468; assert_equal("G.C.02", worksheet.outputs_energy_flows_i468); end
  def test_outputs_energy_flows_j468; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j468); end
  def test_outputs_energy_flows_k468; assert_equal("G.FF.02", worksheet.outputs_energy_flows_k468); end
  def test_outputs_energy_flows_l468; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_l468); end
  def test_outputs_energy_flows_p468; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p468); end
  def test_outputs_energy_flows_v468; assert_in_epsilon(30.809506899323743, worksheet.outputs_energy_flows_v468, 0.002); end
  def test_outputs_energy_flows_w468; assert_in_epsilon(31.562123942440167, worksheet.outputs_energy_flows_w468, 0.002); end
  def test_outputs_energy_flows_x468; assert_in_epsilon(34.428765945457, worksheet.outputs_energy_flows_x468, 0.002); end
  def test_outputs_energy_flows_y468; assert_in_epsilon(37.18812203573718, worksheet.outputs_energy_flows_y468, 0.002); end
  def test_outputs_energy_flows_z468; assert_in_epsilon(40.09576880547438, worksheet.outputs_energy_flows_z468, 0.002); end
  def test_outputs_energy_flows_aa468; assert_in_epsilon(43.03896885147704, worksheet.outputs_energy_flows_aa468, 0.002); end
  def test_outputs_energy_flows_ab468; assert_in_epsilon(45.95518128989533, worksheet.outputs_energy_flows_ab468, 0.002); end
  def test_outputs_energy_flows_ac468; assert_in_epsilon(49.22495898004088, worksheet.outputs_energy_flows_ac468, 0.002); end
  def test_outputs_energy_flows_ad468; assert_in_epsilon(52.06750753530781, worksheet.outputs_energy_flows_ad468, 0.002); end
  def test_outputs_energy_flows_d470; assert_equal("Gas", worksheet.outputs_energy_flows_d470); end
  def test_outputs_energy_flows_f470; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f470); end
  def test_outputs_energy_flows_i470; assert_equal("G.C.03", worksheet.outputs_energy_flows_i470); end
  def test_outputs_energy_flows_j470; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j470); end
  def test_outputs_energy_flows_k470; assert_equal("G.FF.03", worksheet.outputs_energy_flows_k470); end
  def test_outputs_energy_flows_l470; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_l470); end
  def test_outputs_energy_flows_p470; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p470); end
  def test_outputs_energy_flows_v470; assert_in_epsilon(28.315031514137644, worksheet.outputs_energy_flows_v470, 0.002); end
  def test_outputs_energy_flows_w470; assert_in_epsilon(29.936617170999455, worksheet.outputs_energy_flows_w470, 0.002); end
  def test_outputs_energy_flows_x470; assert_in_epsilon(32.72294404797483, worksheet.outputs_energy_flows_x470, 0.002); end
  def test_outputs_energy_flows_y470; assert_in_epsilon(35.517202655619755, worksheet.outputs_energy_flows_y470, 0.002); end
  def test_outputs_energy_flows_z470; assert_in_epsilon(38.342398137873786, worksheet.outputs_energy_flows_z470, 0.002); end
  def test_outputs_energy_flows_aa470; assert_in_epsilon(41.12970475543783, worksheet.outputs_energy_flows_aa470, 0.002); end
  def test_outputs_energy_flows_ab470; assert_in_epsilon(43.8876932564236, worksheet.outputs_energy_flows_ab470, 0.002); end
  def test_outputs_energy_flows_ac470; assert_in_epsilon(46.71005525785973, worksheet.outputs_energy_flows_ac470, 0.002); end
  def test_outputs_energy_flows_ad470; assert_in_epsilon(49.308689115795374, worksheet.outputs_energy_flows_ad470, 0.002); end
  def test_outputs_energy_flows_d472; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d472); end
  def test_outputs_energy_flows_f472; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f472); end
  def test_outputs_energy_flows_i472; assert_equal("G.E.01", worksheet.outputs_energy_flows_i472); end
  def test_outputs_energy_flows_j472; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j472); end
  def test_outputs_energy_flows_p472; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p472); end
  def test_outputs_energy_flows_v472; assert_in_epsilon(28.20362809307946, worksheet.outputs_energy_flows_v472, 0.002); end
  def test_outputs_energy_flows_w472; assert_in_epsilon(30.026421777563737, worksheet.outputs_energy_flows_w472, 0.002); end
  def test_outputs_energy_flows_x472; assert_in_epsilon(32.84484118178725, worksheet.outputs_energy_flows_x472, 0.002); end
  def test_outputs_energy_flows_y472; assert_in_epsilon(35.686089147371746, worksheet.outputs_energy_flows_y472, 0.002); end
  def test_outputs_energy_flows_z472; assert_in_epsilon(38.8110153380723, worksheet.outputs_energy_flows_z472, 0.002); end
  def test_outputs_energy_flows_aa472; assert_in_epsilon(41.97125710112742, worksheet.outputs_energy_flows_aa472, 0.002); end
  def test_outputs_energy_flows_ab472; assert_in_epsilon(45.13979824481583, worksheet.outputs_energy_flows_ab472, 0.002); end
  def test_outputs_energy_flows_ac472; assert_in_epsilon(48.515380573493374, worksheet.outputs_energy_flows_ac472, 0.002); end
  def test_outputs_energy_flows_ad472; assert_in_epsilon(52.24332318377344, worksheet.outputs_energy_flows_ad472, 0.002); end
  def test_outputs_energy_flows_d474; assert_equal("Heat network", worksheet.outputs_energy_flows_d474); end
  def test_outputs_energy_flows_f474; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f474); end
  def test_outputs_energy_flows_i474; assert_equal("G.H.01", worksheet.outputs_energy_flows_i474); end
  def test_outputs_energy_flows_j474; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j474); end
  def test_outputs_energy_flows_p474; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p474); end
  def test_outputs_energy_flows_v474; assert_in_epsilon(5.310102447345097, worksheet.outputs_energy_flows_v474, 0.002); end
  def test_outputs_energy_flows_w474; assert_in_epsilon(5.547581771160388, worksheet.outputs_energy_flows_w474, 0.002); end
  def test_outputs_energy_flows_x474; assert_in_epsilon(6.054140712727335, worksheet.outputs_energy_flows_x474, 0.002); end
  def test_outputs_energy_flows_y474; assert_in_epsilon(6.5613055710157475, worksheet.outputs_energy_flows_y474, 0.002); end
  def test_outputs_energy_flows_z474; assert_in_epsilon(7.074730134123316, worksheet.outputs_energy_flows_z474, 0.002); end
  def test_outputs_energy_flows_aa474; assert_in_epsilon(7.580272235026475, worksheet.outputs_energy_flows_aa474, 0.002); end
  def test_outputs_energy_flows_ab474; assert_in_epsilon(8.073761651632234, worksheet.outputs_energy_flows_ab474, 0.002); end
  def test_outputs_energy_flows_ac474; assert_in_epsilon(8.585514812868745, worksheet.outputs_energy_flows_ac474, 0.002); end
  def test_outputs_energy_flows_ad474; assert_in_epsilon(9.035686899234909, worksheet.outputs_energy_flows_ad474, 0.002); end
  def test_outputs_energy_flows_d476; assert_equal("Solid", worksheet.outputs_energy_flows_d476); end
  def test_outputs_energy_flows_f476; assert_equal("Buildings", worksheet.outputs_energy_flows_f476); end
  def test_outputs_energy_flows_i476; assert_equal("G.C.01", worksheet.outputs_energy_flows_i476); end
  def test_outputs_energy_flows_j476; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j476); end
  def test_outputs_energy_flows_k476; assert_equal("G.BM.13", worksheet.outputs_energy_flows_k476); end
  def test_outputs_energy_flows_l476; assert_equal("Global Traditional biomass", worksheet.outputs_energy_flows_l476); end
  def test_outputs_energy_flows_p476; assert_equal("Global buildings", worksheet.outputs_energy_flows_p476); end
  def test_outputs_energy_flows_v476; assert_in_epsilon(33.54563205189584, worksheet.outputs_energy_flows_v476, 0.002); end
  def test_outputs_energy_flows_w476; assert_in_epsilon(33.93593972170837, worksheet.outputs_energy_flows_w476, 0.002); end
  def test_outputs_energy_flows_x476; assert_in_epsilon(34.000337706953175, worksheet.outputs_energy_flows_x476, 0.002); end
  def test_outputs_energy_flows_y476; assert_in_epsilon(33.997478328061646, worksheet.outputs_energy_flows_y476, 0.002); end
  def test_outputs_energy_flows_z476; assert_in_epsilon(33.333652548350116, worksheet.outputs_energy_flows_z476, 0.002); end
  def test_outputs_energy_flows_aa476; assert_in_epsilon(32.73749859682767, worksheet.outputs_energy_flows_aa476, 0.002); end
  def test_outputs_energy_flows_ab476; assert_in_epsilon(32.252307563519956, worksheet.outputs_energy_flows_ab476, 0.002); end
  def test_outputs_energy_flows_ac476; assert_in_epsilon(31.123245745868452, worksheet.outputs_energy_flows_ac476, 0.002); end
  def test_outputs_energy_flows_ad476; assert_in_epsilon(31.323091133449054, worksheet.outputs_energy_flows_ad476, 0.002); end
  def test_outputs_energy_flows_d478; assert_equal("Liquid", worksheet.outputs_energy_flows_d478); end
  def test_outputs_energy_flows_f478; assert_equal("Buildings", worksheet.outputs_energy_flows_f478); end
  def test_outputs_energy_flows_i478; assert_equal("G.C.02", worksheet.outputs_energy_flows_i478); end
  def test_outputs_energy_flows_j478; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j478); end
  def test_outputs_energy_flows_p478; assert_equal("Global buildings", worksheet.outputs_energy_flows_p478); end
  def test_outputs_energy_flows_v478; assert_in_epsilon(11.152769387586785, worksheet.outputs_energy_flows_v478, 0.002); end
  def test_outputs_energy_flows_w478; assert_in_epsilon(11.627244413628201, worksheet.outputs_energy_flows_w478, 0.002); end
  def test_outputs_energy_flows_x478; assert_in_epsilon(12.012348487117098, worksheet.outputs_energy_flows_x478, 0.002); end
  def test_outputs_energy_flows_y478; assert_in_epsilon(12.165291216000075, worksheet.outputs_energy_flows_y478, 0.002); end
  def test_outputs_energy_flows_z478; assert_in_epsilon(12.288587992428981, worksheet.outputs_energy_flows_z478, 0.002); end
  def test_outputs_energy_flows_aa478; assert_in_epsilon(12.250285171752626, worksheet.outputs_energy_flows_aa478, 0.002); end
  def test_outputs_energy_flows_ab478; assert_in_epsilon(11.992309845490277, worksheet.outputs_energy_flows_ab478, 0.002); end
  def test_outputs_energy_flows_ac478; assert_in_epsilon(11.707561597552335, worksheet.outputs_energy_flows_ac478, 0.002); end
  def test_outputs_energy_flows_ad478; assert_in_epsilon(11.145806917263608, worksheet.outputs_energy_flows_ad478, 0.002); end
  def test_outputs_energy_flows_d480; assert_equal("Gas", worksheet.outputs_energy_flows_d480); end
  def test_outputs_energy_flows_f480; assert_equal("Buildings", worksheet.outputs_energy_flows_f480); end
  def test_outputs_energy_flows_i480; assert_equal("G.C.03", worksheet.outputs_energy_flows_i480); end
  def test_outputs_energy_flows_j480; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j480); end
  def test_outputs_energy_flows_p480; assert_equal("Global buildings", worksheet.outputs_energy_flows_p480); end
  def test_outputs_energy_flows_v480; assert_in_epsilon(25.057673095686482, worksheet.outputs_energy_flows_v480, 0.002); end
  def test_outputs_energy_flows_w480; assert_in_epsilon(26.999223582326028, worksheet.outputs_energy_flows_w480, 0.002); end
  def test_outputs_energy_flows_x480; assert_in_epsilon(29.082297718961353, worksheet.outputs_energy_flows_x480, 0.002); end
  def test_outputs_energy_flows_y480; assert_in_epsilon(30.682411298533047, worksheet.outputs_energy_flows_y480, 0.002); end
  def test_outputs_energy_flows_z480; assert_in_epsilon(32.49092269904267, worksheet.outputs_energy_flows_z480, 0.002); end
  def test_outputs_energy_flows_aa480; assert_in_epsilon(34.05417736462726, worksheet.outputs_energy_flows_aa480, 0.002); end
  def test_outputs_energy_flows_ab480; assert_in_epsilon(35.06926979746571, worksheet.outputs_energy_flows_ab480, 0.002); end
  def test_outputs_energy_flows_ac480; assert_in_epsilon(36.26367468323516, worksheet.outputs_energy_flows_ac480, 0.002); end
  def test_outputs_energy_flows_ad480; assert_in_epsilon(36.60740098604545, worksheet.outputs_energy_flows_ad480, 0.002); end
  def test_outputs_energy_flows_d482; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d482); end
  def test_outputs_energy_flows_f482; assert_equal("Buildings", worksheet.outputs_energy_flows_f482); end
  def test_outputs_energy_flows_i482; assert_equal("G.E.01", worksheet.outputs_energy_flows_i482); end
  def test_outputs_energy_flows_j482; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j482); end
  def test_outputs_energy_flows_n482; assert_equal("heater.microchp.non residential.space", worksheet.outputs_energy_flows_n482); end
  def test_outputs_energy_flows_o482; assert_equal("Global non residential chp used by people with access to electricity for space heating", worksheet.outputs_energy_flows_o482); end
  def test_outputs_energy_flows_p482; assert_equal("Global buildings", worksheet.outputs_energy_flows_p482); end
  def test_outputs_energy_flows_q482; assert_equal("heater.microchp.urban.space", worksheet.outputs_energy_flows_q482); end
  def test_outputs_energy_flows_r482; assert_equal("Global urban chp used by people with access to electricity for space heating", worksheet.outputs_energy_flows_r482); end
  def test_outputs_energy_flows_s482; assert_equal("heater.microchp.rural.space", worksheet.outputs_energy_flows_s482); end
  def test_outputs_energy_flows_t482; assert_equal("Global rural chp used by people with access to electricity for space heating", worksheet.outputs_energy_flows_t482); end
  def test_outputs_energy_flows_v482; assert_in_epsilon(35.65765875351628, worksheet.outputs_energy_flows_v482, 0.002); end
  def test_outputs_energy_flows_w482; assert_in_epsilon(40.19099195715869, worksheet.outputs_energy_flows_w482, 0.002); end
  def test_outputs_energy_flows_x482; assert_in_epsilon(45.75694403676585, worksheet.outputs_energy_flows_x482, 0.002); end
  def test_outputs_energy_flows_y482; assert_in_epsilon(51.13014879210733, worksheet.outputs_energy_flows_y482, 0.002); end
  def test_outputs_energy_flows_z482; assert_in_epsilon(56.933610438419926, worksheet.outputs_energy_flows_z482, 0.002); end
  def test_outputs_energy_flows_aa482; assert_in_epsilon(62.64480645057477, worksheet.outputs_energy_flows_aa482, 0.002); end
  def test_outputs_energy_flows_ab482; assert_in_epsilon(67.92928050322709, worksheet.outputs_energy_flows_ab482, 0.002); end
  def test_outputs_energy_flows_ac482; assert_in_epsilon(73.50167437976354, worksheet.outputs_energy_flows_ac482, 0.002); end
  def test_outputs_energy_flows_ad482; assert_in_epsilon(78.04492422394262, worksheet.outputs_energy_flows_ad482, 0.002); end
  def test_outputs_energy_flows_d484; assert_equal("Heat network", worksheet.outputs_energy_flows_d484); end
  def test_outputs_energy_flows_f484; assert_equal("Buildings", worksheet.outputs_energy_flows_f484); end
  def test_outputs_energy_flows_i484; assert_equal("G.H.01", worksheet.outputs_energy_flows_i484); end
  def test_outputs_energy_flows_j484; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j484); end
  def test_outputs_energy_flows_n484; assert_equal("heater.microchp.non residential.space", worksheet.outputs_energy_flows_n484); end
  def test_outputs_energy_flows_o484; assert_equal("Global non residential chp used by people with access to electricity for space heating", worksheet.outputs_energy_flows_o484); end
  def test_outputs_energy_flows_p484; assert_equal("Global buildings", worksheet.outputs_energy_flows_p484); end
  def test_outputs_energy_flows_q484; assert_equal("heater.microchp.urban.space", worksheet.outputs_energy_flows_q484); end
  def test_outputs_energy_flows_r484; assert_equal("Global urban chp used by people with access to electricity for space heating", worksheet.outputs_energy_flows_r484); end
  def test_outputs_energy_flows_s484; assert_equal("heater.microchp.rural.space", worksheet.outputs_energy_flows_s484); end
  def test_outputs_energy_flows_t484; assert_equal("Global rural chp used by people with access to electricity for space heating", worksheet.outputs_energy_flows_t484); end
  def test_outputs_energy_flows_v484; assert_in_epsilon(4.325706707493298, worksheet.outputs_energy_flows_v484, 0.002); end
  def test_outputs_energy_flows_w484; assert_in_epsilon(4.997772950369805, worksheet.outputs_energy_flows_w484, 0.002); end
  def test_outputs_energy_flows_x484; assert_in_epsilon(5.829947966625302, worksheet.outputs_energy_flows_x484, 0.002); end
  def test_outputs_energy_flows_y484; assert_in_epsilon(6.593039436080997, worksheet.outputs_energy_flows_y484, 0.002); end
  def test_outputs_energy_flows_z484; assert_in_epsilon(7.482612915051631, worksheet.outputs_energy_flows_z484, 0.002); end
  def test_outputs_energy_flows_aa484; assert_in_epsilon(8.358620675329353, worksheet.outputs_energy_flows_aa484, 0.002); end
  def test_outputs_energy_flows_ab484; assert_in_epsilon(9.092265225357078, worksheet.outputs_energy_flows_ab484, 0.002); end
  def test_outputs_energy_flows_ac484; assert_in_epsilon(9.93210225529022, worksheet.outputs_energy_flows_ac484, 0.002); end
  def test_outputs_energy_flows_ad484; assert_in_epsilon(10.472979143624695, worksheet.outputs_energy_flows_ad484, 0.002); end
  def test_outputs_energy_flows_d486; assert_equal("Solar", worksheet.outputs_energy_flows_d486); end
  def test_outputs_energy_flows_f486; assert_equal("Buildings", worksheet.outputs_energy_flows_f486); end
  def test_outputs_energy_flows_i486; assert_equal("G.R.01", worksheet.outputs_energy_flows_i486); end
  def test_outputs_energy_flows_j486; assert_equal("Global Solar", worksheet.outputs_energy_flows_j486); end
  def test_outputs_energy_flows_k486; assert_equal("G.R.07", worksheet.outputs_energy_flows_k486); end
  def test_outputs_energy_flows_l486; assert_equal("Global Environmental heat", worksheet.outputs_energy_flows_l486); end
  def test_outputs_energy_flows_p486; assert_equal("Global buildings", worksheet.outputs_energy_flows_p486); end
  def test_outputs_energy_flows_v486; assert_in_epsilon(6.90690180245268, worksheet.outputs_energy_flows_v486, 0.002); end
  def test_outputs_energy_flows_w486; assert_in_epsilon(7.746642136269049, worksheet.outputs_energy_flows_w486, 0.002); end
  def test_outputs_energy_flows_x486; assert_in_epsilon(8.767265808181381, worksheet.outputs_energy_flows_x486, 0.002); end
  def test_outputs_energy_flows_y486; assert_in_epsilon(9.735785410038948, worksheet.outputs_energy_flows_y486, 0.002); end
  def test_outputs_energy_flows_z486; assert_in_epsilon(10.770293125305878, worksheet.outputs_energy_flows_z486, 0.002); end
  def test_outputs_energy_flows_aa486; assert_in_epsilon(11.771302489597623, worksheet.outputs_energy_flows_aa486, 0.002); end
  def test_outputs_energy_flows_ab486; assert_in_epsilon(12.658946470790449, worksheet.outputs_energy_flows_ab486, 0.002); end
  def test_outputs_energy_flows_ac486; assert_in_epsilon(13.57754483652487, worksheet.outputs_energy_flows_ac486, 0.002); end
  def test_outputs_energy_flows_ad486; assert_in_epsilon(14.255267942109777, worksheet.outputs_energy_flows_ad486, 0.002); end
  def test_outputs_energy_flows_d488; assert_equal("Solid", worksheet.outputs_energy_flows_d488); end
  def test_outputs_energy_flows_f488; assert_equal("Other", worksheet.outputs_energy_flows_f488); end
  def test_outputs_energy_flows_i488; assert_equal("G.C.01", worksheet.outputs_energy_flows_i488); end
  def test_outputs_energy_flows_j488; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j488); end
  def test_outputs_energy_flows_k488; assert_equal("G.BM.09", worksheet.outputs_energy_flows_k488); end
  def test_outputs_energy_flows_l488; assert_equal("Global Dry biomass and waste", worksheet.outputs_energy_flows_l488); end
  def test_outputs_energy_flows_q488; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_q488); end
  def test_outputs_energy_flows_v488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v488||0), 0.002); end
  def test_outputs_energy_flows_w488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_w488||0), 0.002); end
  def test_outputs_energy_flows_x488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_x488||0), 0.002); end
  def test_outputs_energy_flows_y488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_y488||0), 0.002); end
  def test_outputs_energy_flows_z488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_z488||0), 0.002); end
  def test_outputs_energy_flows_aa488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_aa488||0), 0.002); end
  def test_outputs_energy_flows_ab488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ab488||0), 0.002); end
  def test_outputs_energy_flows_ac488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ac488||0), 0.002); end
  def test_outputs_energy_flows_ad488; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad488||0), 0.002); end
  def test_outputs_energy_flows_d490; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d490); end
  def test_outputs_energy_flows_f490; assert_equal("Other", worksheet.outputs_energy_flows_f490); end
  def test_outputs_energy_flows_i490; assert_equal("G.E.01", worksheet.outputs_energy_flows_i490); end
  def test_outputs_energy_flows_j490; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j490); end
  def test_outputs_energy_flows_n490; assert_equal("Arable.food", worksheet.outputs_energy_flows_n490); end
  def test_outputs_energy_flows_o490; assert_equal("Global Arable land for food crops", worksheet.outputs_energy_flows_o490); end
  def test_outputs_energy_flows_q490; assert_equal("Greenhouse gas removal", worksheet.outputs_energy_flows_q490); end
  def test_outputs_energy_flows_v490; assert_in_epsilon(3.9999999999999996, worksheet.outputs_energy_flows_v490, 0.002); end
  def test_outputs_energy_flows_w490; assert_in_epsilon(4.088955043780237, worksheet.outputs_energy_flows_w490, 0.002); end
  def test_outputs_energy_flows_x490; assert_in_epsilon(4.246972465792244, worksheet.outputs_energy_flows_x490, 0.002); end
  def test_outputs_energy_flows_y490; assert_in_epsilon(4.388818930974344, worksheet.outputs_energy_flows_y490, 0.002); end
  def test_outputs_energy_flows_z490; assert_in_epsilon(4.516559556192925, worksheet.outputs_energy_flows_z490, 0.002); end
  def test_outputs_energy_flows_aa490; assert_in_epsilon(4.718341318072903, worksheet.outputs_energy_flows_aa490, 0.002); end
  def test_outputs_energy_flows_ab490; assert_in_epsilon(4.822216243466424, worksheet.outputs_energy_flows_ab490, 0.002); end
  def test_outputs_energy_flows_ac490; assert_in_epsilon(4.913068492116926, worksheet.outputs_energy_flows_ac490, 0.002); end
  def test_outputs_energy_flows_ad490; assert_in_epsilon(4.990372596096302, worksheet.outputs_energy_flows_ad490, 0.002); end
  def test_outputs_energy_flows_d492; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d492); end
  def test_outputs_energy_flows_f492; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f492); end
  def test_outputs_energy_flows_i492; assert_equal("G.L.02", worksheet.outputs_energy_flows_i492); end
  def test_outputs_energy_flows_j492; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_j492); end
  def test_outputs_energy_flows_o492; assert_equal("electricity.network", worksheet.outputs_energy_flows_o492); end
  def test_outputs_energy_flows_p492; assert_equal("Global Electricity distribution network", worksheet.outputs_energy_flows_p492); end
  def test_outputs_energy_flows_v492; assert_in_epsilon(5.813633087299332, worksheet.outputs_energy_flows_v492, 0.002); end
  def test_outputs_energy_flows_w492; assert_in_epsilon(6.392648219454592, worksheet.outputs_energy_flows_w492, 0.002); end
  def test_outputs_energy_flows_x492; assert_in_epsilon(7.163231521911023, worksheet.outputs_energy_flows_x492, 0.002); end
  def test_outputs_energy_flows_y492; assert_in_epsilon(7.925116100718461, worksheet.outputs_energy_flows_y492, 0.002); end
  def test_outputs_energy_flows_z492; assert_in_epsilon(8.753493464977764, worksheet.outputs_energy_flows_z492, 0.002); end
  def test_outputs_energy_flows_aa492; assert_in_epsilon(9.591004258387715, worksheet.outputs_energy_flows_aa492, 0.002); end
  def test_outputs_energy_flows_ab492; assert_in_epsilon(10.392675749660167, worksheet.outputs_energy_flows_ab492, 0.002); end
  def test_outputs_energy_flows_ac492; assert_in_epsilon(11.243552770938162, worksheet.outputs_energy_flows_ac492, 0.002); end
  def test_outputs_energy_flows_ad492; assert_in_epsilon(12.04447104978893, worksheet.outputs_energy_flows_ad492, 0.002); end
  def test_user_inputs_g7; assert_in_delta(0.0, (worksheet.user_inputs_g7||0), 0.002); end
  def test_user_inputs_g8; assert_in_delta(0.0, (worksheet.user_inputs_g8||0), 0.002); end
  def test_user_inputs_g9; assert_equal("Urban and non-urban travel will grow in cities with established development patterns. Without planning initiatives to shift existing trends, cities that are still growing rapidly will see more growth in personal travel.", worksheet.user_inputs_g9); end
  def test_user_inputs_g10; assert_equal("Freight tonne-kms remains closely tied to GDP and increase by roughly 140% in road, rail, and shipping.", worksheet.user_inputs_g10); end
  def test_user_inputs_g11; assert_equal("For Automobile cities the mode share by trip is: Car - 68%,   Bus - 14%, Rail - 3%,     2-3W - 2%, Bike - 1%, Walk - 12% . For Transit cities the mode share by trip is: Car - 60%,   Bus - 16%,  Rail - 1%,   2-3W - 3%, Bike - 5%, Walk - 15%. For Booming Cities, the mode share per trip is: Car - 55%,   Bus - 16%,  Rail - 1%,   2-3W - 15%, Bike - 1%, Walk -12%. For rural travel, developed countries will see a mode share of:Car - 86%,   Bus - 4%,  Rail - 4%,   2-3W - 1%, Bike - 1%, Walk -5%; while developing countries will see a mode share of: Car - 50%,   Bus - 9%,  Rail - 8%,   2-3W - 23%, Bike - 2%, Walk -8%. Ground freight will be 80% road and 20% rail globally.", worksheet.user_inputs_g11); end
  def test_user_inputs_g12; assert_equal("Limited improvement, with most transport modes decreasing their energy intensity by 0.5% annually. ", worksheet.user_inputs_g12); end
  def test_user_inputs_g13; assert_equal("Limited electrification occurs, with  10% hybrids and 2% electric for passenger cars, and  5% hybrids and 5% electric for heavy duty vehicles.", worksheet.user_inputs_g13); end
  def test_user_inputs_g14; assert_equal("In 2050 the average house floor area will be 0.0000000105 M ha per householdthe average services building floor area will be 0 M ha pre capita", worksheet.user_inputs_g14); end
  def test_user_inputs_g15; assert_equal("In 2050 the average house inner temperature will be 19 ℃ and the services will be 21 ℃ in winter and 25 ℃, 24 ℃ in summer. The how water demand will be 20088.75 l per y per capita", worksheet.user_inputs_g15); end
  def test_user_inputs_g16; assert_equal("In 2050 the average household will own 1.1 refrigerator, 0.4 dishwasher, 0.9 clothwasher, 0.3 clothdryer, 2 TV, 2.4 miscellaneous. And will own 35 bulbs.", worksheet.user_inputs_g16); end
  def test_user_inputs_g17; assert_equal("In 2050 the average heat loss coefficient of buildings will be 10.2 GW/(M ha*℃), the thermal performance of building will improved by 32%", worksheet.user_inputs_g17); end
  def test_user_inputs_g18; assert_equal("In 2050 the heating techology structure will be 2% solid boiler, 10% liquid boiler, 38% gas boiler, 3% heatpump, 8% electricity heater, 0% solar heater, 4% microchp, 36% districtheating. The cooling structure will be 89% aircondition, 4% chiller, 8% solar cooling. The cooking technology structure will be7% solid stoves, 12% liquid stoves, 45% gas stoves, 28% electricity stoves, 9% traditional biomass stoves. The lighting techonlogy structure will be 60% incandescents, 3% halogens, 35% CFLs, 3% LEDs. ", worksheet.user_inputs_g18); end
  def test_user_inputs_g19; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.00000008 GW improved by 20%, dishwasher 0.0000012 GW improved by 20%, clothwasher 0.00000056 GW improved by 20%, clothdryer 0.0000012 GW improved by 20%, TV 0.0000002 GW improved by 20%, miscellaneous 0.00000008 GW improved by 20%.", worksheet.user_inputs_g19); end
  def test_user_inputs_g20; assert_equal("Demand for products leads to the production of 15.3Gt of materials, that is: 2.9Gt of crude steel, 0.2Gt of aluminium, 1.3Gt of chemicals, 0.9Gt of paper, 1.3Gt of timber, 2.3Gt of other materials, & 1.3Gt of cement", worksheet.user_inputs_g20); end
  def test_user_inputs_g21; assert_equal("Products design leads to the reduction of -1% of materials in 2050", worksheet.user_inputs_g21); end
  def test_user_inputs_g22; assert_equal("Specific emissions for Steel reduce/increase by -2%& for Aluminium  by of -2%", worksheet.user_inputs_g22); end
  def test_user_inputs_g23; assert_equal("Specific emissions for chemicals reduce/increase by 1%", worksheet.user_inputs_g23); end
  def test_user_inputs_g24; assert_equal("Specific emissions for Pulp & paper reduce/increase by -18%& for other materials by -18%", worksheet.user_inputs_g24); end
  def test_user_inputs_g25; assert_equal("Specific emissions for Steel reduce/increase by -2%& for Aluminium  by of -2%", worksheet.user_inputs_g25); end
  def test_user_inputs_g26; assert_equal("CCS enables a -9% CO2 reduction (excluding electricity emissions & counting biomass as fossil fuel) and an 2EJ electricity consumption increase", worksheet.user_inputs_g26); end
  def test_user_inputs_g27; assert_equal("In 2050 out of total fossil energy supplied it is 45.454% of solid, 22.027% of liquid and 32.516% of gas power", worksheet.user_inputs_g27); end
  def test_user_inputs_g28; assert_equal("In 2050 out of fossil energy supplied it is 18.72% by solid USC, 27.69% by solid SC, 53.59% by solid Sub-C, 52.4% by eff. liquid, 47.6% by ineff. liquid, 38.5% by OCGT and 61.5% by CCGT plant", worksheet.user_inputs_g28); end
  def test_user_inputs_g29; assert_equal("In 2050 there is 253 GW of CCS installed power capacity", worksheet.user_inputs_g29); end
  def test_user_inputs_g30; assert_equal("In 2050 there is 502.2 GW of installed nuclear power capacity", worksheet.user_inputs_g30); end
  def test_user_inputs_g31; assert_equal("In 2050 there is 1390.2 GW of installed wind power capacity", worksheet.user_inputs_g31); end
  def test_user_inputs_g32; assert_equal("In 2050 there is 1659.7 GW of installed hydro power capacity", worksheet.user_inputs_g32); end
  def test_user_inputs_g33; assert_equal("In 2050 there is 43.6 GW of installed marine power capacity", worksheet.user_inputs_g33); end
  def test_user_inputs_g34; assert_equal("In 2050 there is 479.6 GW of installed solar power capacity", worksheet.user_inputs_g34); end
  def test_user_inputs_g35; assert_equal("In 2050 there is 68.8 GW of installed geothermal power capacity", worksheet.user_inputs_g35); end
  def test_user_inputs_g36; assert_equal("In 2050 there is 277.5 GW of electricity storage capacity", worksheet.user_inputs_g36); end
  def test_user_inputs_g37; assert_in_delta(0.0, (worksheet.user_inputs_g37||0), 0.002); end
  def test_user_inputs_g38; assert_in_delta(0.0, (worksheet.user_inputs_g38||0), 0.002); end
  def test_user_inputs_g39; assert_in_delta(0.0, (worksheet.user_inputs_g39||0), 0.002); end
  def test_user_inputs_g41; assert_in_delta(0.0, (worksheet.user_inputs_g41||0), 0.002); end
  def test_user_inputs_g42; assert_in_delta(0.0, (worksheet.user_inputs_g42||0), 0.002); end
  def test_user_inputs_g43; assert_in_delta(0.0, (worksheet.user_inputs_g43||0), 0.002); end
  def test_user_inputs_g44; assert_in_delta(0.0, (worksheet.user_inputs_g44||0), 0.002); end
  def test_user_inputs_g45; assert_in_delta(0.0, (worksheet.user_inputs_g45||0), 0.002); end
  def test_user_inputs_g46; assert_in_delta(0.0, (worksheet.user_inputs_g46||0), 0.002); end
  def test_user_inputs_g47; assert_in_delta(0.0, (worksheet.user_inputs_g47||0), 0.002); end
  def test_user_inputs_g48; assert_in_delta(0.0, (worksheet.user_inputs_g48||0), 0.002); end
  def test_user_inputs_g49; assert_in_delta(0.0, (worksheet.user_inputs_g49||0), 0.002); end
  def test_user_inputs_g50; assert_in_delta(0.0, (worksheet.user_inputs_g50||0), 0.002); end
  def test_user_inputs_g51; assert_in_delta(0.0, (worksheet.user_inputs_g51||0), 0.002); end
  def test_user_inputs_g52; assert_in_delta(0.0, (worksheet.user_inputs_g52||0), 0.002); end
  def test_user_inputs_f7; assert_in_epsilon(3.0, worksheet.user_inputs_f7, 0.002); end
  def test_user_inputs_f8; assert_in_epsilon(3.0, worksheet.user_inputs_f8, 0.002); end
  def test_user_inputs_f9; assert_in_epsilon(4.0, worksheet.user_inputs_f9, 0.002); end
  def test_user_inputs_f10; assert_in_epsilon(4.0, worksheet.user_inputs_f10, 0.002); end
  def test_user_inputs_f11; assert_in_epsilon(4.0, worksheet.user_inputs_f11, 0.002); end
  def test_user_inputs_f12; assert_in_epsilon(4.0, worksheet.user_inputs_f12, 0.002); end
  def test_user_inputs_f13; assert_in_epsilon(4.0, worksheet.user_inputs_f13, 0.002); end
  def test_user_inputs_f14; assert_in_epsilon(4.0, worksheet.user_inputs_f14, 0.002); end
  def test_user_inputs_f15; assert_in_epsilon(4.0, worksheet.user_inputs_f15, 0.002); end
  def test_user_inputs_f16; assert_in_epsilon(4.0, worksheet.user_inputs_f16, 0.002); end
  def test_user_inputs_f17; assert_in_epsilon(4.0, worksheet.user_inputs_f17, 0.002); end
  def test_user_inputs_f18; assert_in_epsilon(4.0, worksheet.user_inputs_f18, 0.002); end
  def test_user_inputs_f19; assert_in_epsilon(4.0, worksheet.user_inputs_f19, 0.002); end
  def test_user_inputs_f20; assert_in_epsilon(4.0, worksheet.user_inputs_f20, 0.002); end
  def test_user_inputs_f21; assert_in_epsilon(4.0, worksheet.user_inputs_f21, 0.002); end
  def test_user_inputs_f22; assert_in_epsilon(4.0, worksheet.user_inputs_f22, 0.002); end
  def test_user_inputs_f23; assert_in_epsilon(4.0, worksheet.user_inputs_f23, 0.002); end
  def test_user_inputs_f24; assert_in_epsilon(4.0, worksheet.user_inputs_f24, 0.002); end
  def test_user_inputs_f25; assert_in_epsilon(4.0, worksheet.user_inputs_f25, 0.002); end
  def test_user_inputs_f26; assert_in_epsilon(4.0, worksheet.user_inputs_f26, 0.002); end
  def test_user_inputs_f27; assert_in_epsilon(4.0, worksheet.user_inputs_f27, 0.002); end
  def test_user_inputs_f28; assert_in_epsilon(4.0, worksheet.user_inputs_f28, 0.002); end
  def test_user_inputs_f29; assert_in_epsilon(4.0, worksheet.user_inputs_f29, 0.002); end
  def test_user_inputs_f30; assert_in_epsilon(4.0, worksheet.user_inputs_f30, 0.002); end
  def test_user_inputs_f31; assert_in_epsilon(4.0, worksheet.user_inputs_f31, 0.002); end
  def test_user_inputs_f32; assert_in_epsilon(4.0, worksheet.user_inputs_f32, 0.002); end
  def test_user_inputs_f33; assert_in_epsilon(4.0, worksheet.user_inputs_f33, 0.002); end
  def test_user_inputs_f34; assert_in_epsilon(4.0, worksheet.user_inputs_f34, 0.002); end
  def test_user_inputs_f35; assert_in_epsilon(4.0, worksheet.user_inputs_f35, 0.002); end
  def test_user_inputs_f36; assert_in_epsilon(4.0, worksheet.user_inputs_f36, 0.002); end
  def test_user_inputs_f37; assert_in_epsilon(4.0, worksheet.user_inputs_f37, 0.002); end
  def test_user_inputs_f38; assert_in_epsilon(4.0, worksheet.user_inputs_f38, 0.002); end
  def test_user_inputs_f39; assert_in_epsilon(4.0, worksheet.user_inputs_f39, 0.002); end
  def test_user_inputs_f40; assert_in_epsilon(4.0, worksheet.user_inputs_f40, 0.002); end
  def test_user_inputs_f41; assert_in_epsilon(4.0, worksheet.user_inputs_f41, 0.002); end
  def test_user_inputs_f42; assert_in_epsilon(4.0, worksheet.user_inputs_f42, 0.002); end
  def test_user_inputs_f43; assert_in_epsilon(4.0, worksheet.user_inputs_f43, 0.002); end
  def test_user_inputs_f44; assert_in_epsilon(4.0, worksheet.user_inputs_f44, 0.002); end
  def test_user_inputs_f45; assert_in_epsilon(4.0, worksheet.user_inputs_f45, 0.002); end
  def test_user_inputs_f46; assert_in_epsilon(4.0, worksheet.user_inputs_f46, 0.002); end
  def test_user_inputs_f47; assert_in_epsilon(4.0, worksheet.user_inputs_f47, 0.002); end
  def test_user_inputs_f48; assert_in_epsilon(4.0, worksheet.user_inputs_f48, 0.002); end
  def test_user_inputs_f49; assert_in_epsilon(4.0, worksheet.user_inputs_f49, 0.002); end
  def test_user_inputs_f50; assert_in_epsilon(4.0, worksheet.user_inputs_f50, 0.002); end
  def test_user_inputs_f51; assert_in_epsilon(4.0, worksheet.user_inputs_f51, 0.002); end
  def test_user_inputs_f52; assert_equal("B", worksheet.user_inputs_f52); end
  def test_user_inputs_d7; assert_equal("Global population", worksheet.user_inputs_d7); end
  def test_user_inputs_d8; assert_equal("Urbanisation", worksheet.user_inputs_d8); end
  def test_user_inputs_d9; assert_equal("Passenger distance", worksheet.user_inputs_d9); end
  def test_user_inputs_d10; assert_equal("Freight distance", worksheet.user_inputs_d10); end
  def test_user_inputs_d11; assert_equal("Mode and occupancy", worksheet.user_inputs_d11); end
  def test_user_inputs_d12; assert_equal("Efficiency", worksheet.user_inputs_d12); end
  def test_user_inputs_d13; assert_equal("Electric and hydrogen", worksheet.user_inputs_d13); end
  def test_user_inputs_d14; assert_equal("Building size", worksheet.user_inputs_d14); end
  def test_user_inputs_d15; assert_equal("Temperature & hot water use", worksheet.user_inputs_d15); end
  def test_user_inputs_d16; assert_equal("Lighting, cooking & appliance use", worksheet.user_inputs_d16); end
  def test_user_inputs_d17; assert_equal("Building insulation", worksheet.user_inputs_d17); end
  def test_user_inputs_d18; assert_equal("Temperature, cooking & lighting technology", worksheet.user_inputs_d18); end
  def test_user_inputs_d19; assert_equal("Appliance efficiency", worksheet.user_inputs_d19); end
  def test_user_inputs_d20; assert_equal("Demand for products", worksheet.user_inputs_d20); end
  def test_user_inputs_d21; assert_equal("Design, material switch & recycling", worksheet.user_inputs_d21); end
  def test_user_inputs_d22; assert_equal("Iron, steel & aluminium", worksheet.user_inputs_d22); end
  def test_user_inputs_d23; assert_equal("Chemicals", worksheet.user_inputs_d23); end
  def test_user_inputs_d24; assert_equal("Paper and other", worksheet.user_inputs_d24); end
  def test_user_inputs_d25; assert_equal("Cement", worksheet.user_inputs_d25); end
  def test_user_inputs_d26; assert_equal("Carbon capture and storage", worksheet.user_inputs_d26); end
  def test_user_inputs_d27; assert_equal("Coal (incl. biomass) / oil / gas", worksheet.user_inputs_d27); end
  def test_user_inputs_d28; assert_equal("Fossil fuel efficiency", worksheet.user_inputs_d28); end
  def test_user_inputs_d29; assert_equal("Carbon capture and storage", worksheet.user_inputs_d29); end
  def test_user_inputs_d30; assert_equal("Nuclear", worksheet.user_inputs_d30); end
  def test_user_inputs_d31; assert_equal("Wind", worksheet.user_inputs_d31); end
  def test_user_inputs_d32; assert_equal("Hydroelectric", worksheet.user_inputs_d32); end
  def test_user_inputs_d33; assert_equal("Marine", worksheet.user_inputs_d33); end
  def test_user_inputs_d34; assert_equal("Solar", worksheet.user_inputs_d34); end
  def test_user_inputs_d35; assert_equal("Geothermal", worksheet.user_inputs_d35); end
  def test_user_inputs_d36; assert_equal("Storage and demand shifting", worksheet.user_inputs_d36); end
  def test_user_inputs_d37; assert_equal("Calories consumed", worksheet.user_inputs_d37); end
  def test_user_inputs_d38; assert_equal("Meat consumed", worksheet.user_inputs_d38); end
  def test_user_inputs_d39; assert_equal("Crop yields", worksheet.user_inputs_d39); end
  def test_user_inputs_d40; assert_equal("Land-use efficiency ", worksheet.user_inputs_d40); end
  def test_user_inputs_d41; assert_equal("Livestock yields", worksheet.user_inputs_d41); end
  def test_user_inputs_d42; assert_equal("Bioenergy yields", worksheet.user_inputs_d42); end
  def test_user_inputs_d43; assert_equal("Surplus land (forest & bioenergy) ", worksheet.user_inputs_d43); end
  def test_user_inputs_d44; assert_equal("Biochar", worksheet.user_inputs_d44); end
  def test_user_inputs_d45; assert_equal("Direct air capture", worksheet.user_inputs_d45); end
  def test_user_inputs_d46; assert_equal("Ocean fertilisation", worksheet.user_inputs_d46); end
  def test_user_inputs_d47; assert_equal("Enhanced weathering (ocean)", worksheet.user_inputs_d47); end
  def test_user_inputs_d48; assert_equal("Enhanced weathering (terrestial)", worksheet.user_inputs_d48); end
  def test_user_inputs_d49; assert_equal("Wastes and residues", worksheet.user_inputs_d49); end
  def test_user_inputs_d50; assert_equal("Emissions trajectory", worksheet.user_inputs_d50); end
  def test_user_inputs_d51; assert_equal("Atmospheric CO2 fraction", worksheet.user_inputs_d51); end
  def test_user_inputs_d52; assert_equal("Confidence in climate models", worksheet.user_inputs_d52); end
  def test_user_inputs_d53; assert_equal("High cost", worksheet.user_inputs_d53); end
  def test_user_inputs_d54; assert_equal("Point cost", worksheet.user_inputs_d54); end
  def test_user_inputs_d55; assert_equal("Low cost", worksheet.user_inputs_d55); end
  def test_outputs_climate_impacts_f11; assert_in_epsilon(6.114455296006678, worksheet.outputs_climate_impacts_f11, 0.002); end
  def test_outputs_climate_impacts_f12; assert_in_epsilon(1.9983851236439487, worksheet.outputs_climate_impacts_f12, 0.002); end
end
