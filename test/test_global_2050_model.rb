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
  def test_user_inputs_e11; assert_in_epsilon(2.0, worksheet.user_inputs_e11, 0.002); end
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
  def test_outputs_energy_s63; assert_in_epsilon(107.226169297698, worksheet.outputs_energy_s63, 0.002); end
  def test_outputs_energy_t63; assert_in_epsilon(115.87049781594824, worksheet.outputs_energy_t63, 0.002); end
  def test_outputs_energy_u63; assert_in_epsilon(124.54570389202041, worksheet.outputs_energy_u63, 0.002); end
  def test_outputs_energy_v63; assert_in_epsilon(133.56402155120028, worksheet.outputs_energy_v63, 0.002); end
  def test_outputs_energy_w63; assert_in_epsilon(142.8242945851137, worksheet.outputs_energy_w63, 0.002); end
  def test_outputs_energy_x63; assert_in_epsilon(152.2098427489793, worksheet.outputs_energy_x63, 0.002); end
  def test_outputs_energy_y63; assert_in_epsilon(162.00617548194873, worksheet.outputs_energy_y63, 0.002); end
  def test_outputs_energy_z63; assert_in_epsilon(171.9558393287656, worksheet.outputs_energy_z63, 0.002); end
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
  def test_outputs_energy_s67; assert_in_epsilon(150.9664542655713, worksheet.outputs_energy_s67, 0.002); end
  def test_outputs_energy_t67; assert_in_epsilon(164.3453220041465, worksheet.outputs_energy_t67, 0.002); end
  def test_outputs_energy_u67; assert_in_epsilon(177.673519487993, worksheet.outputs_energy_u67, 0.002); end
  def test_outputs_energy_v67; assert_in_epsilon(191.5893075903811, worksheet.outputs_energy_v67, 0.002); end
  def test_outputs_energy_w67; assert_in_epsilon(205.520220949221, worksheet.outputs_energy_w67, 0.002); end
  def test_outputs_energy_x67; assert_in_epsilon(219.37156449974432, worksheet.outputs_energy_x67, 0.002); end
  def test_outputs_energy_y67; assert_in_epsilon(234.33485034312713, worksheet.outputs_energy_y67, 0.002); end
  def test_outputs_energy_z67; assert_in_epsilon(248.1262815751429, worksheet.outputs_energy_z67, 0.002); end
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
  def test_outputs_energy_s119; assert_in_epsilon(59.66488023587961, worksheet.outputs_energy_s119, 0.002); end
  def test_outputs_energy_t119; assert_in_epsilon(60.219901803161214, worksheet.outputs_energy_t119, 0.002); end
  def test_outputs_energy_u119; assert_in_epsilon(60.702277171078926, worksheet.outputs_energy_u119, 0.002); end
  def test_outputs_energy_v119; assert_in_epsilon(60.82979014357505, worksheet.outputs_energy_v119, 0.002); end
  def test_outputs_energy_w119; assert_in_epsilon(61.058978080968856, worksheet.outputs_energy_w119, 0.002); end
  def test_outputs_energy_x119; assert_in_epsilon(61.60778248554573, worksheet.outputs_energy_x119, 0.002); end
  def test_outputs_energy_y119; assert_in_epsilon(61.82849716314891, worksheet.outputs_energy_y119, 0.002); end
  def test_outputs_energy_z119; assert_in_epsilon(63.344605761829385, worksheet.outputs_energy_z119, 0.002); end
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
  def test_outputs_energy_s123; assert_in_epsilon(161.1448851629589, worksheet.outputs_energy_s123, 0.002); end
  def test_outputs_energy_t123; assert_in_epsilon(183.34543505476654, worksheet.outputs_energy_t123, 0.002); end
  def test_outputs_energy_u123; assert_in_epsilon(205.03182798942544, worksheet.outputs_energy_u123, 0.002); end
  def test_outputs_energy_v123; assert_in_epsilon(212.0490479914744, worksheet.outputs_energy_v123, 0.002); end
  def test_outputs_energy_w123; assert_in_epsilon(227.57013007459915, worksheet.outputs_energy_w123, 0.002); end
  def test_outputs_energy_x123; assert_in_epsilon(238.32945175861013, worksheet.outputs_energy_x123, 0.002); end
  def test_outputs_energy_y123; assert_in_epsilon(240.14690186901296, worksheet.outputs_energy_y123, 0.002); end
  def test_outputs_energy_z123; assert_in_epsilon(242.54794613846641, worksheet.outputs_energy_z123, 0.002); end
  def test_outputs_energy_k125; assert_in_epsilon(137.87919456, worksheet.outputs_energy_k125, 0.002); end
  def test_outputs_energy_l125; assert_in_epsilon(143.51359745, worksheet.outputs_energy_l125, 0.002); end
  def test_outputs_energy_m125; assert_in_epsilon(156.74377747, worksheet.outputs_energy_m125, 0.002); end
  def test_outputs_energy_n125; assert_in_epsilon(171.78327319000002, worksheet.outputs_energy_n125, 0.002); end
  def test_outputs_energy_o125; assert_in_epsilon(175.91941010000002, worksheet.outputs_energy_o125, 0.002); end
  def test_outputs_energy_p125; assert_in_epsilon(176.66494085000002, worksheet.outputs_energy_p125, 0.002); end
  def test_outputs_energy_r125; assert_in_epsilon(177.64941956700363, worksheet.outputs_energy_r125, 0.002); end
  def test_outputs_energy_s125; assert_in_epsilon(195.83736219804285, worksheet.outputs_energy_s125, 0.002); end
  def test_outputs_energy_t125; assert_in_epsilon(212.1539032521065, worksheet.outputs_energy_t125, 0.002); end
  def test_outputs_energy_u125; assert_in_epsilon(228.2666221901606, worksheet.outputs_energy_u125, 0.002); end
  def test_outputs_energy_v125; assert_in_epsilon(246.61890331937735, worksheet.outputs_energy_v125, 0.002); end
  def test_outputs_energy_w125; assert_in_epsilon(258.995594027514, worksheet.outputs_energy_w125, 0.002); end
  def test_outputs_energy_x125; assert_in_epsilon(278.035325075062, worksheet.outputs_energy_x125, 0.002); end
  def test_outputs_energy_y125; assert_in_epsilon(299.6367795288008, worksheet.outputs_energy_y125, 0.002); end
  def test_outputs_energy_z125; assert_in_epsilon(317.56219016348354, worksheet.outputs_energy_z125, 0.002); end
  def test_outputs_energy_k127; assert_in_epsilon(69.82757047999999, worksheet.outputs_energy_k127, 0.002); end
  def test_outputs_energy_l127; assert_in_epsilon(75.88166314, worksheet.outputs_energy_l127, 0.002); end
  def test_outputs_energy_m127; assert_in_epsilon(86.75456712, worksheet.outputs_energy_m127, 0.002); end
  def test_outputs_energy_n127; assert_in_epsilon(99.02950624, worksheet.outputs_energy_n127, 0.002); end
  def test_outputs_energy_o127; assert_in_epsilon(114.72290836, worksheet.outputs_energy_o127, 0.002); end
  def test_outputs_energy_p127; assert_in_epsilon(116.68415746000001, worksheet.outputs_energy_p127, 0.002); end
  def test_outputs_energy_r127; assert_in_epsilon(128.52627164080675, worksheet.outputs_energy_r127, 0.002); end
  def test_outputs_energy_s127; assert_in_epsilon(136.65511060038028, worksheet.outputs_energy_s127, 0.002); end
  def test_outputs_energy_t127; assert_in_epsilon(145.81314026509958, worksheet.outputs_energy_t127, 0.002); end
  def test_outputs_energy_u127; assert_in_epsilon(156.84475205278997, worksheet.outputs_energy_u127, 0.002); end
  def test_outputs_energy_v127; assert_in_epsilon(155.87207712318403, worksheet.outputs_energy_v127, 0.002); end
  def test_outputs_energy_w127; assert_in_epsilon(168.43055697372586, worksheet.outputs_energy_w127, 0.002); end
  def test_outputs_energy_x127; assert_in_epsilon(178.87190406193562, worksheet.outputs_energy_x127, 0.002); end
  def test_outputs_energy_y127; assert_in_epsilon(193.44701556211257, worksheet.outputs_energy_y127, 0.002); end
  def test_outputs_energy_z127; assert_in_epsilon(205.52855353342719, worksheet.outputs_energy_z127, 0.002); end
  def test_outputs_energy_r137; assert_in_epsilon(4.366532977240504, worksheet.outputs_energy_r137, 0.002); end
  def test_outputs_energy_r139; assert_in_epsilon(19.52229479302264, worksheet.outputs_energy_r139, 0.002); end
  def test_outputs_energy_r141; assert_in_epsilon(11.875, worksheet.outputs_energy_r141, 0.002); end
  def test_outputs_energy_r143; assert_in_epsilon(21.277705206977366, worksheet.outputs_energy_r143, 0.002); end
  def test_outputs_energy_z137; assert_in_epsilon(7.081953615610837, worksheet.outputs_energy_z137, 0.002); end
  def test_outputs_energy_z139; assert_in_epsilon(14.061806180664021, worksheet.outputs_energy_z139, 0.002); end
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
  def test_outputs_energy_s155; assert_in_epsilon(6.566764139393493, worksheet.outputs_energy_s155, 0.002); end
  def test_outputs_energy_t155; assert_in_epsilon(6.6656886745897115, worksheet.outputs_energy_t155, 0.002); end
  def test_outputs_energy_u155; assert_in_epsilon(6.77626321231613, worksheet.outputs_energy_u155, 0.002); end
  def test_outputs_energy_v155; assert_in_epsilon(6.873526671192281, worksheet.outputs_energy_v155, 0.002); end
  def test_outputs_energy_w155; assert_in_epsilon(6.973098201985364, worksheet.outputs_energy_w155, 0.002); end
  def test_outputs_energy_x155; assert_in_epsilon(7.104504245692929, worksheet.outputs_energy_x155, 0.002); end
  def test_outputs_energy_y155; assert_in_epsilon(7.22584724423458, worksheet.outputs_energy_y155, 0.002); end
  def test_outputs_energy_z155; assert_in_epsilon(7.286445037325369, worksheet.outputs_energy_z155, 0.002); end
  def test_outputs_energy_d156; assert_equal("Electricity (carbon capture and storage)", worksheet.outputs_energy_d156); end
  def test_outputs_energy_r156; assert_in_delta(0.0, (worksheet.outputs_energy_r156||0), 0.002); end
  def test_outputs_energy_s156; assert_in_delta(0.01603551738643281, worksheet.outputs_energy_s156, 0.002); end
  def test_outputs_energy_t156; assert_in_delta(0.04261989571887982, worksheet.outputs_energy_t156, 0.002); end
  def test_outputs_energy_u156; assert_in_delta(0.05861172490940319, worksheet.outputs_energy_u156, 0.002); end
  def test_outputs_energy_v156; assert_in_delta(0.13343951491297115, worksheet.outputs_energy_v156, 0.002); end
  def test_outputs_energy_w156; assert_in_delta(0.16690667476165566, worksheet.outputs_energy_w156, 0.002); end
  def test_outputs_energy_x156; assert_in_delta(0.21425978159122974, worksheet.outputs_energy_x156, 0.002); end
  def test_outputs_energy_y156; assert_in_delta(0.2847786972276571, worksheet.outputs_energy_y156, 0.002); end
  def test_outputs_energy_z156; assert_in_delta(0.42693646801102914, worksheet.outputs_energy_z156, 0.002); end
  def test_outputs_energy_d157; assert_equal("Buildings", worksheet.outputs_energy_d157); end
  def test_outputs_energy_r157; assert_in_epsilon(39.31576472993791, worksheet.outputs_energy_r157, 0.002); end
  def test_outputs_energy_s157; assert_in_epsilon(39.78934194718981, worksheet.outputs_energy_s157, 0.002); end
  def test_outputs_energy_t157; assert_in_epsilon(39.792795172101066, worksheet.outputs_energy_t157, 0.002); end
  def test_outputs_energy_u157; assert_in_epsilon(39.75121382971432, worksheet.outputs_energy_u157, 0.002); end
  def test_outputs_energy_v157; assert_in_epsilon(39.386330237926245, worksheet.outputs_energy_v157, 0.002); end
  def test_outputs_energy_w157; assert_in_epsilon(39.12433198499966, worksheet.outputs_energy_w157, 0.002); end
  def test_outputs_energy_x157; assert_in_epsilon(39.08840889778933, worksheet.outputs_energy_x157, 0.002); end
  def test_outputs_energy_y157; assert_in_epsilon(38.69283833693692, worksheet.outputs_energy_y157, 0.002); end
  def test_outputs_energy_z157; assert_in_epsilon(39.55313526477569, worksheet.outputs_energy_z157, 0.002); end
  def test_outputs_energy_d158; assert_equal("Manufacturing", worksheet.outputs_energy_d158); end
  def test_outputs_energy_r158; assert_in_epsilon(7.602523778685607, worksheet.outputs_energy_r158, 0.002); end
  def test_outputs_energy_s158; assert_in_epsilon(7.8111793945001775, worksheet.outputs_energy_s158, 0.002); end
  def test_outputs_energy_t158; assert_in_epsilon(7.947129853295217, worksheet.outputs_energy_t158, 0.002); end
  def test_outputs_energy_u158; assert_in_epsilon(8.084642925569955, worksheet.outputs_energy_u158, 0.002); end
  def test_outputs_energy_v158; assert_in_epsilon(8.27226742243234, worksheet.outputs_energy_v158, 0.002); end
  def test_outputs_energy_w158; assert_in_epsilon(8.417811066182287, worksheet.outputs_energy_w158, 0.002); end
  def test_outputs_energy_x158; assert_in_epsilon(8.619406364917445, worksheet.outputs_energy_x158, 0.002); end
  def test_outputs_energy_y158; assert_in_epsilon(8.837401761837947, worksheet.outputs_energy_y158, 0.002); end
  def test_outputs_energy_z158; assert_in_epsilon(9.069219996476392, worksheet.outputs_energy_z158, 0.002); end
  def test_outputs_energy_d136; assert_equal("Bioenergy", worksheet.outputs_energy_d136); end
  def test_outputs_energy_h136; assert_equal("1975", worksheet.outputs_energy_h136); end
  def test_outputs_energy_i136; assert_equal("1980", worksheet.outputs_energy_i136); end
  def test_outputs_energy_j136; assert_equal("1985", worksheet.outputs_energy_j136); end
  def test_outputs_energy_k136; assert_equal("1990", worksheet.outputs_energy_k136); end
  def test_outputs_energy_l136; assert_equal("1995", worksheet.outputs_energy_l136); end
  def test_outputs_energy_m136; assert_equal("2000", worksheet.outputs_energy_m136); end
  def test_outputs_energy_n136; assert_equal("2005", worksheet.outputs_energy_n136); end
  def test_outputs_energy_o136; assert_in_epsilon(2010.0, worksheet.outputs_energy_o136, 0.002); end
  def test_outputs_energy_p136; assert_in_epsilon(2011.0, worksheet.outputs_energy_p136, 0.002); end
  def test_outputs_energy_r136; assert_in_epsilon(2011.0, worksheet.outputs_energy_r136, 0.002); end
  def test_outputs_energy_s136; assert_equal("2015", worksheet.outputs_energy_s136); end
  def test_outputs_energy_t136; assert_equal("2020", worksheet.outputs_energy_t136); end
  def test_outputs_energy_u136; assert_equal("2025", worksheet.outputs_energy_u136); end
  def test_outputs_energy_v136; assert_equal("2030", worksheet.outputs_energy_v136); end
  def test_outputs_energy_w136; assert_equal("2035", worksheet.outputs_energy_w136); end
  def test_outputs_energy_x136; assert_equal("2040", worksheet.outputs_energy_x136); end
  def test_outputs_energy_y136; assert_equal("2045", worksheet.outputs_energy_y136); end
  def test_outputs_energy_z136; assert_equal("2050", worksheet.outputs_energy_z136); end
  def test_outputs_energy_d137; assert_equal("Waste", worksheet.outputs_energy_d137); end
  def test_outputs_energy_s137; assert_in_epsilon(4.643988321301491, worksheet.outputs_energy_s137, 0.002); end
  def test_outputs_energy_t137; assert_in_epsilon(5.010773610627841, worksheet.outputs_energy_t137, 0.002); end
  def test_outputs_energy_u137; assert_in_epsilon(5.371705575377009, worksheet.outputs_energy_u137, 0.002); end
  def test_outputs_energy_v137; assert_in_epsilon(5.727263177438184, worksheet.outputs_energy_v137, 0.002); end
  def test_outputs_energy_w137; assert_in_epsilon(6.077823924156319, worksheet.outputs_energy_w137, 0.002); end
  def test_outputs_energy_x137; assert_in_epsilon(6.422191706396695, worksheet.outputs_energy_x137, 0.002); end
  def test_outputs_energy_y137; assert_in_epsilon(6.757718810934998, worksheet.outputs_energy_y137, 0.002); end
  def test_outputs_energy_d139; assert_equal("Forest residues", worksheet.outputs_energy_d139); end
  def test_outputs_energy_s139; assert_in_epsilon(19.166996204499434, worksheet.outputs_energy_s139, 0.002); end
  def test_outputs_energy_t139; assert_in_epsilon(18.17997674160652, worksheet.outputs_energy_t139, 0.002); end
  def test_outputs_energy_u139; assert_in_epsilon(17.220556017879385, worksheet.outputs_energy_u139, 0.002); end
  def test_outputs_energy_v139; assert_in_epsilon(16.388987063875156, worksheet.outputs_energy_v139, 0.002); end
  def test_outputs_energy_w139; assert_in_epsilon(15.510981992493065, worksheet.outputs_energy_w139, 0.002); end
  def test_outputs_energy_x139; assert_in_epsilon(14.908448577900844, worksheet.outputs_energy_x139, 0.002); end
  def test_outputs_energy_y139; assert_in_epsilon(14.42445926711063, worksheet.outputs_energy_y139, 0.002); end
  def test_outputs_energy_d141; assert_equal("Bioenergy crops", worksheet.outputs_energy_d141); end
  def test_outputs_energy_s141; assert_in_epsilon(13.083544303797467, worksheet.outputs_energy_s141, 0.002); end
  def test_outputs_energy_t141; assert_in_epsilon(14.551869158878501, worksheet.outputs_energy_t141, 0.002); end
  def test_outputs_energy_u141; assert_in_epsilon(15.975153374233125, worksheet.outputs_energy_u141, 0.002); end
  def test_outputs_energy_v141; assert_in_epsilon(17.355438066465254, worksheet.outputs_energy_v141, 0.002); end
  def test_outputs_energy_w141; assert_in_epsilon(18.694642857142853, worksheet.outputs_energy_w141, 0.002); end
  def test_outputs_energy_x141; assert_in_epsilon(19.99457478005865, worksheet.outputs_energy_x141, 0.002); end
  def test_outputs_energy_y141; assert_in_epsilon(21.25693641618497, worksheet.outputs_energy_y141, 0.002); end
  def test_outputs_energy_d143; assert_equal("Traditional biomass", worksheet.outputs_energy_d143); end
  def test_outputs_energy_s143; assert_in_epsilon(21.27043340628122, worksheet.outputs_energy_s143, 0.002); end
  def test_outputs_energy_t143; assert_in_epsilon(20.97736429204835, worksheet.outputs_energy_t143, 0.002); end
  def test_outputs_energy_u143; assert_in_epsilon(20.634944203589413, worksheet.outputs_energy_u143, 0.002); end
  def test_outputs_energy_v143; assert_in_epsilon(19.858183835796467, worksheet.outputs_energy_v143, 0.002); end
  def test_outputs_energy_w143; assert_in_epsilon(19.27561130717662, worksheet.outputs_energy_w143, 0.002); end
  def test_outputs_energy_x143; assert_in_epsilon(18.782649421189532, worksheet.outputs_energy_x143, 0.002); end
  def test_outputs_energy_y143; assert_in_epsilon(17.88946466891831, worksheet.outputs_energy_y143, 0.002); end
  def test_outputs_energy_d144; assert_equal("Total", worksheet.outputs_energy_d144); end
  def test_outputs_energy_r144; assert_in_epsilon(57.04153297724051, worksheet.outputs_energy_r144, 0.002); end
  def test_outputs_energy_s144; assert_in_epsilon(58.164962235879614, worksheet.outputs_energy_s144, 0.002); end
  def test_outputs_energy_t144; assert_in_epsilon(58.71998380316121, worksheet.outputs_energy_t144, 0.002); end
  def test_outputs_energy_u144; assert_in_epsilon(59.20235917107893, worksheet.outputs_energy_u144, 0.002); end
  def test_outputs_energy_v144; assert_in_epsilon(59.32987214357506, worksheet.outputs_energy_v144, 0.002); end
  def test_outputs_energy_w144; assert_in_epsilon(59.55906008096886, worksheet.outputs_energy_w144, 0.002); end
  def test_outputs_energy_x144; assert_in_epsilon(60.10786448554572, worksheet.outputs_energy_x144, 0.002); end
  def test_outputs_energy_y144; assert_in_epsilon(60.3285791631489, worksheet.outputs_energy_y144, 0.002); end
  def test_outputs_energy_z144; assert_in_epsilon(61.844687761829384, worksheet.outputs_energy_z144, 0.002); end
  def test_outputs_energy_d35; assert_equal("RESIDENTIAL", worksheet.outputs_energy_d35); end
  def test_outputs_energy_d36; assert_equal("Global Heating", worksheet.outputs_energy_d36); end
  def test_outputs_energy_p36; assert_in_epsilon(25.25, worksheet.outputs_energy_p36, 0.002); end
  def test_outputs_energy_r36; assert_in_epsilon(28.299719742453536, worksheet.outputs_energy_r36, 0.002); end
  def test_outputs_energy_s36; assert_in_epsilon(29.5122744254749, worksheet.outputs_energy_s36, 0.002); end
  def test_outputs_energy_t36; assert_in_epsilon(30.567661238426318, worksheet.outputs_energy_t36, 0.002); end
  def test_outputs_energy_u36; assert_in_epsilon(31.108377438342224, worksheet.outputs_energy_u36, 0.002); end
  def test_outputs_energy_v36; assert_in_epsilon(31.641880283645634, worksheet.outputs_energy_v36, 0.002); end
  def test_outputs_energy_w36; assert_in_epsilon(32.14695710597459, worksheet.outputs_energy_w36, 0.002); end
  def test_outputs_energy_x36; assert_in_epsilon(32.15210954773748, worksheet.outputs_energy_x36, 0.002); end
  def test_outputs_energy_y36; assert_in_epsilon(32.16219065182935, worksheet.outputs_energy_y36, 0.002); end
  def test_outputs_energy_z36; assert_in_epsilon(32.22229263532495, worksheet.outputs_energy_z36, 0.002); end
  def test_outputs_energy_d37; assert_equal("Global Cooling", worksheet.outputs_energy_d37); end
  def test_outputs_energy_p37; assert_in_epsilon(2.44, worksheet.outputs_energy_p37, 0.002); end
  def test_outputs_energy_r37; assert_in_epsilon(3.4731110913582324, worksheet.outputs_energy_r37, 0.002); end
  def test_outputs_energy_s37; assert_in_epsilon(4.260067197422366, worksheet.outputs_energy_s37, 0.002); end
  def test_outputs_energy_t37; assert_in_epsilon(5.277364801299276, worksheet.outputs_energy_t37, 0.002); end
  def test_outputs_energy_u37; assert_in_epsilon(6.280011751297649, worksheet.outputs_energy_u37, 0.002); end
  def test_outputs_energy_v37; assert_in_epsilon(7.4136817177254, worksheet.outputs_energy_v37, 0.002); end
  def test_outputs_energy_w37; assert_in_epsilon(8.554445803726152, worksheet.outputs_energy_w37, 0.002); end
  def test_outputs_energy_x37; assert_in_epsilon(9.596548085623148, worksheet.outputs_energy_x37, 0.002); end
  def test_outputs_energy_y37; assert_in_epsilon(10.73030963748168, worksheet.outputs_energy_y37, 0.002); end
  def test_outputs_energy_z37; assert_in_epsilon(11.594785426321133, worksheet.outputs_energy_z37, 0.002); end
  def test_outputs_energy_d38; assert_equal("Global Hot water", worksheet.outputs_energy_d38); end
  def test_outputs_energy_p38; assert_in_epsilon(22.61, worksheet.outputs_energy_p38, 0.002); end
  def test_outputs_energy_r38; assert_in_epsilon(16.129037934483243, worksheet.outputs_energy_r38, 0.002); end
  def test_outputs_energy_s38; assert_in_epsilon(17.43585478661929, worksheet.outputs_energy_s38, 0.002); end
  def test_outputs_energy_t38; assert_in_epsilon(18.94159224721264, worksheet.outputs_energy_t38, 0.002); end
  def test_outputs_energy_u38; assert_in_epsilon(20.30771210963359, worksheet.outputs_energy_u38, 0.002); end
  def test_outputs_energy_v38; assert_in_epsilon(21.77587339102164, worksheet.outputs_energy_v38, 0.002); end
  def test_outputs_energy_w38; assert_in_epsilon(23.131142638701913, worksheet.outputs_energy_w38, 0.002); end
  def test_outputs_energy_x38; assert_in_epsilon(24.314523805379338, worksheet.outputs_energy_x38, 0.002); end
  def test_outputs_energy_y38; assert_in_epsilon(25.58164049694888, worksheet.outputs_energy_y38, 0.002); end
  def test_outputs_energy_z38; assert_in_epsilon(26.445070214387567, worksheet.outputs_energy_z38, 0.002); end
  def test_outputs_energy_d39; assert_equal("Global Appliances", worksheet.outputs_energy_d39); end
  def test_outputs_energy_p39; assert_in_epsilon(10.0, worksheet.outputs_energy_p39, 0.002); end
  def test_outputs_energy_r39; assert_in_epsilon(12.860587736407986, worksheet.outputs_energy_r39, 0.002); end
  def test_outputs_energy_s39; assert_in_epsilon(14.220735830241354, worksheet.outputs_energy_s39, 0.002); end
  def test_outputs_energy_t39; assert_in_epsilon(15.794098070189783, worksheet.outputs_energy_t39, 0.002); end
  def test_outputs_energy_u39; assert_in_epsilon(17.18693997802466, worksheet.outputs_energy_u39, 0.002); end
  def test_outputs_energy_v39; assert_in_epsilon(18.684389522161958, worksheet.outputs_energy_v39, 0.002); end
  def test_outputs_energy_w39; assert_in_epsilon(20.03841799108141, worksheet.outputs_energy_w39, 0.002); end
  def test_outputs_energy_x39; assert_in_epsilon(21.150969327320006, worksheet.outputs_energy_x39, 0.002); end
  def test_outputs_energy_y39; assert_in_epsilon(22.294156965763015, worksheet.outputs_energy_y39, 0.002); end
  def test_outputs_energy_z39; assert_in_epsilon(22.97537101917237, worksheet.outputs_energy_z39, 0.002); end
  def test_outputs_energy_d40; assert_equal("Global Cooking", worksheet.outputs_energy_d40); end
  def test_outputs_energy_p40; assert_in_epsilon(24.16, worksheet.outputs_energy_p40, 0.002); end
  def test_outputs_energy_r40; assert_in_epsilon(23.537035712293797, worksheet.outputs_energy_r40, 0.002); end
  def test_outputs_energy_s40; assert_in_epsilon(24.651848892602132, worksheet.outputs_energy_s40, 0.002); end
  def test_outputs_energy_t40; assert_in_epsilon(25.82626976869377, worksheet.outputs_energy_t40, 0.002); end
  def test_outputs_energy_u40; assert_in_epsilon(26.894177407937356, worksheet.outputs_energy_u40, 0.002); end
  def test_outputs_energy_v40; assert_in_epsilon(27.832751743668886, worksheet.outputs_energy_v40, 0.002); end
  def test_outputs_energy_w40; assert_in_epsilon(28.72842373196282, worksheet.outputs_energy_w40, 0.002); end
  def test_outputs_energy_x40; assert_in_epsilon(29.54889241995311, worksheet.outputs_energy_x40, 0.002); end
  def test_outputs_energy_y40; assert_in_epsilon(30.22935376112141, worksheet.outputs_energy_y40, 0.002); end
  def test_outputs_energy_z40; assert_in_epsilon(31.051745267284367, worksheet.outputs_energy_z40, 0.002); end
  def test_outputs_energy_d41; assert_equal("Global Lighting", worksheet.outputs_energy_d41); end
  def test_outputs_energy_p41; assert_in_epsilon(3.24, worksheet.outputs_energy_p41, 0.002); end
  def test_outputs_energy_r41; assert_in_epsilon(2.6962968694353324, worksheet.outputs_energy_r41, 0.002); end
  def test_outputs_energy_s41; assert_in_epsilon(3.19714456336838, worksheet.outputs_energy_s41, 0.002); end
  def test_outputs_energy_t41; assert_in_epsilon(3.8511042175954877, worksheet.outputs_energy_t41, 0.002); end
  def test_outputs_energy_u41; assert_in_epsilon(4.509871643341354, worksheet.outputs_energy_u41, 0.002); end
  def test_outputs_energy_v41; assert_in_epsilon(5.281577833925847, worksheet.outputs_energy_v41, 0.002); end
  def test_outputs_energy_w41; assert_in_epsilon(6.091886328161163, worksheet.outputs_energy_w41, 0.002); end
  def test_outputs_energy_x41; assert_in_epsilon(6.878158668656365, worksheet.outputs_energy_x41, 0.002); end
  def test_outputs_energy_y41; assert_in_epsilon(7.786561298332794, worksheet.outputs_energy_y41, 0.002); end
  def test_outputs_energy_z41; assert_in_epsilon(8.57021454804518, worksheet.outputs_energy_z41, 0.002); end
  def test_outputs_energy_d43; assert_equal("NON-RESIDENTIAL", worksheet.outputs_energy_d43); end
  def test_outputs_energy_d44; assert_equal("Global Heating", worksheet.outputs_energy_d44); end
  def test_outputs_energy_f44; assert_equal("Non-residential", worksheet.outputs_energy_f44); end
  def test_outputs_energy_p44; assert_in_epsilon(8.27, worksheet.outputs_energy_p44, 0.002); end
  def test_outputs_energy_r44; assert_in_epsilon(7.275060970771702, worksheet.outputs_energy_r44, 0.002); end
  def test_outputs_energy_s44; assert_in_epsilon(7.746443109228011, worksheet.outputs_energy_s44, 0.002); end
  def test_outputs_energy_t44; assert_in_epsilon(8.242789246049258, worksheet.outputs_energy_t44, 0.002); end
  def test_outputs_energy_u44; assert_in_epsilon(8.668132332194183, worksheet.outputs_energy_u44, 0.002); end
  def test_outputs_energy_v44; assert_in_epsilon(9.017117804872058, worksheet.outputs_energy_v44, 0.002); end
  def test_outputs_energy_w44; assert_in_epsilon(9.287711212040609, worksheet.outputs_energy_w44, 0.002); end
  def test_outputs_energy_x44; assert_in_epsilon(9.476438905819121, worksheet.outputs_energy_x44, 0.002); end
  def test_outputs_energy_y44; assert_in_epsilon(9.578874027241886, worksheet.outputs_energy_y44, 0.002); end
  def test_outputs_energy_z44; assert_in_epsilon(9.592277887180883, worksheet.outputs_energy_z44, 0.002); end
  def test_outputs_energy_d45; assert_equal("Global Cooling", worksheet.outputs_energy_d45); end
  def test_outputs_energy_f45; assert_equal("Non-residential", worksheet.outputs_energy_f45); end
  def test_outputs_energy_p45; assert_in_epsilon(1.96, worksheet.outputs_energy_p45, 0.002); end
  def test_outputs_energy_r45; assert_in_epsilon(3.0096772533046146, worksheet.outputs_energy_r45, 0.002); end
  def test_outputs_energy_s45; assert_in_epsilon(3.2831488309732655, worksheet.outputs_energy_s45, 0.002); end
  def test_outputs_energy_t45; assert_in_epsilon(3.6000046908707137, worksheet.outputs_energy_t45, 0.002); end
  def test_outputs_energy_u45; assert_in_epsilon(3.900315404297886, worksheet.outputs_energy_u45, 0.002); end
  def test_outputs_energy_v45; assert_in_epsilon(4.179240856991721, worksheet.outputs_energy_v45, 0.002); end
  def test_outputs_energy_w45; assert_in_epsilon(4.433116957602852, worksheet.outputs_energy_w45, 0.002); end
  def test_outputs_energy_x45; assert_in_epsilon(4.657328535235836, worksheet.outputs_energy_x45, 0.002); end
  def test_outputs_energy_y45; assert_in_epsilon(4.846437573536024, worksheet.outputs_energy_y45, 0.002); end
  def test_outputs_energy_z45; assert_in_epsilon(4.995468951018266, worksheet.outputs_energy_z45, 0.002); end
  def test_outputs_energy_d46; assert_equal("Global Appliances", worksheet.outputs_energy_d46); end
  def test_outputs_energy_f46; assert_equal("Non-residential", worksheet.outputs_energy_f46); end
  def test_outputs_energy_p46; assert_in_epsilon(12.36, worksheet.outputs_energy_p46, 0.002); end
  def test_outputs_energy_r46; assert_in_epsilon(6.257771307271544, worksheet.outputs_energy_r46, 0.002); end
  def test_outputs_energy_s46; assert_in_epsilon(6.898995033606406, worksheet.outputs_energy_s46, 0.002); end
  def test_outputs_energy_t46; assert_in_epsilon(7.66815452091561, worksheet.outputs_energy_t46, 0.002); end
  def test_outputs_energy_u46; assert_in_epsilon(8.425220255955814, worksheet.outputs_energy_u46, 0.002); end
  def test_outputs_energy_v46; assert_in_epsilon(9.160479534127997, worksheet.outputs_energy_v46, 0.002); end
  def test_outputs_energy_w46; assert_in_epsilon(9.866560833435328, worksheet.outputs_energy_w46, 0.002); end
  def test_outputs_energy_x46; assert_in_epsilon(10.533804945743382, worksheet.outputs_energy_x46, 0.002); end
  def test_outputs_energy_y46; assert_in_epsilon(11.150363022305902, worksheet.outputs_energy_y46, 0.002); end
  def test_outputs_energy_z46; assert_in_epsilon(11.704983583833773, worksheet.outputs_energy_z46, 0.002); end
  def test_outputs_energy_d47; assert_equal("Global Lighting", worksheet.outputs_energy_d47); end
  def test_outputs_energy_f47; assert_equal("Non-residential", worksheet.outputs_energy_f47); end
  def test_outputs_energy_p47; assert_in_epsilon(4.21, worksheet.outputs_energy_p47, 0.002); end
  def test_outputs_energy_r47; assert_in_epsilon(3.8499960191221416, worksheet.outputs_energy_r47, 0.002); end
  def test_outputs_energy_s47; assert_in_epsilon(4.36742233750111, worksheet.outputs_energy_s47, 0.002); end
  def test_outputs_energy_t47; assert_in_epsilon(5.035810526661983, worksheet.outputs_energy_t47, 0.002); end
  def test_outputs_energy_u47; assert_in_epsilon(5.746803238079691, worksheet.outputs_energy_u47, 0.002); end
  def test_outputs_energy_v47; assert_in_epsilon(6.498325983209715, worksheet.outputs_energy_v47, 0.002); end
  def test_outputs_energy_w47; assert_in_epsilon(7.289673863944831, worksheet.outputs_energy_w47, 0.002); end
  def test_outputs_energy_x47; assert_in_epsilon(8.11824478676229, worksheet.outputs_energy_x47, 0.002); end
  def test_outputs_energy_y47; assert_in_epsilon(8.979195156034217, worksheet.outputs_energy_y47, 0.002); end
  def test_outputs_energy_z47; assert_in_epsilon(9.867269836505725, worksheet.outputs_energy_z47, 0.002); end
  def test_outputs_energy_d48; assert_equal("Global Other", worksheet.outputs_energy_d48); end
  def test_outputs_energy_f48; assert_equal("Non-residential", worksheet.outputs_energy_f48); end
  def test_outputs_energy_p48; assert_in_epsilon(3.57, worksheet.outputs_energy_p48, 0.002); end
  def test_outputs_energy_r48; assert_in_epsilon(9.177565965520147, worksheet.outputs_energy_r48, 0.002); end
  def test_outputs_energy_s48; assert_in_epsilon(9.82973691973011, worksheet.outputs_energy_s48, 0.002); end
  def test_outputs_energy_t48; assert_in_epsilon(10.532969998525058, worksheet.outputs_energy_t48, 0.002); end
  def test_outputs_energy_u48; assert_in_epsilon(11.14926149852612, worksheet.outputs_energy_u48, 0.002); end
  def test_outputs_energy_v48; assert_in_epsilon(11.668180175644562, worksheet.outputs_energy_v48, 0.002); end
  def test_outputs_energy_w48; assert_in_epsilon(12.083307014232304, worksheet.outputs_energy_w48, 0.002); end
  def test_outputs_energy_x48; assert_in_epsilon(12.386154763615089, worksheet.outputs_energy_x48, 0.002); end
  def test_outputs_energy_y48; assert_in_epsilon(12.56679312859056, worksheet.outputs_energy_y48, 0.002); end
  def test_outputs_energy_z48; assert_in_epsilon(12.617363515259772, worksheet.outputs_energy_z48, 0.002); end
  def test_outputs_energy_h65; assert_in_epsilon(64.751263, worksheet.outputs_energy_h65, 0.002); end
  def test_outputs_energy_i65; assert_in_epsilon(71.065102, worksheet.outputs_energy_i65, 0.002); end
  def test_outputs_energy_j65; assert_in_epsilon(78.65053599999999, worksheet.outputs_energy_j65, 0.002); end
  def test_outputs_energy_d195; assert_in_epsilon(860.0113799999999, worksheet.outputs_energy_d195, 0.002); end
  def test_outputs_energy_d196; assert_in_epsilon(1038.0, worksheet.outputs_energy_d196, 0.002); end
  def test_outputs_energy_d197; assert_in_epsilon(861.0, worksheet.outputs_energy_d197, 0.002); end
  def test_outputs_energy_d219; assert_in_epsilon(14500.0, worksheet.outputs_energy_d219, 0.002); end
  def test_outputs_energy_d220; assert_in_epsilon(10800.0, worksheet.outputs_energy_d220, 0.002); end
  def test_outputs_energy_d221; assert_in_epsilon(12650.0, worksheet.outputs_energy_d221, 0.002); end
  def test_outputs_energy_h195; assert_in_epsilon(257.20159134671576, worksheet.outputs_energy_h195, 0.002); end
  def test_outputs_energy_h209; assert_in_epsilon(132.27798556386554, worksheet.outputs_energy_h209, 0.002); end
  def test_outputs_energy_h202; assert_in_epsilon(206669502829923.0, worksheet.outputs_energy_h202, 0.002); end
  def test_outputs_energy_g180; assert_equal("Notes", worksheet.outputs_energy_g180); end
  def test_outputs_energy_r180; assert_in_epsilon(2011.0, worksheet.outputs_energy_r180, 0.002); end
  def test_outputs_energy_s180; assert_equal("2015", worksheet.outputs_energy_s180); end
  def test_outputs_energy_t180; assert_equal("2020", worksheet.outputs_energy_t180); end
  def test_outputs_energy_u180; assert_equal("2025", worksheet.outputs_energy_u180); end
  def test_outputs_energy_v180; assert_equal("2030", worksheet.outputs_energy_v180); end
  def test_outputs_energy_w180; assert_equal("2035", worksheet.outputs_energy_w180); end
  def test_outputs_energy_x180; assert_equal("2040", worksheet.outputs_energy_x180); end
  def test_outputs_energy_y180; assert_equal("2045", worksheet.outputs_energy_y180); end
  def test_outputs_energy_z180; assert_equal("2050", worksheet.outputs_energy_z180); end
  def test_outputs_energy_c181; assert_equal("G.Q.01", worksheet.outputs_energy_c181); end
  def test_outputs_energy_d181; assert_equal("Global Coal reserves ", worksheet.outputs_energy_d181); end
  def test_outputs_energy_g181; assert_equal("Gt", worksheet.outputs_energy_g181); end
  def test_outputs_energy_r181; assert_in_epsilon(6.0669232141993295, worksheet.outputs_energy_r181, 0.002); end
  def test_outputs_energy_s181; assert_in_epsilon(24.48211349069436, worksheet.outputs_energy_s181, 0.002); end
  def test_outputs_energy_t181; assert_in_epsilon(51.30513706852404, worksheet.outputs_energy_t181, 0.002); end
  def test_outputs_energy_u181; assert_in_epsilon(81.48129502085023, worksheet.outputs_energy_u181, 0.002); end
  def test_outputs_energy_v181; assert_in_epsilon(113.57594490448332, worksheet.outputs_energy_v181, 0.002); end
  def test_outputs_energy_w181; assert_in_epsilon(147.56057698010437, worksheet.outputs_energy_w181, 0.002); end
  def test_outputs_energy_x181; assert_in_epsilon(183.46781163559953, worksheet.outputs_energy_x181, 0.002); end
  def test_outputs_energy_y181; assert_in_epsilon(220.16748337163202, worksheet.outputs_energy_y181, 0.002); end
  def test_outputs_energy_z181; assert_in_epsilon(257.20159134671576, worksheet.outputs_energy_z181, 0.002); end
  def test_outputs_energy_c182; assert_equal("G.Q.02", worksheet.outputs_energy_c182); end
  def test_outputs_energy_d182; assert_equal("Global Oil reserves ", worksheet.outputs_energy_d182); end
  def test_outputs_energy_g182; assert_equal("l", worksheet.outputs_energy_g182); end
  def test_outputs_energy_r182; assert_in_epsilon(4630164045127.537, worksheet.outputs_energy_r182, 0.002); end
  def test_outputs_energy_s182; assert_in_epsilon(19468738738059.04, worksheet.outputs_energy_s182, 0.002); end
  def test_outputs_energy_t182; assert_in_epsilon(40948725085282.55, worksheet.outputs_energy_t182, 0.002); end
  def test_outputs_energy_u182; assert_in_epsilon(64116494725383.81, worksheet.outputs_energy_u182, 0.002); end
  def test_outputs_energy_v182; assert_in_epsilon(89110006206980.0, worksheet.outputs_energy_v182, 0.002); end
  def test_outputs_energy_w182; assert_in_epsilon(115627453875882.14, worksheet.outputs_energy_w182, 0.002); end
  def test_outputs_energy_x182; assert_in_epsilon(143869375841022.03, worksheet.outputs_energy_x182, 0.002); end
  def test_outputs_energy_y182; assert_in_epsilon(174263183877363.53, worksheet.outputs_energy_y182, 0.002); end
  def test_outputs_energy_z182; assert_in_epsilon(206669502829923.0, worksheet.outputs_energy_z182, 0.002); end
  def test_outputs_energy_c183; assert_equal("G.Q.03", worksheet.outputs_energy_c183); end
  def test_outputs_energy_d183; assert_equal("Global Gas reserves ", worksheet.outputs_energy_d183); end
  def test_outputs_energy_g183; assert_equal("T.m3", worksheet.outputs_energy_g183); end
  def test_outputs_energy_r183; assert_in_epsilon(3.2406164755065205, worksheet.outputs_energy_r183, 0.002); end
  def test_outputs_energy_s183; assert_in_epsilon(13.372381308780476, worksheet.outputs_energy_s183, 0.002); end
  def test_outputs_energy_t183; assert_in_epsilon(27.731946419247215, worksheet.outputs_energy_t183, 0.002); end
  def test_outputs_energy_u183; assert_in_epsilon(43.13324057303854, worksheet.outputs_energy_u183, 0.002); end
  def test_outputs_energy_v183; assert_in_epsilon(58.89044381667128, worksheet.outputs_energy_v183, 0.002); end
  def test_outputs_energy_w183; assert_in_epsilon(75.40247283199757, worksheet.outputs_energy_w183, 0.002); end
  def test_outputs_energy_x183; assert_in_epsilon(93.04763071435286, worksheet.outputs_energy_x183, 0.002); end
  def test_outputs_energy_y183; assert_in_epsilon(112.00641472228497, worksheet.outputs_energy_y183, 0.002); end
  def test_outputs_energy_z183; assert_in_epsilon(132.27798556386554, worksheet.outputs_energy_z183, 0.002); end
  def test_outputs_energy_r61; assert_in_epsilon(229.27941559618466, worksheet.outputs_energy_r61, 0.002); end
  def test_outputs_energy_z61; assert_in_epsilon(343.04294742722465, worksheet.outputs_energy_z61, 0.002); end
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
  def test_outputs_energy_s291; assert_in_epsilon(31.731202324412155, worksheet.outputs_energy_s291, 0.002); end
  def test_outputs_energy_t291; assert_in_epsilon(36.19351176370249, worksheet.outputs_energy_t291, 0.002); end
  def test_outputs_energy_u291; assert_in_epsilon(40.59939200210346, worksheet.outputs_energy_u291, 0.002); end
  def test_outputs_energy_v291; assert_in_epsilon(43.96990525535215, worksheet.outputs_energy_v291, 0.002); end
  def test_outputs_energy_w291; assert_in_epsilon(46.912556867283506, worksheet.outputs_energy_w291, 0.002); end
  def test_outputs_energy_x291; assert_in_epsilon(48.30997301365906, worksheet.outputs_energy_x291, 0.002); end
  def test_outputs_energy_y291; assert_in_epsilon(46.7675619692313, worksheet.outputs_energy_y291, 0.002); end
  def test_outputs_energy_z291; assert_in_epsilon(45.389259899212846, worksheet.outputs_energy_z291, 0.002); end
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
  def test_outputs_energy_s292; assert_in_epsilon(7.315728551690344, worksheet.outputs_energy_s292, 0.002); end
  def test_outputs_energy_t292; assert_in_epsilon(8.557046949186608, worksheet.outputs_energy_t292, 0.002); end
  def test_outputs_energy_u292; assert_in_epsilon(9.923290471245746, worksheet.outputs_energy_u292, 0.002); end
  def test_outputs_energy_v292; assert_in_epsilon(11.871136642519033, worksheet.outputs_energy_v292, 0.002); end
  def test_outputs_energy_w292; assert_in_epsilon(14.15174236018094, worksheet.outputs_energy_w292, 0.002); end
  def test_outputs_energy_x292; assert_in_epsilon(16.755828598945676, worksheet.outputs_energy_x292, 0.002); end
  def test_outputs_energy_y292; assert_in_epsilon(19.90137850189019, worksheet.outputs_energy_y292, 0.002); end
  def test_outputs_energy_z292; assert_in_epsilon(21.995626959122664, worksheet.outputs_energy_z292, 0.002); end
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
  def test_outputs_energy_s293; assert_in_epsilon(17.038441154270295, worksheet.outputs_energy_s293, 0.002); end
  def test_outputs_energy_t293; assert_in_epsilon(18.097698633994007, worksheet.outputs_energy_t293, 0.002); end
  def test_outputs_energy_u293; assert_in_epsilon(20.119439620501243, worksheet.outputs_energy_u293, 0.002); end
  def test_outputs_energy_v293; assert_in_epsilon(22.414691698477956, worksheet.outputs_energy_v293, 0.002); end
  def test_outputs_energy_w293; assert_in_epsilon(24.995989379476672, worksheet.outputs_energy_w293, 0.002); end
  def test_outputs_energy_x293; assert_in_epsilon(27.011477557880365, worksheet.outputs_energy_x293, 0.002); end
  def test_outputs_energy_y293; assert_in_epsilon(30.112425248069616, worksheet.outputs_energy_y293, 0.002); end
  def test_outputs_energy_z293; assert_in_epsilon(32.469687483671514, worksheet.outputs_energy_z293, 0.002); end
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
  def test_outputs_energy_c309; assert_equal("Description", worksheet.outputs_energy_c309); end
  def test_outputs_energy_e309; assert_equal("Note for lookups", worksheet.outputs_energy_e309); end
  def test_outputs_energy_f309; assert_equal("Note for lookups 2", worksheet.outputs_energy_f309); end
  def test_outputs_energy_g309; assert_equal("Note for lookups 3", worksheet.outputs_energy_g309); end
  def test_outputs_energy_h309; assert_equal("Note for lookups 4", worksheet.outputs_energy_h309); end
  def test_outputs_energy_j309; assert_equal("1985", worksheet.outputs_energy_j309); end
  def test_outputs_energy_k309; assert_equal("1990", worksheet.outputs_energy_k309); end
  def test_outputs_energy_l309; assert_equal("1995", worksheet.outputs_energy_l309); end
  def test_outputs_energy_m309; assert_equal("2000", worksheet.outputs_energy_m309); end
  def test_outputs_energy_n309; assert_equal("2005", worksheet.outputs_energy_n309); end
  def test_outputs_energy_o309; assert_in_epsilon(2010.0, worksheet.outputs_energy_o309, 0.002); end
  def test_outputs_energy_p309; assert_in_epsilon(2011.0, worksheet.outputs_energy_p309, 0.002); end
  def test_outputs_energy_r309; assert_in_epsilon(2011.0, worksheet.outputs_energy_r309, 0.002); end
  def test_outputs_energy_s309; assert_equal("2015", worksheet.outputs_energy_s309); end
  def test_outputs_energy_t309; assert_equal("2020", worksheet.outputs_energy_t309); end
  def test_outputs_energy_u309; assert_equal("2025", worksheet.outputs_energy_u309); end
  def test_outputs_energy_v309; assert_equal("2030", worksheet.outputs_energy_v309); end
  def test_outputs_energy_w309; assert_equal("2035", worksheet.outputs_energy_w309); end
  def test_outputs_energy_x309; assert_equal("2040", worksheet.outputs_energy_x309); end
  def test_outputs_energy_y309; assert_equal("2045", worksheet.outputs_energy_y309); end
  def test_outputs_energy_z309; assert_equal("2050", worksheet.outputs_energy_z309); end
  def test_outputs_energy_c310; assert_equal("Iron and steel", worksheet.outputs_energy_c310); end
  def test_outputs_energy_e310; assert_equal("Steel.Oxygen", worksheet.outputs_energy_e310); end
  def test_outputs_energy_f310; assert_equal("Steel.OxygenHisarna", worksheet.outputs_energy_f310); end
  def test_outputs_energy_g310; assert_equal("Steel.Electric", worksheet.outputs_energy_g310); end
  def test_outputs_energy_h310; assert_equal("Steel.ElectricDRI", worksheet.outputs_energy_h310); end
  def test_outputs_energy_i310; assert_equal("G.M.02", worksheet.outputs_energy_i310); end
  def test_outputs_energy_r310; assert_in_epsilon(24.770538157680395, worksheet.outputs_energy_r310, 0.002); end
  def test_outputs_energy_s310; assert_in_epsilon(25.695097791467248, worksheet.outputs_energy_s310, 0.002); end
  def test_outputs_energy_t310; assert_in_epsilon(27.59514188870381, worksheet.outputs_energy_t310, 0.002); end
  def test_outputs_energy_u310; assert_in_epsilon(29.6573819565151, worksheet.outputs_energy_u310, 0.002); end
  def test_outputs_energy_v310; assert_in_epsilon(31.996548108384737, worksheet.outputs_energy_v310, 0.002); end
  def test_outputs_energy_w310; assert_in_epsilon(34.47104309625016, worksheet.outputs_energy_w310, 0.002); end
  def test_outputs_energy_x310; assert_in_epsilon(37.10449452246137, worksheet.outputs_energy_x310, 0.002); end
  def test_outputs_energy_y310; assert_in_epsilon(40.57718788074037, worksheet.outputs_energy_y310, 0.002); end
  def test_outputs_energy_z310; assert_in_epsilon(43.66815543858449, worksheet.outputs_energy_z310, 0.002); end
  def test_outputs_energy_c311; assert_equal("Aluminium", worksheet.outputs_energy_c311); end
  def test_outputs_energy_e311; assert_equal("Aluminium.Alumina", worksheet.outputs_energy_e311); end
  def test_outputs_energy_f311; assert_equal("Aluminium.Primary", worksheet.outputs_energy_f311); end
  def test_outputs_energy_g311; assert_equal("Aluminium.Secondary", worksheet.outputs_energy_g311); end
  def test_outputs_energy_i311; assert_equal("G.M.02", worksheet.outputs_energy_i311); end
  def test_outputs_energy_r311; assert_in_epsilon(4.391030188713757, worksheet.outputs_energy_r311, 0.002); end
  def test_outputs_energy_s311; assert_in_epsilon(4.936129444351668, worksheet.outputs_energy_s311, 0.002); end
  def test_outputs_energy_t311; assert_in_epsilon(5.866959383829196, worksheet.outputs_energy_t311, 0.002); end
  def test_outputs_energy_u311; assert_in_epsilon(6.905586477020479, worksheet.outputs_energy_u311, 0.002); end
  def test_outputs_energy_v311; assert_in_epsilon(8.092587172154913, worksheet.outputs_energy_v311, 0.002); end
  def test_outputs_energy_w311; assert_in_epsilon(9.411436526878397, worksheet.outputs_energy_w311, 0.002); end
  def test_outputs_energy_x311; assert_in_epsilon(10.831681622424945, worksheet.outputs_energy_x311, 0.002); end
  def test_outputs_energy_y311; assert_in_epsilon(12.478577697119112, worksheet.outputs_energy_y311, 0.002); end
  def test_outputs_energy_z311; assert_in_epsilon(14.26627450140675, worksheet.outputs_energy_z311, 0.002); end
  def test_outputs_energy_c312; assert_equal("Chemicals", worksheet.outputs_energy_c312); end
  def test_outputs_energy_e312; assert_equal("Chemicals & petrochemicals.HVC", worksheet.outputs_energy_e312); end
  def test_outputs_energy_f312; assert_equal("Chemicals & petrochemicals.Ammonia", worksheet.outputs_energy_f312); end
  def test_outputs_energy_g312; assert_equal("Chemicals & petrochemicals.Methanol", worksheet.outputs_energy_g312); end
  def test_outputs_energy_h312; assert_equal("Chemicals & petrochemicals.Others", worksheet.outputs_energy_h312); end
  def test_outputs_energy_i312; assert_equal("G.M.02", worksheet.outputs_energy_i312); end
  def test_outputs_energy_r312; assert_in_epsilon(39.808905846555035, worksheet.outputs_energy_r312, 0.002); end
  def test_outputs_energy_s312; assert_in_epsilon(39.54109413512306, worksheet.outputs_energy_s312, 0.002); end
  def test_outputs_energy_t312; assert_in_epsilon(42.684047317541456, worksheet.outputs_energy_t312, 0.002); end
  def test_outputs_energy_u312; assert_in_epsilon(45.73710064679342, worksheet.outputs_energy_u312, 0.002); end
  def test_outputs_energy_v312; assert_in_epsilon(49.03532194674412, worksheet.outputs_energy_v312, 0.002); end
  def test_outputs_energy_w312; assert_in_epsilon(52.356408190573674, worksheet.outputs_energy_w312, 0.002); end
  def test_outputs_energy_x312; assert_in_epsilon(55.68000844067132, worksheet.outputs_energy_x312, 0.002); end
  def test_outputs_energy_y312; assert_in_epsilon(59.42358273309421, worksheet.outputs_energy_y312, 0.002); end
  def test_outputs_energy_z312; assert_in_epsilon(62.71245157643307, worksheet.outputs_energy_z312, 0.002); end
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
  def test_outputs_energy_s314; assert_in_epsilon(11.378454932396595, worksheet.outputs_energy_s314, 0.002); end
  def test_outputs_energy_t314; assert_in_epsilon(12.173472872369924, worksheet.outputs_energy_t314, 0.002); end
  def test_outputs_energy_u314; assert_in_epsilon(12.946153281451862, worksheet.outputs_energy_u314, 0.002); end
  def test_outputs_energy_v314; assert_in_epsilon(13.87822030666199, worksheet.outputs_energy_v314, 0.002); end
  def test_outputs_energy_w314; assert_in_epsilon(14.83000795442324, worksheet.outputs_energy_w314, 0.002); end
  def test_outputs_energy_x314; assert_in_epsilon(15.784392607422632, worksheet.outputs_energy_x314, 0.002); end
  def test_outputs_energy_y314; assert_in_epsilon(16.777082598369724, worksheet.outputs_energy_y314, 0.002); end
  def test_outputs_energy_z314; assert_in_epsilon(17.76871457546547, worksheet.outputs_energy_z314, 0.002); end
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
  def test_outputs_energy_c316; assert_equal("Timber", worksheet.outputs_energy_c316); end
  def test_outputs_energy_e316; assert_equal("Timber", worksheet.outputs_energy_e316); end
  def test_outputs_energy_i316; assert_equal("G.M.02", worksheet.outputs_energy_i316); end
  def test_outputs_energy_r316; assert_in_epsilon(6.142647935033601, worksheet.outputs_energy_r316, 0.002); end
  def test_outputs_energy_s316; assert_in_epsilon(6.479525657293509, worksheet.outputs_energy_s316, 0.002); end
  def test_outputs_energy_t316; assert_in_epsilon(6.846942207120854, worksheet.outputs_energy_t316, 0.002); end
  def test_outputs_energy_u316; assert_in_epsilon(7.186042201233078, worksheet.outputs_energy_u316, 0.002); end
  def test_outputs_energy_v316; assert_in_epsilon(7.496130741624269, worksheet.outputs_energy_v316, 0.002); end
  def test_outputs_energy_w316; assert_in_epsilon(7.7780895352573545, worksheet.outputs_energy_w316, 0.002); end
  def test_outputs_energy_x316; assert_in_epsilon(8.030778959289165, worksheet.outputs_energy_x316, 0.002); end
  def test_outputs_energy_y316; assert_in_epsilon(8.2527761658766, worksheet.outputs_energy_y316, 0.002); end
  def test_outputs_energy_z316; assert_in_epsilon(8.439631691678365, worksheet.outputs_energy_z316, 0.002); end
  def test_outputs_energy_c317; assert_equal("Total", worksheet.outputs_energy_c317); end
  def test_outputs_energy_j317; assert_in_epsilon(89.51563572, worksheet.outputs_energy_j317, 0.002); end
  def test_outputs_energy_k317; assert_in_epsilon(96.13700115, worksheet.outputs_energy_k317, 0.002); end
  def test_outputs_energy_l317; assert_in_epsilon(97.93670919, worksheet.outputs_energy_l317, 0.002); end
  def test_outputs_energy_m317; assert_in_epsilon(105.12064196, worksheet.outputs_energy_m317, 0.002); end
  def test_outputs_energy_n317; assert_in_epsilon(120.32151098, worksheet.outputs_energy_n317, 0.002); end
  def test_outputs_energy_o317; assert_in_epsilon(137.98756298, worksheet.outputs_energy_o317, 0.002); end
  def test_outputs_energy_p317; assert_in_epsilon(143.27425753, worksheet.outputs_energy_p317, 0.002); end
  def test_outputs_energy_r317; assert_in_epsilon(143.34762076351507, worksheet.outputs_energy_r317, 0.002); end
  def test_outputs_energy_s317; assert_in_epsilon(150.9664542655713, worksheet.outputs_energy_s317, 0.002); end
  def test_outputs_energy_t317; assert_in_epsilon(164.3453220041465, worksheet.outputs_energy_t317, 0.002); end
  def test_outputs_energy_u317; assert_in_epsilon(177.673519487993, worksheet.outputs_energy_u317, 0.002); end
  def test_outputs_energy_v317; assert_in_epsilon(191.5893075903811, worksheet.outputs_energy_v317, 0.002); end
  def test_outputs_energy_w317; assert_in_epsilon(205.520220949221, worksheet.outputs_energy_w317, 0.002); end
  def test_outputs_energy_x317; assert_in_epsilon(219.37156449974432, worksheet.outputs_energy_x317, 0.002); end
  def test_outputs_energy_y317; assert_in_epsilon(234.33485034312713, worksheet.outputs_energy_y317, 0.002); end
  def test_outputs_energy_z317; assert_in_epsilon(248.1262815751429, worksheet.outputs_energy_z317, 0.002); end
  def test_outputs_energy_h67; assert_in_epsilon(77.74494084, worksheet.outputs_energy_h67, 0.002); end
  def test_outputs_energy_i67; assert_in_epsilon(90.57849988, worksheet.outputs_energy_i67, 0.002); end
  def test_outputs_energy_j67; assert_in_epsilon(89.51563572, worksheet.outputs_energy_j67, 0.002); end
  def test_outputs_energy_d202; assert_in_epsilon(242607775716314.97, worksheet.outputs_energy_d202, 0.002); end
  def test_outputs_energy_d203; assert_in_epsilon(265349795354999.97, worksheet.outputs_energy_d203, 0.002); end
  def test_outputs_energy_d204; assert_in_epsilon(234824234714999.97, worksheet.outputs_energy_d204, 0.002); end
  def test_outputs_energy_d226; assert_in_epsilon(636000000000000.0, worksheet.outputs_energy_d226, 0.002); end
  def test_outputs_energy_d227; assert_in_epsilon(477000000000000.0, worksheet.outputs_energy_d227, 0.002); end
  def test_outputs_energy_d228; assert_in_epsilon(365700000000000.0, worksheet.outputs_energy_d228, 0.002); end
  def test_outputs_energy_n195; assert_in_epsilon(602.8097886532842, worksheet.outputs_energy_n195, 0.002); end
  def test_outputs_energy_n196; assert_in_epsilon(780.7984086532842, worksheet.outputs_energy_n196, 0.002); end
  def test_outputs_energy_n197; assert_in_epsilon(603.7984086532842, worksheet.outputs_energy_n197, 0.002); end
  def test_outputs_energy_n209; assert_in_epsilon(61.564976769750984, worksheet.outputs_energy_n209, 0.002); end
  def test_outputs_energy_n210; assert_in_epsilon(55.02201443613444, worksheet.outputs_energy_n210, 0.002); end
  def test_outputs_energy_n211; assert_in_epsilon(58.793977052956876, worksheet.outputs_energy_n211, 0.002); end
  def test_outputs_energy_n202; assert_in_epsilon(35938272886391.97, worksheet.outputs_energy_n202, 0.002); end
  def test_outputs_energy_n203; assert_in_epsilon(58680292525076.97, worksheet.outputs_energy_n203, 0.002); end
  def test_outputs_energy_n204; assert_in_epsilon(28154731885076.97, worksheet.outputs_energy_n204, 0.002); end
  def test_outputs_energy_r326; assert_in_epsilon(75.68118835830707, worksheet.outputs_energy_r326, 0.002); end
  def test_outputs_energy_s326; assert_in_epsilon(82.15382802522655, worksheet.outputs_energy_s326, 0.002); end
  def test_outputs_energy_t326; assert_in_epsilon(89.42748194108617, worksheet.outputs_energy_t326, 0.002); end
  def test_outputs_energy_u326; assert_in_epsilon(96.65758650339956, worksheet.outputs_energy_u326, 0.002); end
  def test_outputs_energy_v326; assert_in_epsilon(104.1531576631543, worksheet.outputs_energy_v326, 0.002); end
  def test_outputs_energy_w326; assert_in_epsilon(111.78154241290872, worksheet.outputs_energy_w326, 0.002); end
  def test_outputs_energy_x326; assert_in_epsilon(119.39730304631345, worksheet.outputs_energy_x326, 0.002); end
  def test_outputs_energy_y326; assert_in_epsilon(127.2818866712775, worksheet.outputs_energy_y326, 0.002); end
  def test_outputs_energy_z326; assert_in_epsilon(135.14233790723296, worksheet.outputs_energy_z326, 0.002); end
  def test_outputs_energy_r327; assert_in_epsilon(2.409494397695259, worksheet.outputs_energy_r327, 0.002); end
  def test_outputs_energy_s327; assert_in_epsilon(2.557549440493357, worksheet.outputs_energy_s327, 0.002); end
  def test_outputs_energy_t327; assert_in_epsilon(2.723371710964807, worksheet.outputs_energy_t327, 0.002); end
  def test_outputs_energy_u327; assert_in_epsilon(2.9030769491082307, worksheet.outputs_energy_u327, 0.002); end
  def test_outputs_energy_v327; assert_in_epsilon(3.0826524192388076, worksheet.outputs_energy_v327, 0.002); end
  def test_outputs_energy_w327; assert_in_epsilon(3.2715262249636163, worksheet.outputs_energy_w327, 0.002); end
  def test_outputs_energy_x327; assert_in_epsilon(3.4789542236147164, worksheet.outputs_energy_x327, 0.002); end
  def test_outputs_energy_y327; assert_in_epsilon(3.691862925206964, worksheet.outputs_energy_y327, 0.002); end
  def test_outputs_energy_z327; assert_in_epsilon(3.9269222482607065, worksheet.outputs_energy_z327, 0.002); end
  def test_outputs_energy_r328; assert_in_epsilon(5.712727394281483, worksheet.outputs_energy_r328, 0.002); end
  def test_outputs_energy_s328; assert_in_epsilon(6.083263817312703, worksheet.outputs_energy_s328, 0.002); end
  def test_outputs_energy_t328; assert_in_epsilon(6.394781858162281, worksheet.outputs_energy_t328, 0.002); end
  def test_outputs_energy_u328; assert_in_epsilon(6.710938680024888, worksheet.outputs_energy_u328, 0.002); end
  def test_outputs_energy_v328; assert_in_epsilon(7.036150758080879, worksheet.outputs_energy_v328, 0.002); end
  def test_outputs_energy_w328; assert_in_epsilon(7.375816355888826, worksheet.outputs_energy_w328, 0.002); end
  def test_outputs_energy_x328; assert_in_epsilon(7.733141738792215, worksheet.outputs_energy_x328, 0.002); end
  def test_outputs_energy_y328; assert_in_epsilon(8.109227649920776, worksheet.outputs_energy_y328, 0.002); end
  def test_outputs_energy_z328; assert_in_epsilon(8.504522498638654, worksheet.outputs_energy_z328, 0.002); end
  def test_outputs_energy_r329; assert_in_epsilon(15.516894985541164, worksheet.outputs_energy_r329, 0.002); end
  def test_outputs_energy_s329; assert_in_epsilon(16.431528014665385, worksheet.outputs_energy_s329, 0.002); end
  def test_outputs_energy_t329; assert_in_epsilon(17.324862305734978, worksheet.outputs_energy_t329, 0.002); end
  def test_outputs_energy_u329; assert_in_epsilon(18.27410175948773, worksheet.outputs_energy_u329, 0.002); end
  def test_outputs_energy_v329; assert_in_epsilon(19.292060710726297, worksheet.outputs_energy_v329, 0.002); end
  def test_outputs_energy_w329; assert_in_epsilon(20.395409591352525, worksheet.outputs_energy_w329, 0.002); end
  def test_outputs_energy_x329; assert_in_epsilon(21.600443740258925, worksheet.outputs_energy_x329, 0.002); end
  def test_outputs_energy_y329; assert_in_epsilon(22.923198235543474, worksheet.outputs_energy_y329, 0.002); end
  def test_outputs_energy_z329; assert_in_epsilon(24.382056674633255, worksheet.outputs_energy_z329, 0.002); end
  def test_outputs_energy_h63; assert_in_epsilon(45.51369989, worksheet.outputs_energy_h63, 0.002); end
  def test_outputs_energy_i63; assert_in_epsilon(51.52193813, worksheet.outputs_energy_i63, 0.002); end
  def test_outputs_energy_j63; assert_in_epsilon(54.43186451, worksheet.outputs_energy_j63, 0.002); end
  def test_outputs_emissions_h61; assert_in_epsilon(4.5968100000000005, worksheet.outputs_emissions_h61, 0.002); end
  def test_outputs_emissions_i61; assert_in_epsilon(5.02333, worksheet.outputs_emissions_i61, 0.002); end
  def test_outputs_emissions_j61; assert_in_epsilon(5.72027, worksheet.outputs_emissions_j61, 0.002); end
  def test_outputs_emissions_k61; assert_in_epsilon(6.39796, worksheet.outputs_emissions_k61, 0.002); end
  def test_outputs_emissions_l61; assert_in_epsilon(6.90623, worksheet.outputs_emissions_l61, 0.002); end
  def test_outputs_emissions_p61; assert_in_epsilon(6.4181456354880675, worksheet.outputs_emissions_p61, 0.002); end
  def test_outputs_emissions_q61; assert_in_epsilon(6.901269312091523, worksheet.outputs_emissions_q61, 0.002); end
  def test_outputs_emissions_r61; assert_in_epsilon(7.418978916380343, worksheet.outputs_emissions_r61, 0.002); end
  def test_outputs_emissions_s61; assert_in_epsilon(7.931643815194407, worksheet.outputs_emissions_s61, 0.002); end
  def test_outputs_emissions_t61; assert_in_epsilon(8.459215229417365, worksheet.outputs_emissions_t61, 0.002); end
  def test_outputs_emissions_u61; assert_in_epsilon(8.994356633599569, worksheet.outputs_emissions_u61, 0.002); end
  def test_outputs_emissions_v61; assert_in_epsilon(9.528850408996625, worksheet.outputs_emissions_v61, 0.002); end
  def test_outputs_emissions_w61; assert_in_epsilon(10.080226351604372, worksheet.outputs_emissions_w61, 0.002); end
  def test_outputs_emissions_x61; assert_in_epsilon(10.631065537010587, worksheet.outputs_emissions_x61, 0.002); end
  def test_outputs_emissions_h62; assert_in_epsilon(3.5572380711154223, worksheet.outputs_emissions_h62, 0.002); end
  def test_outputs_emissions_i62; assert_in_epsilon(3.40461542005277, worksheet.outputs_emissions_i62, 0.002); end
  def test_outputs_emissions_j62; assert_in_epsilon(3.354907742912074, worksheet.outputs_emissions_j62, 0.002); end
  def test_outputs_emissions_k62; assert_in_epsilon(3.571160504318861, worksheet.outputs_emissions_k62, 0.002); end
  def test_outputs_emissions_l62; assert_in_epsilon(3.657419802739237, worksheet.outputs_emissions_l62, 0.002); end
  def test_outputs_emissions_p62; assert_in_epsilon(1.6251435520044208, worksheet.outputs_emissions_p62, 0.002); end
  def test_outputs_emissions_q62; assert_in_epsilon(1.7577320085784318, worksheet.outputs_emissions_q62, 0.002); end
  def test_outputs_emissions_r62; assert_in_epsilon(1.906303366252277, worksheet.outputs_emissions_r62, 0.002); end
  def test_outputs_emissions_s62; assert_in_epsilon(2.011510263144253, worksheet.outputs_emissions_s62, 0.002); end
  def test_outputs_emissions_t62; assert_in_epsilon(2.098012211677109, worksheet.outputs_emissions_t62, 0.002); end
  def test_outputs_emissions_u62; assert_in_epsilon(2.1559875348538524, worksheet.outputs_emissions_u62, 0.002); end
  def test_outputs_emissions_v62; assert_in_epsilon(2.159574888579704, worksheet.outputs_emissions_v62, 0.002); end
  def test_outputs_emissions_w62; assert_in_epsilon(2.146048076186965, worksheet.outputs_emissions_w62, 0.002); end
  def test_outputs_emissions_x62; assert_in_epsilon(2.074484759447697, worksheet.outputs_emissions_x62, 0.002); end
  def test_outputs_emissions_h63; assert_in_epsilon(5.4239727545553, worksheet.outputs_emissions_h63, 0.002); end
  def test_outputs_emissions_i63; assert_in_epsilon(5.531303861360651, worksheet.outputs_emissions_i63, 0.002); end
  def test_outputs_emissions_j63; assert_in_epsilon(5.66031394402772, worksheet.outputs_emissions_j63, 0.002); end
  def test_outputs_emissions_k63; assert_in_epsilon(6.821436971551759, worksheet.outputs_emissions_k63, 0.002); end
  def test_outputs_emissions_l63; assert_in_epsilon(8.125303565793601, worksheet.outputs_emissions_l63, 0.002); end
  def test_outputs_emissions_p63; assert_in_epsilon(10.368335094468485, worksheet.outputs_emissions_p63, 0.002); end
  def test_outputs_emissions_q63; assert_in_epsilon(11.010136038165829, worksheet.outputs_emissions_q63, 0.002); end
  def test_outputs_emissions_r63; assert_in_epsilon(11.998822745242835, worksheet.outputs_emissions_r63, 0.002); end
  def test_outputs_emissions_s63; assert_in_epsilon(13.004498284206475, worksheet.outputs_emissions_s63, 0.002); end
  def test_outputs_emissions_t63; assert_in_epsilon(13.844736192431782, worksheet.outputs_emissions_t63, 0.002); end
  def test_outputs_emissions_u63; assert_in_epsilon(14.687107982401479, worksheet.outputs_emissions_u63, 0.002); end
  def test_outputs_emissions_v63; assert_in_epsilon(15.51002798771837, worksheet.outputs_emissions_v63, 0.002); end
  def test_outputs_emissions_w63; assert_in_epsilon(16.43905058631051, worksheet.outputs_emissions_w63, 0.002); end
  def test_outputs_emissions_x63; assert_in_epsilon(16.646332695573598, worksheet.outputs_emissions_x63, 0.002); end
  def test_outputs_emissions_h64; assert_in_epsilon(10.48075881029452, worksheet.outputs_emissions_h64, 0.002); end
  def test_outputs_emissions_i64; assert_in_epsilon(11.08127397186996, worksheet.outputs_emissions_i64, 0.002); end
  def test_outputs_emissions_j64; assert_in_epsilon(12.42520542747288, worksheet.outputs_emissions_j64, 0.002); end
  def test_outputs_emissions_k64; assert_in_epsilon(14.705129986304412, worksheet.outputs_emissions_k64, 0.002); end
  def test_outputs_emissions_l64; assert_in_epsilon(16.53458439282281, worksheet.outputs_emissions_l64, 0.002); end
  def test_outputs_emissions_p64; assert_in_epsilon(18.236501330271757, worksheet.outputs_emissions_p64, 0.002); end
  def test_outputs_emissions_q64; assert_in_epsilon(19.097330697715307, worksheet.outputs_emissions_q64, 0.002); end
  def test_outputs_emissions_r64; assert_in_epsilon(21.319809058818038, worksheet.outputs_emissions_r64, 0.002); end
  def test_outputs_emissions_s64; assert_in_epsilon(23.64592994202995, worksheet.outputs_emissions_s64, 0.002); end
  def test_outputs_emissions_t64; assert_in_epsilon(23.925842655375636, worksheet.outputs_emissions_t64, 0.002); end
  def test_outputs_emissions_u64; assert_in_epsilon(25.460948699226194, worksheet.outputs_emissions_u64, 0.002); end
  def test_outputs_emissions_v64; assert_in_epsilon(26.91635982590583, worksheet.outputs_emissions_v64, 0.002); end
  def test_outputs_emissions_w64; assert_in_epsilon(27.82211937060128, worksheet.outputs_emissions_w64, 0.002); end
  def test_outputs_emissions_x64; assert_in_epsilon(28.422639111254227, worksheet.outputs_emissions_x64, 0.002); end
  def test_outputs_emissions_h65; assert_in_epsilon(10.796156778443688, worksheet.outputs_emissions_h65, 0.002); end
  def test_outputs_emissions_i65; assert_in_epsilon(10.72819610559427, worksheet.outputs_emissions_i65, 0.002); end
  def test_outputs_emissions_j65; assert_in_epsilon(10.661061716648991, worksheet.outputs_emissions_j65, 0.002); end
  def test_outputs_emissions_k65; assert_in_epsilon(10.206533479652432, worksheet.outputs_emissions_k65, 0.002); end
  def test_outputs_emissions_l65; assert_in_epsilon(10.510757938238582, worksheet.outputs_emissions_l65, 0.002); end
  def test_outputs_emissions_p65; assert_in_epsilon(9.548462633840767, worksheet.outputs_emissions_p65, 0.002); end
  def test_outputs_emissions_q65; assert_in_epsilon(13.125119425522785, worksheet.outputs_emissions_q65, 0.002); end
  def test_outputs_emissions_r65; assert_in_epsilon(23.41865357876064, worksheet.outputs_emissions_r65, 0.002); end
  def test_outputs_emissions_s65; assert_in_epsilon(23.343400224419362, worksheet.outputs_emissions_s65, 0.002); end
  def test_outputs_emissions_t65; assert_in_epsilon(21.45038055097183, worksheet.outputs_emissions_t65, 0.002); end
  def test_outputs_emissions_u65; assert_in_epsilon(22.694270010958704, worksheet.outputs_emissions_u65, 0.002); end
  def test_outputs_emissions_v65; assert_in_epsilon(18.113235643926412, worksheet.outputs_emissions_v65, 0.002); end
  def test_outputs_emissions_w65; assert_in_epsilon(16.334871176309246, worksheet.outputs_emissions_w65, 0.002); end
  def test_outputs_emissions_x65; assert_in_epsilon(14.498921911248397, worksheet.outputs_emissions_x65, 0.002); end
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
  def test_outputs_emissions_q67; assert_in_epsilon(51.89158748207387, worksheet.outputs_emissions_q67, 0.002); end
  def test_outputs_emissions_r67; assert_in_epsilon(66.06256766545414, worksheet.outputs_emissions_r67, 0.002); end
  def test_outputs_emissions_s67; assert_in_epsilon(69.93698252899445, worksheet.outputs_emissions_s67, 0.002); end
  def test_outputs_emissions_t67; assert_in_epsilon(69.77818683987373, worksheet.outputs_emissions_t67, 0.002); end
  def test_outputs_emissions_u67; assert_in_epsilon(73.99267086103978, worksheet.outputs_emissions_u67, 0.002); end
  def test_outputs_emissions_v67; assert_in_epsilon(72.22804875512695, worksheet.outputs_emissions_v67, 0.002); end
  def test_outputs_emissions_w67; assert_in_epsilon(72.82231556101237, worksheet.outputs_emissions_w67, 0.002); end
  def test_outputs_emissions_x67; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_x67, 0.002); end
  def test_outputs_emissions_h204; assert_in_delta(0.21613567908999795, worksheet.outputs_emissions_h204, 0.002); end
  def test_outputs_emissions_i204; assert_in_delta(0.21394604776644002, worksheet.outputs_emissions_i204, 0.002); end
  def test_outputs_emissions_j204; assert_in_delta(0.21806406453805793, worksheet.outputs_emissions_j204, 0.002); end
  def test_outputs_emissions_k204; assert_in_delta(0.2350098363903014, worksheet.outputs_emissions_k204, 0.002); end
  def test_outputs_emissions_l204; assert_in_delta(0.2481055378570945, worksheet.outputs_emissions_l204, 0.002); end
  def test_outputs_emissions_p204; assert_in_delta(0.2147475190718488, worksheet.outputs_emissions_p204, 0.002); end
  def test_outputs_emissions_q204; assert_in_delta(0.2233211187975684, worksheet.outputs_emissions_q204, 0.002); end
  def test_outputs_emissions_r204; assert_in_delta(0.23921674648108013, worksheet.outputs_emissions_r204, 0.002); end
  def test_outputs_emissions_s204; assert_in_delta(0.25448799529499366, worksheet.outputs_emissions_s204, 0.002); end
  def test_outputs_emissions_t204; assert_in_delta(0.26606976620549005, worksheet.outputs_emissions_t204, 0.002); end
  def test_outputs_emissions_u204; assert_in_delta(0.2794513966721377, worksheet.outputs_emissions_u204, 0.002); end
  def test_outputs_emissions_v204; assert_in_delta(0.2908559128357998, worksheet.outputs_emissions_v204, 0.002); end
  def test_outputs_emissions_w204; assert_in_delta(0.2998870361202655, worksheet.outputs_emissions_w204, 0.002); end
  def test_outputs_emissions_x204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_x204, 0.002); end
  def test_outputs_emissions_y204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_y204, 0.002); end
  def test_outputs_emissions_z204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_z204, 0.002); end
  def test_outputs_emissions_aa204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_aa204, 0.002); end
  def test_outputs_emissions_ab204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_ab204, 0.002); end
  def test_outputs_emissions_ac204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_ac204, 0.002); end
  def test_outputs_emissions_ad204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_ad204, 0.002); end
  def test_outputs_emissions_ae204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_ae204, 0.002); end
  def test_outputs_emissions_af204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_af204, 0.002); end
  def test_outputs_emissions_ag204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_ag204, 0.002); end
  def test_outputs_emissions_ah204; assert_in_delta(0.3080708346704018, worksheet.outputs_emissions_ah204, 0.002); end
  def test_outputs_emissions_h126; assert_in_epsilon(25.34891757, worksheet.outputs_emissions_h126, 0.002); end
  def test_outputs_emissions_i126; assert_in_epsilon(26.374524320000003, worksheet.outputs_emissions_i126, 0.002); end
  def test_outputs_emissions_j126; assert_in_epsilon(28.35797029, worksheet.outputs_emissions_j126, 0.002); end
  def test_outputs_emissions_k126; assert_in_epsilon(31.52379656, worksheet.outputs_emissions_k126, 0.002); end
  def test_outputs_emissions_l126; assert_in_epsilon(35.02307894, worksheet.outputs_emissions_l126, 0.002); end
  def test_outputs_emissions_p126; assert_in_epsilon(36.81537453689527, worksheet.outputs_emissions_p126, 0.002); end
  def test_outputs_emissions_q126; assert_in_epsilon(42.11381510458739, worksheet.outputs_emissions_q126, 0.002); end
  def test_outputs_emissions_r126; assert_in_epsilon(55.59367124696924, worksheet.outputs_emissions_r126, 0.002); end
  def test_outputs_emissions_s126; assert_in_epsilon(58.796914448110925, worksheet.outputs_emissions_s126, 0.002); end
  def test_outputs_emissions_t126; assert_in_epsilon(58.12393925594816, worksheet.outputs_emissions_t126, 0.002); end
  def test_outputs_emissions_u126; assert_in_epsilon(61.73675862148764, worksheet.outputs_emissions_u126, 0.002); end
  def test_outputs_emissions_v126; assert_in_epsilon(59.44524045437474, worksheet.outputs_emissions_v126, 0.002); end
  def test_outputs_emissions_w126; assert_in_epsilon(59.57431440363226, worksheet.outputs_emissions_w126, 0.002); end
  def test_outputs_emissions_x126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_x126, 0.002); end
  def test_outputs_emissions_y126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_y126, 0.002); end
  def test_outputs_emissions_z126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_z126, 0.002); end
  def test_outputs_emissions_aa126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_aa126, 0.002); end
  def test_outputs_emissions_ab126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ab126, 0.002); end
  def test_outputs_emissions_ac126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ac126, 0.002); end
  def test_outputs_emissions_ad126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ad126, 0.002); end
  def test_outputs_emissions_ae126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ae126, 0.002); end
  def test_outputs_emissions_af126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_af126, 0.002); end
  def test_outputs_emissions_ag126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ag126, 0.002); end
  def test_outputs_emissions_ah126; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ah126, 0.002); end
  def test_outputs_emissions_d5; assert_equal("3010 Gt CO2", worksheet.outputs_emissions_d5); end
  def test_outputs_emissions_d83; assert_equal("Gas", worksheet.outputs_emissions_d83); end
  def test_outputs_emissions_h83; assert_in_epsilon(1990.0, worksheet.outputs_emissions_h83, 0.002); end
  def test_outputs_emissions_i83; assert_in_epsilon(1995.0, worksheet.outputs_emissions_i83, 0.002); end
  def test_outputs_emissions_j83; assert_in_epsilon(2000.0, worksheet.outputs_emissions_j83, 0.002); end
  def test_outputs_emissions_k83; assert_in_epsilon(2005.0, worksheet.outputs_emissions_k83, 0.002); end
  def test_outputs_emissions_l83; assert_in_epsilon(2010.0, worksheet.outputs_emissions_l83, 0.002); end
  def test_outputs_emissions_p83; assert_in_epsilon(2011.0, worksheet.outputs_emissions_p83, 0.002); end
  def test_outputs_emissions_q83; assert_in_epsilon(2015.0, worksheet.outputs_emissions_q83, 0.002); end
  def test_outputs_emissions_r83; assert_in_epsilon(2020.0, worksheet.outputs_emissions_r83, 0.002); end
  def test_outputs_emissions_s83; assert_in_epsilon(2025.0, worksheet.outputs_emissions_s83, 0.002); end
  def test_outputs_emissions_t83; assert_in_epsilon(2030.0, worksheet.outputs_emissions_t83, 0.002); end
  def test_outputs_emissions_u83; assert_in_epsilon(2035.0, worksheet.outputs_emissions_u83, 0.002); end
  def test_outputs_emissions_v83; assert_in_epsilon(2040.0, worksheet.outputs_emissions_v83, 0.002); end
  def test_outputs_emissions_w83; assert_in_epsilon(2045.0, worksheet.outputs_emissions_w83, 0.002); end
  def test_outputs_emissions_x83; assert_in_epsilon(2050.0, worksheet.outputs_emissions_x83, 0.002); end
  def test_outputs_emissions_y83; assert_in_epsilon(2055.0, worksheet.outputs_emissions_y83, 0.002); end
  def test_outputs_emissions_z83; assert_in_epsilon(2060.0, worksheet.outputs_emissions_z83, 0.002); end
  def test_outputs_emissions_aa83; assert_in_epsilon(2065.0, worksheet.outputs_emissions_aa83, 0.002); end
  def test_outputs_emissions_ab83; assert_in_epsilon(2070.0, worksheet.outputs_emissions_ab83, 0.002); end
  def test_outputs_emissions_ac83; assert_in_epsilon(2075.0, worksheet.outputs_emissions_ac83, 0.002); end
  def test_outputs_emissions_ad83; assert_in_epsilon(2080.0, worksheet.outputs_emissions_ad83, 0.002); end
  def test_outputs_emissions_ae83; assert_in_epsilon(2085.0, worksheet.outputs_emissions_ae83, 0.002); end
  def test_outputs_emissions_af83; assert_in_epsilon(2090.0, worksheet.outputs_emissions_af83, 0.002); end
  def test_outputs_emissions_ag83; assert_in_epsilon(2095.0, worksheet.outputs_emissions_ag83, 0.002); end
  def test_outputs_emissions_ah83; assert_in_epsilon(2100.0, worksheet.outputs_emissions_ah83, 0.002); end
  def test_outputs_emissions_d84; assert_equal("CO2", worksheet.outputs_emissions_d84); end
  def test_outputs_emissions_h84; assert_in_epsilon(25.34891757, worksheet.outputs_emissions_h84, 0.002); end
  def test_outputs_emissions_i84; assert_in_epsilon(26.374524320000003, worksheet.outputs_emissions_i84, 0.002); end
  def test_outputs_emissions_j84; assert_in_epsilon(28.35797029, worksheet.outputs_emissions_j84, 0.002); end
  def test_outputs_emissions_k84; assert_in_epsilon(31.52379656, worksheet.outputs_emissions_k84, 0.002); end
  def test_outputs_emissions_l84; assert_in_epsilon(35.02307894, worksheet.outputs_emissions_l84, 0.002); end
  def test_outputs_emissions_p84; assert_in_epsilon(36.81537453689527, worksheet.outputs_emissions_p84, 0.002); end
  def test_outputs_emissions_q84; assert_in_epsilon(42.11381510458739, worksheet.outputs_emissions_q84, 0.002); end
  def test_outputs_emissions_r84; assert_in_epsilon(55.59367124696924, worksheet.outputs_emissions_r84, 0.002); end
  def test_outputs_emissions_s84; assert_in_epsilon(58.796914448110925, worksheet.outputs_emissions_s84, 0.002); end
  def test_outputs_emissions_t84; assert_in_epsilon(58.12393925594816, worksheet.outputs_emissions_t84, 0.002); end
  def test_outputs_emissions_u84; assert_in_epsilon(61.73675862148764, worksheet.outputs_emissions_u84, 0.002); end
  def test_outputs_emissions_v84; assert_in_epsilon(59.44524045437474, worksheet.outputs_emissions_v84, 0.002); end
  def test_outputs_emissions_w84; assert_in_epsilon(59.57431440363226, worksheet.outputs_emissions_w84, 0.002); end
  def test_outputs_emissions_x84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_x84, 0.002); end
  def test_outputs_emissions_y84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_y84, 0.002); end
  def test_outputs_emissions_z84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_z84, 0.002); end
  def test_outputs_emissions_aa84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_aa84, 0.002); end
  def test_outputs_emissions_ab84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ab84, 0.002); end
  def test_outputs_emissions_ac84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ac84, 0.002); end
  def test_outputs_emissions_ad84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ad84, 0.002); end
  def test_outputs_emissions_ae84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ae84, 0.002); end
  def test_outputs_emissions_af84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_af84, 0.002); end
  def test_outputs_emissions_ag84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ag84, 0.002); end
  def test_outputs_emissions_ah84; assert_in_epsilon(58.67456645791485, worksheet.outputs_emissions_ah84, 0.002); end
  def test_outputs_emissions_d85; assert_equal("NH4", worksheet.outputs_emissions_d85); end
  def test_outputs_emissions_h85; assert_in_epsilon(6.2679346936099405, worksheet.outputs_emissions_h85, 0.002); end
  def test_outputs_emissions_i85; assert_in_epsilon(6.204435385226761, worksheet.outputs_emissions_i85, 0.002); end
  def test_outputs_emissions_j85; assert_in_epsilon(6.32385787160368, worksheet.outputs_emissions_j85, 0.002); end
  def test_outputs_emissions_k85; assert_in_epsilon(6.815285255318741, worksheet.outputs_emissions_k85, 0.002); end
  def test_outputs_emissions_l85; assert_in_epsilon(7.195060597855741, worksheet.outputs_emissions_l85, 0.002); end
  def test_outputs_emissions_p85; assert_in_epsilon(6.227678053083615, worksheet.outputs_emissions_p85, 0.002); end
  def test_outputs_emissions_q85; assert_in_epsilon(6.476312445129484, worksheet.outputs_emissions_q85, 0.002); end
  def test_outputs_emissions_r85; assert_in_epsilon(6.937285647951324, worksheet.outputs_emissions_r85, 0.002); end
  def test_outputs_emissions_s85; assert_in_epsilon(7.380151863554817, worksheet.outputs_emissions_s85, 0.002); end
  def test_outputs_emissions_t85; assert_in_epsilon(7.716023219959212, worksheet.outputs_emissions_t85, 0.002); end
  def test_outputs_emissions_u85; assert_in_epsilon(8.104090503491992, worksheet.outputs_emissions_u85, 0.002); end
  def test_outputs_emissions_v85; assert_in_epsilon(8.434821472238195, worksheet.outputs_emissions_v85, 0.002); end
  def test_outputs_emissions_w85; assert_in_epsilon(8.6967240474877, worksheet.outputs_emissions_w85, 0.002); end
  def test_outputs_emissions_x85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_x85, 0.002); end
  def test_outputs_emissions_y85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_y85, 0.002); end
  def test_outputs_emissions_z85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_z85, 0.002); end
  def test_outputs_emissions_aa85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_aa85, 0.002); end
  def test_outputs_emissions_ab85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_ab85, 0.002); end
  def test_outputs_emissions_ac85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_ac85, 0.002); end
  def test_outputs_emissions_ad85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_ad85, 0.002); end
  def test_outputs_emissions_ae85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_ae85, 0.002); end
  def test_outputs_emissions_af85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_af85, 0.002); end
  def test_outputs_emissions_ag85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_ag85, 0.002); end
  def test_outputs_emissions_ah85; assert_in_epsilon(8.934054205441653, worksheet.outputs_emissions_ah85, 0.002); end
  def test_outputs_emissions_d86; assert_equal("CH4", worksheet.outputs_emissions_d86); end
  def test_outputs_emissions_h86; assert_in_epsilon(3.2380841507989895, worksheet.outputs_emissions_h86, 0.002); end
  def test_outputs_emissions_i86; assert_in_epsilon(3.1897596536509, worksheet.outputs_emissions_i86, 0.002); end
  def test_outputs_emissions_j86; assert_in_epsilon(3.13992066945797, worksheet.outputs_emissions_j86, 0.002); end
  def test_outputs_emissions_k86; assert_in_epsilon(3.3631391265087096, worksheet.outputs_emissions_k86, 0.002); end
  def test_outputs_emissions_l86; assert_in_epsilon(3.5161561617384898, worksheet.outputs_emissions_l86, 0.002); end
  def test_outputs_emissions_p86; assert_in_epsilon(3.1535356560946037, worksheet.outputs_emissions_p86, 0.002); end
  def test_outputs_emissions_q86; assert_in_epsilon(3.301459932356999, worksheet.outputs_emissions_q86, 0.002); end
  def test_outputs_emissions_r86; assert_in_epsilon(3.531610770533559, worksheet.outputs_emissions_r86, 0.002); end
  def test_outputs_emissions_s86; assert_in_epsilon(3.759916217328713, worksheet.outputs_emissions_s86, 0.002); end
  def test_outputs_emissions_t86; assert_in_epsilon(3.9382243639663406, worksheet.outputs_emissions_t86, 0.002); end
  def test_outputs_emissions_u86; assert_in_epsilon(4.151821736060161, worksheet.outputs_emissions_u86, 0.002); end
  def test_outputs_emissions_v86; assert_in_epsilon(4.347986828514008, worksheet.outputs_emissions_v86, 0.002); end
  def test_outputs_emissions_w86; assert_in_epsilon(4.551277109892414, worksheet.outputs_emissions_w86, 0.002); end
  def test_outputs_emissions_x86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_x86, 0.002); end
  def test_outputs_emissions_y86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_y86, 0.002); end
  def test_outputs_emissions_z86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_z86, 0.002); end
  def test_outputs_emissions_aa86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_aa86, 0.002); end
  def test_outputs_emissions_ab86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_ab86, 0.002); end
  def test_outputs_emissions_ac86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_ac86, 0.002); end
  def test_outputs_emissions_ad86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_ad86, 0.002); end
  def test_outputs_emissions_ae86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_ae86, 0.002); end
  def test_outputs_emissions_af86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_af86, 0.002); end
  def test_outputs_emissions_ag86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_ag86, 0.002); end
  def test_outputs_emissions_ah86; assert_in_epsilon(4.664823351178005, worksheet.outputs_emissions_ah86, 0.002); end
  def test_outputs_emissions_d87; assert_equal("Total", worksheet.outputs_emissions_d87); end
  def test_outputs_emissions_h87; assert_in_epsilon(34.85493641440893, worksheet.outputs_emissions_h87, 0.002); end
  def test_outputs_emissions_i87; assert_in_epsilon(35.76871935887767, worksheet.outputs_emissions_i87, 0.002); end
  def test_outputs_emissions_j87; assert_in_epsilon(37.821748831061655, worksheet.outputs_emissions_j87, 0.002); end
  def test_outputs_emissions_k87; assert_in_epsilon(41.70222094182745, worksheet.outputs_emissions_k87, 0.002); end
  def test_outputs_emissions_l87; assert_in_epsilon(45.73429569959423, worksheet.outputs_emissions_l87, 0.002); end
  def test_outputs_emissions_p87; assert_in_epsilon(46.19658824607349, worksheet.outputs_emissions_p87, 0.002); end
  def test_outputs_emissions_q87; assert_in_epsilon(51.89158748207387, worksheet.outputs_emissions_q87, 0.002); end
  def test_outputs_emissions_r87; assert_in_epsilon(66.06256766545413, worksheet.outputs_emissions_r87, 0.002); end
  def test_outputs_emissions_s87; assert_in_epsilon(69.93698252899445, worksheet.outputs_emissions_s87, 0.002); end
  def test_outputs_emissions_t87; assert_in_epsilon(69.77818683987371, worksheet.outputs_emissions_t87, 0.002); end
  def test_outputs_emissions_u87; assert_in_epsilon(73.99267086103978, worksheet.outputs_emissions_u87, 0.002); end
  def test_outputs_emissions_v87; assert_in_epsilon(72.22804875512695, worksheet.outputs_emissions_v87, 0.002); end
  def test_outputs_emissions_w87; assert_in_epsilon(72.82231556101237, worksheet.outputs_emissions_w87, 0.002); end
  def test_outputs_emissions_x87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_x87, 0.002); end
  def test_outputs_emissions_y87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_y87, 0.002); end
  def test_outputs_emissions_z87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_z87, 0.002); end
  def test_outputs_emissions_aa87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_aa87, 0.002); end
  def test_outputs_emissions_ab87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ab87, 0.002); end
  def test_outputs_emissions_ac87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ac87, 0.002); end
  def test_outputs_emissions_ad87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ad87, 0.002); end
  def test_outputs_emissions_ae87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ae87, 0.002); end
  def test_outputs_emissions_af87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_af87, 0.002); end
  def test_outputs_emissions_ag87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ag87, 0.002); end
  def test_outputs_emissions_ah87; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ah87, 0.002); end
  def test_outputs_emissions_h54; assert_in_epsilon(34.85493641440893, worksheet.outputs_emissions_h54, 0.002); end
  def test_outputs_emissions_i54; assert_in_epsilon(35.76871935887767, worksheet.outputs_emissions_i54, 0.002); end
  def test_outputs_emissions_j54; assert_in_epsilon(37.821748831061655, worksheet.outputs_emissions_j54, 0.002); end
  def test_outputs_emissions_k54; assert_in_epsilon(41.70222094182745, worksheet.outputs_emissions_k54, 0.002); end
  def test_outputs_emissions_l54; assert_in_epsilon(45.73429569959423, worksheet.outputs_emissions_l54, 0.002); end
  def test_outputs_emissions_n54; assert_in_delta(0.0, (worksheet.outputs_emissions_n54||0), 0.002); end
  def test_outputs_emissions_p54; assert_in_epsilon(46.19658824607349, worksheet.outputs_emissions_p54, 0.002); end
  def test_outputs_emissions_q54; assert_in_epsilon(51.89158748207387, worksheet.outputs_emissions_q54, 0.002); end
  def test_outputs_emissions_r54; assert_in_epsilon(66.06256766545413, worksheet.outputs_emissions_r54, 0.002); end
  def test_outputs_emissions_s54; assert_in_epsilon(69.93698252899445, worksheet.outputs_emissions_s54, 0.002); end
  def test_outputs_emissions_t54; assert_in_epsilon(69.77818683987371, worksheet.outputs_emissions_t54, 0.002); end
  def test_outputs_emissions_u54; assert_in_epsilon(73.99267086103978, worksheet.outputs_emissions_u54, 0.002); end
  def test_outputs_emissions_v54; assert_in_epsilon(72.22804875512695, worksheet.outputs_emissions_v54, 0.002); end
  def test_outputs_emissions_w54; assert_in_epsilon(72.82231556101237, worksheet.outputs_emissions_w54, 0.002); end
  def test_outputs_emissions_x54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_x54, 0.002); end
  def test_outputs_emissions_y54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_y54, 0.002); end
  def test_outputs_emissions_z54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_z54, 0.002); end
  def test_outputs_emissions_aa54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_aa54, 0.002); end
  def test_outputs_emissions_ab54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ab54, 0.002); end
  def test_outputs_emissions_ac54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ac54, 0.002); end
  def test_outputs_emissions_ad54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ad54, 0.002); end
  def test_outputs_emissions_ae54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ae54, 0.002); end
  def test_outputs_emissions_af54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_af54, 0.002); end
  def test_outputs_emissions_ag54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ag54, 0.002); end
  def test_outputs_emissions_ah54; assert_in_epsilon(72.2734440145345, worksheet.outputs_emissions_ah54, 0.002); end
  def test_outputs_emissions_n127; assert_in_epsilon(1890.0, worksheet.outputs_emissions_n127, 0.002); end
  def test_outputs_emissions_ah127; assert_in_epsilon(6999.911848237577, worksheet.outputs_emissions_ah127, 0.002); end
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
  def test_outputs_emissions_q281; assert_in_delta(0.012458339367384903, worksheet.outputs_emissions_q281, 0.002); end
  def test_outputs_emissions_r281; assert_in_delta(0.013326833096353052, worksheet.outputs_emissions_r281, 0.002); end
  def test_outputs_emissions_s281; assert_in_delta(0.014188363084259293, worksheet.outputs_emissions_s281, 0.002); end
  def test_outputs_emissions_t281; assert_in_delta(0.014861224014967324, worksheet.outputs_emissions_t281, 0.002); end
  def test_outputs_emissions_u281; assert_in_delta(0.015667251834189287, worksheet.outputs_emissions_u281, 0.002); end
  def test_outputs_emissions_v281; assert_in_delta(0.016407497466090597, worksheet.outputs_emissions_v281, 0.002); end
  def test_outputs_emissions_w281; assert_in_delta(0.0171746306033676, worksheet.outputs_emissions_w281, 0.002); end
  def test_outputs_emissions_x281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_x281, 0.002); end
  def test_outputs_emissions_y281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_y281, 0.002); end
  def test_outputs_emissions_z281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_z281, 0.002); end
  def test_outputs_emissions_aa281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_aa281, 0.002); end
  def test_outputs_emissions_ab281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_ab281, 0.002); end
  def test_outputs_emissions_ac281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_ac281, 0.002); end
  def test_outputs_emissions_ad281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_ad281, 0.002); end
  def test_outputs_emissions_ae281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_ae281, 0.002); end
  def test_outputs_emissions_af281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_af281, 0.002); end
  def test_outputs_emissions_ag281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_ag281, 0.002); end
  def test_outputs_emissions_ah281; assert_in_delta(0.017603106985577377, worksheet.outputs_emissions_ah281, 0.002); end
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
  def test_outputs_physical_implications_y111; assert_in_epsilon(1662.8490134604936, worksheet.outputs_physical_implications_y111, 0.002); end
  def test_outputs_physical_implications_y112; assert_in_epsilon(986.1502810696558, worksheet.outputs_physical_implications_y112, 0.002); end
  def test_outputs_physical_implications_y113; assert_in_epsilon(2097.3610465436172, worksheet.outputs_physical_implications_y113, 0.002); end
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
  def test_outputs_physical_implications_y155; assert_in_epsilon(150110.0, worksheet.outputs_physical_implications_y155, 0.002); end
  def test_outputs_physical_implications_y156; assert_in_epsilon(137010.0, worksheet.outputs_physical_implications_y156, 0.002); end
  def test_outputs_physical_implications_y157; assert_in_epsilon(10.0, worksheet.outputs_physical_implications_y157, 0.002); end
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
  def test_outputs_physical_implications_r60; assert_in_epsilon(3685.156272053258, worksheet.outputs_physical_implications_r60, 0.002); end
  def test_outputs_physical_implications_s60; assert_in_epsilon(3495.386267118181, worksheet.outputs_physical_implications_s60, 0.002); end
  def test_outputs_physical_implications_t60; assert_in_epsilon(3310.9225535629535, worksheet.outputs_physical_implications_t60, 0.002); end
  def test_outputs_physical_implications_u60; assert_in_epsilon(3151.040352210293, worksheet.outputs_physical_implications_u60, 0.002); end
  def test_outputs_physical_implications_v60; assert_in_epsilon(2982.2300774454484, worksheet.outputs_physical_implications_v60, 0.002); end
  def test_outputs_physical_implications_w60; assert_in_epsilon(2866.3835583448213, worksheet.outputs_physical_implications_w60, 0.002); end
  def test_outputs_physical_implications_x60; assert_in_epsilon(2773.329006382913, worksheet.outputs_physical_implications_x60, 0.002); end
  def test_outputs_physical_implications_y60; assert_in_epsilon(2703.603250618196, worksheet.outputs_physical_implications_y60, 0.002); end
  def test_outputs_physical_implications_q61; assert_in_epsilon(274.0, worksheet.outputs_physical_implications_q61, 0.002); end
  def test_outputs_physical_implications_r61; assert_in_epsilon(291.4301908995458, worksheet.outputs_physical_implications_r61, 0.002); end
  def test_outputs_physical_implications_s61; assert_in_epsilon(311.6348287781843, worksheet.outputs_physical_implications_s61, 0.002); end
  def test_outputs_physical_implications_t61; assert_in_epsilon(331.4166773616069, worksheet.outputs_physical_implications_t61, 0.002); end
  def test_outputs_physical_implications_u61; assert_in_epsilon(350.745730529143, worksheet.outputs_physical_implications_u61, 0.002); end
  def test_outputs_physical_implications_v61; assert_in_epsilon(369.66472664037354, worksheet.outputs_physical_implications_v61, 0.002); end
  def test_outputs_physical_implications_w61; assert_in_epsilon(388.12291991195747, worksheet.outputs_physical_implications_w61, 0.002); end
  def test_outputs_physical_implications_x61; assert_in_epsilon(406.0248220094558, worksheet.outputs_physical_implications_x61, 0.002); end
  def test_outputs_physical_implications_y61; assert_in_epsilon(423.1853960787912, worksheet.outputs_physical_implications_y61, 0.002); end
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
  def test_outputs_physical_implications_r63; assert_in_delta(4.618527782440651e-13, worksheet.outputs_physical_implications_r63, 0.002); end
  def test_outputs_physical_implications_s63; assert_in_delta(1.3713474800169934e-12, worksheet.outputs_physical_implications_s63, 0.002); end
  def test_outputs_physical_implications_t63; assert_in_delta(7.105427357601002e-15, worksheet.outputs_physical_implications_t63, 0.002); end
  def test_outputs_physical_implications_u63; assert_in_delta(4.618527782440651e-13, worksheet.outputs_physical_implications_u63, 0.002); end
  def test_outputs_physical_implications_v63; assert_in_delta(0.0, (worksheet.outputs_physical_implications_v63||0), 0.002); end
  def test_outputs_physical_implications_w63; assert_in_delta(0.0, (worksheet.outputs_physical_implications_w63||0), 0.002); end
  def test_outputs_physical_implications_x63; assert_in_delta(4.618527782440651e-13, worksheet.outputs_physical_implications_x63, 0.002); end
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
  def test_outputs_physical_implications_c131; assert_equal("Description", worksheet.outputs_physical_implications_c131); end
  def test_outputs_physical_implications_q131; assert_in_epsilon(2011.0, worksheet.outputs_physical_implications_q131, 0.002); end
  def test_outputs_physical_implications_r131; assert_equal("2015", worksheet.outputs_physical_implications_r131); end
  def test_outputs_physical_implications_s131; assert_equal("2020", worksheet.outputs_physical_implications_s131); end
  def test_outputs_physical_implications_t131; assert_equal("2025", worksheet.outputs_physical_implications_t131); end
  def test_outputs_physical_implications_u131; assert_equal("2030", worksheet.outputs_physical_implications_u131); end
  def test_outputs_physical_implications_v131; assert_equal("2035", worksheet.outputs_physical_implications_v131); end
  def test_outputs_physical_implications_w131; assert_equal("2040", worksheet.outputs_physical_implications_w131); end
  def test_outputs_physical_implications_x131; assert_equal("2045", worksheet.outputs_physical_implications_x131); end
  def test_outputs_physical_implications_y131; assert_equal("2050", worksheet.outputs_physical_implications_y131); end
  def test_outputs_physical_implications_c132; assert_equal("Iron and steel", worksheet.outputs_physical_implications_c132); end
  def test_outputs_physical_implications_e132; assert_equal("Steel.Oxygen", worksheet.outputs_physical_implications_e132); end
  def test_outputs_physical_implications_f132; assert_equal("Steel.OxygenHisarna", worksheet.outputs_physical_implications_f132); end
  def test_outputs_physical_implications_g132; assert_equal("Steel.Electric", worksheet.outputs_physical_implications_g132); end
  def test_outputs_physical_implications_h132; assert_equal("Steel.ElectricDRI", worksheet.outputs_physical_implications_h132); end
  def test_outputs_physical_implications_q132; assert_in_epsilon(1.5183, worksheet.outputs_physical_implications_q132, 0.002); end
  def test_outputs_physical_implications_r132; assert_in_epsilon(1.5841816035789718, worksheet.outputs_physical_implications_r132, 0.002); end
  def test_outputs_physical_implications_s132; assert_in_epsilon(1.7140539202372318, worksheet.outputs_physical_implications_s132, 0.002); end
  def test_outputs_physical_implications_t132; assert_in_epsilon(1.8562750191667563, worksheet.outputs_physical_implications_t132, 0.002); end
  def test_outputs_physical_implications_u132; assert_in_epsilon(2.01842219525463, worksheet.outputs_physical_implications_u132, 0.002); end
  def test_outputs_physical_implications_v132; assert_in_epsilon(2.1920258376630066, worksheet.outputs_physical_implications_v132, 0.002); end
  def test_outputs_physical_implications_w132; assert_in_epsilon(2.3789451668197836, worksheet.outputs_physical_implications_w132, 0.002); end
  def test_outputs_physical_implications_x132; assert_in_epsilon(2.623567421094836, worksheet.outputs_physical_implications_x132, 0.002); end
  def test_outputs_physical_implications_y132; assert_in_epsilon(2.813397517130374, worksheet.outputs_physical_implications_y132, 0.002); end
  def test_outputs_physical_implications_c133; assert_equal("Aluminium", worksheet.outputs_physical_implications_c133); end
  def test_outputs_physical_implications_e133; assert_equal("Aluminium.Alumina", worksheet.outputs_physical_implications_e133); end
  def test_outputs_physical_implications_f133; assert_equal("Aluminium.Primary", worksheet.outputs_physical_implications_f133); end
  def test_outputs_physical_implications_g133; assert_equal("Aluminium.Secondary", worksheet.outputs_physical_implications_g133); end
  def test_outputs_physical_implications_q133; assert_in_delta(0.16753358521407624, worksheet.outputs_physical_implications_q133, 0.002); end
  def test_outputs_physical_implications_r133; assert_in_delta(0.18334148452005972, worksheet.outputs_physical_implications_r133, 0.002); end
  def test_outputs_physical_implications_s133; assert_in_delta(0.2117057510216853, worksheet.outputs_physical_implications_s133, 0.002); end
  def test_outputs_physical_implications_t133; assert_in_delta(0.2431120469548635, worksheet.outputs_physical_implications_t133, 0.002); end
  def test_outputs_physical_implications_u133; assert_in_delta(0.27880471888875424, worksheet.outputs_physical_implications_u133, 0.002); end
  def test_outputs_physical_implications_v133; assert_in_delta(0.31849446148784333, worksheet.outputs_physical_implications_v133, 0.002); end
  def test_outputs_physical_implications_w133; assert_in_delta(0.3607769317059467, worksheet.outputs_physical_implications_w133, 0.002); end
  def test_outputs_physical_implications_x133; assert_in_delta(0.40991762076851446, worksheet.outputs_physical_implications_x133, 0.002); end
  def test_outputs_physical_implications_y133; assert_in_delta(0.46212676820213, worksheet.outputs_physical_implications_y133, 0.002); end
  def test_outputs_physical_implications_c134; assert_equal("Chemicals", worksheet.outputs_physical_implications_c134); end
  def test_outputs_physical_implications_e134; assert_equal("Chemicals & petrochemicals.HVC", worksheet.outputs_physical_implications_e134); end
  def test_outputs_physical_implications_f134; assert_equal("Chemicals & petrochemicals.Ammonia", worksheet.outputs_physical_implications_f134); end
  def test_outputs_physical_implications_g134; assert_equal("Chemicals & petrochemicals.Methanol", worksheet.outputs_physical_implications_g134); end
  def test_outputs_physical_implications_h134; assert_equal("Chemicals & petrochemicals.Others", worksheet.outputs_physical_implications_h134); end
  def test_outputs_physical_implications_q134; assert_in_delta(0.7504088224854853, worksheet.outputs_physical_implications_q134, 0.002); end
  def test_outputs_physical_implications_r134; assert_in_delta(0.7494961775409825, worksheet.outputs_physical_implications_r134, 0.002); end
  def test_outputs_physical_implications_s134; assert_in_delta(0.8089319666356443, worksheet.outputs_physical_implications_s134, 0.002); end
  def test_outputs_physical_implications_t134; assert_in_delta(0.8668228976157294, worksheet.outputs_physical_implications_t134, 0.002); end
  def test_outputs_physical_implications_u134; assert_in_delta(0.9280444747157112, worksheet.outputs_physical_implications_u134, 0.002); end
  def test_outputs_physical_implications_v134; assert_in_delta(0.9891842284771908, worksheet.outputs_physical_implications_v134, 0.002); end
  def test_outputs_physical_implications_w134; assert_in_epsilon(1.0503595698025223, worksheet.outputs_physical_implications_w134, 0.002); end
  def test_outputs_physical_implications_x134; assert_in_epsilon(1.1183153739350544, worksheet.outputs_physical_implications_x134, 0.002); end
  def test_outputs_physical_implications_y134; assert_in_epsilon(1.178336792529667, worksheet.outputs_physical_implications_y134, 0.002); end
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
  def test_outputs_physical_implications_r136; assert_in_epsilon(3.941461405825546, worksheet.outputs_physical_implications_r136, 0.002); end
  def test_outputs_physical_implications_s136; assert_in_epsilon(4.27062249311083, worksheet.outputs_physical_implications_s136, 0.002); end
  def test_outputs_physical_implications_t136; assert_in_epsilon(4.600077268531439, worksheet.outputs_physical_implications_t136, 0.002); end
  def test_outputs_physical_implications_u136; assert_in_epsilon(4.941529832755988, worksheet.outputs_physical_implications_u136, 0.002); end
  def test_outputs_physical_implications_v136; assert_in_epsilon(5.291617319382574, worksheet.outputs_physical_implications_v136, 0.002); end
  def test_outputs_physical_implications_w136; assert_in_epsilon(5.644302349669854, worksheet.outputs_physical_implications_w136, 0.002); end
  def test_outputs_physical_implications_x136; assert_in_epsilon(6.012428792842214, worksheet.outputs_physical_implications_x136, 0.002); end
  def test_outputs_physical_implications_y136; assert_in_epsilon(6.381991040435483, worksheet.outputs_physical_implications_y136, 0.002); end
  def test_outputs_physical_implications_c137; assert_equal("Timber", worksheet.outputs_physical_implications_c137); end
  def test_outputs_physical_implications_e137; assert_equal("Timber", worksheet.outputs_physical_implications_e137); end
  def test_outputs_physical_implications_q137; assert_in_delta(0.8091999999999999, worksheet.outputs_physical_implications_q137, 0.002); end
  def test_outputs_physical_implications_r137; assert_in_delta(0.8696129518992726, worksheet.outputs_physical_implications_r137, 0.002); end
  def test_outputs_physical_implications_s137; assert_in_delta(0.9410211891561703, worksheet.outputs_physical_implications_s137, 0.002); end
  def test_outputs_physical_implications_t137; assert_in_epsilon(1.0119622091790281, worksheet.outputs_physical_implications_t137, 0.002); end
  def test_outputs_physical_implications_u137; assert_in_epsilon(1.0823005850813796, worksheet.outputs_physical_implications_u137, 0.002); end
  def test_outputs_physical_implications_v137; assert_in_epsilon(1.15212037655613, worksheet.outputs_physical_implications_v137, 0.002); end
  def test_outputs_physical_implications_w137; assert_in_epsilon(1.221207210771295, worksheet.outputs_physical_implications_w137, 0.002); end
  def test_outputs_physical_implications_x137; assert_in_epsilon(1.2892790177066427, worksheet.outputs_physical_implications_x137, 0.002); end
  def test_outputs_physical_implications_y137; assert_in_epsilon(1.3555358798113648, worksheet.outputs_physical_implications_y137, 0.002); end
  def test_outputs_physical_implications_q146; assert_in_epsilon(1982210.0, worksheet.outputs_physical_implications_q146, 0.002); end
  def test_outputs_physical_implications_q147; assert_in_epsilon(7180.0, worksheet.outputs_physical_implications_q147, 0.002); end
  def test_outputs_physical_implications_q148; assert_in_epsilon(80.0, worksheet.outputs_physical_implications_q148, 0.002); end
  def test_outputs_physical_implications_q149; assert_in_epsilon(40.0, worksheet.outputs_physical_implications_q149, 0.002); end
  def test_outputs_physical_implications_y146; assert_in_epsilon(5096510.0, worksheet.outputs_physical_implications_y146, 0.002); end
  def test_outputs_physical_implications_y147; assert_in_epsilon(12250.0, worksheet.outputs_physical_implications_y147, 0.002); end
  def test_outputs_physical_implications_y148; assert_in_epsilon(170.0, worksheet.outputs_physical_implications_y148, 0.002); end
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
  def test_outputs_costs_f8; assert_equal("Low", worksheet.outputs_costs_f8); end
  def test_outputs_costs_g8; assert_equal("Point", worksheet.outputs_costs_g8); end
  def test_outputs_costs_h8; assert_equal("High", worksheet.outputs_costs_h8); end
  def test_outputs_costs_d9; assert_equal("Transport", worksheet.outputs_costs_d9); end
  def test_outputs_costs_e9; assert_in_epsilon(10.0, worksheet.outputs_costs_e9, 0.002); end
  def test_outputs_costs_f9; assert_in_epsilon(1.3534499303801721, worksheet.outputs_costs_f9, 0.002); end
  def test_outputs_costs_g9; assert_in_epsilon(2.824420865844264, worksheet.outputs_costs_g9, 0.002); end
  def test_outputs_costs_h9; assert_in_epsilon(2.030174895570259, worksheet.outputs_costs_h9, 0.002); end
  def test_outputs_costs_d10; assert_equal("Buildings", worksheet.outputs_costs_d10); end
  def test_outputs_costs_e10; assert_in_epsilon(20.0, worksheet.outputs_costs_e10, 0.002); end
  def test_outputs_costs_f10; assert_in_delta(0.22181385137615636, worksheet.outputs_costs_f10, 0.002); end
  def test_outputs_costs_g10; assert_in_delta(0.5665769191856695, worksheet.outputs_costs_g10, 0.002); end
  def test_outputs_costs_h10; assert_in_delta(0.4185960167656072, worksheet.outputs_costs_h10, 0.002); end
  def test_outputs_costs_d11; assert_equal("Manufacturing", worksheet.outputs_costs_d11); end
  def test_outputs_costs_e11; assert_in_epsilon(30.0, worksheet.outputs_costs_e11, 0.002); end
  def test_outputs_costs_d12; assert_equal("Power", worksheet.outputs_costs_d12); end
  def test_outputs_costs_e12; assert_in_epsilon(40.0, worksheet.outputs_costs_e12, 0.002); end
  def test_outputs_costs_f12; assert_in_delta(0.009231769647326873, worksheet.outputs_costs_f12, 0.002); end
  def test_outputs_costs_g12; assert_in_delta(0.0905722576749745, worksheet.outputs_costs_g12, 0.002); end
  def test_outputs_costs_h12; assert_in_delta(0.01570947522909529, worksheet.outputs_costs_h12, 0.002); end
  def test_outputs_costs_d13; assert_equal("Total capital and operating costs", worksheet.outputs_costs_d13); end
  def test_outputs_costs_f13; assert_in_epsilon(1.5881169887619522, worksheet.outputs_costs_f13, 0.002); end
  def test_outputs_costs_g13; assert_in_epsilon(3.4815700427049086, worksheet.outputs_costs_g13, 0.002); end
  def test_outputs_costs_h13; assert_in_epsilon(2.4644803875649597, worksheet.outputs_costs_h13, 0.002); end
  def test_outputs_costs_bs634; assert_in_epsilon(1.8284418267074907, worksheet.outputs_costs_bs634, 0.002); end
  def test_outputs_costs_bs635; assert_in_epsilon(2.4556522250063235, worksheet.outputs_costs_bs635, 0.002); end
  def test_outputs_costs_bs636; assert_in_epsilon(1.3116744263823972, worksheet.outputs_costs_bs636, 0.002); end
  def test_outputs_costs_bs637; assert_in_delta(0.5501530055580308, worksheet.outputs_costs_bs637, 0.002); end
  def test_outputs_costs_bs638; assert_in_delta(0.016124002713670905, worksheet.outputs_costs_bs638, 0.002); end
  def test_outputs_costs_bs639; assert_in_delta(0.055912577191039134, worksheet.outputs_costs_bs639, 0.002); end
  def test_outputs_costs_f18; assert_equal("Low", worksheet.outputs_costs_f18); end
  def test_outputs_costs_g18; assert_equal("Point", worksheet.outputs_costs_g18); end
  def test_outputs_costs_h18; assert_equal("High", worksheet.outputs_costs_h18); end
  def test_outputs_costs_d19; assert_equal("Total fuels", worksheet.outputs_costs_d19); end
  def test_outputs_costs_g19; assert_in_epsilon(6.217958063558951, worksheet.outputs_costs_g19, 0.002); end
  def test_outputs_costs_hm38; assert_in_delta(0.0, (worksheet.outputs_costs_hm38||0), 0.002); end
  def test_outputs_costs_hm39; assert_in_delta(0.216941262905122, worksheet.outputs_costs_hm39, 0.002); end
  def test_outputs_costs_hm40; assert_in_delta(0.07248946683607302, worksheet.outputs_costs_hm40, 0.002); end
  def test_outputs_costs_hm41; assert_in_delta(0.6571121172159576, worksheet.outputs_costs_hm41, 0.002); end
  def test_outputs_costs_hm42; assert_in_delta(0.010998835697120308, worksheet.outputs_costs_hm42, 0.002); end
  def test_outputs_costs_hm43; assert_in_delta(0.02956624893345269, worksheet.outputs_costs_hm43, 0.002); end
  def test_outputs_costs_hm44; assert_in_delta(0.01807109945727143, worksheet.outputs_costs_hm44, 0.002); end
  def test_outputs_costs_hm45; assert_in_delta(0.0, (worksheet.outputs_costs_hm45||0), 0.002); end
  def test_outputs_costs_hm46; assert_in_delta(0.10360531559181092, worksheet.outputs_costs_hm46, 0.002); end
  def test_outputs_costs_hm47; assert_in_delta(0.0018546182437697196, worksheet.outputs_costs_hm47, 0.002); end
  def test_outputs_costs_hm48; assert_in_delta(0.0018546134197160431, worksheet.outputs_costs_hm48, 0.002); end
  def test_outputs_costs_hm49; assert_in_delta(0.0006422005760965086, worksheet.outputs_costs_hm49, 0.002); end
  def test_outputs_costs_hm50; assert_in_delta(0.0, (worksheet.outputs_costs_hm50||0), 0.002); end
  def test_outputs_costs_hm51; assert_in_delta(0.0, (worksheet.outputs_costs_hm51||0), 0.002); end
  def test_outputs_costs_hm52; assert_in_delta(0.0, (worksheet.outputs_costs_hm52||0), 0.002); end
  def test_outputs_costs_hm53; assert_in_delta(0.0, (worksheet.outputs_costs_hm53||0), 0.002); end
  def test_outputs_costs_hm54; assert_in_delta(0.11540492892305607, worksheet.outputs_costs_hm54, 0.002); end
  def test_outputs_costs_hm55; assert_in_delta(0.03301108347394514, worksheet.outputs_costs_hm55, 0.002); end
  def test_outputs_costs_hm56; assert_in_delta(0.38413355381363107, worksheet.outputs_costs_hm56, 0.002); end
  def test_outputs_costs_hm57; assert_in_delta(0.006207041254817348, worksheet.outputs_costs_hm57, 0.002); end
  def test_outputs_costs_hm58; assert_in_delta(0.01607928974405675, worksheet.outputs_costs_hm58, 0.002); end
  def test_outputs_costs_hm59; assert_in_delta(0.010057650639325353, worksheet.outputs_costs_hm59, 0.002); end
  def test_outputs_costs_hm60; assert_in_delta(0.0, (worksheet.outputs_costs_hm60||0), 0.002); end
  def test_outputs_costs_hm61; assert_in_delta(0.01426128578006842, worksheet.outputs_costs_hm61, 0.002); end
  def test_outputs_costs_hm62; assert_in_delta(0.00024338382566979828, worksheet.outputs_costs_hm62, 0.002); end
  def test_outputs_costs_hm63; assert_in_delta(0.00024338313359890522, worksheet.outputs_costs_hm63, 0.002); end
  def test_outputs_costs_hm64; assert_in_delta(3.4425413662650853e-06, worksheet.outputs_costs_hm64, 0.002); end
  def test_outputs_costs_hm65; assert_in_delta(0.0, (worksheet.outputs_costs_hm65||0), 0.002); end
  def test_outputs_costs_hm66; assert_in_delta(0.0, (worksheet.outputs_costs_hm66||0), 0.002); end
  def test_outputs_costs_hm67; assert_in_delta(0.0, (worksheet.outputs_costs_hm67||0), 0.002); end
  def test_outputs_costs_hm68; assert_in_delta(0.0, (worksheet.outputs_costs_hm68||0), 0.002); end
  def test_outputs_costs_hm69; assert_in_delta(0.0, (worksheet.outputs_costs_hm69||0), 0.002); end
  def test_outputs_costs_hm70; assert_in_delta(0.0, (worksheet.outputs_costs_hm70||0), 0.002); end
  def test_outputs_costs_hm71; assert_in_delta(0.0, (worksheet.outputs_costs_hm71||0), 0.002); end
  def test_outputs_costs_hm72; assert_in_delta(0.0, (worksheet.outputs_costs_hm72||0), 0.002); end
  def test_outputs_costs_hm73; assert_in_delta(0.0, (worksheet.outputs_costs_hm73||0), 0.002); end
  def test_outputs_costs_hm74; assert_in_delta(0.19457623505471477, worksheet.outputs_costs_hm74, 0.002); end
  def test_outputs_costs_hm75; assert_in_delta(0.006402121167452888, worksheet.outputs_costs_hm75, 0.002); end
  def test_outputs_costs_hm76; assert_in_delta(0.019823776083968278, worksheet.outputs_costs_hm76, 0.002); end
  def test_outputs_costs_hm77; assert_in_delta(1.409182430838887e-06, worksheet.outputs_costs_hm77, 0.002); end
  def test_outputs_costs_hm78; assert_in_delta(2.0244329736793622e-09, worksheet.outputs_costs_hm78, 0.002); end
  def test_outputs_costs_hm79; assert_in_delta(0.017201044249623255, worksheet.outputs_costs_hm79, 0.002); end
  def test_outputs_costs_hm80; assert_in_delta(0.0006947418568876059, worksheet.outputs_costs_hm80, 0.002); end
  def test_outputs_costs_hm81; assert_in_delta(0.0006947418486921737, worksheet.outputs_costs_hm81, 0.002); end
  def test_outputs_costs_hm82; assert_in_delta(1.6835288329500016e-07, worksheet.outputs_costs_hm82, 0.002); end
  def test_outputs_costs_hm83; assert_in_delta(0.0, (worksheet.outputs_costs_hm83||0), 0.002); end
  def test_outputs_costs_hm84; assert_in_delta(0.0, (worksheet.outputs_costs_hm84||0), 0.002); end
  def test_outputs_costs_hm85; assert_in_delta(0.0, (worksheet.outputs_costs_hm85||0), 0.002); end
  def test_outputs_costs_hm86; assert_in_delta(0.0, (worksheet.outputs_costs_hm86||0), 0.002); end
  def test_outputs_costs_hm87; assert_in_delta(0.0, (worksheet.outputs_costs_hm87||0), 0.002); end
  def test_outputs_costs_hm88; assert_in_delta(0.08985321188961344, worksheet.outputs_costs_hm88, 0.002); end
  def test_outputs_costs_hm89; assert_in_delta(0.004072933983233882, worksheet.outputs_costs_hm89, 0.002); end
  def test_outputs_costs_hm90; assert_in_delta(0.004072933946532807, worksheet.outputs_costs_hm90, 0.002); end
  def test_outputs_costs_hm91; assert_in_delta(7.539238671684277e-07, worksheet.outputs_costs_hm91, 0.002); end
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
  def test_outputs_costs_hm202; assert_in_delta(0.0006546779226198375, worksheet.outputs_costs_hm202, 0.002); end
  def test_outputs_costs_hm203; assert_in_delta(0.0007455490361369783, worksheet.outputs_costs_hm203, 0.002); end
  def test_outputs_costs_hm204; assert_in_delta(0.003025974256938958, worksheet.outputs_costs_hm204, 0.002); end
  def test_outputs_costs_hm205; assert_in_delta(0.00014897978291968225, worksheet.outputs_costs_hm205, 0.002); end
  def test_outputs_costs_hm206; assert_in_delta(0.0002389706203927837, worksheet.outputs_costs_hm206, 0.002); end
  def test_outputs_costs_hm207; assert_in_delta(0.00023739191088231369, worksheet.outputs_costs_hm207, 0.002); end
  def test_outputs_costs_hm208; assert_in_delta(0.0014667530948899179, worksheet.outputs_costs_hm208, 0.002); end
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
  def test_outputs_costs_hm436; assert_in_delta(0.14462750860341467, worksheet.outputs_costs_hm436, 0.002); end
  def test_outputs_costs_hm437; assert_in_delta(0.04832631122404867, worksheet.outputs_costs_hm437, 0.002); end
  def test_outputs_costs_hm438; assert_in_delta(0.43807474481063846, worksheet.outputs_costs_hm438, 0.002); end
  def test_outputs_costs_hm439; assert_in_delta(0.00733255713141354, worksheet.outputs_costs_hm439, 0.002); end
  def test_outputs_costs_hm440; assert_in_delta(0.019710832622301794, worksheet.outputs_costs_hm440, 0.002); end
  def test_outputs_costs_hm441; assert_in_delta(0.012047399638180955, worksheet.outputs_costs_hm441, 0.002); end
  def test_outputs_costs_hm442; assert_in_delta(0.0, (worksheet.outputs_costs_hm442||0), 0.002); end
  def test_outputs_costs_hm443; assert_in_delta(0.06907021039454062, worksheet.outputs_costs_hm443, 0.002); end
  def test_outputs_costs_hm444; assert_in_delta(0.0012364121625131467, worksheet.outputs_costs_hm444, 0.002); end
  def test_outputs_costs_hm445; assert_in_delta(0.0012364089464773622, worksheet.outputs_costs_hm445, 0.002); end
  def test_outputs_costs_hm446; assert_in_delta(0.0004281337173976725, worksheet.outputs_costs_hm446, 0.002); end
  def test_outputs_costs_hm447; assert_in_delta(0.0, (worksheet.outputs_costs_hm447||0), 0.002); end
  def test_outputs_costs_hm448; assert_in_delta(0.0, (worksheet.outputs_costs_hm448||0), 0.002); end
  def test_outputs_costs_hm449; assert_in_delta(0.0, (worksheet.outputs_costs_hm449||0), 0.002); end
  def test_outputs_costs_hm450; assert_in_delta(0.0, (worksheet.outputs_costs_hm450||0), 0.002); end
  def test_outputs_costs_hm451; assert_in_delta(0.07693661928203738, worksheet.outputs_costs_hm451, 0.002); end
  def test_outputs_costs_hm452; assert_in_delta(0.02200738898263009, worksheet.outputs_costs_hm452, 0.002); end
  def test_outputs_costs_hm453; assert_in_delta(0.25608903587575405, worksheet.outputs_costs_hm453, 0.002); end
  def test_outputs_costs_hm454; assert_in_delta(0.004138027503211567, worksheet.outputs_costs_hm454, 0.002); end
  def test_outputs_costs_hm455; assert_in_delta(0.010719526496037834, worksheet.outputs_costs_hm455, 0.002); end
  def test_outputs_costs_hm456; assert_in_delta(0.006705100426216902, worksheet.outputs_costs_hm456, 0.002); end
  def test_outputs_costs_hm457; assert_in_delta(0.0, (worksheet.outputs_costs_hm457||0), 0.002); end
  def test_outputs_costs_hm458; assert_in_delta(0.009507523853378948, worksheet.outputs_costs_hm458, 0.002); end
  def test_outputs_costs_hm459; assert_in_delta(0.00016225588377986554, worksheet.outputs_costs_hm459, 0.002); end
  def test_outputs_costs_hm460; assert_in_delta(0.00016225542239927017, worksheet.outputs_costs_hm460, 0.002); end
  def test_outputs_costs_hm461; assert_in_delta(2.2950275775100574e-06, worksheet.outputs_costs_hm461, 0.002); end
  def test_outputs_costs_hm462; assert_in_delta(0.0, (worksheet.outputs_costs_hm462||0), 0.002); end
  def test_outputs_costs_hm463; assert_in_delta(0.0, (worksheet.outputs_costs_hm463||0), 0.002); end
  def test_outputs_costs_hm464; assert_in_delta(0.0, (worksheet.outputs_costs_hm464||0), 0.002); end
  def test_outputs_costs_hm465; assert_in_delta(0.0, (worksheet.outputs_costs_hm465||0), 0.002); end
  def test_outputs_costs_hm466; assert_in_delta(0.0, (worksheet.outputs_costs_hm466||0), 0.002); end
  def test_outputs_costs_hm467; assert_in_delta(0.0, (worksheet.outputs_costs_hm467||0), 0.002); end
  def test_outputs_costs_hm468; assert_in_delta(0.0, (worksheet.outputs_costs_hm468||0), 0.002); end
  def test_outputs_costs_hm469; assert_in_delta(0.0, (worksheet.outputs_costs_hm469||0), 0.002); end
  def test_outputs_costs_hm470; assert_in_delta(0.0, (worksheet.outputs_costs_hm470||0), 0.002); end
  def test_outputs_costs_hm471; assert_in_delta(0.12971749003647653, worksheet.outputs_costs_hm471, 0.002); end
  def test_outputs_costs_hm472; assert_in_delta(0.004268080778301926, worksheet.outputs_costs_hm472, 0.002); end
  def test_outputs_costs_hm473; assert_in_delta(0.013215850722645521, worksheet.outputs_costs_hm473, 0.002); end
  def test_outputs_costs_hm474; assert_in_delta(9.394549538925917e-07, worksheet.outputs_costs_hm474, 0.002); end
  def test_outputs_costs_hm475; assert_in_delta(1.3496219824529084e-09, worksheet.outputs_costs_hm475, 0.002); end
  def test_outputs_costs_hm476; assert_in_delta(0.011467362833082174, worksheet.outputs_costs_hm476, 0.002); end
  def test_outputs_costs_hm477; assert_in_delta(0.0004631612379250706, worksheet.outputs_costs_hm477, 0.002); end
  def test_outputs_costs_hm478; assert_in_delta(0.00046316123246144925, worksheet.outputs_costs_hm478, 0.002); end
  def test_outputs_costs_hm479; assert_in_delta(1.1223525553000015e-07, worksheet.outputs_costs_hm479, 0.002); end
  def test_outputs_costs_hm480; assert_in_delta(0.0, (worksheet.outputs_costs_hm480||0), 0.002); end
  def test_outputs_costs_hm481; assert_in_delta(0.0, (worksheet.outputs_costs_hm481||0), 0.002); end
  def test_outputs_costs_hm482; assert_in_delta(0.0, (worksheet.outputs_costs_hm482||0), 0.002); end
  def test_outputs_costs_hm483; assert_in_delta(0.0, (worksheet.outputs_costs_hm483||0), 0.002); end
  def test_outputs_costs_hm484; assert_in_delta(0.0, (worksheet.outputs_costs_hm484||0), 0.002); end
  def test_outputs_costs_hm485; assert_in_delta(0.059902141259742296, worksheet.outputs_costs_hm485, 0.002); end
  def test_outputs_costs_hm486; assert_in_delta(0.0027152893221559214, worksheet.outputs_costs_hm486, 0.002); end
  def test_outputs_costs_hm487; assert_in_delta(0.002715289297688538, worksheet.outputs_costs_hm487, 0.002); end
  def test_outputs_costs_hm488; assert_in_delta(5.026159114456184e-07, worksheet.outputs_costs_hm488, 0.002); end
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
  def test_outputs_costs_hm596; assert_in_delta(0.0005356455730525943, worksheet.outputs_costs_hm596, 0.002); end
  def test_outputs_costs_hm597; assert_in_delta(0.0006099946659302549, worksheet.outputs_costs_hm597, 0.002); end
  def test_outputs_costs_hm598; assert_in_delta(0.0024757971193136922, worksheet.outputs_costs_hm598, 0.002); end
  def test_outputs_costs_hm599; assert_in_delta(0.0001218925496615582, worksheet.outputs_costs_hm599, 0.002); end
  def test_outputs_costs_hm600; assert_in_delta(0.0001955214166850048, worksheet.outputs_costs_hm600, 0.002); end
  def test_outputs_costs_hm601; assert_in_delta(0.0001942297452673475, worksheet.outputs_costs_hm601, 0.002); end
  def test_outputs_costs_hm602; assert_in_delta(0.001200070714000842, worksheet.outputs_costs_hm602, 0.002); end
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
  def test_outputs_costs_hm236; assert_in_delta(3.1492818026881546e-05, worksheet.outputs_costs_hm236, 0.002); end
  def test_outputs_costs_hm237; assert_in_delta(0.2772687788984613, worksheet.outputs_costs_hm237, 0.002); end
  def test_outputs_costs_hm238; assert_in_delta(0.08783040181202734, worksheet.outputs_costs_hm238, 0.002); end
  def test_outputs_costs_hm239; assert_in_delta(0.9093754389282643, worksheet.outputs_costs_hm239, 0.002); end
  def test_outputs_costs_hm240; assert_in_delta(0.01486164648515325, worksheet.outputs_costs_hm240, 0.002); end
  def test_outputs_costs_hm241; assert_in_delta(0.0391774721760662, worksheet.outputs_costs_hm241, 0.002); end
  def test_outputs_costs_hm242; assert_in_delta(0.024375813883420784, worksheet.outputs_costs_hm242, 0.002); end
  def test_outputs_costs_hm243; assert_in_delta(0.0, (worksheet.outputs_costs_hm243||0), 0.002); end
  def test_outputs_costs_hm244; assert_in_delta(0.1351998636879416, worksheet.outputs_costs_hm244, 0.002); end
  def test_outputs_costs_hm245; assert_in_delta(0.0022714149454898425, worksheet.outputs_costs_hm245, 0.002); end
  def test_outputs_costs_hm246; assert_in_delta(0.002271408203592838, worksheet.outputs_costs_hm246, 0.002); end
  def test_outputs_costs_hm247; assert_in_delta(0.000790672024306284, worksheet.outputs_costs_hm247, 0.002); end
  def test_outputs_costs_hm248; assert_in_delta(0.0, (worksheet.outputs_costs_hm248||0), 0.002); end
  def test_outputs_costs_hm249; assert_in_delta(0.0, (worksheet.outputs_costs_hm249||0), 0.002); end
  def test_outputs_costs_hm250; assert_in_delta(0.0, (worksheet.outputs_costs_hm250||0), 0.002); end
  def test_outputs_costs_hm251; assert_in_delta(2.707587169905137e-05, worksheet.outputs_costs_hm251, 0.002); end
  def test_outputs_costs_hm252; assert_in_delta(0.14977624741145157, worksheet.outputs_costs_hm252, 0.002); end
  def test_outputs_costs_hm253; assert_in_delta(0.04064223735772288, worksheet.outputs_costs_hm253, 0.002); end
  def test_outputs_costs_hm254; assert_in_delta(0.5371862679603129, worksheet.outputs_costs_hm254, 0.002); end
  def test_outputs_costs_hm255; assert_in_delta(0.008481418755008388, worksheet.outputs_costs_hm255, 0.002); end
  def test_outputs_costs_hm256; assert_in_delta(0.02151332746615397, worksheet.outputs_costs_hm256, 0.002); end
  def test_outputs_costs_hm257; assert_in_delta(0.013705084343225494, worksheet.outputs_costs_hm257, 0.002); end
  def test_outputs_costs_hm258; assert_in_delta(0.0, (worksheet.outputs_costs_hm258||0), 0.002); end
  def test_outputs_costs_hm259; assert_in_delta(0.018724659780186115, worksheet.outputs_costs_hm259, 0.002); end
  def test_outputs_costs_hm260; assert_in_delta(0.0002997932340770029, worksheet.outputs_costs_hm260, 0.002); end
  def test_outputs_costs_hm261; assert_in_delta(0.0002997922654179189, worksheet.outputs_costs_hm261, 0.002); end
  def test_outputs_costs_hm262; assert_in_delta(4.818363263168831e-06, worksheet.outputs_costs_hm262, 0.002); end
  def test_outputs_costs_hm263; assert_in_delta(0.0, (worksheet.outputs_costs_hm263||0), 0.002); end
  def test_outputs_costs_hm264; assert_in_delta(0.0, (worksheet.outputs_costs_hm264||0), 0.002); end
  def test_outputs_costs_hm265; assert_in_delta(0.0, (worksheet.outputs_costs_hm265||0), 0.002); end
  def test_outputs_costs_hm266; assert_in_delta(0.0, (worksheet.outputs_costs_hm266||0), 0.002); end
  def test_outputs_costs_hm267; assert_in_delta(0.0, (worksheet.outputs_costs_hm267||0), 0.002); end
  def test_outputs_costs_hm268; assert_in_delta(0.0, (worksheet.outputs_costs_hm268||0), 0.002); end
  def test_outputs_costs_hm269; assert_in_delta(0.0, (worksheet.outputs_costs_hm269||0), 0.002); end
  def test_outputs_costs_hm270; assert_in_delta(0.0, (worksheet.outputs_costs_hm270||0), 0.002); end
  def test_outputs_costs_hm271; assert_in_delta(0.0, (worksheet.outputs_costs_hm271||0), 0.002); end
  def test_outputs_costs_hm272; assert_in_delta(0.30292089798103455, worksheet.outputs_costs_hm272, 0.002); end
  def test_outputs_costs_hm273; assert_in_delta(0.00936864803081736, worksheet.outputs_costs_hm273, 0.002); end
  def test_outputs_costs_hm274; assert_in_delta(0.029234970688237865, worksheet.outputs_costs_hm274, 0.002); end
  def test_outputs_costs_hm275; assert_in_delta(2.374777406314385e-06, worksheet.outputs_costs_hm275, 0.002); end
  def test_outputs_costs_hm276; assert_in_delta(4.283209189885382e-09, worksheet.outputs_costs_hm276, 0.002); end
  def test_outputs_costs_hm277; assert_in_delta(0.030042422620629325, worksheet.outputs_costs_hm277, 0.002); end
  def test_outputs_costs_hm278; assert_in_delta(0.0011308488120888964, worksheet.outputs_costs_hm278, 0.002); end
  def test_outputs_costs_hm279; assert_in_delta(0.0011308487966388049, worksheet.outputs_costs_hm279, 0.002); end
  def test_outputs_costs_hm280; assert_in_delta(3.1738015261693986e-07, worksheet.outputs_costs_hm280, 0.002); end
  def test_outputs_costs_hm281; assert_in_delta(0.0, (worksheet.outputs_costs_hm281||0), 0.002); end
  def test_outputs_costs_hm282; assert_in_delta(0.0, (worksheet.outputs_costs_hm282||0), 0.002); end
  def test_outputs_costs_hm283; assert_in_delta(0.0, (worksheet.outputs_costs_hm283||0), 0.002); end
  def test_outputs_costs_hm284; assert_in_delta(0.0, (worksheet.outputs_costs_hm284||0), 0.002); end
  def test_outputs_costs_hm285; assert_in_delta(0.0, (worksheet.outputs_costs_hm285||0), 0.002); end
  def test_outputs_costs_hm286; assert_in_delta(0.15347276429951537, worksheet.outputs_costs_hm286, 0.002); end
  def test_outputs_costs_hm287; assert_in_delta(0.006500112358132698, worksheet.outputs_costs_hm287, 0.002); end
  def test_outputs_costs_hm288; assert_in_delta(0.006500112289160034, worksheet.outputs_costs_hm288, 0.002); end
  def test_outputs_costs_hm289; assert_in_delta(1.4168559715777914e-06, worksheet.outputs_costs_hm289, 0.002); end
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
  def test_outputs_costs_hm400; assert_in_delta(0.0038196618704483907, worksheet.outputs_costs_hm400, 0.002); end
  def test_outputs_costs_hm401; assert_in_delta(0.004488318886730013, worksheet.outputs_costs_hm401, 0.002); end
  def test_outputs_costs_hm402; assert_in_delta(0.015537909980667671, worksheet.outputs_costs_hm402, 0.002); end
  def test_outputs_costs_hm403; assert_in_delta(0.0008045712156329296, worksheet.outputs_costs_hm403, 0.002); end
  def test_outputs_costs_hm404; assert_in_delta(0.0014335334103596196, worksheet.outputs_costs_hm404, 0.002); end
  def test_outputs_costs_hm405; assert_in_delta(0.0013790208368896447, worksheet.outputs_costs_hm405, 0.002); end
  def test_outputs_costs_hm406; assert_in_delta(0.009187676843233935, worksheet.outputs_costs_hm406, 0.002); end
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
  def test_user_inputs_h6; assert_equal("IEA \"2DS\" (approximation)", worksheet.user_inputs_h6); end
  def test_user_inputs_i6; assert_equal("IEA \"4DS\" (approximation)", worksheet.user_inputs_i6); end
  def test_user_inputs_j6; assert_equal("IEA \"6DS\" (approximation)", worksheet.user_inputs_j6); end
  def test_user_inputs_k6; assert_equal("IEA 6DS with full effort in transport", worksheet.user_inputs_k6); end
  def test_user_inputs_l6; assert_equal("IEA 6DS with full effort in buildings", worksheet.user_inputs_l6); end
  def test_user_inputs_m6; assert_equal("IEA 6DS with full effort in manufacturing", worksheet.user_inputs_m6); end
  def test_user_inputs_n6; assert_equal("IEA 6DS with full effort in electricity / fuels", worksheet.user_inputs_n6); end
  def test_user_inputs_o6; assert_equal("IEA 6DS with full effort in land / food / bio", worksheet.user_inputs_o6); end
  def test_user_inputs_p6; assert_equal("All level 4", worksheet.user_inputs_p6); end
  def test_user_inputs_q6; assert_equal("All level 3", worksheet.user_inputs_q6); end
  def test_user_inputs_r6; assert_equal("All level 2", worksheet.user_inputs_r6); end
  def test_user_inputs_s6; assert_equal("All level 1", worksheet.user_inputs_s6); end
  def test_user_inputs_t6; assert_equal("2 degrees with higher \"lifestyle\"", worksheet.user_inputs_t6); end
  def test_user_inputs_h7; assert_in_epsilon(2.0, worksheet.user_inputs_h7, 0.002); end
  def test_user_inputs_i7; assert_in_epsilon(2.0, worksheet.user_inputs_i7, 0.002); end
  def test_user_inputs_j7; assert_in_epsilon(2.0, worksheet.user_inputs_j7, 0.002); end
  def test_user_inputs_k7; assert_in_epsilon(2.0, worksheet.user_inputs_k7, 0.002); end
  def test_user_inputs_l7; assert_in_epsilon(2.0, worksheet.user_inputs_l7, 0.002); end
  def test_user_inputs_m7; assert_in_epsilon(2.0, worksheet.user_inputs_m7, 0.002); end
  def test_user_inputs_n7; assert_in_epsilon(2.0, worksheet.user_inputs_n7, 0.002); end
  def test_user_inputs_o7; assert_in_epsilon(2.0, worksheet.user_inputs_o7, 0.002); end
  def test_user_inputs_p7; assert_in_epsilon(2.0, worksheet.user_inputs_p7, 0.002); end
  def test_user_inputs_q7; assert_in_epsilon(2.0, worksheet.user_inputs_q7, 0.002); end
  def test_user_inputs_r7; assert_in_epsilon(2.0, worksheet.user_inputs_r7, 0.002); end
  def test_user_inputs_s7; assert_in_epsilon(2.0, worksheet.user_inputs_s7, 0.002); end
  def test_user_inputs_t7; assert_in_epsilon(2.0, worksheet.user_inputs_t7, 0.002); end
  def test_user_inputs_h8; assert_in_epsilon(2.0, worksheet.user_inputs_h8, 0.002); end
  def test_user_inputs_i8; assert_in_epsilon(2.0, worksheet.user_inputs_i8, 0.002); end
  def test_user_inputs_j8; assert_in_epsilon(2.0, worksheet.user_inputs_j8, 0.002); end
  def test_user_inputs_k8; assert_in_epsilon(2.0, worksheet.user_inputs_k8, 0.002); end
  def test_user_inputs_l8; assert_in_epsilon(2.0, worksheet.user_inputs_l8, 0.002); end
  def test_user_inputs_m8; assert_in_epsilon(2.0, worksheet.user_inputs_m8, 0.002); end
  def test_user_inputs_n8; assert_in_epsilon(2.0, worksheet.user_inputs_n8, 0.002); end
  def test_user_inputs_o8; assert_in_epsilon(2.0, worksheet.user_inputs_o8, 0.002); end
  def test_user_inputs_p8; assert_in_epsilon(2.0, worksheet.user_inputs_p8, 0.002); end
  def test_user_inputs_q8; assert_in_epsilon(2.0, worksheet.user_inputs_q8, 0.002); end
  def test_user_inputs_r8; assert_in_epsilon(2.0, worksheet.user_inputs_r8, 0.002); end
  def test_user_inputs_s8; assert_in_epsilon(2.0, worksheet.user_inputs_s8, 0.002); end
  def test_user_inputs_t8; assert_in_epsilon(2.0, worksheet.user_inputs_t8, 0.002); end
  def test_user_inputs_h9; assert_in_epsilon(2.0, worksheet.user_inputs_h9, 0.002); end
  def test_user_inputs_i9; assert_in_epsilon(2.0, worksheet.user_inputs_i9, 0.002); end
  def test_user_inputs_j9; assert_in_epsilon(2.0, worksheet.user_inputs_j9, 0.002); end
  def test_user_inputs_k9; assert_in_epsilon(4.0, worksheet.user_inputs_k9, 0.002); end
  def test_user_inputs_l9; assert_in_epsilon(2.0, worksheet.user_inputs_l9, 0.002); end
  def test_user_inputs_m9; assert_in_epsilon(2.0, worksheet.user_inputs_m9, 0.002); end
  def test_user_inputs_n9; assert_in_epsilon(2.0, worksheet.user_inputs_n9, 0.002); end
  def test_user_inputs_o9; assert_in_epsilon(2.0, worksheet.user_inputs_o9, 0.002); end
  def test_user_inputs_p9; assert_in_epsilon(4.0, worksheet.user_inputs_p9, 0.002); end
  def test_user_inputs_q9; assert_in_epsilon(3.0, worksheet.user_inputs_q9, 0.002); end
  def test_user_inputs_r9; assert_in_epsilon(2.0, worksheet.user_inputs_r9, 0.002); end
  def test_user_inputs_s9; assert_in_delta(1.0, worksheet.user_inputs_s9, 0.002); end
  def test_user_inputs_t9; assert_in_epsilon(1.5, worksheet.user_inputs_t9, 0.002); end
  def test_user_inputs_h10; assert_in_epsilon(2.0, worksheet.user_inputs_h10, 0.002); end
  def test_user_inputs_i10; assert_in_epsilon(2.0, worksheet.user_inputs_i10, 0.002); end
  def test_user_inputs_j10; assert_in_epsilon(2.0, worksheet.user_inputs_j10, 0.002); end
  def test_user_inputs_k10; assert_in_epsilon(4.0, worksheet.user_inputs_k10, 0.002); end
  def test_user_inputs_l10; assert_in_epsilon(2.0, worksheet.user_inputs_l10, 0.002); end
  def test_user_inputs_m10; assert_in_epsilon(2.0, worksheet.user_inputs_m10, 0.002); end
  def test_user_inputs_n10; assert_in_epsilon(2.0, worksheet.user_inputs_n10, 0.002); end
  def test_user_inputs_o10; assert_in_epsilon(2.0, worksheet.user_inputs_o10, 0.002); end
  def test_user_inputs_p10; assert_in_epsilon(4.0, worksheet.user_inputs_p10, 0.002); end
  def test_user_inputs_q10; assert_in_epsilon(3.0, worksheet.user_inputs_q10, 0.002); end
  def test_user_inputs_r10; assert_in_epsilon(2.0, worksheet.user_inputs_r10, 0.002); end
  def test_user_inputs_s10; assert_in_delta(1.0, worksheet.user_inputs_s10, 0.002); end
  def test_user_inputs_t10; assert_in_epsilon(1.5, worksheet.user_inputs_t10, 0.002); end
  def test_user_inputs_h11; assert_in_epsilon(2.8, worksheet.user_inputs_h11, 0.002); end
  def test_user_inputs_i11; assert_in_epsilon(2.0, worksheet.user_inputs_i11, 0.002); end
  def test_user_inputs_j11; assert_in_epsilon(1.9, worksheet.user_inputs_j11, 0.002); end
  def test_user_inputs_k11; assert_in_epsilon(4.0, worksheet.user_inputs_k11, 0.002); end
  def test_user_inputs_l11; assert_in_epsilon(1.9, worksheet.user_inputs_l11, 0.002); end
  def test_user_inputs_m11; assert_in_epsilon(1.9, worksheet.user_inputs_m11, 0.002); end
  def test_user_inputs_n11; assert_in_epsilon(1.9, worksheet.user_inputs_n11, 0.002); end
  def test_user_inputs_o11; assert_in_epsilon(1.9, worksheet.user_inputs_o11, 0.002); end
  def test_user_inputs_p11; assert_in_epsilon(4.0, worksheet.user_inputs_p11, 0.002); end
  def test_user_inputs_q11; assert_in_epsilon(3.0, worksheet.user_inputs_q11, 0.002); end
  def test_user_inputs_r11; assert_in_epsilon(2.0, worksheet.user_inputs_r11, 0.002); end
  def test_user_inputs_s11; assert_in_delta(1.0, worksheet.user_inputs_s11, 0.002); end
  def test_user_inputs_t11; assert_in_epsilon(3.0, worksheet.user_inputs_t11, 0.002); end
  def test_user_inputs_h12; assert_in_epsilon(2.8, worksheet.user_inputs_h12, 0.002); end
  def test_user_inputs_i12; assert_in_epsilon(2.2, worksheet.user_inputs_i12, 0.002); end
  def test_user_inputs_j12; assert_in_epsilon(2.0, worksheet.user_inputs_j12, 0.002); end
  def test_user_inputs_k12; assert_in_epsilon(4.0, worksheet.user_inputs_k12, 0.002); end
  def test_user_inputs_l12; assert_in_epsilon(2.0, worksheet.user_inputs_l12, 0.002); end
  def test_user_inputs_m12; assert_in_epsilon(2.0, worksheet.user_inputs_m12, 0.002); end
  def test_user_inputs_n12; assert_in_epsilon(2.0, worksheet.user_inputs_n12, 0.002); end
  def test_user_inputs_o12; assert_in_epsilon(2.0, worksheet.user_inputs_o12, 0.002); end
  def test_user_inputs_p12; assert_in_epsilon(4.0, worksheet.user_inputs_p12, 0.002); end
  def test_user_inputs_q12; assert_in_epsilon(3.0, worksheet.user_inputs_q12, 0.002); end
  def test_user_inputs_r12; assert_in_epsilon(2.0, worksheet.user_inputs_r12, 0.002); end
  def test_user_inputs_s12; assert_in_delta(1.0, worksheet.user_inputs_s12, 0.002); end
  def test_user_inputs_t12; assert_in_epsilon(3.3, worksheet.user_inputs_t12, 0.002); end
  def test_user_inputs_h13; assert_in_epsilon(2.5, worksheet.user_inputs_h13, 0.002); end
  def test_user_inputs_i13; assert_in_epsilon(1.2, worksheet.user_inputs_i13, 0.002); end
  def test_user_inputs_j13; assert_in_delta(1.0, worksheet.user_inputs_j13, 0.002); end
  def test_user_inputs_k13; assert_in_epsilon(4.0, worksheet.user_inputs_k13, 0.002); end
  def test_user_inputs_l13; assert_in_delta(1.0, worksheet.user_inputs_l13, 0.002); end
  def test_user_inputs_m13; assert_in_delta(1.0, worksheet.user_inputs_m13, 0.002); end
  def test_user_inputs_n13; assert_in_delta(1.0, worksheet.user_inputs_n13, 0.002); end
  def test_user_inputs_o13; assert_in_delta(1.0, worksheet.user_inputs_o13, 0.002); end
  def test_user_inputs_p13; assert_in_epsilon(4.0, worksheet.user_inputs_p13, 0.002); end
  def test_user_inputs_q13; assert_in_epsilon(3.0, worksheet.user_inputs_q13, 0.002); end
  def test_user_inputs_r13; assert_in_epsilon(2.0, worksheet.user_inputs_r13, 0.002); end
  def test_user_inputs_s13; assert_in_delta(1.0, worksheet.user_inputs_s13, 0.002); end
  def test_user_inputs_t13; assert_in_epsilon(3.3, worksheet.user_inputs_t13, 0.002); end
  def test_user_inputs_h14; assert_in_epsilon(2.0, worksheet.user_inputs_h14, 0.002); end
  def test_user_inputs_i14; assert_in_epsilon(2.0, worksheet.user_inputs_i14, 0.002); end
  def test_user_inputs_j14; assert_in_epsilon(2.0, worksheet.user_inputs_j14, 0.002); end
  def test_user_inputs_k14; assert_in_epsilon(2.0, worksheet.user_inputs_k14, 0.002); end
  def test_user_inputs_l14; assert_in_epsilon(4.0, worksheet.user_inputs_l14, 0.002); end
  def test_user_inputs_m14; assert_in_epsilon(2.0, worksheet.user_inputs_m14, 0.002); end
  def test_user_inputs_n14; assert_in_epsilon(2.0, worksheet.user_inputs_n14, 0.002); end
  def test_user_inputs_o14; assert_in_epsilon(2.0, worksheet.user_inputs_o14, 0.002); end
  def test_user_inputs_p14; assert_in_epsilon(4.0, worksheet.user_inputs_p14, 0.002); end
  def test_user_inputs_q14; assert_in_epsilon(3.0, worksheet.user_inputs_q14, 0.002); end
  def test_user_inputs_r14; assert_in_epsilon(2.0, worksheet.user_inputs_r14, 0.002); end
  def test_user_inputs_s14; assert_in_delta(1.0, worksheet.user_inputs_s14, 0.002); end
  def test_user_inputs_t14; assert_in_epsilon(1.5, worksheet.user_inputs_t14, 0.002); end
  def test_user_inputs_h15; assert_in_epsilon(2.0, worksheet.user_inputs_h15, 0.002); end
  def test_user_inputs_i15; assert_in_epsilon(2.0, worksheet.user_inputs_i15, 0.002); end
  def test_user_inputs_j15; assert_in_epsilon(2.0, worksheet.user_inputs_j15, 0.002); end
  def test_user_inputs_k15; assert_in_epsilon(2.0, worksheet.user_inputs_k15, 0.002); end
  def test_user_inputs_l15; assert_in_epsilon(4.0, worksheet.user_inputs_l15, 0.002); end
  def test_user_inputs_m15; assert_in_epsilon(2.0, worksheet.user_inputs_m15, 0.002); end
  def test_user_inputs_n15; assert_in_epsilon(2.0, worksheet.user_inputs_n15, 0.002); end
  def test_user_inputs_o15; assert_in_epsilon(2.0, worksheet.user_inputs_o15, 0.002); end
  def test_user_inputs_p15; assert_in_epsilon(4.0, worksheet.user_inputs_p15, 0.002); end
  def test_user_inputs_q15; assert_in_epsilon(3.0, worksheet.user_inputs_q15, 0.002); end
  def test_user_inputs_r15; assert_in_epsilon(2.0, worksheet.user_inputs_r15, 0.002); end
  def test_user_inputs_s15; assert_in_delta(1.0, worksheet.user_inputs_s15, 0.002); end
  def test_user_inputs_t15; assert_in_epsilon(1.5, worksheet.user_inputs_t15, 0.002); end
  def test_user_inputs_h16; assert_in_epsilon(2.0, worksheet.user_inputs_h16, 0.002); end
  def test_user_inputs_i16; assert_in_epsilon(2.0, worksheet.user_inputs_i16, 0.002); end
  def test_user_inputs_j16; assert_in_epsilon(2.0, worksheet.user_inputs_j16, 0.002); end
  def test_user_inputs_k16; assert_in_epsilon(2.0, worksheet.user_inputs_k16, 0.002); end
  def test_user_inputs_l16; assert_in_epsilon(4.0, worksheet.user_inputs_l16, 0.002); end
  def test_user_inputs_m16; assert_in_epsilon(2.0, worksheet.user_inputs_m16, 0.002); end
  def test_user_inputs_n16; assert_in_epsilon(2.0, worksheet.user_inputs_n16, 0.002); end
  def test_user_inputs_o16; assert_in_epsilon(2.0, worksheet.user_inputs_o16, 0.002); end
  def test_user_inputs_p16; assert_in_epsilon(4.0, worksheet.user_inputs_p16, 0.002); end
  def test_user_inputs_q16; assert_in_epsilon(3.0, worksheet.user_inputs_q16, 0.002); end
  def test_user_inputs_r16; assert_in_epsilon(2.0, worksheet.user_inputs_r16, 0.002); end
  def test_user_inputs_s16; assert_in_delta(1.0, worksheet.user_inputs_s16, 0.002); end
  def test_user_inputs_t16; assert_in_epsilon(1.5, worksheet.user_inputs_t16, 0.002); end
  def test_user_inputs_h17; assert_in_epsilon(2.8, worksheet.user_inputs_h17, 0.002); end
  def test_user_inputs_i17; assert_in_epsilon(1.9, worksheet.user_inputs_i17, 0.002); end
  def test_user_inputs_j17; assert_in_epsilon(1.6, worksheet.user_inputs_j17, 0.002); end
  def test_user_inputs_k17; assert_in_epsilon(1.6, worksheet.user_inputs_k17, 0.002); end
  def test_user_inputs_l17; assert_in_epsilon(4.0, worksheet.user_inputs_l17, 0.002); end
  def test_user_inputs_m17; assert_in_epsilon(1.6, worksheet.user_inputs_m17, 0.002); end
  def test_user_inputs_n17; assert_in_epsilon(1.6, worksheet.user_inputs_n17, 0.002); end
  def test_user_inputs_o17; assert_in_epsilon(1.6, worksheet.user_inputs_o17, 0.002); end
  def test_user_inputs_p17; assert_in_epsilon(4.0, worksheet.user_inputs_p17, 0.002); end
  def test_user_inputs_q17; assert_in_epsilon(3.0, worksheet.user_inputs_q17, 0.002); end
  def test_user_inputs_r17; assert_in_epsilon(2.0, worksheet.user_inputs_r17, 0.002); end
  def test_user_inputs_s17; assert_in_delta(1.0, worksheet.user_inputs_s17, 0.002); end
  def test_user_inputs_t17; assert_in_epsilon(3.3, worksheet.user_inputs_t17, 0.002); end
  def test_user_inputs_h18; assert_in_epsilon(3.0, worksheet.user_inputs_h18, 0.002); end
  def test_user_inputs_i18; assert_in_epsilon(1.8, worksheet.user_inputs_i18, 0.002); end
  def test_user_inputs_j18; assert_in_epsilon(1.5, worksheet.user_inputs_j18, 0.002); end
  def test_user_inputs_k18; assert_in_epsilon(1.5, worksheet.user_inputs_k18, 0.002); end
  def test_user_inputs_l18; assert_in_epsilon(4.0, worksheet.user_inputs_l18, 0.002); end
  def test_user_inputs_m18; assert_in_epsilon(1.5, worksheet.user_inputs_m18, 0.002); end
  def test_user_inputs_n18; assert_in_epsilon(1.5, worksheet.user_inputs_n18, 0.002); end
  def test_user_inputs_o18; assert_in_epsilon(1.5, worksheet.user_inputs_o18, 0.002); end
  def test_user_inputs_p18; assert_in_epsilon(4.0, worksheet.user_inputs_p18, 0.002); end
  def test_user_inputs_q18; assert_in_epsilon(3.0, worksheet.user_inputs_q18, 0.002); end
  def test_user_inputs_r18; assert_in_epsilon(2.0, worksheet.user_inputs_r18, 0.002); end
  def test_user_inputs_s18; assert_in_delta(1.0, worksheet.user_inputs_s18, 0.002); end
  def test_user_inputs_t18; assert_in_epsilon(3.3, worksheet.user_inputs_t18, 0.002); end
  def test_user_inputs_h19; assert_in_epsilon(3.0, worksheet.user_inputs_h19, 0.002); end
  def test_user_inputs_i19; assert_in_epsilon(2.5, worksheet.user_inputs_i19, 0.002); end
  def test_user_inputs_j19; assert_in_epsilon(1.6, worksheet.user_inputs_j19, 0.002); end
  def test_user_inputs_k19; assert_in_epsilon(1.6, worksheet.user_inputs_k19, 0.002); end
  def test_user_inputs_l19; assert_in_epsilon(4.0, worksheet.user_inputs_l19, 0.002); end
  def test_user_inputs_m19; assert_in_epsilon(1.6, worksheet.user_inputs_m19, 0.002); end
  def test_user_inputs_n19; assert_in_epsilon(1.6, worksheet.user_inputs_n19, 0.002); end
  def test_user_inputs_o19; assert_in_epsilon(1.6, worksheet.user_inputs_o19, 0.002); end
  def test_user_inputs_p19; assert_in_epsilon(4.0, worksheet.user_inputs_p19, 0.002); end
  def test_user_inputs_q19; assert_in_epsilon(3.0, worksheet.user_inputs_q19, 0.002); end
  def test_user_inputs_r19; assert_in_epsilon(2.0, worksheet.user_inputs_r19, 0.002); end
  def test_user_inputs_s19; assert_in_delta(1.0, worksheet.user_inputs_s19, 0.002); end
  def test_user_inputs_t19; assert_in_epsilon(3.3, worksheet.user_inputs_t19, 0.002); end
  def test_user_inputs_h20; assert_in_epsilon(1.7, worksheet.user_inputs_h20, 0.002); end
  def test_user_inputs_i20; assert_in_epsilon(1.5, worksheet.user_inputs_i20, 0.002); end
  def test_user_inputs_j20; assert_in_epsilon(1.4, worksheet.user_inputs_j20, 0.002); end
  def test_user_inputs_k20; assert_in_epsilon(1.4, worksheet.user_inputs_k20, 0.002); end
  def test_user_inputs_l20; assert_in_epsilon(1.4, worksheet.user_inputs_l20, 0.002); end
  def test_user_inputs_m20; assert_in_epsilon(4.0, worksheet.user_inputs_m20, 0.002); end
  def test_user_inputs_n20; assert_in_epsilon(1.4, worksheet.user_inputs_n20, 0.002); end
  def test_user_inputs_o20; assert_in_epsilon(1.4, worksheet.user_inputs_o20, 0.002); end
  def test_user_inputs_p20; assert_in_epsilon(4.0, worksheet.user_inputs_p20, 0.002); end
  def test_user_inputs_q20; assert_in_epsilon(3.0, worksheet.user_inputs_q20, 0.002); end
  def test_user_inputs_r20; assert_in_epsilon(2.0, worksheet.user_inputs_r20, 0.002); end
  def test_user_inputs_s20; assert_in_delta(1.0, worksheet.user_inputs_s20, 0.002); end
  def test_user_inputs_t20; assert_in_epsilon(1.5, worksheet.user_inputs_t20, 0.002); end
  def test_user_inputs_h21; assert_in_epsilon(1.7, worksheet.user_inputs_h21, 0.002); end
  def test_user_inputs_i21; assert_in_epsilon(1.4, worksheet.user_inputs_i21, 0.002); end
  def test_user_inputs_j21; assert_in_epsilon(1.1, worksheet.user_inputs_j21, 0.002); end
  def test_user_inputs_k21; assert_in_epsilon(1.1, worksheet.user_inputs_k21, 0.002); end
  def test_user_inputs_l21; assert_in_epsilon(1.1, worksheet.user_inputs_l21, 0.002); end
  def test_user_inputs_m21; assert_in_epsilon(4.0, worksheet.user_inputs_m21, 0.002); end
  def test_user_inputs_n21; assert_in_epsilon(1.1, worksheet.user_inputs_n21, 0.002); end
  def test_user_inputs_o21; assert_in_epsilon(1.1, worksheet.user_inputs_o21, 0.002); end
  def test_user_inputs_p21; assert_in_epsilon(4.0, worksheet.user_inputs_p21, 0.002); end
  def test_user_inputs_q21; assert_in_epsilon(3.0, worksheet.user_inputs_q21, 0.002); end
  def test_user_inputs_r21; assert_in_epsilon(2.0, worksheet.user_inputs_r21, 0.002); end
  def test_user_inputs_s21; assert_in_delta(1.0, worksheet.user_inputs_s21, 0.002); end
  def test_user_inputs_t21; assert_in_epsilon(1.5, worksheet.user_inputs_t21, 0.002); end
  def test_user_inputs_h22; assert_in_epsilon(2.9, worksheet.user_inputs_h22, 0.002); end
  def test_user_inputs_i22; assert_in_epsilon(1.6, worksheet.user_inputs_i22, 0.002); end
  def test_user_inputs_j22; assert_in_epsilon(1.6, worksheet.user_inputs_j22, 0.002); end
  def test_user_inputs_k22; assert_in_epsilon(1.6, worksheet.user_inputs_k22, 0.002); end
  def test_user_inputs_l22; assert_in_epsilon(1.6, worksheet.user_inputs_l22, 0.002); end
  def test_user_inputs_m22; assert_in_epsilon(4.0, worksheet.user_inputs_m22, 0.002); end
  def test_user_inputs_n22; assert_in_epsilon(1.6, worksheet.user_inputs_n22, 0.002); end
  def test_user_inputs_o22; assert_in_epsilon(1.6, worksheet.user_inputs_o22, 0.002); end
  def test_user_inputs_p22; assert_in_epsilon(4.0, worksheet.user_inputs_p22, 0.002); end
  def test_user_inputs_q22; assert_in_epsilon(3.0, worksheet.user_inputs_q22, 0.002); end
  def test_user_inputs_r22; assert_in_epsilon(2.0, worksheet.user_inputs_r22, 0.002); end
  def test_user_inputs_s22; assert_in_delta(1.0, worksheet.user_inputs_s22, 0.002); end
  def test_user_inputs_t22; assert_in_epsilon(3.0, worksheet.user_inputs_t22, 0.002); end
  def test_user_inputs_h23; assert_in_epsilon(2.4, worksheet.user_inputs_h23, 0.002); end
  def test_user_inputs_i23; assert_in_delta(1.0, worksheet.user_inputs_i23, 0.002); end
  def test_user_inputs_j23; assert_in_delta(1.0, worksheet.user_inputs_j23, 0.002); end
  def test_user_inputs_k23; assert_in_delta(1.0, worksheet.user_inputs_k23, 0.002); end
  def test_user_inputs_l23; assert_in_delta(1.0, worksheet.user_inputs_l23, 0.002); end
  def test_user_inputs_m23; assert_in_epsilon(4.0, worksheet.user_inputs_m23, 0.002); end
  def test_user_inputs_n23; assert_in_delta(1.0, worksheet.user_inputs_n23, 0.002); end
  def test_user_inputs_o23; assert_in_delta(1.0, worksheet.user_inputs_o23, 0.002); end
  def test_user_inputs_p23; assert_in_epsilon(4.0, worksheet.user_inputs_p23, 0.002); end
  def test_user_inputs_q23; assert_in_epsilon(3.0, worksheet.user_inputs_q23, 0.002); end
  def test_user_inputs_r23; assert_in_epsilon(2.0, worksheet.user_inputs_r23, 0.002); end
  def test_user_inputs_s23; assert_in_delta(1.0, worksheet.user_inputs_s23, 0.002); end
  def test_user_inputs_t23; assert_in_epsilon(3.0, worksheet.user_inputs_t23, 0.002); end
  def test_user_inputs_h24; assert_in_epsilon(2.9, worksheet.user_inputs_h24, 0.002); end
  def test_user_inputs_i24; assert_in_epsilon(2.6, worksheet.user_inputs_i24, 0.002); end
  def test_user_inputs_j24; assert_in_epsilon(1.9, worksheet.user_inputs_j24, 0.002); end
  def test_user_inputs_k24; assert_in_epsilon(1.9, worksheet.user_inputs_k24, 0.002); end
  def test_user_inputs_l24; assert_in_epsilon(1.9, worksheet.user_inputs_l24, 0.002); end
  def test_user_inputs_m24; assert_in_epsilon(4.0, worksheet.user_inputs_m24, 0.002); end
  def test_user_inputs_n24; assert_in_epsilon(1.9, worksheet.user_inputs_n24, 0.002); end
  def test_user_inputs_o24; assert_in_epsilon(1.9, worksheet.user_inputs_o24, 0.002); end
  def test_user_inputs_p24; assert_in_epsilon(4.0, worksheet.user_inputs_p24, 0.002); end
  def test_user_inputs_q24; assert_in_epsilon(3.0, worksheet.user_inputs_q24, 0.002); end
  def test_user_inputs_r24; assert_in_epsilon(2.0, worksheet.user_inputs_r24, 0.002); end
  def test_user_inputs_s24; assert_in_delta(1.0, worksheet.user_inputs_s24, 0.002); end
  def test_user_inputs_t24; assert_in_epsilon(3.0, worksheet.user_inputs_t24, 0.002); end
  def test_user_inputs_h25; assert_in_epsilon(3.0, worksheet.user_inputs_h25, 0.002); end
  def test_user_inputs_i25; assert_in_epsilon(2.7, worksheet.user_inputs_i25, 0.002); end
  def test_user_inputs_j25; assert_in_epsilon(1.6, worksheet.user_inputs_j25, 0.002); end
  def test_user_inputs_k25; assert_in_epsilon(1.6, worksheet.user_inputs_k25, 0.002); end
  def test_user_inputs_l25; assert_in_epsilon(1.6, worksheet.user_inputs_l25, 0.002); end
  def test_user_inputs_m25; assert_in_epsilon(4.0, worksheet.user_inputs_m25, 0.002); end
  def test_user_inputs_n25; assert_in_epsilon(1.6, worksheet.user_inputs_n25, 0.002); end
  def test_user_inputs_o25; assert_in_epsilon(1.6, worksheet.user_inputs_o25, 0.002); end
  def test_user_inputs_p25; assert_in_epsilon(4.0, worksheet.user_inputs_p25, 0.002); end
  def test_user_inputs_q25; assert_in_epsilon(3.0, worksheet.user_inputs_q25, 0.002); end
  def test_user_inputs_r25; assert_in_epsilon(2.0, worksheet.user_inputs_r25, 0.002); end
  def test_user_inputs_s25; assert_in_delta(1.0, worksheet.user_inputs_s25, 0.002); end
  def test_user_inputs_t25; assert_in_epsilon(3.0, worksheet.user_inputs_t25, 0.002); end
  def test_user_inputs_h26; assert_in_epsilon(2.7, worksheet.user_inputs_h26, 0.002); end
  def test_user_inputs_i26; assert_in_epsilon(2.0, worksheet.user_inputs_i26, 0.002); end
  def test_user_inputs_j26; assert_in_epsilon(1.5, worksheet.user_inputs_j26, 0.002); end
  def test_user_inputs_k26; assert_in_epsilon(1.5, worksheet.user_inputs_k26, 0.002); end
  def test_user_inputs_l26; assert_in_epsilon(1.5, worksheet.user_inputs_l26, 0.002); end
  def test_user_inputs_m26; assert_in_epsilon(4.0, worksheet.user_inputs_m26, 0.002); end
  def test_user_inputs_n26; assert_in_epsilon(1.5, worksheet.user_inputs_n26, 0.002); end
  def test_user_inputs_o26; assert_in_epsilon(1.5, worksheet.user_inputs_o26, 0.002); end
  def test_user_inputs_p26; assert_in_epsilon(4.0, worksheet.user_inputs_p26, 0.002); end
  def test_user_inputs_q26; assert_in_epsilon(3.0, worksheet.user_inputs_q26, 0.002); end
  def test_user_inputs_r26; assert_in_epsilon(2.0, worksheet.user_inputs_r26, 0.002); end
  def test_user_inputs_s26; assert_in_delta(1.0, worksheet.user_inputs_s26, 0.002); end
  def test_user_inputs_t26; assert_in_epsilon(2.7, worksheet.user_inputs_t26, 0.002); end
  def test_user_inputs_h27; assert_in_epsilon(2.1, worksheet.user_inputs_h27, 0.002); end
  def test_user_inputs_i27; assert_in_epsilon(2.0, worksheet.user_inputs_i27, 0.002); end
  def test_user_inputs_j27; assert_in_epsilon(1.7, worksheet.user_inputs_j27, 0.002); end
  def test_user_inputs_k27; assert_in_epsilon(1.7, worksheet.user_inputs_k27, 0.002); end
  def test_user_inputs_l27; assert_in_epsilon(1.7, worksheet.user_inputs_l27, 0.002); end
  def test_user_inputs_m27; assert_in_epsilon(1.7, worksheet.user_inputs_m27, 0.002); end
  def test_user_inputs_n27; assert_in_epsilon(4.0, worksheet.user_inputs_n27, 0.002); end
  def test_user_inputs_o27; assert_in_epsilon(1.7, worksheet.user_inputs_o27, 0.002); end
  def test_user_inputs_p27; assert_in_epsilon(4.0, worksheet.user_inputs_p27, 0.002); end
  def test_user_inputs_q27; assert_in_epsilon(3.0, worksheet.user_inputs_q27, 0.002); end
  def test_user_inputs_r27; assert_in_epsilon(2.0, worksheet.user_inputs_r27, 0.002); end
  def test_user_inputs_s27; assert_in_delta(1.0, worksheet.user_inputs_s27, 0.002); end
  def test_user_inputs_t27; assert_in_epsilon(3.3, worksheet.user_inputs_t27, 0.002); end
  def test_user_inputs_h28; assert_in_epsilon(3.3, worksheet.user_inputs_h28, 0.002); end
  def test_user_inputs_i28; assert_in_epsilon(2.4, worksheet.user_inputs_i28, 0.002); end
  def test_user_inputs_j28; assert_in_epsilon(2.3, worksheet.user_inputs_j28, 0.002); end
  def test_user_inputs_k28; assert_in_epsilon(2.3, worksheet.user_inputs_k28, 0.002); end
  def test_user_inputs_l28; assert_in_epsilon(2.3, worksheet.user_inputs_l28, 0.002); end
  def test_user_inputs_m28; assert_in_epsilon(2.3, worksheet.user_inputs_m28, 0.002); end
  def test_user_inputs_n28; assert_in_epsilon(4.0, worksheet.user_inputs_n28, 0.002); end
  def test_user_inputs_o28; assert_in_epsilon(2.3, worksheet.user_inputs_o28, 0.002); end
  def test_user_inputs_p28; assert_in_epsilon(4.0, worksheet.user_inputs_p28, 0.002); end
  def test_user_inputs_q28; assert_in_epsilon(3.0, worksheet.user_inputs_q28, 0.002); end
  def test_user_inputs_r28; assert_in_epsilon(2.0, worksheet.user_inputs_r28, 0.002); end
  def test_user_inputs_s28; assert_in_delta(1.0, worksheet.user_inputs_s28, 0.002); end
  def test_user_inputs_t28; assert_in_epsilon(3.0, worksheet.user_inputs_t28, 0.002); end
  def test_user_inputs_h29; assert_in_epsilon(2.7, worksheet.user_inputs_h29, 0.002); end
  def test_user_inputs_i29; assert_in_epsilon(2.0, worksheet.user_inputs_i29, 0.002); end
  def test_user_inputs_j29; assert_in_epsilon(1.5, worksheet.user_inputs_j29, 0.002); end
  def test_user_inputs_k29; assert_in_epsilon(1.5, worksheet.user_inputs_k29, 0.002); end
  def test_user_inputs_l29; assert_in_epsilon(1.5, worksheet.user_inputs_l29, 0.002); end
  def test_user_inputs_m29; assert_in_epsilon(1.5, worksheet.user_inputs_m29, 0.002); end
  def test_user_inputs_n29; assert_in_epsilon(4.0, worksheet.user_inputs_n29, 0.002); end
  def test_user_inputs_o29; assert_in_epsilon(1.5, worksheet.user_inputs_o29, 0.002); end
  def test_user_inputs_p29; assert_in_epsilon(4.0, worksheet.user_inputs_p29, 0.002); end
  def test_user_inputs_q29; assert_in_epsilon(3.0, worksheet.user_inputs_q29, 0.002); end
  def test_user_inputs_r29; assert_in_epsilon(2.0, worksheet.user_inputs_r29, 0.002); end
  def test_user_inputs_s29; assert_in_delta(1.0, worksheet.user_inputs_s29, 0.002); end
  def test_user_inputs_t29; assert_in_epsilon(2.7, worksheet.user_inputs_t29, 0.002); end
  def test_user_inputs_h30; assert_in_epsilon(3.1, worksheet.user_inputs_h30, 0.002); end
  def test_user_inputs_i30; assert_in_epsilon(2.3, worksheet.user_inputs_i30, 0.002); end
  def test_user_inputs_j30; assert_in_epsilon(1.9, worksheet.user_inputs_j30, 0.002); end
  def test_user_inputs_k30; assert_in_epsilon(1.9, worksheet.user_inputs_k30, 0.002); end
  def test_user_inputs_l30; assert_in_epsilon(1.9, worksheet.user_inputs_l30, 0.002); end
  def test_user_inputs_m30; assert_in_epsilon(1.9, worksheet.user_inputs_m30, 0.002); end
  def test_user_inputs_n30; assert_in_epsilon(4.0, worksheet.user_inputs_n30, 0.002); end
  def test_user_inputs_o30; assert_in_epsilon(1.9, worksheet.user_inputs_o30, 0.002); end
  def test_user_inputs_p30; assert_in_epsilon(4.0, worksheet.user_inputs_p30, 0.002); end
  def test_user_inputs_q30; assert_in_epsilon(3.0, worksheet.user_inputs_q30, 0.002); end
  def test_user_inputs_r30; assert_in_epsilon(2.0, worksheet.user_inputs_r30, 0.002); end
  def test_user_inputs_s30; assert_in_delta(1.0, worksheet.user_inputs_s30, 0.002); end
  def test_user_inputs_t30; assert_in_epsilon(3.1, worksheet.user_inputs_t30, 0.002); end
  def test_user_inputs_h31; assert_in_epsilon(2.4, worksheet.user_inputs_h31, 0.002); end
  def test_user_inputs_i31; assert_in_epsilon(2.0, worksheet.user_inputs_i31, 0.002); end
  def test_user_inputs_j31; assert_in_epsilon(1.6, worksheet.user_inputs_j31, 0.002); end
  def test_user_inputs_k31; assert_in_epsilon(1.6, worksheet.user_inputs_k31, 0.002); end
  def test_user_inputs_l31; assert_in_epsilon(1.6, worksheet.user_inputs_l31, 0.002); end
  def test_user_inputs_m31; assert_in_epsilon(1.6, worksheet.user_inputs_m31, 0.002); end
  def test_user_inputs_n31; assert_in_epsilon(4.0, worksheet.user_inputs_n31, 0.002); end
  def test_user_inputs_o31; assert_in_epsilon(1.6, worksheet.user_inputs_o31, 0.002); end
  def test_user_inputs_p31; assert_in_epsilon(4.0, worksheet.user_inputs_p31, 0.002); end
  def test_user_inputs_q31; assert_in_epsilon(3.0, worksheet.user_inputs_q31, 0.002); end
  def test_user_inputs_r31; assert_in_epsilon(2.0, worksheet.user_inputs_r31, 0.002); end
  def test_user_inputs_s31; assert_in_delta(1.0, worksheet.user_inputs_s31, 0.002); end
  def test_user_inputs_t31; assert_in_epsilon(3.0, worksheet.user_inputs_t31, 0.002); end
  def test_user_inputs_h32; assert_in_epsilon(2.8, worksheet.user_inputs_h32, 0.002); end
  def test_user_inputs_i32; assert_in_epsilon(2.2, worksheet.user_inputs_i32, 0.002); end
  def test_user_inputs_j32; assert_in_epsilon(1.9, worksheet.user_inputs_j32, 0.002); end
  def test_user_inputs_k32; assert_in_epsilon(1.9, worksheet.user_inputs_k32, 0.002); end
  def test_user_inputs_l32; assert_in_epsilon(1.9, worksheet.user_inputs_l32, 0.002); end
  def test_user_inputs_m32; assert_in_epsilon(1.9, worksheet.user_inputs_m32, 0.002); end
  def test_user_inputs_n32; assert_in_epsilon(4.0, worksheet.user_inputs_n32, 0.002); end
  def test_user_inputs_o32; assert_in_epsilon(1.9, worksheet.user_inputs_o32, 0.002); end
  def test_user_inputs_p32; assert_in_epsilon(4.0, worksheet.user_inputs_p32, 0.002); end
  def test_user_inputs_q32; assert_in_epsilon(3.0, worksheet.user_inputs_q32, 0.002); end
  def test_user_inputs_r32; assert_in_epsilon(2.0, worksheet.user_inputs_r32, 0.002); end
  def test_user_inputs_s32; assert_in_delta(1.0, worksheet.user_inputs_s32, 0.002); end
  def test_user_inputs_t32; assert_in_epsilon(2.8, worksheet.user_inputs_t32, 0.002); end
  def test_user_inputs_h33; assert_in_epsilon(2.6, worksheet.user_inputs_h33, 0.002); end
  def test_user_inputs_i33; assert_in_epsilon(1.9, worksheet.user_inputs_i33, 0.002); end
  def test_user_inputs_j33; assert_in_epsilon(1.4, worksheet.user_inputs_j33, 0.002); end
  def test_user_inputs_k33; assert_in_epsilon(1.4, worksheet.user_inputs_k33, 0.002); end
  def test_user_inputs_l33; assert_in_epsilon(1.4, worksheet.user_inputs_l33, 0.002); end
  def test_user_inputs_m33; assert_in_epsilon(1.4, worksheet.user_inputs_m33, 0.002); end
  def test_user_inputs_n33; assert_in_epsilon(4.0, worksheet.user_inputs_n33, 0.002); end
  def test_user_inputs_o33; assert_in_epsilon(1.4, worksheet.user_inputs_o33, 0.002); end
  def test_user_inputs_p33; assert_in_epsilon(4.0, worksheet.user_inputs_p33, 0.002); end
  def test_user_inputs_q33; assert_in_epsilon(3.0, worksheet.user_inputs_q33, 0.002); end
  def test_user_inputs_r33; assert_in_epsilon(2.0, worksheet.user_inputs_r33, 0.002); end
  def test_user_inputs_s33; assert_in_delta(1.0, worksheet.user_inputs_s33, 0.002); end
  def test_user_inputs_t33; assert_in_epsilon(2.6, worksheet.user_inputs_t33, 0.002); end
  def test_user_inputs_h34; assert_in_epsilon(2.7, worksheet.user_inputs_h34, 0.002); end
  def test_user_inputs_i34; assert_in_epsilon(1.9, worksheet.user_inputs_i34, 0.002); end
  def test_user_inputs_j34; assert_in_epsilon(1.4, worksheet.user_inputs_j34, 0.002); end
  def test_user_inputs_k34; assert_in_epsilon(1.4, worksheet.user_inputs_k34, 0.002); end
  def test_user_inputs_l34; assert_in_epsilon(1.4, worksheet.user_inputs_l34, 0.002); end
  def test_user_inputs_m34; assert_in_epsilon(1.4, worksheet.user_inputs_m34, 0.002); end
  def test_user_inputs_n34; assert_in_epsilon(4.0, worksheet.user_inputs_n34, 0.002); end
  def test_user_inputs_o34; assert_in_epsilon(1.4, worksheet.user_inputs_o34, 0.002); end
  def test_user_inputs_p34; assert_in_epsilon(4.0, worksheet.user_inputs_p34, 0.002); end
  def test_user_inputs_q34; assert_in_epsilon(3.0, worksheet.user_inputs_q34, 0.002); end
  def test_user_inputs_r34; assert_in_epsilon(2.0, worksheet.user_inputs_r34, 0.002); end
  def test_user_inputs_s34; assert_in_delta(1.0, worksheet.user_inputs_s34, 0.002); end
  def test_user_inputs_t34; assert_in_epsilon(3.0, worksheet.user_inputs_t34, 0.002); end
  def test_user_inputs_h35; assert_in_epsilon(2.0, worksheet.user_inputs_h35, 0.002); end
  def test_user_inputs_i35; assert_in_epsilon(1.6, worksheet.user_inputs_i35, 0.002); end
  def test_user_inputs_j35; assert_in_epsilon(1.4, worksheet.user_inputs_j35, 0.002); end
  def test_user_inputs_k35; assert_in_epsilon(1.4, worksheet.user_inputs_k35, 0.002); end
  def test_user_inputs_l35; assert_in_epsilon(1.4, worksheet.user_inputs_l35, 0.002); end
  def test_user_inputs_m35; assert_in_epsilon(1.4, worksheet.user_inputs_m35, 0.002); end
  def test_user_inputs_n35; assert_in_epsilon(4.0, worksheet.user_inputs_n35, 0.002); end
  def test_user_inputs_o35; assert_in_epsilon(1.4, worksheet.user_inputs_o35, 0.002); end
  def test_user_inputs_p35; assert_in_epsilon(4.0, worksheet.user_inputs_p35, 0.002); end
  def test_user_inputs_q35; assert_in_epsilon(3.0, worksheet.user_inputs_q35, 0.002); end
  def test_user_inputs_r35; assert_in_epsilon(2.0, worksheet.user_inputs_r35, 0.002); end
  def test_user_inputs_s35; assert_in_delta(1.0, worksheet.user_inputs_s35, 0.002); end
  def test_user_inputs_t35; assert_in_epsilon(2.0, worksheet.user_inputs_t35, 0.002); end
  def test_user_inputs_h36; assert_in_epsilon(2.5, worksheet.user_inputs_h36, 0.002); end
  def test_user_inputs_i36; assert_in_epsilon(1.8, worksheet.user_inputs_i36, 0.002); end
  def test_user_inputs_j36; assert_in_epsilon(1.5, worksheet.user_inputs_j36, 0.002); end
  def test_user_inputs_k36; assert_in_epsilon(1.5, worksheet.user_inputs_k36, 0.002); end
  def test_user_inputs_l36; assert_in_epsilon(1.5, worksheet.user_inputs_l36, 0.002); end
  def test_user_inputs_m36; assert_in_epsilon(1.5, worksheet.user_inputs_m36, 0.002); end
  def test_user_inputs_n36; assert_in_epsilon(4.0, worksheet.user_inputs_n36, 0.002); end
  def test_user_inputs_o36; assert_in_epsilon(1.5, worksheet.user_inputs_o36, 0.002); end
  def test_user_inputs_p36; assert_in_epsilon(4.0, worksheet.user_inputs_p36, 0.002); end
  def test_user_inputs_q36; assert_in_epsilon(3.0, worksheet.user_inputs_q36, 0.002); end
  def test_user_inputs_r36; assert_in_epsilon(2.0, worksheet.user_inputs_r36, 0.002); end
  def test_user_inputs_s36; assert_in_delta(1.0, worksheet.user_inputs_s36, 0.002); end
  def test_user_inputs_t36; assert_in_epsilon(2.5, worksheet.user_inputs_t36, 0.002); end
  def test_user_inputs_h37; assert_in_epsilon(2.0, worksheet.user_inputs_h37, 0.002); end
  def test_user_inputs_i37; assert_in_epsilon(1.9, worksheet.user_inputs_i37, 0.002); end
  def test_user_inputs_j37; assert_in_epsilon(1.8, worksheet.user_inputs_j37, 0.002); end
  def test_user_inputs_k37; assert_in_epsilon(1.8, worksheet.user_inputs_k37, 0.002); end
  def test_user_inputs_l37; assert_in_epsilon(1.8, worksheet.user_inputs_l37, 0.002); end
  def test_user_inputs_m37; assert_in_epsilon(1.8, worksheet.user_inputs_m37, 0.002); end
  def test_user_inputs_n37; assert_in_epsilon(1.8, worksheet.user_inputs_n37, 0.002); end
  def test_user_inputs_o37; assert_in_epsilon(4.0, worksheet.user_inputs_o37, 0.002); end
  def test_user_inputs_p37; assert_in_epsilon(4.0, worksheet.user_inputs_p37, 0.002); end
  def test_user_inputs_q37; assert_in_epsilon(3.0, worksheet.user_inputs_q37, 0.002); end
  def test_user_inputs_r37; assert_in_epsilon(2.0, worksheet.user_inputs_r37, 0.002); end
  def test_user_inputs_s37; assert_in_delta(1.0, worksheet.user_inputs_s37, 0.002); end
  def test_user_inputs_t37; assert_in_epsilon(1.9, worksheet.user_inputs_t37, 0.002); end
  def test_user_inputs_h38; assert_in_epsilon(2.0, worksheet.user_inputs_h38, 0.002); end
  def test_user_inputs_i38; assert_in_epsilon(1.9, worksheet.user_inputs_i38, 0.002); end
  def test_user_inputs_j38; assert_in_epsilon(1.8, worksheet.user_inputs_j38, 0.002); end
  def test_user_inputs_k38; assert_in_epsilon(1.8, worksheet.user_inputs_k38, 0.002); end
  def test_user_inputs_l38; assert_in_epsilon(1.8, worksheet.user_inputs_l38, 0.002); end
  def test_user_inputs_m38; assert_in_epsilon(1.8, worksheet.user_inputs_m38, 0.002); end
  def test_user_inputs_n38; assert_in_epsilon(1.8, worksheet.user_inputs_n38, 0.002); end
  def test_user_inputs_o38; assert_in_epsilon(4.0, worksheet.user_inputs_o38, 0.002); end
  def test_user_inputs_p38; assert_in_epsilon(4.0, worksheet.user_inputs_p38, 0.002); end
  def test_user_inputs_q38; assert_in_epsilon(3.0, worksheet.user_inputs_q38, 0.002); end
  def test_user_inputs_r38; assert_in_epsilon(2.0, worksheet.user_inputs_r38, 0.002); end
  def test_user_inputs_s38; assert_in_delta(1.0, worksheet.user_inputs_s38, 0.002); end
  def test_user_inputs_t38; assert_in_epsilon(1.9, worksheet.user_inputs_t38, 0.002); end
  def test_user_inputs_h39; assert_in_epsilon(2.5, worksheet.user_inputs_h39, 0.002); end
  def test_user_inputs_i39; assert_in_epsilon(2.3, worksheet.user_inputs_i39, 0.002); end
  def test_user_inputs_j39; assert_in_epsilon(2.0, worksheet.user_inputs_j39, 0.002); end
  def test_user_inputs_k39; assert_in_epsilon(2.0, worksheet.user_inputs_k39, 0.002); end
  def test_user_inputs_l39; assert_in_epsilon(2.0, worksheet.user_inputs_l39, 0.002); end
  def test_user_inputs_m39; assert_in_epsilon(2.0, worksheet.user_inputs_m39, 0.002); end
  def test_user_inputs_n39; assert_in_epsilon(2.0, worksheet.user_inputs_n39, 0.002); end
  def test_user_inputs_o39; assert_in_epsilon(4.0, worksheet.user_inputs_o39, 0.002); end
  def test_user_inputs_p39; assert_in_epsilon(4.0, worksheet.user_inputs_p39, 0.002); end
  def test_user_inputs_q39; assert_in_epsilon(3.0, worksheet.user_inputs_q39, 0.002); end
  def test_user_inputs_r39; assert_in_epsilon(2.0, worksheet.user_inputs_r39, 0.002); end
  def test_user_inputs_s39; assert_in_delta(1.0, worksheet.user_inputs_s39, 0.002); end
  def test_user_inputs_t39; assert_in_epsilon(2.5, worksheet.user_inputs_t39, 0.002); end
  def test_user_inputs_h40; assert_in_epsilon(2.5, worksheet.user_inputs_h40, 0.002); end
  def test_user_inputs_i40; assert_in_epsilon(2.4, worksheet.user_inputs_i40, 0.002); end
  def test_user_inputs_j40; assert_in_epsilon(2.0, worksheet.user_inputs_j40, 0.002); end
  def test_user_inputs_k40; assert_in_epsilon(2.0, worksheet.user_inputs_k40, 0.002); end
  def test_user_inputs_l40; assert_in_epsilon(2.0, worksheet.user_inputs_l40, 0.002); end
  def test_user_inputs_m40; assert_in_epsilon(2.0, worksheet.user_inputs_m40, 0.002); end
  def test_user_inputs_n40; assert_in_epsilon(2.0, worksheet.user_inputs_n40, 0.002); end
  def test_user_inputs_o40; assert_in_epsilon(4.0, worksheet.user_inputs_o40, 0.002); end
  def test_user_inputs_p40; assert_in_epsilon(4.0, worksheet.user_inputs_p40, 0.002); end
  def test_user_inputs_q40; assert_in_epsilon(3.0, worksheet.user_inputs_q40, 0.002); end
  def test_user_inputs_r40; assert_in_epsilon(2.0, worksheet.user_inputs_r40, 0.002); end
  def test_user_inputs_s40; assert_in_delta(1.0, worksheet.user_inputs_s40, 0.002); end
  def test_user_inputs_t40; assert_in_epsilon(2.8, worksheet.user_inputs_t40, 0.002); end
  def test_user_inputs_h41; assert_in_epsilon(2.3, worksheet.user_inputs_h41, 0.002); end
  def test_user_inputs_i41; assert_in_epsilon(1.9, worksheet.user_inputs_i41, 0.002); end
  def test_user_inputs_j41; assert_in_delta(1.0, worksheet.user_inputs_j41, 0.002); end
  def test_user_inputs_k41; assert_in_delta(1.0, worksheet.user_inputs_k41, 0.002); end
  def test_user_inputs_l41; assert_in_delta(1.0, worksheet.user_inputs_l41, 0.002); end
  def test_user_inputs_m41; assert_in_delta(1.0, worksheet.user_inputs_m41, 0.002); end
  def test_user_inputs_n41; assert_in_delta(1.0, worksheet.user_inputs_n41, 0.002); end
  def test_user_inputs_o41; assert_in_epsilon(4.0, worksheet.user_inputs_o41, 0.002); end
  def test_user_inputs_p41; assert_in_epsilon(4.0, worksheet.user_inputs_p41, 0.002); end
  def test_user_inputs_q41; assert_in_epsilon(3.0, worksheet.user_inputs_q41, 0.002); end
  def test_user_inputs_r41; assert_in_epsilon(2.0, worksheet.user_inputs_r41, 0.002); end
  def test_user_inputs_s41; assert_in_delta(1.0, worksheet.user_inputs_s41, 0.002); end
  def test_user_inputs_t41; assert_in_epsilon(2.4, worksheet.user_inputs_t41, 0.002); end
  def test_user_inputs_h42; assert_in_epsilon(2.9, worksheet.user_inputs_h42, 0.002); end
  def test_user_inputs_i42; assert_in_epsilon(2.9, worksheet.user_inputs_i42, 0.002); end
  def test_user_inputs_j42; assert_in_epsilon(2.9, worksheet.user_inputs_j42, 0.002); end
  def test_user_inputs_k42; assert_in_epsilon(2.9, worksheet.user_inputs_k42, 0.002); end
  def test_user_inputs_l42; assert_in_epsilon(2.9, worksheet.user_inputs_l42, 0.002); end
  def test_user_inputs_m42; assert_in_epsilon(2.9, worksheet.user_inputs_m42, 0.002); end
  def test_user_inputs_n42; assert_in_epsilon(2.9, worksheet.user_inputs_n42, 0.002); end
  def test_user_inputs_o42; assert_in_epsilon(4.0, worksheet.user_inputs_o42, 0.002); end
  def test_user_inputs_p42; assert_in_epsilon(4.0, worksheet.user_inputs_p42, 0.002); end
  def test_user_inputs_q42; assert_in_epsilon(3.0, worksheet.user_inputs_q42, 0.002); end
  def test_user_inputs_r42; assert_in_epsilon(2.0, worksheet.user_inputs_r42, 0.002); end
  def test_user_inputs_s42; assert_in_delta(1.0, worksheet.user_inputs_s42, 0.002); end
  def test_user_inputs_t42; assert_in_epsilon(2.9, worksheet.user_inputs_t42, 0.002); end
  def test_user_inputs_h43; assert_in_epsilon(3.5, worksheet.user_inputs_h43, 0.002); end
  def test_user_inputs_i43; assert_in_epsilon(4.0, worksheet.user_inputs_i43, 0.002); end
  def test_user_inputs_j43; assert_in_epsilon(4.0, worksheet.user_inputs_j43, 0.002); end
  def test_user_inputs_k43; assert_in_epsilon(4.0, worksheet.user_inputs_k43, 0.002); end
  def test_user_inputs_l43; assert_in_epsilon(4.0, worksheet.user_inputs_l43, 0.002); end
  def test_user_inputs_m43; assert_in_epsilon(4.0, worksheet.user_inputs_m43, 0.002); end
  def test_user_inputs_n43; assert_in_epsilon(4.0, worksheet.user_inputs_n43, 0.002); end
  def test_user_inputs_o43; assert_in_epsilon(4.0, worksheet.user_inputs_o43, 0.002); end
  def test_user_inputs_p43; assert_in_epsilon(4.0, worksheet.user_inputs_p43, 0.002); end
  def test_user_inputs_q43; assert_in_epsilon(3.0, worksheet.user_inputs_q43, 0.002); end
  def test_user_inputs_r43; assert_in_epsilon(2.0, worksheet.user_inputs_r43, 0.002); end
  def test_user_inputs_s43; assert_in_delta(1.0, worksheet.user_inputs_s43, 0.002); end
  def test_user_inputs_t43; assert_in_epsilon(3.5, worksheet.user_inputs_t43, 0.002); end
  def test_user_inputs_h44; assert_in_delta(1.0, worksheet.user_inputs_h44, 0.002); end
  def test_user_inputs_i44; assert_in_delta(1.0, worksheet.user_inputs_i44, 0.002); end
  def test_user_inputs_j44; assert_in_delta(1.0, worksheet.user_inputs_j44, 0.002); end
  def test_user_inputs_k44; assert_in_delta(1.0, worksheet.user_inputs_k44, 0.002); end
  def test_user_inputs_l44; assert_in_delta(1.0, worksheet.user_inputs_l44, 0.002); end
  def test_user_inputs_m44; assert_in_delta(1.0, worksheet.user_inputs_m44, 0.002); end
  def test_user_inputs_n44; assert_in_delta(1.0, worksheet.user_inputs_n44, 0.002); end
  def test_user_inputs_o44; assert_in_delta(1.0, worksheet.user_inputs_o44, 0.002); end
  def test_user_inputs_p44; assert_in_delta(1.0, worksheet.user_inputs_p44, 0.002); end
  def test_user_inputs_q44; assert_in_delta(1.0, worksheet.user_inputs_q44, 0.002); end
  def test_user_inputs_r44; assert_in_delta(1.0, worksheet.user_inputs_r44, 0.002); end
  def test_user_inputs_s44; assert_in_delta(1.0, worksheet.user_inputs_s44, 0.002); end
  def test_user_inputs_t44; assert_in_delta(1.0, worksheet.user_inputs_t44, 0.002); end
  def test_user_inputs_h45; assert_in_delta(1.0, worksheet.user_inputs_h45, 0.002); end
  def test_user_inputs_i45; assert_in_delta(1.0, worksheet.user_inputs_i45, 0.002); end
  def test_user_inputs_j45; assert_in_delta(1.0, worksheet.user_inputs_j45, 0.002); end
  def test_user_inputs_k45; assert_in_delta(1.0, worksheet.user_inputs_k45, 0.002); end
  def test_user_inputs_l45; assert_in_delta(1.0, worksheet.user_inputs_l45, 0.002); end
  def test_user_inputs_m45; assert_in_delta(1.0, worksheet.user_inputs_m45, 0.002); end
  def test_user_inputs_n45; assert_in_delta(1.0, worksheet.user_inputs_n45, 0.002); end
  def test_user_inputs_o45; assert_in_delta(1.0, worksheet.user_inputs_o45, 0.002); end
  def test_user_inputs_p45; assert_in_delta(1.0, worksheet.user_inputs_p45, 0.002); end
  def test_user_inputs_q45; assert_in_delta(1.0, worksheet.user_inputs_q45, 0.002); end
  def test_user_inputs_r45; assert_in_delta(1.0, worksheet.user_inputs_r45, 0.002); end
  def test_user_inputs_s45; assert_in_delta(1.0, worksheet.user_inputs_s45, 0.002); end
  def test_user_inputs_t45; assert_in_delta(1.0, worksheet.user_inputs_t45, 0.002); end
  def test_user_inputs_h46; assert_in_delta(1.0, worksheet.user_inputs_h46, 0.002); end
  def test_user_inputs_i46; assert_in_delta(1.0, worksheet.user_inputs_i46, 0.002); end
  def test_user_inputs_j46; assert_in_delta(1.0, worksheet.user_inputs_j46, 0.002); end
  def test_user_inputs_k46; assert_in_delta(1.0, worksheet.user_inputs_k46, 0.002); end
  def test_user_inputs_l46; assert_in_delta(1.0, worksheet.user_inputs_l46, 0.002); end
  def test_user_inputs_m46; assert_in_delta(1.0, worksheet.user_inputs_m46, 0.002); end
  def test_user_inputs_n46; assert_in_delta(1.0, worksheet.user_inputs_n46, 0.002); end
  def test_user_inputs_o46; assert_in_delta(1.0, worksheet.user_inputs_o46, 0.002); end
  def test_user_inputs_p46; assert_in_delta(1.0, worksheet.user_inputs_p46, 0.002); end
  def test_user_inputs_q46; assert_in_delta(1.0, worksheet.user_inputs_q46, 0.002); end
  def test_user_inputs_r46; assert_in_delta(1.0, worksheet.user_inputs_r46, 0.002); end
  def test_user_inputs_s46; assert_in_delta(1.0, worksheet.user_inputs_s46, 0.002); end
  def test_user_inputs_t46; assert_in_delta(1.0, worksheet.user_inputs_t46, 0.002); end
  def test_user_inputs_h47; assert_in_delta(1.0, worksheet.user_inputs_h47, 0.002); end
  def test_user_inputs_i47; assert_in_delta(1.0, worksheet.user_inputs_i47, 0.002); end
  def test_user_inputs_j47; assert_in_delta(1.0, worksheet.user_inputs_j47, 0.002); end
  def test_user_inputs_k47; assert_in_delta(1.0, worksheet.user_inputs_k47, 0.002); end
  def test_user_inputs_l47; assert_in_delta(1.0, worksheet.user_inputs_l47, 0.002); end
  def test_user_inputs_m47; assert_in_delta(1.0, worksheet.user_inputs_m47, 0.002); end
  def test_user_inputs_n47; assert_in_delta(1.0, worksheet.user_inputs_n47, 0.002); end
  def test_user_inputs_o47; assert_in_delta(1.0, worksheet.user_inputs_o47, 0.002); end
  def test_user_inputs_p47; assert_in_delta(1.0, worksheet.user_inputs_p47, 0.002); end
  def test_user_inputs_q47; assert_in_delta(1.0, worksheet.user_inputs_q47, 0.002); end
  def test_user_inputs_r47; assert_in_delta(1.0, worksheet.user_inputs_r47, 0.002); end
  def test_user_inputs_s47; assert_in_delta(1.0, worksheet.user_inputs_s47, 0.002); end
  def test_user_inputs_t47; assert_in_delta(1.0, worksheet.user_inputs_t47, 0.002); end
  def test_user_inputs_h48; assert_in_delta(1.0, worksheet.user_inputs_h48, 0.002); end
  def test_user_inputs_i48; assert_in_delta(1.0, worksheet.user_inputs_i48, 0.002); end
  def test_user_inputs_j48; assert_in_delta(1.0, worksheet.user_inputs_j48, 0.002); end
  def test_user_inputs_k48; assert_in_delta(1.0, worksheet.user_inputs_k48, 0.002); end
  def test_user_inputs_l48; assert_in_delta(1.0, worksheet.user_inputs_l48, 0.002); end
  def test_user_inputs_m48; assert_in_delta(1.0, worksheet.user_inputs_m48, 0.002); end
  def test_user_inputs_n48; assert_in_delta(1.0, worksheet.user_inputs_n48, 0.002); end
  def test_user_inputs_o48; assert_in_delta(1.0, worksheet.user_inputs_o48, 0.002); end
  def test_user_inputs_p48; assert_in_delta(1.0, worksheet.user_inputs_p48, 0.002); end
  def test_user_inputs_q48; assert_in_delta(1.0, worksheet.user_inputs_q48, 0.002); end
  def test_user_inputs_r48; assert_in_delta(1.0, worksheet.user_inputs_r48, 0.002); end
  def test_user_inputs_s48; assert_in_delta(1.0, worksheet.user_inputs_s48, 0.002); end
  def test_user_inputs_t48; assert_in_delta(1.0, worksheet.user_inputs_t48, 0.002); end
  def test_user_inputs_h49; assert_in_epsilon(2.5, worksheet.user_inputs_h49, 0.002); end
  def test_user_inputs_i49; assert_in_epsilon(2.2, worksheet.user_inputs_i49, 0.002); end
  def test_user_inputs_j49; assert_in_delta(1.0, worksheet.user_inputs_j49, 0.002); end
  def test_user_inputs_k49; assert_in_delta(1.0, worksheet.user_inputs_k49, 0.002); end
  def test_user_inputs_l49; assert_in_delta(1.0, worksheet.user_inputs_l49, 0.002); end
  def test_user_inputs_m49; assert_in_delta(1.0, worksheet.user_inputs_m49, 0.002); end
  def test_user_inputs_n49; assert_in_delta(1.0, worksheet.user_inputs_n49, 0.002); end
  def test_user_inputs_o49; assert_in_delta(1.0, worksheet.user_inputs_o49, 0.002); end
  def test_user_inputs_p49; assert_in_epsilon(4.0, worksheet.user_inputs_p49, 0.002); end
  def test_user_inputs_q49; assert_in_epsilon(3.0, worksheet.user_inputs_q49, 0.002); end
  def test_user_inputs_r49; assert_in_epsilon(2.0, worksheet.user_inputs_r49, 0.002); end
  def test_user_inputs_s49; assert_in_delta(1.0, worksheet.user_inputs_s49, 0.002); end
  def test_user_inputs_t49; assert_in_epsilon(2.6, worksheet.user_inputs_t49, 0.002); end
  def test_user_inputs_h50; assert_in_epsilon(2.4, worksheet.user_inputs_h50, 0.002); end
  def test_user_inputs_i50; assert_in_epsilon(1.3, worksheet.user_inputs_i50, 0.002); end
  def test_user_inputs_j50; assert_in_delta(1.0, worksheet.user_inputs_j50, 0.002); end
  def test_user_inputs_k50; assert_in_epsilon(2.5, worksheet.user_inputs_k50, 0.002); end
  def test_user_inputs_l50; assert_in_epsilon(2.5, worksheet.user_inputs_l50, 0.002); end
  def test_user_inputs_m50; assert_in_epsilon(2.5, worksheet.user_inputs_m50, 0.002); end
  def test_user_inputs_n50; assert_in_epsilon(2.5, worksheet.user_inputs_n50, 0.002); end
  def test_user_inputs_o50; assert_in_epsilon(2.5, worksheet.user_inputs_o50, 0.002); end
  def test_user_inputs_p50; assert_in_epsilon(2.5, worksheet.user_inputs_p50, 0.002); end
  def test_user_inputs_q50; assert_in_epsilon(2.5, worksheet.user_inputs_q50, 0.002); end
  def test_user_inputs_r50; assert_in_epsilon(2.5, worksheet.user_inputs_r50, 0.002); end
  def test_user_inputs_s50; assert_in_epsilon(2.5, worksheet.user_inputs_s50, 0.002); end
  def test_user_inputs_t50; assert_in_epsilon(2.4, worksheet.user_inputs_t50, 0.002); end
  def test_user_inputs_h51; assert_in_epsilon(2.0, worksheet.user_inputs_h51, 0.002); end
  def test_user_inputs_i51; assert_in_epsilon(2.0, worksheet.user_inputs_i51, 0.002); end
  def test_user_inputs_j51; assert_in_epsilon(2.0, worksheet.user_inputs_j51, 0.002); end
  def test_user_inputs_k51; assert_in_epsilon(2.0, worksheet.user_inputs_k51, 0.002); end
  def test_user_inputs_l51; assert_in_epsilon(2.0, worksheet.user_inputs_l51, 0.002); end
  def test_user_inputs_m51; assert_in_epsilon(2.0, worksheet.user_inputs_m51, 0.002); end
  def test_user_inputs_n51; assert_in_epsilon(2.0, worksheet.user_inputs_n51, 0.002); end
  def test_user_inputs_o51; assert_in_epsilon(4.0, worksheet.user_inputs_o51, 0.002); end
  def test_user_inputs_p51; assert_in_epsilon(4.0, worksheet.user_inputs_p51, 0.002); end
  def test_user_inputs_q51; assert_in_epsilon(3.0, worksheet.user_inputs_q51, 0.002); end
  def test_user_inputs_r51; assert_in_epsilon(2.0, worksheet.user_inputs_r51, 0.002); end
  def test_user_inputs_s51; assert_in_delta(1.0, worksheet.user_inputs_s51, 0.002); end
  def test_user_inputs_t51; assert_in_epsilon(2.0, worksheet.user_inputs_t51, 0.002); end
  def test_user_inputs_h52; assert_equal("B", worksheet.user_inputs_h52); end
  def test_user_inputs_i52; assert_equal("B", worksheet.user_inputs_i52); end
  def test_user_inputs_j52; assert_equal("B", worksheet.user_inputs_j52); end
  def test_user_inputs_k52; assert_equal("B", worksheet.user_inputs_k52); end
  def test_user_inputs_l52; assert_equal("B", worksheet.user_inputs_l52); end
  def test_user_inputs_m52; assert_equal("B", worksheet.user_inputs_m52); end
  def test_user_inputs_n52; assert_equal("B", worksheet.user_inputs_n52); end
  def test_user_inputs_o52; assert_equal("B", worksheet.user_inputs_o52); end
  def test_user_inputs_p52; assert_equal("B", worksheet.user_inputs_p52); end
  def test_user_inputs_q52; assert_equal("B", worksheet.user_inputs_q52); end
  def test_user_inputs_r52; assert_equal("B", worksheet.user_inputs_r52); end
  def test_user_inputs_s52; assert_equal("B", worksheet.user_inputs_s52); end
  def test_user_inputs_t52; assert_equal("B", worksheet.user_inputs_t52); end
  def test_user_inputs_h53; assert_equal("US", worksheet.user_inputs_h53); end
  def test_user_inputs_i53; assert_equal("US", worksheet.user_inputs_i53); end
  def test_user_inputs_j53; assert_equal("US", worksheet.user_inputs_j53); end
  def test_user_inputs_k53; assert_equal("US", worksheet.user_inputs_k53); end
  def test_user_inputs_l53; assert_equal("US", worksheet.user_inputs_l53); end
  def test_user_inputs_m53; assert_equal("US", worksheet.user_inputs_m53); end
  def test_user_inputs_n53; assert_equal("US", worksheet.user_inputs_n53); end
  def test_user_inputs_o53; assert_equal("US", worksheet.user_inputs_o53); end
  def test_user_inputs_p53; assert_equal("US", worksheet.user_inputs_p53); end
  def test_user_inputs_q53; assert_equal("US", worksheet.user_inputs_q53); end
  def test_user_inputs_r53; assert_equal("US", worksheet.user_inputs_r53); end
  def test_user_inputs_s53; assert_equal("US", worksheet.user_inputs_s53); end
  def test_user_inputs_t53; assert_equal("US", worksheet.user_inputs_t53); end
  def test_user_inputs_h54; assert_equal("US", worksheet.user_inputs_h54); end
  def test_user_inputs_i54; assert_equal("US", worksheet.user_inputs_i54); end
  def test_user_inputs_j54; assert_equal("US", worksheet.user_inputs_j54); end
  def test_user_inputs_k54; assert_equal("US", worksheet.user_inputs_k54); end
  def test_user_inputs_l54; assert_equal("US", worksheet.user_inputs_l54); end
  def test_user_inputs_m54; assert_equal("US", worksheet.user_inputs_m54); end
  def test_user_inputs_n54; assert_equal("US", worksheet.user_inputs_n54); end
  def test_user_inputs_o54; assert_equal("US", worksheet.user_inputs_o54); end
  def test_user_inputs_p54; assert_equal("US", worksheet.user_inputs_p54); end
  def test_user_inputs_q54; assert_equal("US", worksheet.user_inputs_q54); end
  def test_user_inputs_r54; assert_equal("US", worksheet.user_inputs_r54); end
  def test_user_inputs_s54; assert_equal("US", worksheet.user_inputs_s54); end
  def test_user_inputs_t54; assert_equal("US", worksheet.user_inputs_t54); end
  def test_user_inputs_h55; assert_equal("US", worksheet.user_inputs_h55); end
  def test_user_inputs_i55; assert_equal("US", worksheet.user_inputs_i55); end
  def test_user_inputs_j55; assert_equal("US", worksheet.user_inputs_j55); end
  def test_user_inputs_k55; assert_equal("US", worksheet.user_inputs_k55); end
  def test_user_inputs_l55; assert_equal("US", worksheet.user_inputs_l55); end
  def test_user_inputs_m55; assert_equal("US", worksheet.user_inputs_m55); end
  def test_user_inputs_n55; assert_equal("US", worksheet.user_inputs_n55); end
  def test_user_inputs_o55; assert_equal("US", worksheet.user_inputs_o55); end
  def test_user_inputs_p55; assert_equal("US", worksheet.user_inputs_p55); end
  def test_user_inputs_q55; assert_equal("US", worksheet.user_inputs_q55); end
  def test_user_inputs_r55; assert_equal("US", worksheet.user_inputs_r55); end
  def test_user_inputs_s55; assert_equal("US", worksheet.user_inputs_s55); end
  def test_user_inputs_t55; assert_equal("US", worksheet.user_inputs_t55); end
  def test_user_inputs_h56; assert_equal("Point", worksheet.user_inputs_h56); end
  def test_user_inputs_i56; assert_equal("Point", worksheet.user_inputs_i56); end
  def test_user_inputs_j56; assert_equal("Point", worksheet.user_inputs_j56); end
  def test_user_inputs_k56; assert_equal("Point", worksheet.user_inputs_k56); end
  def test_user_inputs_l56; assert_equal("Point", worksheet.user_inputs_l56); end
  def test_user_inputs_m56; assert_equal("Point", worksheet.user_inputs_m56); end
  def test_user_inputs_n56; assert_equal("Point", worksheet.user_inputs_n56); end
  def test_user_inputs_o56; assert_equal("Point", worksheet.user_inputs_o56); end
  def test_user_inputs_p56; assert_equal("Point", worksheet.user_inputs_p56); end
  def test_user_inputs_q56; assert_equal("Point", worksheet.user_inputs_q56); end
  def test_user_inputs_r56; assert_equal("Point", worksheet.user_inputs_r56); end
  def test_user_inputs_s56; assert_equal("Point", worksheet.user_inputs_s56); end
  def test_user_inputs_t56; assert_equal("Point", worksheet.user_inputs_t56); end
  def test_user_inputs_h57; assert_equal("Point", worksheet.user_inputs_h57); end
  def test_user_inputs_i57; assert_equal("Point", worksheet.user_inputs_i57); end
  def test_user_inputs_j57; assert_equal("Point", worksheet.user_inputs_j57); end
  def test_user_inputs_k57; assert_equal("Point", worksheet.user_inputs_k57); end
  def test_user_inputs_l57; assert_equal("Point", worksheet.user_inputs_l57); end
  def test_user_inputs_m57; assert_equal("Point", worksheet.user_inputs_m57); end
  def test_user_inputs_n57; assert_equal("Point", worksheet.user_inputs_n57); end
  def test_user_inputs_o57; assert_equal("Point", worksheet.user_inputs_o57); end
  def test_user_inputs_p57; assert_equal("Point", worksheet.user_inputs_p57); end
  def test_user_inputs_q57; assert_equal("Point", worksheet.user_inputs_q57); end
  def test_user_inputs_r57; assert_equal("Point", worksheet.user_inputs_r57); end
  def test_user_inputs_s57; assert_equal("Point", worksheet.user_inputs_s57); end
  def test_user_inputs_t57; assert_equal("Point", worksheet.user_inputs_t57); end
  def test_user_inputs_h58; assert_equal("Point", worksheet.user_inputs_h58); end
  def test_user_inputs_i58; assert_equal("Point", worksheet.user_inputs_i58); end
  def test_user_inputs_j58; assert_equal("Point", worksheet.user_inputs_j58); end
  def test_user_inputs_k58; assert_equal("Point", worksheet.user_inputs_k58); end
  def test_user_inputs_l58; assert_equal("Point", worksheet.user_inputs_l58); end
  def test_user_inputs_m58; assert_equal("Point", worksheet.user_inputs_m58); end
  def test_user_inputs_n58; assert_equal("Point", worksheet.user_inputs_n58); end
  def test_user_inputs_o58; assert_equal("Point", worksheet.user_inputs_o58); end
  def test_user_inputs_p58; assert_equal("Point", worksheet.user_inputs_p58); end
  def test_user_inputs_q58; assert_equal("Point", worksheet.user_inputs_q58); end
  def test_user_inputs_r58; assert_equal("Point", worksheet.user_inputs_r58); end
  def test_user_inputs_s58; assert_equal("Point", worksheet.user_inputs_s58); end
  def test_user_inputs_t58; assert_equal("Point", worksheet.user_inputs_t58); end
  def test_user_inputs_h59; assert_equal("Point", worksheet.user_inputs_h59); end
  def test_user_inputs_i59; assert_equal("Point", worksheet.user_inputs_i59); end
  def test_user_inputs_j59; assert_equal("Point", worksheet.user_inputs_j59); end
  def test_user_inputs_k59; assert_equal("Point", worksheet.user_inputs_k59); end
  def test_user_inputs_l59; assert_equal("Point", worksheet.user_inputs_l59); end
  def test_user_inputs_m59; assert_equal("Point", worksheet.user_inputs_m59); end
  def test_user_inputs_n59; assert_equal("Point", worksheet.user_inputs_n59); end
  def test_user_inputs_o59; assert_equal("Point", worksheet.user_inputs_o59); end
  def test_user_inputs_p59; assert_equal("Point", worksheet.user_inputs_p59); end
  def test_user_inputs_q59; assert_equal("Point", worksheet.user_inputs_q59); end
  def test_user_inputs_r59; assert_equal("Point", worksheet.user_inputs_r59); end
  def test_user_inputs_s59; assert_equal("Point", worksheet.user_inputs_s59); end
  def test_user_inputs_t59; assert_equal("Point", worksheet.user_inputs_t59); end
  def test_user_inputs_h60; assert_equal("Point", worksheet.user_inputs_h60); end
  def test_user_inputs_i60; assert_equal("Point", worksheet.user_inputs_i60); end
  def test_user_inputs_j60; assert_equal("Point", worksheet.user_inputs_j60); end
  def test_user_inputs_k60; assert_equal("Point", worksheet.user_inputs_k60); end
  def test_user_inputs_l60; assert_equal("Point", worksheet.user_inputs_l60); end
  def test_user_inputs_m60; assert_equal("Point", worksheet.user_inputs_m60); end
  def test_user_inputs_n60; assert_equal("Point", worksheet.user_inputs_n60); end
  def test_user_inputs_o60; assert_equal("Point", worksheet.user_inputs_o60); end
  def test_user_inputs_p60; assert_equal("Point", worksheet.user_inputs_p60); end
  def test_user_inputs_q60; assert_equal("Point", worksheet.user_inputs_q60); end
  def test_user_inputs_r60; assert_equal("Point", worksheet.user_inputs_r60); end
  def test_user_inputs_s60; assert_equal("Point", worksheet.user_inputs_s60); end
  def test_user_inputs_t60; assert_equal("Point", worksheet.user_inputs_t60); end
  def test_user_inputs_h61; assert_equal("Point", worksheet.user_inputs_h61); end
  def test_user_inputs_i61; assert_equal("Point", worksheet.user_inputs_i61); end
  def test_user_inputs_j61; assert_equal("Point", worksheet.user_inputs_j61); end
  def test_user_inputs_k61; assert_equal("Point", worksheet.user_inputs_k61); end
  def test_user_inputs_l61; assert_equal("Point", worksheet.user_inputs_l61); end
  def test_user_inputs_m61; assert_equal("Point", worksheet.user_inputs_m61); end
  def test_user_inputs_n61; assert_equal("Point", worksheet.user_inputs_n61); end
  def test_user_inputs_o61; assert_equal("Point", worksheet.user_inputs_o61); end
  def test_user_inputs_p61; assert_equal("Point", worksheet.user_inputs_p61); end
  def test_user_inputs_q61; assert_equal("Point", worksheet.user_inputs_q61); end
  def test_user_inputs_r61; assert_equal("Point", worksheet.user_inputs_r61); end
  def test_user_inputs_s61; assert_equal("Point", worksheet.user_inputs_s61); end
  def test_user_inputs_t61; assert_equal("Point", worksheet.user_inputs_t61); end
  def test_user_inputs_h62; assert_equal("Point", worksheet.user_inputs_h62); end
  def test_user_inputs_i62; assert_equal("Point", worksheet.user_inputs_i62); end
  def test_user_inputs_j62; assert_equal("Point", worksheet.user_inputs_j62); end
  def test_user_inputs_k62; assert_equal("Point", worksheet.user_inputs_k62); end
  def test_user_inputs_l62; assert_equal("Point", worksheet.user_inputs_l62); end
  def test_user_inputs_m62; assert_equal("Point", worksheet.user_inputs_m62); end
  def test_user_inputs_n62; assert_equal("Point", worksheet.user_inputs_n62); end
  def test_user_inputs_o62; assert_equal("Point", worksheet.user_inputs_o62); end
  def test_user_inputs_p62; assert_equal("Point", worksheet.user_inputs_p62); end
  def test_user_inputs_q62; assert_equal("Point", worksheet.user_inputs_q62); end
  def test_user_inputs_r62; assert_equal("Point", worksheet.user_inputs_r62); end
  def test_user_inputs_s62; assert_equal("Point", worksheet.user_inputs_s62); end
  def test_user_inputs_t62; assert_equal("Point", worksheet.user_inputs_t62); end
  def test_user_inputs_g7; assert_in_delta(0.0, (worksheet.user_inputs_g7||0), 0.002); end
  def test_user_inputs_g8; assert_in_delta(0.0, (worksheet.user_inputs_g8||0), 0.002); end
  def test_user_inputs_g9; assert_equal("Urban and non-urban travel will grow in cities with established development patterns. Without planning initiatives to shift existing trends, cities that are still growing rapidly will see more growth in personal travel.", worksheet.user_inputs_g9); end
  def test_user_inputs_g10; assert_equal("Freight tonne-kms remains closely tied to GDP and increase by roughly 140% in road, rail, and shipping.", worksheet.user_inputs_g10); end
  def test_user_inputs_g11; assert_equal("For Automobile cities the mode share by trip is: Car - 68%,   Bus - 14%, Rail - 3%,     2-3W - 2%, Bike - 1%, Walk - 12% . For Transit cities the mode share by trip is: Car - 60%,   Bus - 16%,  Rail - 1%,   2-3W - 3%, Bike - 5%, Walk - 15%. For Booming Cities, the mode share per trip is: Car - 55%,   Bus - 16%,  Rail - 1%,   2-3W - 15%, Bike - 1%, Walk -12%. For rural travel, developed countries will see a mode share of:Car - 86%,   Bus - 4%,  Rail - 4%,   2-3W - 1%, Bike - 1%, Walk -5%; while developing countries will see a mode share of: Car - 50%,   Bus - 9%,  Rail - 8%,   2-3W - 23%, Bike - 2%, Walk -8%. Ground freight will be 80% road and 20% rail globally.", worksheet.user_inputs_g11); end
  def test_user_inputs_g12; assert_equal("Limited improvement, with most transport modes decreasing their energy intensity by 0.5% annually. ", worksheet.user_inputs_g12); end
  def test_user_inputs_g13; assert_equal("Limited electrification occurs, with  10% hybrids and 2% electric for passenger cars, and  5% hybrids and 5% electric for heavy duty vehicles.", worksheet.user_inputs_g13); end
  def test_user_inputs_g14; assert_equal("In 2050 the average house floor area will be 0.0000000105 M ha per householdthe average services building floor area will be 0 M ha pre capita", worksheet.user_inputs_g14); end
  def test_user_inputs_g15; assert_equal("In 2050 the average house inner temperature will be 19 ℃ and the services will be 21 ℃ in winter and 25 ℃, 24 ℃ in summer. The hot water demand will be 20088.75 l per y per capita", worksheet.user_inputs_g15); end
  def test_user_inputs_g16; assert_equal("In 2050 the average household will own 1.1 refrigerator, 0.4 dishwasher, 0.9 clothes washers, 0.3 clothes dryers, 2 TV, 2.4 miscellaneous. And will own 35 bulbs.", worksheet.user_inputs_g16); end
  def test_user_inputs_g17; assert_equal("In 2050 the average heat loss coefficient of buildings will be 10.2 GW/(M ha*℃), the thermal performance of building will improved by 32%", worksheet.user_inputs_g17); end
  def test_user_inputs_g18; assert_equal("In 2050 the heating techology structure will be 2% solid boiler, 10% liquid boiler, 38% gas boiler, 3% heatpump, 8% electricity heater, 0% solar heater, 4% microchp, 36% districtheating. The cooling structure will be 89% aircondition, 4% chiller, 8% solar cooling. The cooking technology structure will be7% solid stoves, 12% liquid stoves, 45% gas stoves, 28% electricity stoves, 9% traditional biomass stoves. The lighting techonlogy structure will be 60% incandescents, 3% halogens, 35% CFLs, 3% LEDs. ", worksheet.user_inputs_g18); end
  def test_user_inputs_g19; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.00000008 GW improved by 20%, dishwasher 0.0000012 GW improved by 20%, clothwasher 0.00000056 GW improved by 20%, clothdryer 0.0000012 GW improved by 20%, TV 0.0000002 GW improved by 20%, miscellaneous 0.00000008 GW improved by 20%.", worksheet.user_inputs_g19); end
  def test_user_inputs_g20; assert_equal("Demand for products leads to the production of 15.3Gt of materials, that is: 2.8Gt of crude steel, 0.2Gt of aluminium, 1.3Gt of chemicals, 0.9Gt of paper, 1.3Gt of timber, 2.3Gt of other materials, & 1.3Gt of cement", worksheet.user_inputs_g20); end
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
  def test_detailed_lever_guides_b5; assert_equal("Lever", worksheet.detailed_lever_guides_b5); end
  def test_detailed_lever_guides_c5; assert_equal("Code", worksheet.detailed_lever_guides_c5); end
  def test_detailed_lever_guides_d5; assert_equal("Situation today", worksheet.detailed_lever_guides_d5); end
  def test_detailed_lever_guides_e5; assert_equal("Chosen level description", worksheet.detailed_lever_guides_e5); end
  def test_detailed_lever_guides_f5; assert_equal("Energy supply / demand from choice by 2050", worksheet.detailed_lever_guides_f5); end
  def test_detailed_lever_guides_g5; assert_equal("Interactions with other levers", worksheet.detailed_lever_guides_g5); end
  def test_detailed_lever_guides_h5; assert_equal("Level 1 short description", worksheet.detailed_lever_guides_h5); end
  def test_detailed_lever_guides_i5; assert_equal("Level 1 longer description", worksheet.detailed_lever_guides_i5); end
  def test_detailed_lever_guides_j5; assert_equal("Level 2 short description", worksheet.detailed_lever_guides_j5); end
  def test_detailed_lever_guides_k5; assert_equal("Level 2 longer description", worksheet.detailed_lever_guides_k5); end
  def test_detailed_lever_guides_l5; assert_equal("Level 3 short description", worksheet.detailed_lever_guides_l5); end
  def test_detailed_lever_guides_m5; assert_equal("Level 3 longer description", worksheet.detailed_lever_guides_m5); end
  def test_detailed_lever_guides_n5; assert_equal("Level 4 short description", worksheet.detailed_lever_guides_n5); end
  def test_detailed_lever_guides_o5; assert_equal("Level 4 longer description", worksheet.detailed_lever_guides_o5); end
  def test_detailed_lever_guides_b6; assert_equal("Global population", worksheet.detailed_lever_guides_b6); end
  def test_detailed_lever_guides_d6; assert_equal("In 2010 the world's population was around 6.9 billion", worksheet.detailed_lever_guides_d6); end
  def test_detailed_lever_guides_g6; assert_equal("This lever also drives the total food consumption, total buidlings demand and total transport demand", worksheet.detailed_lever_guides_g6); end
  def test_detailed_lever_guides_h6; assert_equal("In 2050 the world population rises to around 10.9 billion", worksheet.detailed_lever_guides_h6); end
  def test_detailed_lever_guides_j6; assert_equal("In 2050 the world population rises to around 9.6 billion", worksheet.detailed_lever_guides_j6); end
  def test_detailed_lever_guides_l6; assert_equal("In 2050 the world population rises to around 8.3 billion", worksheet.detailed_lever_guides_l6); end
  def test_detailed_lever_guides_b7; assert_equal("Urbanisation", worksheet.detailed_lever_guides_b7); end
  def test_detailed_lever_guides_d7; assert_equal("In 2010, 52% of the world's population lived in urban area", worksheet.detailed_lever_guides_d7); end
  def test_detailed_lever_guides_g7; assert_equal("This lever also drives the total buidlings demand and total transport demand", worksheet.detailed_lever_guides_g7); end
  def test_detailed_lever_guides_h7; assert_equal("In 2050, 75% of the world's population live in urban areas", worksheet.detailed_lever_guides_h7); end
  def test_detailed_lever_guides_j7; assert_equal("In 2050, 65% of the world's population live in urban areas", worksheet.detailed_lever_guides_j7); end
  def test_detailed_lever_guides_l7; assert_equal("In 2050, 58% of the world's population live in urban areas", worksheet.detailed_lever_guides_l7); end
  def test_detailed_lever_guides_b8; assert_equal("Passenger distance", worksheet.detailed_lever_guides_b8); end
  def test_detailed_lever_guides_h8; assert_equal("In 2050, urban, non-urban, and airplane personal travel will increase by 160% from 2011.", worksheet.detailed_lever_guides_h8); end
  def test_detailed_lever_guides_i8; assert_equal("Urban and non-urban travel will grow in cities with established development patterns. Without planning initiatives to shift existing trends, cities that are still growing rapidly will see more growth in personal travel.", worksheet.detailed_lever_guides_i8); end
  def test_detailed_lever_guides_j8; assert_equal("In 2050, urban, non-urban, and airplane personal travel will increase by 120% from 2011.", worksheet.detailed_lever_guides_j8); end
  def test_detailed_lever_guides_k8; assert_equal("Urban and non-urban travel will grow at a slower rate in cities with established development patterns. With some planning initiatives to shift existing trends, cities that are still growing rapidly will see moderated growth in personal travel.", worksheet.detailed_lever_guides_k8); end
  def test_detailed_lever_guides_l8; assert_equal("In 2050, urban, non-urban, and airplane personal travel will increase by 90% from 2011.", worksheet.detailed_lever_guides_l8); end
  def test_detailed_lever_guides_m8; assert_equal("Urban and non-urban travel will grow at a slower rate in cities around the world due to improved planning and initiatives that reduce the distance needed to reach the same goods and services.", worksheet.detailed_lever_guides_m8); end
  def test_detailed_lever_guides_n8; assert_equal("In 2050, urban, non-urban, and airplane personal travel will increase by 60% from 2011.", worksheet.detailed_lever_guides_n8); end
  def test_detailed_lever_guides_o8; assert_equal("Though travel will still increase in Booming Cities, good planning and initiatives worldwide make shorter trip distances to goods and services possible.", worksheet.detailed_lever_guides_o8); end
  def test_detailed_lever_guides_b9; assert_equal("Freight distance", worksheet.detailed_lever_guides_b9); end
  def test_detailed_lever_guides_h9; assert_equal("In 2050, freight tonne-kms will increase by 140% from 2011.", worksheet.detailed_lever_guides_h9); end
  def test_detailed_lever_guides_i9; assert_equal("Freight tonne-kms remains closely tied to GDP and increase by roughly 140% in road, rail, and shipping.", worksheet.detailed_lever_guides_i9); end
  def test_detailed_lever_guides_j9; assert_equal("In 2050, freight tonne-kms will increase by 100% from 2011.", worksheet.detailed_lever_guides_j9); end
  def test_detailed_lever_guides_k9; assert_equal("Freight tonne-kms remains  increase at a slower rate than GDP and increase by roughly 100% in road, rail, and shipping. This is due to producing products closer to the source of consumption and reducing demand for products such as fuels.", worksheet.detailed_lever_guides_k9); end
  def test_detailed_lever_guides_l9; assert_equal("In 2050, freight tonne-kms will increase by 80% from 2011.", worksheet.detailed_lever_guides_l9); end
  def test_detailed_lever_guides_m9; assert_equal("Freight tonne-kms is decoupled from GDP and increase by roughly 80% in road, rail, and shipping. This is due to producing products closer to the source of consumption and reducing demand for products such as fuels.", worksheet.detailed_lever_guides_m9); end
  def test_detailed_lever_guides_n9; assert_equal("In 2050, freight tonne-kms will increase by 40% from 2011.", worksheet.detailed_lever_guides_n9); end
  def test_detailed_lever_guides_o9; assert_equal("Freight tonne-kms is significantly decoupled from GDP and increase by roughly 40% in road, rail, and shipping. This is due significant reduction in demand as well major technological improvements.", worksheet.detailed_lever_guides_o9); end
  def test_detailed_lever_guides_b10; assert_equal("Mode and occupancy", worksheet.detailed_lever_guides_b10); end
  def test_detailed_lever_guides_h10; assert_equal("In 2050 automobiles are the dominant mode of travel in cities around the world. Most new freight is shipped by road.", worksheet.detailed_lever_guides_h10); end
  def test_detailed_lever_guides_i10; assert_equal("For Automobile cities the mode share by trip is: Car - 68%,   Bus - 14%, Rail - 3%,     2-3W - 2%, Bike - 1%, Walk - 12% . For Transit cities the mode share by trip is: Car - 60%,   Bus - 16%,  Rail - 1%,   2-3W - 3%, Bike - 5%, Walk - 15%. For Booming Cities, the mode share per trip is: Car - 55%,   Bus - 16%,  Rail - 1%,   2-3W - 15%, Bike - 1%, Walk -12%. For rural travel, developed countries will see a mode share of:Car - 86%,   Bus - 4%,  Rail - 4%,   2-3W - 1%, Bike - 1%, Walk -5%; while developing countries will see a mode share of: Car - 50%,   Bus - 9%,  Rail - 8%,   2-3W - 23%, Bike - 2%, Walk -8%. Ground freight will be 80% road and 20% rail globally.", worksheet.detailed_lever_guides_i10); end
  def test_detailed_lever_guides_j10; assert_equal("Automobiles still dominate, but with larger shares of transit and 2-3 wheelers. Focus on rail shipping allows for rail to maintain its current share of ground shipping.", worksheet.detailed_lever_guides_j10); end
  def test_detailed_lever_guides_k10; assert_equal("For Automobile cities the mode share by trip is: Car - 59%,   Bus - 17%,  Rail - 4%,   2-3W - 3%, Bike - 3%, Walk - 14%. For Transit cities the mode share by trip is: Car - 49%,   Bus - 21%,  Rail - 2%,   2-3W - 5%, Bike - 6%, Walk - 17%. For Booming Cities, the mode share per trip is: Car - 40%,   Bus - 21%,  Rail - 1%,   2-3W - 17%, Bike - 6%, Walk - 15%. For rural travel, developed countries will see a mode share of:Car - 73%,   Bus - 8%,  Rail - 9%,   2-3W - 4%, Bike - 1%, Walk - 5%; while developing countries will see a mode share of: Car - 45%,   Bus - 11%,  Rail - 8%,   2-3W - 18%, Bike - 8%, Walk - 10%. Ground freight will be 65% road and 35% rail .", worksheet.detailed_lever_guides_k10); end
  def test_detailed_lever_guides_l10; assert_equal("Transit and 2-3 wheelrs takes a significant share of travel along with biking and walking, those cars are still significant. Rail and waterborne freight take portions of ground shipping.", worksheet.detailed_lever_guides_l10); end
  def test_detailed_lever_guides_m10; assert_equal("For Automobile cities the mode share by trip is: Car - 52%,   Bus - 20%,  Rail - 5%,   2-3W - 5%, Bike - 3%, Walk - 15%. For Transit cities the mode share by trip is: Car - 37%,   Bus - 26%,  Rail - 3%,   2-3W - 8%, Bike -7%, Walk - 19%. For Booming Cities, the mode share per trip is: Car - 30%,   Bus - 25%,  Rail - 2%,   2-3W - 18%, Bike - 7%, Walk - 18%. For rural travel, developed countries will see a mode share of:Car - 67%,   Bus - 12%,  Rail - 11%,   2-3W - 3%, Bike -2%, Walk - 5%; while developing countries will see a mode share of: Car - 33%,   Bus - 20%,  Rail - 10%,   2-3W - 12%, Bike -10%, Walk - 15%. Ground freight will be 44% road and 44% rail,12% waterborne .", worksheet.detailed_lever_guides_m10); end
  def test_detailed_lever_guides_n10; assert_equal("Transit, 2-3 wheelers, cycling and walking are the dominant modes of transport. Rail and waterborne freight take larger portions of ground shipping.", worksheet.detailed_lever_guides_n10); end
  def test_detailed_lever_guides_o10; assert_equal("For Automobile cities the mode share by trip is: Car - 39%,   Bus - 24%,  Rail - 5%,   2-3W - 7%, Bike - 7%, Walk - 18%. For Transit cities the mode share by trip is: Car - 30%,   Bus - 28%,  Rail - 4%,   2-3W - 10%, Bike -8%, Walk - 20%. For Booming Cities, the mode share per trip is: Car - 17%,   Bus - 31%,  Rail - 2%,   2-3W - 20%, Bike -10%, Walk - 20%. For rural travel, developed countries will see a mode share of:Car - 55%,   Bus - 18%,  Rail - 11%,   2-3W - 1%, Bike -4%, Walk - 8%; while developing countries will see a mode share of: Car - 25%,   Bus - 30%,  Rail - 15%,   2-3W - 1%, Bike -12%, Walk - 17%. Ground freight will be 36% road and 47% rail; 17% waterborne.", worksheet.detailed_lever_guides_o10); end
  def test_detailed_lever_guides_b11; assert_equal("Efficiency", worksheet.detailed_lever_guides_b11); end
  def test_detailed_lever_guides_h11; assert_equal("Limited improvement, with most transport modes decreasing their energy intensity by 0.5% annually. ", worksheet.detailed_lever_guides_h11); end
  def test_detailed_lever_guides_i11; assert_equal("Limited improvement, with most transport modes decreasing their energy intensity by 0.5% annually. ", worksheet.detailed_lever_guides_i11); end
  def test_detailed_lever_guides_j11; assert_equal("The pace of improvement doubles from level 1, with most transport modes decreasing their energy intensity by 1% annually or ~1/3 over 40 years.", worksheet.detailed_lever_guides_j11); end
  def test_detailed_lever_guides_k11; assert_equal("The pace of improvement doubles from level 1, with most transport modes decreasing their energy intensity by 1% annually or ~1/3 over 40 years.", worksheet.detailed_lever_guides_k11); end
  def test_detailed_lever_guides_l11; assert_equal("The pace of improvement is significant, with most transport modes decreasing their energy intensity by ~2% annually or ~50% over 40 years.", worksheet.detailed_lever_guides_l11); end
  def test_detailed_lever_guides_m11; assert_equal("The pace of improvement is significant, with most transport modes decreasing their energy intensity by ~2% annually or ~50% over 40 years.", worksheet.detailed_lever_guides_m11); end
  def test_detailed_lever_guides_n11; assert_equal("The pace of improvement is extreme, with most transport modes decreasing their energy intensity by ~3% annually or ~70% over 40 years.", worksheet.detailed_lever_guides_n11); end
  def test_detailed_lever_guides_o11; assert_equal("The pace of improvement is extreme, with most transport modes decreasing their energy intensity by ~3% annually or ~70% over 40 years.", worksheet.detailed_lever_guides_o11); end
  def test_detailed_lever_guides_b12; assert_equal("Electric and hydrogen", worksheet.detailed_lever_guides_b12); end
  def test_detailed_lever_guides_h12; assert_equal("Limited electrification occurs, with  10% hybrids and 2% electric for passenger cars, and  5% hybrids and 5% electric for heavy duty vehicles.", worksheet.detailed_lever_guides_h12); end
  def test_detailed_lever_guides_i12; assert_equal("Limited electrification occurs, with  10% hybrids and 2% electric for passenger cars, and  5% hybrids and 5% electric for heavy duty vehicles.", worksheet.detailed_lever_guides_i12); end
  def test_detailed_lever_guides_j12; assert_equal("Electrification increases, with 20% hybrids and 5% electric for passenger cars, and  10% hybrids and 3 to 5% electric for trucks.", worksheet.detailed_lever_guides_j12); end
  def test_detailed_lever_guides_k12; assert_equal("Electrification increases, with 50% hybrids and 30% electric for passenger cars, and  10% hybrids and 3 to 5% electric for trucks.", worksheet.detailed_lever_guides_k12); end
  def test_detailed_lever_guides_l12; assert_equal("Large electrification with 20% hybrids and 30% electric for passenger cars, and H2 also taking up to 10%.For trucks, 25% hybrids and 6 to 15% electric depending on their size. ", worksheet.detailed_lever_guides_l12); end
  def test_detailed_lever_guides_m12; assert_equal("Large electrification with 30% hybrids and 50% electric for passenger cars, and H2 also taking up to 20%.For trucks, 15% hybrids and 6 to 15% electric depending on their size. 15% of trucks are also running on H2.", worksheet.detailed_lever_guides_m12); end
  def test_detailed_lever_guides_n12; assert_equal("Massive electrification with 10% hybrids, 70% electric and 20% H2 for passenger cars.For trucks, 25% hybrids while 10 % are full electric.", worksheet.detailed_lever_guides_n12); end
  def test_detailed_lever_guides_o12; assert_equal("Massive electrification with 10% hybrids, 70% electric and 20% H2 for passenger cars.For trucks, 25% hybrids while 10 % are full electric.", worksheet.detailed_lever_guides_o12); end
  def test_detailed_lever_guides_b13; assert_equal("Building size", worksheet.detailed_lever_guides_b13); end
  def test_detailed_lever_guides_d13; assert_equal("In 2011 the average house floor area is 92 square meters per household and the average services building floor area is 5 meters squared per person", worksheet.detailed_lever_guides_d13); end
  def test_detailed_lever_guides_e13; assert_equal("In 2050 the average house floor area will be 0.0000000105 M ha per householdthe average services building floor area will be 0 M ha pre capita", worksheet.detailed_lever_guides_e13); end
  def test_detailed_lever_guides_h13; assert_equal("In 2050 the average home will have a floor area of 110 square meters and the average non-residential building floor area will be 11 square meters per capita", worksheet.detailed_lever_guides_h13); end
  def test_detailed_lever_guides_i13; assert_equal("In 2050 the average home will have a floor area of 110 square meters and the average non-residential building floor area will be 11 square meters per capita This is the same level of West Europe", worksheet.detailed_lever_guides_i13); end
  def test_detailed_lever_guides_j13; assert_equal("In 2050 the average home will have a floor area of 105 square meters and the average non-residential building floor area will be 8 square meters per capita", worksheet.detailed_lever_guides_j13); end
  def test_detailed_lever_guides_k13; assert_equal("In 2050 the average home will have a floor area of 105 square meters and the average non-residential building floor area will be 8 square meters per capita This is a little lower than the level of West Europe", worksheet.detailed_lever_guides_k13); end
  def test_detailed_lever_guides_l13; assert_equal("In 2050 the average home will have a floor area of 100 square meters and the average non-residential building floor area will be 6 square meters per capita", worksheet.detailed_lever_guides_l13); end
  def test_detailed_lever_guides_m13; assert_equal("In 2050 the average home will have a floor area of 100 square meters and the average non-residential building floor area will be 6 square meters per capita This is the same level of South Europe, like Spain", worksheet.detailed_lever_guides_m13); end
  def test_detailed_lever_guides_n13; assert_equal("In 2050 the average home will have a floor area of 95 square meters and the average non-residential building floor area will be 5 square meters per capita", worksheet.detailed_lever_guides_n13); end
  def test_detailed_lever_guides_o13; assert_equal("In 2050 the average home will have a floor area of 95 square meters and the average non-residential building floor area will be 5 square meters per capita This is the same level of OECD average, like Japan", worksheet.detailed_lever_guides_o13); end
  def test_detailed_lever_guides_b14; assert_equal("Temperature & hot water use", worksheet.detailed_lever_guides_b14); end
  def test_detailed_lever_guides_d14; assert_equal("In 2011 the average house inner temperature is 17.5 ℃ for urban residential, 13 ℃ for rural residential and 20 ℃ for non-residential in winter. In summer the average house inner temperauture is 26.5 ℃,29℃ and 23℃ respecitvely. The hot water demand is about 18262.5 l per y per capita", worksheet.detailed_lever_guides_d14); end
  def test_detailed_lever_guides_e14; assert_equal("In 2050 the average house inner temperature will be 19 ℃ and the services will be 21 ℃ in winter and 25 ℃, 24 ℃ in summer. The hot water demand will be 20088.75 l per y per capita", worksheet.detailed_lever_guides_e14); end
  def test_detailed_lever_guides_h14; assert_equal("In 2050 the average house inner temperature will be 20 ℃ and the services will be 23 ℃ in winter and 24 ℃, 23 ℃ in summer. The hot water demand will be 21915 l per y per capita", worksheet.detailed_lever_guides_h14); end
  def test_detailed_lever_guides_j14; assert_equal("In 2050 the average house inner temperature will be 19 ℃ and the services will be 21 ℃ in winter and 25 ℃, 24 ℃ in summer. The hot water demand will be 20088.75 l per y per capita", worksheet.detailed_lever_guides_j14); end
  def test_detailed_lever_guides_l14; assert_equal("In 2050 the average house inner temperature will be 18 ℃ and the services will be 20 ℃ in winter and 26 ℃, 25 ℃ in summer. The hot water demand will be 18262.5 l per y per capita", worksheet.detailed_lever_guides_l14); end
  def test_detailed_lever_guides_n14; assert_equal("In 2050 the average house inner temperature will be 17 ℃ and the services will be 19 ℃ in winter and 27 ℃, 26 ℃ in summer. The hot water demand will be 14610 l per y per capita", worksheet.detailed_lever_guides_n14); end
  def test_detailed_lever_guides_b15; assert_equal("Lighting, cooking & appliance use", worksheet.detailed_lever_guides_b15); end
  def test_detailed_lever_guides_d15; assert_equal("In 2011 the average household owns 1 refrigerators, 0.3 dishwashers, 0.8 clothes washers, 0.3 clothes dryers, 1.6 TV. And will own 20 bulbs.", worksheet.detailed_lever_guides_d15); end
  def test_detailed_lever_guides_e15; assert_equal("In 2050 the average household will own 1.1 refrigerator, 0.4 dishwasher, 0.9 clothes washers, 0.3 clothes dryers, 2 TV, 2.4 miscellaneous. And will own 35 bulbs.", worksheet.detailed_lever_guides_e15); end
  def test_detailed_lever_guides_h15; assert_equal("In 2050 the average household will own 1.4 refrigerator, 0.5 dishwasher, 1.2 clothwasher, 0.4 clothdryer, 2.4 TV, 3 miscellaneous.  And will own 40 bulbs.", worksheet.detailed_lever_guides_h15); end
  def test_detailed_lever_guides_j15; assert_equal("In 2050 the average household will own 1.1 refrigerator, 0.4 dishwasher, 0.9 clothwasher, 0.3 clothdryer, 2 TV, 2.4 miscellaneous.   And will own 35 bulbs.", worksheet.detailed_lever_guides_j15); end
  def test_detailed_lever_guides_l15; assert_equal("In 2050 the average household will own 1 refrigerator, 0.3 dishwasher, 0.8 clothwasher, 0.3 clothdryer, 1.6 TV, 2 miscellaneous.   And will own 30 bulbs.", worksheet.detailed_lever_guides_l15); end
  def test_detailed_lever_guides_n15; assert_equal("In 2050 the average household will own 0.8 refrigerator, 0.3 dishwasher, 0.6 clothwasher, 0.2 clothdryer, 1.3 TV, 1.6 miscellaneous.   And will own 25 bulbs.", worksheet.detailed_lever_guides_n15); end
  def test_detailed_lever_guides_b16; assert_equal("Building insulation", worksheet.detailed_lever_guides_b16); end
  def test_detailed_lever_guides_d16; assert_equal("In 2011 the average heat loss coefficient of buildings is 15 GW/(M ha*℃)", worksheet.detailed_lever_guides_d16); end
  def test_detailed_lever_guides_e16; assert_equal("In 2050 the average heat loss coefficient of buildings will be 10.2 GW/(M ha*℃), the thermal performance of building will improved by 32%", worksheet.detailed_lever_guides_e16); end
  def test_detailed_lever_guides_h16; assert_equal("In 2050 the average heat loss coefficient of buildings will be 12 GW/(M ha*℃), the thermal performance of building will improved by 20%", worksheet.detailed_lever_guides_h16); end
  def test_detailed_lever_guides_j16; assert_equal("In 2050 the average heat loss coefficient of buildings will be 9 GW/(M ha*℃), the thermal performance of building will improved by 40%", worksheet.detailed_lever_guides_j16); end
  def test_detailed_lever_guides_l16; assert_equal("In 2050 the average heat loss coefficient of buildings will be 6 GW/(M ha*℃), the thermal performance of building will improved by 60%", worksheet.detailed_lever_guides_l16); end
  def test_detailed_lever_guides_n16; assert_equal("In 2050 the average heat loss coefficient of buildings will be 4 GW/(M ha*℃), the thermal performance of building will be improved by 73%", worksheet.detailed_lever_guides_n16); end
  def test_detailed_lever_guides_b17; assert_equal("Temperature, cooking & lighting technology", worksheet.detailed_lever_guides_b17); end
  def test_detailed_lever_guides_d17; assert_equal("In 2011 the heating techology structure will be 2% solid boiler, 14% liquid boiler, 55% gas boiler, 2% heatpump, 8% electricity heater, 0% solar heater, 2% microchp, 17% districtheating. The cooling structure will be 100% aircondition, 0% chiller, 0% solar cooling. The cooking technology structure will be8% solid stoves, 15% liquid stoves, 40% gas stoves, 25% electricity stoves, 12% traditional biomass stoves. The lighting techonlogy structure will be 72% incandescents, 3% halogens, 25% CFLs, 0% LEDs. ", worksheet.detailed_lever_guides_d17); end
  def test_detailed_lever_guides_e17; assert_equal("In 2050 the heating techology structure will be 2% solid boiler, 10% liquid boiler, 38% gas boiler, 3% heatpump, 8% electricity heater, 0% solar heater, 4% microchp, 36% districtheating. The cooling structure will be 89% aircondition, 4% chiller, 8% solar cooling. The cooking technology structure will be7% solid stoves, 12% liquid stoves, 45% gas stoves, 28% electricity stoves, 9% traditional biomass stoves. The lighting techonlogy structure will be 60% incandescents, 3% halogens, 35% CFLs, 3% LEDs. ", worksheet.detailed_lever_guides_e17); end
  def test_detailed_lever_guides_h17; assert_equal("In 2050 the heating techology structure will be 2% solid boiler, 14% liquid boiler, 55% gas boiler, 2% heatpump, 8% electricity heater, 0% solar heater, 2% microchp, 17% districtheating. The cooling structure will be 93% aircondition, 2% chiller, 5% solar cooling. The cooking technology structure will be8% solid stoves, 15% liquid stoves, 40% gas stoves, 25% electricity stoves, 12% traditional biomass stoves. The lighting techonlogy structure will be 72% incandescents, 3% halogens, 25% CFLs, 0% LEDs. ", worksheet.detailed_lever_guides_h17); end
  def test_detailed_lever_guides_j17; assert_equal("In 2050 the heating techology structure will be 2% solid boiler, 6% liquid boiler, 20% gas boiler, 4% heatpump, 8% electricity heater, 1% solar heater, 5% microchp, 55% districtheating. The cooling structure will be 85% aircondition, 5% chiller, 10% solar cooling. The cooking technology structure will be6% solid stoves, 8% liquid stoves, 50% gas stoves, 30% electricity stoves, 6% traditional biomass stoves. The lighting techonlogy structure will be 48% incandescents, 2% halogens, 45% CFLs, 5% LEDs. ", worksheet.detailed_lever_guides_j17); end
  def test_detailed_lever_guides_l17; assert_equal("In 2050 the heating techology structure will be 1% solid boiler, 3% liquid boiler, 50% gas boiler, 15% heatpump, 10% electricity heater, 1% solar heater, 10% microchp, 10% districtheating. The cooling structure will be 75% aircondition, 10% chiller, 15% solar cooling. The cooking technology structure will be4% solid stoves, 3% liquid stoves, 45% gas stoves, 45% electricity stoves, 3% traditional biomass stoves. The lighting techonlogy structure will be 18% incandescents, 2% halogens, 45% CFLs, 35% LEDs. ", worksheet.detailed_lever_guides_l17); end
  def test_detailed_lever_guides_n17; assert_equal("In 2050 the heating techology structure will be 0% solid boiler, 1% liquid boiler, 20% gas boiler, 40% heatpump, 10% electricity heater, 10% solar heater, 11% microchp, 8% districtheating. The cooling structure will be 65% aircondition, 15% chiller, 20% solar cooling. The cooking technology structure will be2% solid stoves, 1% liquid stoves, 40% gas stoves, 57% electricity stoves, 1% traditional biomass stoves. The lighting technology structure will be 0% incandescents, 1% halogens, 34% CFLs, 65% LEDs. ", worksheet.detailed_lever_guides_n17); end
  def test_detailed_lever_guides_b18; assert_equal("Appliance efficiency", worksheet.detailed_lever_guides_b18); end
  def test_detailed_lever_guides_d18; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.0000001 GW, dishwasher 0.0000015 GW, clothwasher 0.0000007 GW, clothdryer 0.0000015 GW, TV 0.00000025 GW, miscellaneous 0.0000001 GW.", worksheet.detailed_lever_guides_d18); end
  def test_detailed_lever_guides_e18; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.00000008 GW improved by 20%, dishwasher 0.0000012 GW improved by 20%, clothwasher 0.00000056 GW improved by 20%, clothdryer 0.0000012 GW improved by 20%, TV 0.0000002 GW improved by 20%, miscellaneous 0.00000008 GW improved by 20%.", worksheet.detailed_lever_guides_e18); end
  def test_detailed_lever_guides_h18; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.00000008 GW improved by 20%, dishwasher 0.0000012 GW improved by 20%, clothwasher 0.00000056 GW improved by 20%, clothdryer 0.0000012 GW improved by 20%, TV 0.0000002 GW improved by 20%, miscellaneous 0.00000008 GW improved by 20%.", worksheet.detailed_lever_guides_h18); end
  def test_detailed_lever_guides_j18; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.000000065 GW improved by 35%, dishwasher 0.000000975 GW improved by 35%, clothwasher 0.000000455 GW improved by 35%, clothdryer 0.000000975 GW improved by 35%, TV 0.0000001625 GW improved by 35%, miscellaneous 0.000000065 GW improved by 35%.", worksheet.detailed_lever_guides_j18); end
  def test_detailed_lever_guides_l18; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.00000005 GW improved by 50%, dishwasher 0.00000075 GW improved by 50%, clothwasher 0.00000035 GW improved by 50%, clothdryer 0.00000075 GW improved by 50%, TV 0.000000125 GW improved by 50%, miscellaneous 0.00000005 GW improved by 50%.", worksheet.detailed_lever_guides_l18); end
  def test_detailed_lever_guides_n18; assert_equal("In 2050 the appliances efficiency will be refrigerator 0.000000035 GW improved by 65%, dishwasher 0.000000525 GW improved by 65%, clothwasher 0.000000245 GW improved by 65%, clothdryer 0.000000525 GW improved by 65%, TV 0.000000105 GW improved by 58%, miscellaneous 0.000000035 GW improved by 65%.", worksheet.detailed_lever_guides_n18); end
  def test_detailed_lever_guides_b19; assert_equal("Demand for products", worksheet.detailed_lever_guides_b19); end
  def test_detailed_lever_guides_d19; assert_equal("Demand for products leads to the production of 8.4Gt of materials, that is: 1.5Gt of crude steel, 0.1Gt of aluminium, 0.8Gt of chemicals, 0.6Gt of paper, 0.8Gt of timber, 1Gt of other materials, & 0.8Gt of cement", worksheet.detailed_lever_guides_d19); end
  def test_detailed_lever_guides_e19; assert_equal("Demand for products leads to the production of 15.3Gt of materials, that is: 2.8Gt of crude steel, 0.2Gt of aluminium, 1.3Gt of chemicals, 0.9Gt of paper, 1.3Gt of timber, 2.3Gt of other materials, & 1.3Gt of cement", worksheet.detailed_lever_guides_e19); end
  def test_detailed_lever_guides_g19; assert_equal("Will be overriden by the product demand specified by the other sectors", worksheet.detailed_lever_guides_g19); end
  def test_detailed_lever_guides_h19; assert_equal("Product demand correlated to historical projections and GDP projection.  Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods increase (paper+10%, metals goods +20%, packaging +10%)\r\nThere is no development in product reuse nor recycling (product life time of cars is 12,5y, of TV 5y, of appliances 7y)", worksheet.detailed_lever_guides_h19); end
  def test_detailed_lever_guides_i19; assert_equal("Product demand correlated to historical projections and GDP projection.  Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods increase (paper+10%, metals goods +20%, packaging +10%)\r\nThere is no development in product reuse nor recycling (product life time of cars is 12,5y, of TV 5y, of appliances 7y)", worksheet.detailed_lever_guides_i19); end
  def test_detailed_lever_guides_j19; assert_equal("Consumer product demand  reaches worldwide current EU levels then flattens. Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods stabilize (paper+0%, metals goods +10%, packaging +0%)Moderate development in product reuse and recycling  (product life time of cars is 13,7y, of TV 7y, of appliances 10y)", worksheet.detailed_lever_guides_j19); end
  def test_detailed_lever_guides_k19; assert_equal("Consumer product demand  reaches worldwide current EU levels then flattens. Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods stabilize (paper+0%, metals goods +10%, packaging +0%)\r\nModerate development in product reuse and recycling  (product life time of cars is 13,7y, of TV 7y, of appliances 10y)", worksheet.detailed_lever_guides_k19); end
  def test_detailed_lever_guides_l19; assert_equal("Consumers  product demand remains constant (increases in some parts of the  world balances decreases in other). Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods decrease (paper-10%, metals goods -10%, packaging -10%)Significant development in product reuse and recycling   (product life time of cars is 15y, of TV 10y, of appliances 15y)", worksheet.detailed_lever_guides_l19); end
  def test_detailed_lever_guides_m19; assert_equal("Consumers  product demand remains constant (increases in some parts of the  world balances decreases in other). Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods decrease (paper-10%, metals goods -10%, packaging -10%)\r\nSignificant development in product reuse and recycling   (product life time of cars is 15y, of TV 10y, of appliances 15y)", worksheet.detailed_lever_guides_m19); end
  def test_detailed_lever_guides_n19; assert_equal("Consumers buy fewer goods (e.g. they are higher value but less resource intensive). Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods decrease (paper-20%, metals goods -20%, packaging -20%)Product demand not correlated to GDP increase  (product life time of cars is 16,2y, of TV 20y, of appliances 20y)", worksheet.detailed_lever_guides_n19); end
  def test_detailed_lever_guides_o19; assert_equal("Consumers buy fewer goods (e.g. they are higher value but less resource intensive). Buildings, infrastructure & transport product demand are defined by the other sectors. Consumers goods decrease (paper-20%, metals goods -20%, packaging -20%)\r\nProduct demand not correlated to GDP increase  (product life time of cars is 16,2y, of TV 20y, of appliances 20y)", worksheet.detailed_lever_guides_o19); end
  def test_detailed_lever_guides_b20; assert_equal("Design, material switch & recycling", worksheet.detailed_lever_guides_b20); end
  def test_detailed_lever_guides_d20; assert_equal("Demand for products leads to the production of 8.4Gt of materials", worksheet.detailed_lever_guides_d20); end
  def test_detailed_lever_guides_e20; assert_equal("Products design leads to the reduction of -1% of materials in 2050", worksheet.detailed_lever_guides_e20); end
  def test_detailed_lever_guides_g20; assert_equal("/", worksheet.detailed_lever_guides_g20); end
  def test_detailed_lever_guides_h20; assert_equal("No product & material design improvements (leading to less materials to make the products)No switch to less CO2 intensive materialsContinued use of recycled products/materials (chemicals +8% non recycled becomes recycled)", worksheet.detailed_lever_guides_h20); end
  def test_detailed_lever_guides_i20; assert_equal("No product & material design improvements (leading to less materials to make the products)\r\nNo switch to less CO2 intensive materials\r\nContinued use of recycled products/materials (chemicals +8% non recycled becomes recycled)", worksheet.detailed_lever_guides_i20); end
  def test_detailed_lever_guides_j20; assert_equal("Some product & material design (10% less materials to make the products)Minor material switchesMinor increase in non recycled which will get recycled (Steel +15%, Chemicals 16%, Aluminium +10%, Paper +9%)", worksheet.detailed_lever_guides_j20); end
  def test_detailed_lever_guides_k20; assert_equal("Some product & material design (10% less materials to make the products)\r\nMinor material switches\r\nMinor increase in non recycled which will get recycled (Steel +15%, Chemicals 16%, Aluminium +10%, Paper +9%)", worksheet.detailed_lever_guides_k20); end
  def test_detailed_lever_guides_l20; assert_equal("Important product & material design investments (19% less material to make the products)Significant material switchesSignificant increase in non recycled which will get recycled (Steel +30%, Chemicals +24%, Aluminium +20%, Paper +24%)", worksheet.detailed_lever_guides_l20); end
  def test_detailed_lever_guides_m20; assert_equal("Important product & material design investments (19% less material to make the products)\r\nSignificant material switches\r\nSignificant increase in non recycled which will get recycled (Steel +30%, Chemicals +24%, Aluminium +20%, Paper +24%)", worksheet.detailed_lever_guides_m20); end
  def test_detailed_lever_guides_n20; assert_equal("Significantly less materials needed to produce products.Important material switchesImportant increase in non-recycled which will get recycled (Steel+65%, Chemicals +32%, Aluminium +40%, Paper +39%)", worksheet.detailed_lever_guides_n20); end
  def test_detailed_lever_guides_o20; assert_equal("Significantly less materials needed to produce products.\r\nImportant material switches\r\nImportant increase in non-recycled which will get recycled (Steel+65%, Chemicals +32%, Aluminium +40%, Paper +39%)", worksheet.detailed_lever_guides_o20); end
  def test_detailed_lever_guides_b21; assert_equal("Iron, steel & aluminium", worksheet.detailed_lever_guides_b21); end
  def test_detailed_lever_guides_d21; assert_equal("Specific emissions for Steel of 2GtCO2 per Gt of materials& for Aluminium of 0.9GtCO2 per Gt of materials", worksheet.detailed_lever_guides_d21); end
  def test_detailed_lever_guides_e21; assert_equal("Specific emissions for Steel reduce/increase by -2%& for Aluminium  by of -2%", worksheet.detailed_lever_guides_e21); end
  def test_detailed_lever_guides_g21; assert_equal("/", worksheet.detailed_lever_guides_g21); end
  def test_detailed_lever_guides_h21; assert_equal("Continued use of  current processes & technologiesContinued use of fuelsMinimal improvements in Energy efficiencyEmissions per ton reduce by 8% for steel & 0% for aluminium", worksheet.detailed_lever_guides_h21); end
  def test_detailed_lever_guides_i21; assert_equal("Continued use of  current processes & technologies\r\nContinued use of fuels\r\nMinimal improvements in Energy efficiency\r\nEmissions per ton reduce by 8% for steel & 0% for aluminium", worksheet.detailed_lever_guides_i21); end
  def test_detailed_lever_guides_j21; assert_equal("Moderate effort easily reached according to most expertsEquivalent to the development of recent programs for some sectors Emissions per ton reduce by 16% for steel and increase by 4% for aluminium", worksheet.detailed_lever_guides_j21); end
  def test_detailed_lever_guides_k21; assert_equal("Moderate effort easily reached according to most experts\r\nEquivalent to the development of recent programs for some sectors \r\nEmissions per ton reduce by 16% for steel and increase by 4% for aluminium", worksheet.detailed_lever_guides_k21); end
  def test_detailed_lever_guides_l21; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investmentsEmissions per ton reduce by 19% for steel & 8% for aluminium", worksheet.detailed_lever_guides_l21); end
  def test_detailed_lever_guides_m21; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investments\r\nEmissions per ton reduce by 19% for steel & 8% for aluminium", worksheet.detailed_lever_guides_m21); end
  def test_detailed_lever_guides_n21; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)Emissions per ton reduce by x%", worksheet.detailed_lever_guides_n21); end
  def test_detailed_lever_guides_o21; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)\r\nEmissions per ton reduce by x%", worksheet.detailed_lever_guides_o21); end
  def test_detailed_lever_guides_b22; assert_equal("Chemicals", worksheet.detailed_lever_guides_b22); end
  def test_detailed_lever_guides_d22; assert_equal("Specific emissions for chemicals of 1.7GtCO2 per Gt of materials", worksheet.detailed_lever_guides_d22); end
  def test_detailed_lever_guides_e22; assert_equal("Specific emissions for chemicals reduce/increase by 1%", worksheet.detailed_lever_guides_e22); end
  def test_detailed_lever_guides_h22; assert_equal("Continued use of  current processes & technologiesContinued use of fuelsMinimal improvements in Energy efficiencyEmissions per ton reduce by 1% for chemicals", worksheet.detailed_lever_guides_h22); end
  def test_detailed_lever_guides_i22; assert_equal("Continued use of  current processes & technologies\r\nContinued use of fuels\r\nMinimal improvements in Energy efficiency\r\nEmissions per ton reduce by 1% for chemicals", worksheet.detailed_lever_guides_i22); end
  def test_detailed_lever_guides_j22; assert_equal("Moderate effort easily reached according to most expertsEquivalent to the development of recent programs for some sectors Emissions per ton decrease by 3%", worksheet.detailed_lever_guides_j22); end
  def test_detailed_lever_guides_k22; assert_equal("Moderate effort easily reached according to most experts\r\nEquivalent to the development of recent programs for some sectors \r\nEmissions per ton decrease by 3%", worksheet.detailed_lever_guides_k22); end
  def test_detailed_lever_guides_l22; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investmentsEmissions per ton reduce by 7%", worksheet.detailed_lever_guides_l22); end
  def test_detailed_lever_guides_m22; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investments\r\nEmissions per ton reduce by 7%", worksheet.detailed_lever_guides_m22); end
  def test_detailed_lever_guides_n22; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)Emissions per ton reduce by x%", worksheet.detailed_lever_guides_n22); end
  def test_detailed_lever_guides_o22; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)\r\nEmissions per ton reduce by x%", worksheet.detailed_lever_guides_o22); end
  def test_detailed_lever_guides_b23; assert_equal("Paper and other", worksheet.detailed_lever_guides_b23); end
  def test_detailed_lever_guides_d23; assert_equal("Specific emissions for Pulp & paper of 0.5GtCO2 per Gt of materials& for other materials of 2.2GtCO2 per Gt of materials", worksheet.detailed_lever_guides_d23); end
  def test_detailed_lever_guides_e23; assert_equal("Specific emissions for Pulp & paper reduce/increase by -18%& for other materials by -18%", worksheet.detailed_lever_guides_e23); end
  def test_detailed_lever_guides_h23; assert_equal("Continued use of  current processes & technologiesContinued use of fuelsMinimal improvements in Energy efficiencyEmissions per ton increase by 1% for Paper and 2% for others materials", worksheet.detailed_lever_guides_h23); end
  def test_detailed_lever_guides_i23; assert_equal("Continued use of  current processes & technologies\r\nContinued use of fuels\r\nMinimal improvements in Energy efficiency\r\nEmissions per ton increase by 1% for Paper and 2% for others materials", worksheet.detailed_lever_guides_i23); end
  def test_detailed_lever_guides_j23; assert_equal("Moderate effort easily reached according to most expertsEquivalent to the development of recent programs for some sectors Emissions per ton reduce by 21% for pulp & paper & 24% for other materials", worksheet.detailed_lever_guides_j23); end
  def test_detailed_lever_guides_k23; assert_equal("Moderate effort easily reached according to most experts\r\nEquivalent to the development of recent programs for some sectors \r\nEmissions per ton reduce by 21% for pulp & paper & 24% for other materials", worksheet.detailed_lever_guides_k23); end
  def test_detailed_lever_guides_l23; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investmentsEmissions per ton reduce by 33% for pulp & paper & 37% for other materials", worksheet.detailed_lever_guides_l23); end
  def test_detailed_lever_guides_m23; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investments\r\nEmissions per ton reduce by 33% for pulp & paper & 37% for other materials", worksheet.detailed_lever_guides_m23); end
  def test_detailed_lever_guides_n23; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)Emissions per ton reduce by x%", worksheet.detailed_lever_guides_n23); end
  def test_detailed_lever_guides_o23; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)\r\nEmissions per ton reduce by x%", worksheet.detailed_lever_guides_o23); end
  def test_detailed_lever_guides_b24; assert_equal("Cement", worksheet.detailed_lever_guides_b24); end
  def test_detailed_lever_guides_d24; assert_equal("Specific emissions for cement of 0.6GtCO2 per Gt of materials", worksheet.detailed_lever_guides_d24); end
  def test_detailed_lever_guides_e24; assert_equal("Specific emissions for cement reduce/increase by -3%", worksheet.detailed_lever_guides_e24); end
  def test_detailed_lever_guides_h24; assert_equal("Continued use of  current processes & technologiesContinued use of fuelsMinimal improvements in Energy efficiencyEmissions per ton reduce by 2% for cement", worksheet.detailed_lever_guides_h24); end
  def test_detailed_lever_guides_i24; assert_equal("Continued use of  current processes & technologies\r\nContinued use of fuels\r\nMinimal improvements in Energy efficiency\r\nEmissions per ton reduce by 2% for cement", worksheet.detailed_lever_guides_i24); end
  def test_detailed_lever_guides_j24; assert_equal("Moderate effort easily reached according to most expertsEquivalent to the development of recent programs for some sectors Emissions per ton reduce by 5%", worksheet.detailed_lever_guides_j24); end
  def test_detailed_lever_guides_k24; assert_equal("Moderate effort easily reached according to most experts\r\nEquivalent to the development of recent programs for some sectors \r\nEmissions per ton reduce by 5%", worksheet.detailed_lever_guides_k24); end
  def test_detailed_lever_guides_l24; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investmentsEmissions per ton reduce by 9%", worksheet.detailed_lever_guides_l24); end
  def test_detailed_lever_guides_m24; assert_equal("Significant technology progress, fuel switch towards biomass & electrification)  & energy efficiency requiring important financial investments\r\nEmissions per ton reduce by 9%", worksheet.detailed_lever_guides_m24); end
  def test_detailed_lever_guides_n24; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)Emissions per ton reduce by x%", worksheet.detailed_lever_guides_n24); end
  def test_detailed_lever_guides_o24; assert_equal("Maximum technology progress, fuel switch (towards biomass & electrification) & energy efficiency close to technical and physical constraints (but limited breakthrough technologies)\r\nEmissions per ton reduce by x%", worksheet.detailed_lever_guides_o24); end
  def test_detailed_lever_guides_b25; assert_equal("Carbon capture and storage", worksheet.detailed_lever_guides_b25); end
  def test_detailed_lever_guides_d25; assert_equal("No large scale CCS implemented in industry", worksheet.detailed_lever_guides_d25); end
  def test_detailed_lever_guides_e25; assert_equal("CCS enables a -9% CO2 reduction (excluding electricity emissions & counting biomass as fossil fuel) and an 2EJ electricity consumption increase", worksheet.detailed_lever_guides_e25); end
  def test_detailed_lever_guides_g25; assert_equal("/", worksheet.detailed_lever_guides_g25); end
  def test_detailed_lever_guides_h25; assert_equal("No CCS development", worksheet.detailed_lever_guides_h25); end
  def test_detailed_lever_guides_i25; assert_equal("No CCS development", worksheet.detailed_lever_guides_i25); end
  def test_detailed_lever_guides_j25; assert_equal("CCS development as of 2030 progressively on very large installations leading to a reduction of 15% of emissions  (excluding electricity emissions & counting biomass as fossil fuel). It also implies a 646 TWh additional electricity consumption.", worksheet.detailed_lever_guides_j25); end
  def test_detailed_lever_guides_k25; assert_equal("CCS development as of 2030 progressively on very large installations leading to a reduction of 15% of emissions  (excluding electricity emissions & counting biomass as fossil fuel). It also implies a 646 TWh additional electricity consumption.", worksheet.detailed_lever_guides_k25); end
  def test_detailed_lever_guides_l25; assert_equal("CCS development as of 2030 progressively on large to very large installations  leading to a reduction of 36% of emissions  (excluding electricity emissions & counting biomass as fossil fuel). It also implies a 1078 TWh additional electricity consumption.", worksheet.detailed_lever_guides_l25); end
  def test_detailed_lever_guides_m25; assert_equal("CCS development as of 2030 progressively on large to very large installations  leading to a reduction of 36% of emissions  (excluding electricity emissions & counting biomass as fossil fuel). It also implies a 1078 TWh additional electricity consumption.", worksheet.detailed_lever_guides_m25); end
  def test_detailed_lever_guides_n25; assert_equal("CCS development as of 2030 progressively on medium to very large installations  leading to a reduction of 72% of emissions  (excluding electricity emissions & counting biomass as fossil fuel). It also implies a 1525 TWh additional electricity consumption.", worksheet.detailed_lever_guides_n25); end
  def test_detailed_lever_guides_o25; assert_equal("CCS development as of 2030 progressively on medium to very large installations  leading to a reduction of 72% of emissions  (excluding electricity emissions & counting biomass as fossil fuel). It also implies a 1525 TWh additional electricity consumption.", worksheet.detailed_lever_guides_o25); end
  def test_detailed_lever_guides_b26; assert_equal("Coal (incl. biomass) / oil / gas", worksheet.detailed_lever_guides_b26); end
  def test_detailed_lever_guides_c26; assert_equal("SLG.elec", worksheet.detailed_lever_guides_c26); end
  def test_detailed_lever_guides_d26; assert_equal("In 2011 out of total power supplied by fossil fuels 60.3% was supplied by solid fuel, 8.8% by liquid fuel and 30.9% by gas fuel", worksheet.detailed_lever_guides_d26); end
  def test_detailed_lever_guides_e26; assert_equal("In 2050 out of total fossil energy supplied it is 45.454% of solid, 22.027% of liquid and 32.516% of gas power", worksheet.detailed_lever_guides_e26); end
  def test_detailed_lever_guides_h26; assert_equal("In 2050 out of total fossil energy supplied it is 58.18% of solid, 29.09% of liquid and 12.72% of gas power", worksheet.detailed_lever_guides_h26); end
  def test_detailed_lever_guides_i26; assert_equal("In 2050 out of total fossil energy supplied it is 58.2% of solid, 29.1% of liquid and 12.7% of gas power. For it global Solid/Liquid/Gas historical & future trends, production, consumption, reserves & resources, technologies and country specific SLG growth scenarios were analyzed.", worksheet.detailed_lever_guides_i26); end
  def test_detailed_lever_guides_j26; assert_equal("In 2050 out of total fossil energy supplied it is 40% of solid, 19% of liquid and 41% of gas power", worksheet.detailed_lever_guides_j26); end
  def test_detailed_lever_guides_k26; assert_equal("In 2050 out of total fossil energy supplied it is 40% of solid, 19% of liquid and 41% of gas power. For it global Solid/Liquid/Gas historical & future trends, production, consumption, reserves & resources, technologies and country specific SLG growth scenarios were analyzed.", worksheet.detailed_lever_guides_k26); end
  def test_detailed_lever_guides_l26; assert_equal("In 2050 out of total fossil energy supplied it is 32% of solid, 6% of liquid and 62% of gas power", worksheet.detailed_lever_guides_l26); end
  def test_detailed_lever_guides_m26; assert_equal("In 2050 out of total fossil energy supplied it is 32% of solid, 6% of liquid and 62% of gas power. For it global Solid/Liquid/Gas historical & future trends, production, consumption, reserves & resources, technologies and country specific SLG growth scenarios were analyzed.", worksheet.detailed_lever_guides_m26); end
  def test_detailed_lever_guides_n26; assert_equal("In 2050 out of total fossil energy supplied it is 26.41% of solid, 1.88% of liquid and 71.69% of gas power", worksheet.detailed_lever_guides_n26); end
  def test_detailed_lever_guides_o26; assert_equal("In 2050 out of total fossil energy supplied it is 26.4% of solid, 1.9% of liquid and 71.7% of gas power. For it global Solid/Liquid/Gas historical & future trends, production, consumption, reserves & resources, technologies and country specific SLG growth scenarios were analyzed.", worksheet.detailed_lever_guides_o26); end
  def test_detailed_lever_guides_b27; assert_equal("Fossil fuel efficiency", worksheet.detailed_lever_guides_b27); end
  def test_detailed_lever_guides_d27; assert_equal("In 2011 8% by USC, 17% by SC, 75% by Sub-C, 30% by eff. Liquid, 70% by ineff. Liquid, 35% OCGT and 65% by CCGT", worksheet.detailed_lever_guides_d27); end
  def test_detailed_lever_guides_e27; assert_equal("In 2050 out of fossil energy supplied it is 18.72% by solid USC, 27.69% by solid SC, 53.59% by solid Sub-C, 52.4% by eff. liquid, 47.6% by ineff. liquid, 38.5% by OCGT and 61.5% by CCGT plant", worksheet.detailed_lever_guides_e27); end
  def test_detailed_lever_guides_h27; assert_equal("In 2050 out of total fossil energy supplied it is 14.35% by solid USC, 23.15% by solid SC, 62.4% by solid Sub-C, 32.88% by eff. liquid fuel, 67.11% by ineff. liquid fuel, 61% by OCGT and 39% by CCGT power plant", worksheet.detailed_lever_guides_h27); end
  def test_detailed_lever_guides_i27; assert_equal("In 2050 out of total fossil fuel supplied it is 14.4% by USC, 23.2% by SC, 62.4% by Sub-C, 32.9% by eff. Liquid, 67.1% by ineff. Liquid, 61% OCGT and 39% by CCGT", worksheet.detailed_lever_guides_i27); end
  def test_detailed_lever_guides_j27; assert_equal("In 2050 out of total fossil energy supplied it is 18% by solid USC, 27% by solid SC, 55% by solid Sub-C, 47% by eff. liquid fuel, 53% by ineff. liquid fuel, 47.5% by OCGT and 52.5% by CCGT power plant", worksheet.detailed_lever_guides_j27); end
  def test_detailed_lever_guides_k27; assert_equal("In 2050 out of total fossil fuel supplied it is 18% by USC, 27% by SC, 55% by Sub-C, 47% by eff. Liquid, 53% by ineff. Liquid, 47.5% OCGT and 52.5% by CCGT", worksheet.detailed_lever_guides_k27); end
  def test_detailed_lever_guides_l27; assert_equal("In 2050 out of total fossil energy supplied it is 20.4% by solid USC, 29.3% by solid SC, 50.3% by solid Sub-C, 65% by eff. liquid fuel, 35% by ineff. liquid fuel, 17.5% by OCGT and 82.5% by CCGT power plant", worksheet.detailed_lever_guides_l27); end
  def test_detailed_lever_guides_m27; assert_equal("In 2050 out of total fossil fuel supplied it is 20.4% by USC, 29.3% by SC, 50.3% by Sub-C, 65% by eff. Liquid, 35% by ineff. Liquid, 17.5% OCGT and 82.5% by CCGT", worksheet.detailed_lever_guides_m27); end
  def test_detailed_lever_guides_n27; assert_equal("In 2050 out of total fossil energy supplied it is 23.24% by solid USC, 32.23% by solid SC, 44.62% by solid Sub-C, 71.42% by eff. liquid fuel, 28.57% by ineff. liquid fuel, 7% by OCGT and 93% by CCGT power plant", worksheet.detailed_lever_guides_n27); end
  def test_detailed_lever_guides_o27; assert_equal("In 2050 out of total fossil fuel supplied it is 23.2% by USC, 32.2% by SC, 44.6% by Sub-C, 71.4% by eff. Liquid, 28.6% by ineff. Liquid, 7% OCGT and 93% by CCGT", worksheet.detailed_lever_guides_o27); end
  def test_detailed_lever_guides_b28; assert_equal("Carbon capture and storage", worksheet.detailed_lever_guides_b28); end
  def test_detailed_lever_guides_c28; assert_equal("CCS.elec", worksheet.detailed_lever_guides_c28); end
  def test_detailed_lever_guides_d28; assert_equal("In 2011 most of the CCS projects implemented in power sector were demonstration projects of KW and MW scale. However, there is a CCS pipeline developed by OECD countries (mainly USA and EU). The current timeline is till early 2020s. ", worksheet.detailed_lever_guides_d28); end
  def test_detailed_lever_guides_e28; assert_equal("In 2050 there is 253 GW of CCS installed power capacity", worksheet.detailed_lever_guides_e28); end
  def test_detailed_lever_guides_h28; assert_equal("In 2050 there is 16 GW of CCS installed power capacity", worksheet.detailed_lever_guides_h28); end
  def test_detailed_lever_guides_i28; assert_equal("By 2050 there will be 16 GW of power plants with CCS. No new CCS plants will be commissioned beyond 2020 and the plants commissioned between 2015-2020 will be operatng in 2050 (with or without R&M)", worksheet.detailed_lever_guides_i28); end
  def test_detailed_lever_guides_j28; assert_equal("In 2050 there is 490 GW of CCS installed power capacity", worksheet.detailed_lever_guides_j28); end
  def test_detailed_lever_guides_k28; assert_equal("The expansion is mostly driven by US and EU. But no major driver. Low CCS expansion worldwide with no/ low perticipation from non-OECD countries. 10% of total fossil fuel plants will have CCS by 2050 (BAU scenario)", worksheet.detailed_lever_guides_k28); end
  def test_detailed_lever_guides_l28; assert_equal("In 2050 there is 1487 GW of CCS installed power capacity", worksheet.detailed_lever_guides_l28); end
  def test_detailed_lever_guides_m28; assert_equal("Moderate penetration of CCS in OECD countries and emerging economies. 30% of total fossil fuel based plants have adopted CCS technology by 2050. However, expansion will be low in developing countries. ", worksheet.detailed_lever_guides_m28); end
  def test_detailed_lever_guides_n28; assert_equal("In 2050 there is 3700 GW of CCS installed power capacity", worksheet.detailed_lever_guides_n28); end
  def test_detailed_lever_guides_o28; assert_equal("High CCS expansion in remaining areas worldwide. Around 3900 GW of fossil fuel based electricity generation through CCS based power plants", worksheet.detailed_lever_guides_o28); end
  def test_detailed_lever_guides_b29; assert_equal("Nuclear", worksheet.detailed_lever_guides_b29); end
  def test_detailed_lever_guides_c29; assert_equal("nuclear.elec", worksheet.detailed_lever_guides_c29); end
  def test_detailed_lever_guides_d29; assert_equal("In 2011 the total installed nuclear capacity was 369 GW with 429 operational power plants around the world", worksheet.detailed_lever_guides_d29); end
  def test_detailed_lever_guides_e29; assert_equal("In 2050 there is 502.2 GW of installed nuclear power capacity", worksheet.detailed_lever_guides_e29); end
  def test_detailed_lever_guides_h29; assert_equal("In 2050 there is 0 GW of installed nuclear power capacity.", worksheet.detailed_lever_guides_h29); end
  def test_detailed_lever_guides_i29; assert_equal("In 2050 there is 0 GW of installed nuclear power capacity. China, India and US to be key drivers of nuclear power with continued investments and policy measures. However the growth will be equivalent to the lowest in last five decades", worksheet.detailed_lever_guides_i29); end
  def test_detailed_lever_guides_j29; assert_equal("In 2050 there is 558 GW of installed nuclear power capacity.", worksheet.detailed_lever_guides_j29); end
  def test_detailed_lever_guides_k29; assert_equal("In 2050 there is 558 GW of installed nuclear power capacity. This is equivalent to current global build rates continuing up to 2050.", worksheet.detailed_lever_guides_k29); end
  def test_detailed_lever_guides_l29; assert_equal("In 2050 there is 989 GW of installed nuclear power capacity.", worksheet.detailed_lever_guides_l29); end
  def test_detailed_lever_guides_m29; assert_equal("In 2050 there is 989 GW of installed nuclear power capacity. This is equivalent to global planned build rates over the next decade (till 2020) continuing upto 2050", worksheet.detailed_lever_guides_m29); end
  def test_detailed_lever_guides_n29; assert_equal("In 2050 there is 1870 GW of installed nuclear power capacity.", worksheet.detailed_lever_guides_n29); end
  def test_detailed_lever_guides_o29; assert_equal("In 2050 there is 1870 GW of installed nuclear power capacity. This is equivalent to implementation of all pojects under planning over next decade and highest build rate continuing henceforth till 2050 ", worksheet.detailed_lever_guides_o29); end
  def test_detailed_lever_guides_b30; assert_equal("Wind", worksheet.detailed_lever_guides_b30); end
  def test_detailed_lever_guides_c30; assert_equal("onshore.wind.elec, offshore.wind.elec", worksheet.detailed_lever_guides_c30); end
  def test_detailed_lever_guides_d30; assert_equal("In 2011 there was around 238 GW of onshore wind energy with 83 countries across globe deploying it. In 2011 there was also 3.8 GW of offshore power installed.", worksheet.detailed_lever_guides_d30); end
  def test_detailed_lever_guides_e30; assert_equal("In 2050 there is 1390.2 GW of installed wind power capacity", worksheet.detailed_lever_guides_e30); end
  def test_detailed_lever_guides_h30; assert_equal("In 2050 there is 0 GW of installed wind power capacity", worksheet.detailed_lever_guides_h30); end
  def test_detailed_lever_guides_i30; assert_equal("In 2050 there is 0 GW of onshore wind energy. It builds at a rate of 19.64% till 2013, 8% till 2015, 5% till 2020 with decommissioning in tandem. In 2050 the offshore wind energy is also 0 GW with a build rate of 34.06% by 2015. Post it rate of build up and decommissioning matches each other till 2020 after which it serves it technical lifespan. ", worksheet.detailed_lever_guides_i30); end
  def test_detailed_lever_guides_j30; assert_equal("In 2050 there is 2317 GW of installed wind power capacity", worksheet.detailed_lever_guides_j30); end
  def test_detailed_lever_guides_k30; assert_equal("In 2050 there is 1862 GW of onshore wind energy and 455 GW of offshore wind energy. Different build rates were arrived by technical and geographical analysis.", worksheet.detailed_lever_guides_k30); end
  def test_detailed_lever_guides_l30; assert_equal("In 2050 there is 4710 GW of installed wind power capacity", worksheet.detailed_lever_guides_l30); end
  def test_detailed_lever_guides_m30; assert_equal("In 2050 there is 3800 GW of onshore wind energy and 910 GW of offshore wind energy.Different build rates were arrived by technical and geographical analysis.", worksheet.detailed_lever_guides_m30); end
  def test_detailed_lever_guides_n30; assert_equal("In 2050 there is 6466 GW of installed wind power capacity", worksheet.detailed_lever_guides_n30); end
  def test_detailed_lever_guides_o30; assert_equal("In 2050 there is 5058 GW of onshore wind energy. It builds at a rate of  21% by 2015, 16% by 2020, 8% by 2030, 6% till 2040 and 2% till 2050 whereas 1408 GW of offshore wind energy which builds at a rate of 34.06% till 2020, 20% till 2030, 8% by 2040 and 4% by 2050. ", worksheet.detailed_lever_guides_o30); end
  def test_detailed_lever_guides_b31; assert_equal("Hydroelectric", worksheet.detailed_lever_guides_b31); end
  def test_detailed_lever_guides_c31; assert_equal("hydro.elec", worksheet.detailed_lever_guides_c31); end
  def test_detailed_lever_guides_d31; assert_equal("In 2011 the total installed hydro capacity was 970 GW ", worksheet.detailed_lever_guides_d31); end
  def test_detailed_lever_guides_e31; assert_equal("In 2050 there is 1659.7 GW of installed hydro power capacity", worksheet.detailed_lever_guides_e31); end
  def test_detailed_lever_guides_h31; assert_equal("In 2050 there is 1324 GW of installed hydro power capacity.", worksheet.detailed_lever_guides_h31); end
  def test_detailed_lever_guides_i31; assert_equal("In 2050 there is 1324 GW of installed hydro power capacity. This is equivalent of considering that globally, projects already under planning and construction only to be commissioned.", worksheet.detailed_lever_guides_i31); end
  def test_detailed_lever_guides_j31; assert_equal("In 2050 there is 1697 GW of installed hydro power capacity.", worksheet.detailed_lever_guides_j31); end
  def test_detailed_lever_guides_k31; assert_equal("In 2050 there is 1697 GW of installed hydro power capacity. This is equivalent to steady growth of 1.5% a year.", worksheet.detailed_lever_guides_k31); end
  def test_detailed_lever_guides_l31; assert_equal("In 2050 there is 1912 GW of installed hydro power capacity.", worksheet.detailed_lever_guides_l31); end
  def test_detailed_lever_guides_m31; assert_equal("In 2050 there is 1912 GW of installed hydro power capacity. This is equivalent to steady growth of 2% a year considering continued investment in large hydro and technology upgradation.", worksheet.detailed_lever_guides_m31); end
  def test_detailed_lever_guides_n31; assert_equal("In 2050 there is 2342 GW of installed hydro power capacity.", worksheet.detailed_lever_guides_n31); end
  def test_detailed_lever_guides_o31; assert_equal("In 2050 there is 2342 GW of installed hydro power capacity. This is equivalent to growth rate of 3%. Considering a limiting build rate of 3.55% to realize the entire hydro potential by 2050 ", worksheet.detailed_lever_guides_o31); end
  def test_detailed_lever_guides_b32; assert_equal("Marine", worksheet.detailed_lever_guides_b32); end
  def test_detailed_lever_guides_c32; assert_equal("tidal.elec, wave.elec", worksheet.detailed_lever_guides_c32); end
  def test_detailed_lever_guides_d32; assert_equal("In 2011 there was around 1 GW of tidal power. It has a tremendous global potential with UK having 3000 GW of it. In 2011 there was around 0.01 GW of wave energy which have a global potential of more than 2700 GW", worksheet.detailed_lever_guides_d32); end
  def test_detailed_lever_guides_e32; assert_equal("In 2050 there is 43.6 GW of installed marine power capacity", worksheet.detailed_lever_guides_e32); end
  def test_detailed_lever_guides_h32; assert_equal("In 2050 there is 8 GW of installed marine power capacity", worksheet.detailed_lever_guides_h32); end
  def test_detailed_lever_guides_i32; assert_equal("In 2050 there is 0 GW of tidal energy if not harnessed as the present installation would serve its technical lifespan whereas there will be 8 GW of wave energy", worksheet.detailed_lever_guides_i32); end
  def test_detailed_lever_guides_j32; assert_equal("In 2050 there is 97 GW of installed marine power capacity", worksheet.detailed_lever_guides_j32); end
  def test_detailed_lever_guides_k32; assert_equal("In 2050 there is 35 GW of tidal electricity. The coastal country specific potential was analyzied and build up rate arrived considering partially favorable parameters. Similarly for wave energy of 62 GW till 2050 global potential and technological mapping was undertaken ", worksheet.detailed_lever_guides_k32); end
  def test_detailed_lever_guides_l32; assert_equal("In 2050 there is 237 GW of installed marine power capacity", worksheet.detailed_lever_guides_l32); end
  def test_detailed_lever_guides_m32; assert_equal("In 2050 there is 49 GW of tidal electricity. Build up rate enhanced considering construction time, global technological and environmental factors whereas there will be 105 GW of wave energy based on similar analysis", worksheet.detailed_lever_guides_m32); end
  def test_detailed_lever_guides_n32; assert_equal("In 2050 there is 435.6 GW of installed marine power capacity", worksheet.detailed_lever_guides_n32); end
  def test_detailed_lever_guides_o32; assert_equal("In 2050 there is 64 GW of tidal energy and 143 GW of wave energy. Different build up rate computed considering technical maturity and potential acceptance. ", worksheet.detailed_lever_guides_o32); end
  def test_detailed_lever_guides_b33; assert_equal("Solar", worksheet.detailed_lever_guides_b33); end
  def test_detailed_lever_guides_c33; assert_equal("concentrated.solar.elec, solarpv.elec", worksheet.detailed_lever_guides_c33); end
  def test_detailed_lever_guides_d33; assert_equal("In 2011 there was around 1.59 GW of concentrated solar power with evolution of solar thermal storage technologies in foray. Also, in 2011 there was 28 GW of photovoltaic power.", worksheet.detailed_lever_guides_d33); end
  def test_detailed_lever_guides_e33; assert_equal("In 2050 there is 479.6 GW of installed solar power capacity", worksheet.detailed_lever_guides_e33); end
  def test_detailed_lever_guides_h33; assert_equal("In 2050 there is 0 GW of installed solar power capacity", worksheet.detailed_lever_guides_h33); end
  def test_detailed_lever_guides_i33; assert_equal("In 2050 there is 0 GW of concentrated solar power . The average build up rate is 44.45% till 2015, 43.09% by 2020 after which the rate of decommissioning and technical lifespan will exceed build up rate. In 2050 there is 0 GW of photovoltaic which builds by 18.34% by 2015, 16.58% by 2020 post which rate of decommission & technical life span takes over   ", worksheet.detailed_lever_guides_i33); end
  def test_detailed_lever_guides_j33; assert_equal("In 2050 there is 1199 GW of installed solar power capacity", worksheet.detailed_lever_guides_j33); end
  def test_detailed_lever_guides_k33; assert_equal("In 2050 there is 388 GW of concentrated solar power and 811 GW of photovoltaic. Build up rates computed by analyzing various technologies, barriers and country specific factors  ", worksheet.detailed_lever_guides_k33); end
  def test_detailed_lever_guides_l33; assert_equal("In 2050 there is 3853.7 GW of installed solar power capacity", worksheet.detailed_lever_guides_l33); end
  def test_detailed_lever_guides_m33; assert_equal("In 2050 there is 879 GW of concentrated solar power and 1860 GW of photovoltaic. Build up rates computed by analyzing various factors  ", worksheet.detailed_lever_guides_m33); end
  def test_detailed_lever_guides_n33; assert_equal("In 2050 there is 7546.7 GW of installed solar power capacity", worksheet.detailed_lever_guides_n33); end
  def test_detailed_lever_guides_o33; assert_equal("In 2050 there is 1067 GW of concentrated solar energy. The average build rate is 58% till 2020 where CSP landscape will change to average 8% by 2030 and 6% by 2050. In 2050 there is 3750 GW of photovoltaic with 22.76% till 2020, 15.3% by 2030,8.75% by 2040 and 6% till 2050. ", worksheet.detailed_lever_guides_o33); end
  def test_detailed_lever_guides_b34; assert_equal("Geothermal", worksheet.detailed_lever_guides_b34); end
  def test_detailed_lever_guides_c34; assert_equal("geothermal.elec", worksheet.detailed_lever_guides_c34); end
  def test_detailed_lever_guides_d34; assert_equal("In 2011 there was around 11.56 GW of geothermal power. Around 24 countries using geothermal electricity and 70 countries geothermal heat. Maximum potential in countires on ring of fire.", worksheet.detailed_lever_guides_d34); end
  def test_detailed_lever_guides_e34; assert_equal("In 2050 there is 68.8 GW of installed geothermal power capacity", worksheet.detailed_lever_guides_e34); end
  def test_detailed_lever_guides_h34; assert_equal("In 2050 there is 0 GW of installed geothermal power capacity", worksheet.detailed_lever_guides_h34); end
  def test_detailed_lever_guides_i34; assert_equal("In 2050 there is 0 GW of geothermal electricity. Technological lifespan and depreciaiting CAGR was arrived by analysis of various intertwined factors.", worksheet.detailed_lever_guides_i34); end
  def test_detailed_lever_guides_j34; assert_equal("In 2050 there is 172 GW of installed geothermal power capacity", worksheet.detailed_lever_guides_j34); end
  def test_detailed_lever_guides_k34; assert_equal("In 2050 there is 172 GW of geothermal electricity. Different build up rate were arrived for different timespans with emphasis on ring of fire countries.", worksheet.detailed_lever_guides_k34); end
  def test_detailed_lever_guides_l34; assert_equal("In 2050 there is 289 GW of installed geothermal power capacity", worksheet.detailed_lever_guides_l34); end
  def test_detailed_lever_guides_m34; assert_equal("In 2050 there is 289 GW of geothermal electricity. Avergae growth rate is arrived by considering various global factors.", worksheet.detailed_lever_guides_m34); end
  def test_detailed_lever_guides_n34; assert_equal("In 2050 there is 404 GW of installed geothermal power capacity", worksheet.detailed_lever_guides_n34); end
  def test_detailed_lever_guides_o34; assert_equal("In 2050 there is 404 GW of geothermal electricity. The avergae built up rate is 9% till 2020, whereas 11.55% till 2040 and 6% uptill 2050. For developing the levels different variables were mapped and interdependance of factors was analyzed.", worksheet.detailed_lever_guides_o34); end
  def test_detailed_lever_guides_b35; assert_equal("Storage and demand shifting", worksheet.detailed_lever_guides_b35); end
  def test_detailed_lever_guides_c35; assert_equal("storage.elec", worksheet.detailed_lever_guides_c35); end
  def test_detailed_lever_guides_d35; assert_equal("In 2011 there was around 120 GW of electricity storage plant. The storage is currently driven by OECD countries", worksheet.detailed_lever_guides_d35); end
  def test_detailed_lever_guides_e35; assert_equal("In 2050 there is 277.5 GW of electricity storage capacity", worksheet.detailed_lever_guides_e35); end
  def test_detailed_lever_guides_h35; assert_equal("In 2050 there is 152 GW of electricity storage capacity", worksheet.detailed_lever_guides_h35); end
  def test_detailed_lever_guides_i35; assert_equal("By 2050, around 152 GW of peak demand is met by energy storage. The storage will be primarily driven by OECD countries with an annual growth rate of 3%", worksheet.detailed_lever_guides_i35); end
  def test_detailed_lever_guides_j35; assert_equal("In 2050 there is 403 GW of electricity storage capacity", worksheet.detailed_lever_guides_j35); end
  def test_detailed_lever_guides_k35; assert_equal("600 GW of energy storage system by 2050. This system includes pump storage, batteries etc. The storage will be primarily driven by OECD countries. However, there will be certain development in emerging economies. Will cater to around 50% of expected peak demand.", worksheet.detailed_lever_guides_k35); end
  def test_detailed_lever_guides_l35; assert_equal("In 2050 there is 800 GW of electricity storage capacity", worksheet.detailed_lever_guides_l35); end
  def test_detailed_lever_guides_m35; assert_equal("800 GW of energy storage system by 2050. This system includes pump storage, batteries etc. The storage will be primarily driven by OECD countries. However, there will be active particiaption from emerging economies. Will cater to around 2/3rd of estimated peak demand.", worksheet.detailed_lever_guides_m35); end
  def test_detailed_lever_guides_n35; assert_equal("In 2050 there is 1200 GW of electricity storage capacity", worksheet.detailed_lever_guides_n35); end
  def test_detailed_lever_guides_o35; assert_equal("High adoption of storage technologies across the globle. Majority of global peak demand is catered by 1200GW  energy storage system.  Many of these storage systems will be integrated to RE system, storing off peak power generated by wind and solar system. Energy storage technologies  would include Pumped Storage, : Compressed Air, NaS Batteries, Advanced Lead Acid, Batteries, Flow Batteries, and Lithium Ion Batteries for Utility-Scale Storage:", worksheet.detailed_lever_guides_o35); end
  def test_detailed_lever_guides_b36; assert_equal("Calories consumed", worksheet.detailed_lever_guides_b36); end
  def test_detailed_lever_guides_d36; assert_equal("In 2011, the global average calorie consumption was 2140 kcal/capita/day (excluding 25% food losses in energy terms), with extremes of obesity and undernourishment worldwide in terms of dietary energy intakes.", worksheet.detailed_lever_guides_d36); end
  def test_detailed_lever_guides_h36; assert_equal("High calorie consumption by 2050, based on the current European level.", worksheet.detailed_lever_guides_h36); end
  def test_detailed_lever_guides_i36; assert_equal("Means that global calorie consumption would increase from 2140 kcal/capita/day to the current European level, i.e., 2520 kcal/capita/day, by 2050. This assumes an extreme situation, in which the whole world would achieve European levels of calories consumed per capita per day. It represents a high risk of obesity problems and diabetes incidence, and more land allocation for agricultural purposes.", worksheet.detailed_lever_guides_i36); end
  def test_detailed_lever_guides_j36; assert_equal("Increases the world calorie consumption based on the growth rate of past decade.", worksheet.detailed_lever_guides_j36); end
  def test_detailed_lever_guides_k36; assert_equal("Increases the world calorie consumption based on the growth rate of past decade, i.e., from 2140 kcal/capita/day in 2011 up to 2400 kcal/capita/day by 2050. Therefore, this pathway is equivalent to approximately the same changes in food consumption observed in the last 10 years, in which some developing countries (e.g., China and India) have substantially increased their food consumptions.", worksheet.detailed_lever_guides_k36); end
  def test_detailed_lever_guides_l36; assert_equal("Increase in the world calorie consumption based on FAO trends.", worksheet.detailed_lever_guides_l36); end
  def test_detailed_lever_guides_m36; assert_equal("Means a calorie consumption growth from 2140 kcal/capita/day in 2011 to approximately 2300 kcal/capita/day by 2050, which is similar to the FAO forecast by Alexandratos & Bruinsma (2012), after adjustment for excluding food losses. In this trajectory, there will be still a significant increase of food consumption globally, but the current trend would be slightly reduced due to, e.g., population and consumption peaks in some countries.", worksheet.detailed_lever_guides_m36); end
  def test_detailed_lever_guides_n36; assert_equal("Slightly reduces the calorie consumption for meeting a healthy diet by 2050, i.e., 2100 kcal/capita/person.", worksheet.detailed_lever_guides_n36); end
  def test_detailed_lever_guides_o36; assert_equal("Keeps the current world calorie would slightly reduce from 2140 kcal/capita/day in 2011 to 2100 kcal/capita/day by 2050, which is a target for healthy diet (2200 kcal/capita/day for men, and 2000 kcal/capita/day for women). However, it would be possible to have some changes in the extreme sides, for example, some developing countries could increase food consumption, e.g., by reducing poverty, whilst some developed countries could reduce the consumption, e.g., by tackling obesity issues. Thus, this is an extreme target, given that values below this global average would result higher undernourishment cases.", worksheet.detailed_lever_guides_o36); end
  def test_detailed_lever_guides_b37; assert_equal("Meat consumed", worksheet.detailed_lever_guides_b37); end
  def test_detailed_lever_guides_d37; assert_equal("The current global average meat consumption is 212 kcal of meat/capita/day (excluding meat losses, 10% in energy terms), but growing income in developing countries tends to stimulate an increase in meat consumption. ", worksheet.detailed_lever_guides_d37); end
  def test_detailed_lever_guides_h37; assert_equal("Very high in meat, based on the current average meat consumption in Europe, with 75% red meat and 25% white meat by 2050.", worksheet.detailed_lever_guides_h37); end
  def test_detailed_lever_guides_i37; assert_equal("Presents a very high consumption of meat. The actual total meat consumption in Europe (2011) is assumed as a global target for 2050. The meat consumption would reach 309 kcal of meat/capita/day by 2050. This is a very risky and complex pathway, given that a significant amount of land would be necessary for supplying such extreme demand of meat. Assumes a share of 75% red meat and 25% white meat by 2050.", worksheet.detailed_lever_guides_i37); end
  def test_detailed_lever_guides_j37; assert_equal("World meat consumption would be stabilised. Assumes a share of 60% red meat and 40% white meat by 2050.", worksheet.detailed_lever_guides_j37); end
  def test_detailed_lever_guides_k37; assert_equal("Considers that the current world dietary pattern, i.e., 212 kcal of meat/capita/day, would be stabilised by 2050. In this pathway, there would be no significant changes in calorie consumption, although it presents a gradual change in meat types towards 60% red meat and 40% white meat by 2050.", worksheet.detailed_lever_guides_k37); end
  def test_detailed_lever_guides_l37; assert_equal("Low in meat consumption, based on the WHO reference for a healthy diet (90g a day). 60% white meat and 40% red meat. ", worksheet.detailed_lever_guides_l37); end
  def test_detailed_lever_guides_m37; assert_equal("Assumes a low meat consumption (162 kcal of meat/capita/day) in order to meet the WHO guidance for a healthy diet, which suggest the consumption of 90g of meat/capita/day. This value is then adjusted for energy unit (1.0 g meat = 1.8 kcal, weighted average for 40% red and 60% white meat) and converted to effective meat intake (10% waste in energy terms). It also presents a gradual increase of the share of white meat, 60% by 2050, and decrease of red meat, 40% by 2050. ", worksheet.detailed_lever_guides_m37); end
  def test_detailed_lever_guides_n37; assert_equal("Extremely low in meat consumption (Indian level), including vegetarian diets and meat alternatives. Assumes a share of 25% red meat and 75% white meat by 2050.", worksheet.detailed_lever_guides_n37); end
  def test_detailed_lever_guides_o37; assert_equal("Represents diets with very low meat consumption, based on India as a reference for 2050 (15 kcal of meat/capita/day). This lever includes vegetarian diets and meat alternatives (e.g., soy meat substitutes, yeast-based meat and potential stem cell-based technologies). This is a very extreme situation and assumes an unprecedented change in dietary preferences worldwide. It also assumes a gradual shift of meat types towards 25% red meat and 75% white meat by 2050. ", worksheet.detailed_lever_guides_o37); end
  def test_detailed_lever_guides_b38; assert_equal("Crop yields", worksheet.detailed_lever_guides_b38); end
  def test_detailed_lever_guides_d38; assert_equal("The current situation shows that crop yields tend to substantially increase yet, particularly in most of the developing countries where there is a significant productivity gap.", worksheet.detailed_lever_guides_d38); end
  def test_detailed_lever_guides_h38; assert_equal("Negative crop yields due to climate change impacts on agriculture (-10% by 2050).", worksheet.detailed_lever_guides_h38); end
  def test_detailed_lever_guides_i38; assert_equal("Represents a severe productivity decrease, -10% overall by 2050. This assumes negative impacts of climate change on agriculture or scarcity of natural resources, e.g. water and fertilisers.", worksheet.detailed_lever_guides_i38); end
  def test_detailed_lever_guides_j38; assert_equal("Moderate crop yield growth (40% by 2050).", worksheet.detailed_lever_guides_j38); end
  def test_detailed_lever_guides_k38; assert_equal("Moderate yield growth, approximately 40% by 2050, as suggested by the UNFAO as a likely trend, assuming grains as a reference.  ", worksheet.detailed_lever_guides_k38); end
  def test_detailed_lever_guides_l38; assert_equal("High crop yield growth (60% by 2050).", worksheet.detailed_lever_guides_l38); end
  def test_detailed_lever_guides_m38; assert_equal("Represents that the global yield growth would increase approximately 60% by 2050. This increase represents a linear extrapolation of past yield growths, taking grains as a reference. This level assumes a significant contribution from better crop varieties, irrigation, higher use of fertilisers, improved farm management and technology transfer in order to reduce the yield gap, as well as capacity development programmes, and low climate change impacts on agriculture.", worksheet.detailed_lever_guides_m38); end
  def test_detailed_lever_guides_n38; assert_equal("High crop yield growth (120% by 2050)", worksheet.detailed_lever_guides_n38); end
  def test_detailed_lever_guides_o38; assert_equal("Presents extreme yield growth, 120% by 2050. This aggressive level of effort assumes a substantial use of biotechnology, a high increase in photosynthetic efficiencies, technology transfer, mechanisation, irrigation, higher use of fertilisers, and potentially positive climate change impacts on crop productivity, always on global average terms.", worksheet.detailed_lever_guides_o38); end
  def test_detailed_lever_guides_b39; assert_equal("Land-use efficiency ", worksheet.detailed_lever_guides_b39); end
  def test_detailed_lever_guides_d39; assert_equal("Land-use efficiency represents the multiple use of land and integration schemes, but can also result in negative effects.", worksheet.detailed_lever_guides_d39); end
  def test_detailed_lever_guides_h39; assert_equal("Mismanaged land use. It assumes that 10% more agricultural land would be necessary to attain the selected food/livestock/bioenergy productions.", worksheet.detailed_lever_guides_h39); end
  def test_detailed_lever_guides_i39; assert_equal("reflects mismanaged land use, which can cause soil degradation or desertification process, e.g. through erosion, water scarcity or soil salinisation. This level assumes that 10% more agricultural land would be necessary to meet the selected food/livestock/bioenergy production levels.", worksheet.detailed_lever_guides_i39); end
  def test_detailed_lever_guides_j39; assert_equal("Current world pattern of agricultural system stabilised until 2050, i.e., no impacts expected.", worksheet.detailed_lever_guides_j39); end
  def test_detailed_lever_guides_k39; assert_equal("Assumes that the current world pattern of agricultural system stabilises until 2050. This means that either no further benefit or damage would be expected from land multiuse by 2050, i.e., no impact.", worksheet.detailed_lever_guides_k39); end
  def test_detailed_lever_guides_l39; assert_equal("Increase in agro-forestry-pasture synergies and best farming practices. Also, hHigher use of co-cropping systems, as well as, the production of more crops in a same year-season e.g. dual or triple cropping. It assumes that 10% less agricultural land would be necessary to attain the selected food/livestock/bioenergy productions. ", worksheet.detailed_lever_guides_l39); end
  def test_detailed_lever_guides_m39; assert_equal("Represents an increase in agro-forestry-pasture synergies and best farming practices, e.g., crop rotation, dual cropping, co-cropping, no tillage technologies. In this level of effort, 10% less agricultural land would be necessary to meet the selected food/livestock/bioenergy production levels. ", worksheet.detailed_lever_guides_m39); end
  def test_detailed_lever_guides_n39; assert_equal("Climate-smart agriculture, based on a multiple-cropping and strong integration of agriculture. Extreme increase in the use of rotation systems, co-cropping and the production of more crops in a same year-season e.g. dual or triple cropping. 25% less agricultural land would be necessary to attend the selected food/livestock/bioenergy productions.", worksheet.detailed_lever_guides_n39); end
  def test_detailed_lever_guides_o39; assert_equal("Means climate-smart agriculture and high levels of integrated agricultural land use management (e.g., dual/triple cropping). It assumes a substantial increase in agro-forestry-pasture synergies, best farming practices. As a result, 30% less agricultural land would be necessary to meet the selected food/livestock/bioenergy production levels. ", worksheet.detailed_lever_guides_o39); end
  def test_detailed_lever_guides_b40; assert_equal("Livestock yields", worksheet.detailed_lever_guides_b40); end
  def test_detailed_lever_guides_d40; assert_equal("Gradual annual increases in livestock yields worldwide, with a significant yield gap in developing countries and extensive production systems. ", worksheet.detailed_lever_guides_d40); end
  def test_detailed_lever_guides_h40; assert_equal("Low increase of livestock yields: 10% increase in concentration of grass-fed livestock (animal density), 5% increase of feed conversion ratio, and no increase in feedlot systems by 2050. ", worksheet.detailed_lever_guides_h40); end
  def test_detailed_lever_guides_i40; assert_equal("Means a low increase of livestock yields: 10% increase in concentration of grass-fed livestock (animal density), 5% increase of feed conversion ratio, and no increase in feedlot systems by 2050. ", worksheet.detailed_lever_guides_i40); end
  def test_detailed_lever_guides_j40; assert_equal("Moderate increase of livestock yields: 30% increase in concentration of grass-fed livestock (animal density), 10% increase of feed conversion ratio, and low increase in feedlot systems from 2% in 2011 to 5% in 2050 for cattle and from 4% in 2011 to 6% in 2050 for sheep and goats.", worksheet.detailed_lever_guides_j40); end
  def test_detailed_lever_guides_k40; assert_equal("Assumes a moderate increase of livestock yields: 30% increase in concentration of grass-fed livestock (animal density), 10% increase of feed conversion ratio, and low increase in feedlot systems from 2% in 2011 to 5% in 2050 for cattle and from 4% in 2011 to 6% in 2050 for sheep and goats.", worksheet.detailed_lever_guides_k40); end
  def test_detailed_lever_guides_l40; assert_equal("High increase of livestock yields: 50% increase in concentration of grass-fed livestock (animal density), 15% increase of feed conversion ratio, and moderate increase in feedlot systems from 2% in 2011 to 15% in 2050 for cattle and from 4% in 2011 to 8% in 2050 for sheep and goats. ", worksheet.detailed_lever_guides_l40); end
  def test_detailed_lever_guides_m40; assert_equal("Means a high increase of livestock yields: 50% increase in concentration of grass-fed livestock (animal density), 15% increase of feed conversion ratio, and moderate increase in feedlot systems from 2% in 2011 to 15% in 2050 for cattle and from 4% in 2011 to 8% in 2050 for sheep and goats. This means a high use of conventional animal genetic improvements, pasture rotation management, technology transfer to developing countries and capacity development programmes.", worksheet.detailed_lever_guides_m40); end
  def test_detailed_lever_guides_n40; assert_equal("Assumes a high increase of livestock yields: 80% increase in concentration of grass-fed livestock (animal density), 20% increase of feed conversion ratio, and high increase in feedlot systems from 2% in 2011 to 30% in 2050 for cattle and from 4% in 2011 to 10% in 2050 for sheep and goats.", worksheet.detailed_lever_guides_n40); end
  def test_detailed_lever_guides_o40; assert_equal("Assumes a high increase of livestock yields: 80% increase in concentration of grass-fed livestock (animal density), 20% increase of feed conversion ratio, and high increase in feedlot systems from 2% in 2011 to 30% in 2050 for cattle and from 4% in 2011 to 10% in 2050 for sheep and goats. This means a high use of conventional animal genetic improvements, pasture rotation management, technology transfer to developing countries and capacity development programmes. This also assumes extensive use of biotechnology, and strong technology transfer from developed to developing countries in order to leap-frog the learning curves for higher productivities.", worksheet.detailed_lever_guides_o40); end
  def test_detailed_lever_guides_b41; assert_equal("Bioenergy yields", worksheet.detailed_lever_guides_b41); end
  def test_detailed_lever_guides_d41; assert_equal("Bioenergy expansion still controversial, but already as relevant part of the international agenda for reducing GHG emissions. Current energy crop mix with high and low efficiency plants in terms of their energy yields (net primary production), under a life cycle analysis. There is a substantial production of biofuels in some countries (e.g., EUA, Brazil, Germany, France and China), particularly for the transport sector. Challenges for finding a renewable alternative for heavy-duty transportation (e.g. ships and aviation), for which biofuels may play an important role. Solid biomass used mainly for cooking and heating, but future application for displacing coal in thermopowers may (or may not) be a relevant source. Speculative potential for bioenergy with carbon capture and storage (BECCS) and biochar, see at the GGR tab. ", worksheet.detailed_lever_guides_d41); end
  def test_detailed_lever_guides_h41; assert_equal("Means a low yield increase of energy production per area, without significant changes in the energy crop mix. Total increase: 20% by 2050.", worksheet.detailed_lever_guides_h41); end
  def test_detailed_lever_guides_i41; assert_equal("Means a low yield increase of energy production per area, 20% by 2050. This is below the current crop yield growth trend, and includes the use of crops with low energy balance (e.g., corn-based ethanol, oilseed-rape-based biodiesel), although still using efficient energy crops, either for liquid fuel or solid biomass for power, heating and cooking.  ", worksheet.detailed_lever_guides_i41); end
  def test_detailed_lever_guides_j41; assert_equal("Assumes a moderate increase in energy crop yields and changes in the mix of energy crops towards a higher share of energy efficient plants. Total increase 50% by 2050.", worksheet.detailed_lever_guides_j41); end
  def test_detailed_lever_guides_k41; assert_equal("Assumes a moderate increase in yields and substantial changes in the energy crop mix towards a higher share of energy efficient plants. Total increase: 50% by 2050. This level requires better farm management and industrial integration with the production systems as well.", worksheet.detailed_lever_guides_k41); end
  def test_detailed_lever_guides_l41; assert_equal("Means a high yield increase, and substantial changes in their mix towards high energy efficient plants. Total increase 120% by 2050. ", worksheet.detailed_lever_guides_l41); end
  def test_detailed_lever_guides_m41; assert_equal("Considers a high yield increase and use of more efficient energy crops, with a total increase of 120% by 2050. This yield growth is expected through an expansion of some new biofuels technologies, e.g., lignocellulosic bioethanol and Fischer-Tropsch biodiesel, which may affect further investments on agricultural yields for energy crops. In this level, crops with high energy performance would substantially increase their share in the global market.", worksheet.detailed_lever_guides_m41); end
  def test_detailed_lever_guides_n41; assert_equal("Represents an extreme increase of bioenergy yields, and use of very high efficient crops. Total increase: 220% by 2050. ", worksheet.detailed_lever_guides_n41); end
  def test_detailed_lever_guides_o41; assert_equal("Represents an extreme increase of bioenergy yields and focus on very high efficient energy plants, with a total increase of 220% by 2050. This is based on advanced fuel technologies, biotechnology, state-of-the-art farm management, and further use of irrigation and fertilisers. This level assumes highly efficient energy crops (e.g., sugarcane, oil palm, switchgrass, napier grass, miscanthus) would dominate the market and consequently also increase the average yield of bioenergy crops.   ", worksheet.detailed_lever_guides_o41); end
  def test_detailed_lever_guides_b42; assert_equal("Surplus land (forest & bioenergy) ", worksheet.detailed_lever_guides_b42); end
  def test_detailed_lever_guides_d42; assert_equal("Deforestation tends to continue in the coming years worldwide, not only due to livestock and agricultural expansions, but also to wood extraction and land tenure issues. With new agricultural dynamics, forest area could either increase or decrease even more. If new land becomes availabe in the future, e.g., because of a lower need for crop/pasture area, bioenergy could also be expanded, or unused land may increase instead. Bioenergy for example represents approximately 60 EJ of the world energy mix (2011), which include traditional and modern biomass, and is a relevant renewable energy source for several countries.", worksheet.detailed_lever_guides_d42); end
  def test_detailed_lever_guides_h42; assert_equal("Surplus land will be subject to 80% forests (including natural regeneration and planted forests), and 20% degrated lands and restoration of grasslands.", worksheet.detailed_lever_guides_h42); end
  def test_detailed_lever_guides_i42; assert_equal("Means that if more land becomes available by 2050 due to a potential reduction of crop/pasture lands, such land will not be subject to 80% forests (including natural regeneration and planted forests), and 20% degrated lands and restoration of grasslands. ", worksheet.detailed_lever_guides_i42); end
  def test_detailed_lever_guides_j42; assert_equal("Surplus land would be allocated for 60% natural regeneration and planted forests, and 40% for a limmited expansion of energy crops.", worksheet.detailed_lever_guides_j42); end
  def test_detailed_lever_guides_k42; assert_equal("Assumes that the remaining land would be allocated for 60% natural regeneration and planted forestats, and 40% for a limmited expansion of energy crops.", worksheet.detailed_lever_guides_k42); end
  def test_detailed_lever_guides_l42; assert_equal("Surplus land would be allocated for 40% natural regeneration and planted forestats, and 60% for a limmited expansion of energy crops.", worksheet.detailed_lever_guides_l42); end
  def test_detailed_lever_guides_m42; assert_equal("Means that the remaining land would be allocated for 40% natural regeneration and planted forests, and 60% for a limmited expansion of energy crops.", worksheet.detailed_lever_guides_m42); end
  def test_detailed_lever_guides_n42; assert_equal("Surplus land would be allocated 100% for a limmited expansion of energy crops. If there is still land available, such land will be allocated as natural restoration and planted forests.", worksheet.detailed_lever_guides_n42); end
  def test_detailed_lever_guides_o42; assert_equal("Assumes that the remaining land would be allocated 100% for a limmited expansion of energy crops. If there is still land available, such land will be allocated as natural restoration and planted forests. The maximum expansion of bioenergy is a linear growth rate of 22 million ha / year, which were estimated for meeting 300 EJ of bioenergy by 2050, defined by IPCC as an extreme global bioenergy potential, when all levers are in level 4 for example.", worksheet.detailed_lever_guides_o42); end
  def test_detailed_lever_guides_b43; assert_equal("Biochar", worksheet.detailed_lever_guides_b43); end
  def test_detailed_lever_guides_d43; assert_equal("No biochar technologies, with many risks and uncertainties associated with them.", worksheet.detailed_lever_guides_d43); end
  def test_detailed_lever_guides_h43; assert_equal("No biochar by 2050", worksheet.detailed_lever_guides_h43); end
  def test_detailed_lever_guides_i43; assert_equal("Means no biochar technologies. This assumes that biochar will not be implemented by 2050 at any scale, due to potential risks associated to them (e.g.,  biodegradation, impacts on soil biota, land-use change for biomass production), costs or negative public perception.", worksheet.detailed_lever_guides_i43); end
  def test_detailed_lever_guides_j43; assert_equal("Low effort on biochar technologies, but still a relevant contribution, removing up to 0.8 GtCO2/year by 2050 (25% of level 4)", worksheet.detailed_lever_guides_j43); end
  def test_detailed_lever_guides_k43; assert_equal("Represents a low effort on biochar technologies. Such technologies would not require additional technological advances or changes in regulation. A limited amount would be expected to occur without a carbon price, but would be driven by other benefits/subsidy systems. Total removal by 2050 here suggested as 0.8 GtCO2/year (25% of the level 4 potential).", worksheet.detailed_lever_guides_k43); end
  def test_detailed_lever_guides_l43; assert_equal("Substantial contribution of biochar to tackle global warming, removing up to 1.7 GtCO2/year by 2050 (50% of level 4). ", worksheet.detailed_lever_guides_l43); end
  def test_detailed_lever_guides_m43; assert_equal("Means a substantial contribution of biochar to tackle global warming. It would require a carbon price to make deployment of such technologies economically viable. It would also require technical and regulatory advances. Total removal by 2050 here suggested as 1.7 GtCO2/year (50% of the level 4 potential).", worksheet.detailed_lever_guides_m43); end
  def test_detailed_lever_guides_n43; assert_equal("Extreme increase of biochar technologies, based on technical especulations regarding the maximum expansion that would be technically possible by 2050, here suggested as 3.3 GtCO2/yr.", worksheet.detailed_lever_guides_n43); end
  def test_detailed_lever_guides_o43; assert_equal("This is a highly uncertain pathway, with significant risks associated to biochar. A carbon price would be required and potentially an obligation on emitters to either remove an equivalent quantity as is emitted, or pay someone else to do so. The timeline of scalability would mean that it is highly unlikely that substantial emissions could be removed in this way in the 2050 timeframe, but an obligation to remove emissions at some later date could create a market in such negative emissions. Based on the implementation of 3.3GtCO2/yr biochar by 2050.", worksheet.detailed_lever_guides_o43); end
  def test_detailed_lever_guides_b44; assert_equal("Direct air capture", worksheet.detailed_lever_guides_b44); end
  def test_detailed_lever_guides_d44; assert_equal("No direct air capture technologies, with many risks and uncertainties associated with them.", worksheet.detailed_lever_guides_d44); end
  def test_detailed_lever_guides_h44; assert_equal("No direct air capture technologies biochar by 2050.", worksheet.detailed_lever_guides_h44); end
  def test_detailed_lever_guides_i44; assert_equal("Means no direct air capture technologies. This assumes that they will not be implemented by 2050 at any scale, due to potential risks associated to them (e.g. carbon storage stability, energy penalty), costs or negative public perception.", worksheet.detailed_lever_guides_i44); end
  def test_detailed_lever_guides_j44; assert_equal("Low effort on direct air capture technologies, but still a relevant contribution, removing up to 2.5 GtCO2/year by 2050 (25% of level 4)", worksheet.detailed_lever_guides_j44); end
  def test_detailed_lever_guides_k44; assert_equal("Represents a low effort on direct air capture technologies. Such technologies would not require additional technological advances or changes in regulation. A limited amount would be expected to occur without a carbon price, but would be driven by other benefits/subsidy systems. Total removal by 2050 here suggested as 2.5 GtCO2/year (25% of the level 4 potential).", worksheet.detailed_lever_guides_k44); end
  def test_detailed_lever_guides_l44; assert_equal("Substantial contribution of direct air capture to tackle global warming, removing up to 5.0 GtCO2/year by 2050 (50% of level 4). ", worksheet.detailed_lever_guides_l44); end
  def test_detailed_lever_guides_m44; assert_equal("Means a substantial contribution of direct air capture to tackle global warming. It would require a carbon price to make deployment of such technologies economically viable. It would also require technical and regulatory advances. Total removal by 2050 here suggested as 5.0 GtCO2/year (50% of the level 4 potential).", worksheet.detailed_lever_guides_m44); end
  def test_detailed_lever_guides_n44; assert_equal("Extreme increase of direct air capture technologies, based on technical especulations regarding the maximum expansion that would be technically possible by 2050, here suggested as 10.0 GtCO2/yr.", worksheet.detailed_lever_guides_n44); end
  def test_detailed_lever_guides_o44; assert_equal("This is a highly uncertain pathway, with significant risks associated to direct air capture. A carbon price would be required and potentially an obligation on emitters to either remove an equivalent quantity as is emitted, or pay someone else to do so. The timeline of scalability would mean that it is highly unlikely that substantial emissions could be removed in this way in the 2050 timeframe, but an obligation to remove emissions at some later date could create a market in such negative emissions. Based on the implementation of 10.0 GtCO2/yr direct air capture by 2050.", worksheet.detailed_lever_guides_o44); end
  def test_detailed_lever_guides_b45; assert_equal("Ocean fertilisation", worksheet.detailed_lever_guides_b45); end
  def test_detailed_lever_guides_d45; assert_equal("No ocean fertilisation technologies, with many risks and uncertainties associated with them.", worksheet.detailed_lever_guides_d45); end
  def test_detailed_lever_guides_h45; assert_equal("No ocean fertilisation by 2050.", worksheet.detailed_lever_guides_h45); end
  def test_detailed_lever_guides_i45; assert_equal("Means no ocean fertilisation technologies. This assumes that they will not be implemented by 2050 at any scale, due to potential risks associated to them (e.g., impacts on ocean biota, quick release of the carbon captured back to the atmosphere), costs or negative public perception.", worksheet.detailed_lever_guides_i45); end
  def test_detailed_lever_guides_j45; assert_equal("Low effort on ocean fertilisation technologies, but still a relevant contribution, removing up to 0.3 GtCO2/year by 2050 (25% of level 4)", worksheet.detailed_lever_guides_j45); end
  def test_detailed_lever_guides_k45; assert_equal("Represents a low effort on ocean fertilisation technologies. Such technologies would not require additional technological advances or changes in regulation. A limited amount would be expected to occur without a carbon price, but would be driven by other benefits/subsidy systems. Total removal by 2050 here suggested as 0.3 GtCO2/year (25% of the level 4 potential).", worksheet.detailed_lever_guides_k45); end
  def test_detailed_lever_guides_l45; assert_equal("Substantial contribution of ocean fertilisation to tackle global warming, removing up to 0.5 GtCO2/year by 2050 (50% of level 4). ", worksheet.detailed_lever_guides_l45); end
  def test_detailed_lever_guides_m45; assert_equal("Means a substantial contribution of ocean fertilisation to tackle global warming. It would require a carbon price to make deployment of such technologies economically viable. It would also require technical and regulatory advances. Total removal by 2050 here suggested as 0.5 GtCO2/year (50% of the level 4 potential).", worksheet.detailed_lever_guides_m45); end
  def test_detailed_lever_guides_n45; assert_equal("Extreme increase of ocean fertilisation technologies, based on technical especulations regarding the maximum expansion that would be technically possible by 2050, here suggested as 1.0 GtCO2/yr.", worksheet.detailed_lever_guides_n45); end
  def test_detailed_lever_guides_o45; assert_equal("This is a highly uncertain pathway, with significant risks associated to ocean fertilisation. A carbon price would be required and potentially an obligation on emitters to either remove an equivalent quantity as is emitted, or pay someone else to do so. The timeline of scalability would mean that it is highly unlikely that substantial emissions could be removed in this way in the 2050 timeframe, but an obligation to remove emissions at some later date could create a market in such negative emissions. Based on the implementation of 1.0 GtCO2/yr ocean fertilisation by 2050.", worksheet.detailed_lever_guides_o45); end
  def test_detailed_lever_guides_b46; assert_equal("Enhanced weathering (ocean)", worksheet.detailed_lever_guides_b46); end
  def test_detailed_lever_guides_d46; assert_equal("No ocean-based enhanced weathering technologies, with many risks and uncertainties associated with them.", worksheet.detailed_lever_guides_d46); end
  def test_detailed_lever_guides_h46; assert_equal("No ocean-based enhanced weathering technologies by 2050.", worksheet.detailed_lever_guides_h46); end
  def test_detailed_lever_guides_i46; assert_equal("Means no ocean-based enhanced weathering technologies. This assumes that they will not be implemented by 2050 at any scale, due to potential risks associated to them (e.g., impacts on ocean biota, ocean alkalinization, energy penalty), costs or negative public perception.", worksheet.detailed_lever_guides_i46); end
  def test_detailed_lever_guides_j46; assert_equal("Low effort on ocean-based enhanced weathering technologies, but still a relevant contribution, removing up to 2.5 GtCO2/year by 2050 (25% of level 4)", worksheet.detailed_lever_guides_j46); end
  def test_detailed_lever_guides_k46; assert_equal("Represents a low effort on ocean-based enhanced weathering technologies. Such technologies would not require additional technological advances or changes in regulation. A limited amount would be expected to occur without a carbon price, but would be driven by other benefits/subsidy systems. Total removal by 2050 here suggested as 2.5 GtCO2/year (25% of the level 4 potential).", worksheet.detailed_lever_guides_k46); end
  def test_detailed_lever_guides_l46; assert_equal("Substantial contribution of enhanced weathering (oceanic) to tackle global warming, removing up to 5.0 GtCO2/year by 2050 (50% of level 4). ", worksheet.detailed_lever_guides_l46); end
  def test_detailed_lever_guides_m46; assert_equal("Means a substantial contribution of enhanced weathering (oceanic) to tackle global warming. It would require a carbon price to make deployment of such technologies economically viable. It would also require technical and regulatory advances. Total removal by 2050 here suggested as 5.0 GtCO2/year (50% of the level 4 potential).", worksheet.detailed_lever_guides_m46); end
  def test_detailed_lever_guides_n46; assert_equal("Extreme increase of enhanced weathering (oceanic) technologies, based on technical especulations regarding the maximum expansion that would be technically possible by 2050, here suggested as 10.0 GtCO2/yr.", worksheet.detailed_lever_guides_n46); end
  def test_detailed_lever_guides_o46; assert_equal("This is a highly uncertain pathway, with significant risks associated to enhanced weathering (oceanic). A carbon price would be required and potentially an obligation on emitters to either remove an equivalent quantity as is emitted, or pay someone else to do so. The timeline of scalability would mean that it is highly unlikely that substantial emissions could be removed in this way in the 2050 timeframe, but an obligation to remove emissions at some later date could create a market in such negative emissions. Based on the implementation of 10.0 GtCO2/yr enhanced weathering (oceanic) by 2050.", worksheet.detailed_lever_guides_o46); end
  def test_detailed_lever_guides_b47; assert_equal("Enhanced weathering (terrestial)", worksheet.detailed_lever_guides_b47); end
  def test_detailed_lever_guides_d47; assert_equal("No land-based enhanced weathering technologies, with many risks and uncertainties associated with them.", worksheet.detailed_lever_guides_d47); end
  def test_detailed_lever_guides_h47; assert_equal("No land-based enhanced weathering technologies  by 2050.", worksheet.detailed_lever_guides_h47); end
  def test_detailed_lever_guides_i47; assert_equal("Means no land-based enhanced weathering technologies. This assumes that they will not be implemented by 2050 at any scale, due to potential risks associated to them (e.g., changes in land use and landscape, high energy penalty), costs or negative public perception.", worksheet.detailed_lever_guides_i47); end
  def test_detailed_lever_guides_j47; assert_equal("Low effort on land-based enhanced weathering technologies, but still a relevant contribution, removing up to 0.9 GtCO2/year by 2050 (25% of level 4)", worksheet.detailed_lever_guides_j47); end
  def test_detailed_lever_guides_k47; assert_equal("Represents a low effort on land-based enhanced weathering technologies. Such technologies would not require additional technological advances or changes in regulation. A limited amount would be expected to occur without a carbon price, but would be driven by other benefits/subsidy systems. Total removal by 2050 here suggested as 0.9 GtCO2/year (25% of the level 4 potential).", worksheet.detailed_lever_guides_k47); end
  def test_detailed_lever_guides_l47; assert_equal("Substantial contribution of enhanced weathering (terrestrial) to tackle global warming, removing up to 1.9 GtCO2/year by 2050 (50% of level 4). ", worksheet.detailed_lever_guides_l47); end
  def test_detailed_lever_guides_m47; assert_equal("Means a substantial contribution of enhanced weathering (terrestrial) to tackle global warming. It would require a carbon price to make deployment of such technologies economically viable. It would also require technical and regulatory advances. Total removal by 2050 here suggested as 1.9 GtCO2/year (50% of the level 4 potential).", worksheet.detailed_lever_guides_m47); end
  def test_detailed_lever_guides_n47; assert_equal("Extreme increase of enhanced weathering (terrestrial) technologies, based on technical especulations regarding the maximum expansion that would be technically possible by 2050, here suggested as 3.7 GtCO2/yr.", worksheet.detailed_lever_guides_n47); end
  def test_detailed_lever_guides_o47; assert_equal("This is a highly uncertain pathway, with significant risks associated to enhanced weathering (terrestrial). A carbon price would be required and potentially an obligation on emitters to either remove an equivalent quantity as is emitted, or pay someone else to do so. The timeline of scalability would mean that it is highly unlikely that substantial emissions could be removed in this way in the 2050 timeframe, but an obligation to remove emissions at some later date could create a market in such negative emissions. Based on the implementation of 3.7 GtCO2/yr enhanced weathering (terrestrial) by 2050.", worksheet.detailed_lever_guides_o47); end
  def test_detailed_lever_guides_b48; assert_equal("Wastes and residues", worksheet.detailed_lever_guides_b48); end
  def test_detailed_lever_guides_d48; assert_equal("Susbtantial production of wastes and residues worldwide with a low collection of them for energy and animal feed purposes. Total on-farm residues are equivalent to 100% of the total food production, which includes straws, stoves and husks, with approximately 10% currently collected for energy or feed. As for the post-farm residues and wastes, it is estimated that 25% of the total food produciton and 10% of meat products, milk and eggs become losses, with the collection for energy and feed of only 1% of food and meat, 0.1% of milk (derivates) and 0.2% eggs (mostly derivates) out ot this total production. Note that all these values are in energy terms.  ", worksheet.detailed_lever_guides_d48); end
  def test_detailed_lever_guides_h48; assert_equal("Assumes no increase in the production and collection of on-farm residues; and no increase in the production of post-farm wastes and residues, but with a low increse in their collection for energy and feed. ", worksheet.detailed_lever_guides_h48); end
  def test_detailed_lever_guides_i48; assert_equal("Assumes no increase in the production and collection of on-farm residues; and no increase in the production of post-farm wastes and residues, but with a low increse in collection (food from crops and meat from 1% in 2011 to 5% in 2050; eggs from 0.2% in 2011 to 0.5% in 2050; and milk from 0.1% in 2011 to 0.5% in 2050). ", worksheet.detailed_lever_guides_i48); end
  def test_detailed_lever_guides_j48; assert_equal("Moderate increase in the collection of on-farm residues. It also assumes a reduction in the production of post-farm residues and wastes and moderate increase in collection for energy and feed.    ", worksheet.detailed_lever_guides_j48); end
  def test_detailed_lever_guides_k48; assert_equal("Moderate increase in the collection of on-farm residues (from 10% in 2011 to 20% in 2050). It also assumes a reduction in the production of post-farm residues and wastes (food from crops decreasing from 25% in 2011 to 20% in 2050; meat, milk and eggs from 10% in 2011 to 8% in 2050), as well as a moderate increase in collection for energy and feed (food from crops and meat from 1% in 2011 to 15% in 2050; eggs from 0.2% in 2011 to 2% in 2050; and milk from 0.1% in 2011 to 2% in 2050).", worksheet.detailed_lever_guides_k48); end
  def test_detailed_lever_guides_l48; assert_equal("High collection of on-farm residues for energy and feed, as well as reduction in the production of post-farm wastes and residues, and increase in their collection.", worksheet.detailed_lever_guides_l48); end
  def test_detailed_lever_guides_m48; assert_equal("High increase in the collection of on-farm residues (from 10% in 2011 to 30% in 2050). It also assumes a reduction in the production of post-farm residues and wastes (food from crops decreasing from 25% in 2011 to 15% in 2050; meat, milk and eggs from 10% in 2011 to 6% in 2050), as well as a moderate increase in collection for energy and feed (food from crops and meat from 1% in 2011 to 20% in 2050; eggs from 0.2% in 2011 to 5% in 2050; and milk from 0.1% in 2011 to 5% in 2050).", worksheet.detailed_lever_guides_m48); end
  def test_detailed_lever_guides_n48; assert_equal("Extreme collection of on-farm residues for energy and feed, as well as substantial reduction in the production of post-farm wastes and residues, and increase in their collection.", worksheet.detailed_lever_guides_n48); end
  def test_detailed_lever_guides_o48; assert_equal("Extreme increase in the collection of on-farm residues (from 10% in 2011 to 40% in 2050). It also assumes a reduction in the production of post-farm residues and wastes (food from crops decreasing from 25% in 2011 to 10% in 2050; meat, milk and eggs from 10% in 2011 to 5% in 2050), as well as a moderate increase in collection for energy and feed (food from crops and meat from 1% in 2011 to 30% in 2050; eggs from 0.2% in 2011 to 10% in 2050; and milk from 0.1% in 2011 to 10% in 2050).", worksheet.detailed_lever_guides_o48); end
  def test_detailed_lever_guides_b49; assert_equal("Emissions trajectory", worksheet.detailed_lever_guides_b49); end
  def test_detailed_lever_guides_h49; assert_equal("After 2050, emissions are flat", worksheet.detailed_lever_guides_h49); end
  def test_detailed_lever_guides_i49; assert_equal("After 2050, emissions are flat", worksheet.detailed_lever_guides_i49); end
  def test_detailed_lever_guides_j49; assert_equal("After 2050, emissions change every year by one third of the average yearly change for the previous 15 year period (unless an absolute lower limit is hit)", worksheet.detailed_lever_guides_j49); end
  def test_detailed_lever_guides_k49; assert_equal("After 2050, emissions change every year by one third of the average yearly change for the previous 15 year period (unless an absolute lower limit is hit)", worksheet.detailed_lever_guides_k49); end
  def test_detailed_lever_guides_l49; assert_equal("After 2050, emissions change every year by two thirds the average yearly change for the previous 15 year period (unless an absolute lower limit is hit)", worksheet.detailed_lever_guides_l49); end
  def test_detailed_lever_guides_m49; assert_equal("After 2050, emissions change every year by two thirds the average yearly change for the previous 15 year period (unless an absolute lower limit is hit)", worksheet.detailed_lever_guides_m49); end
  def test_detailed_lever_guides_n49; assert_equal("After 2050, emissions change every year by the average yearly change for the previous 15 year period (unless an absolute lower limit is hit)", worksheet.detailed_lever_guides_n49); end
  def test_detailed_lever_guides_o49; assert_equal("After 2050, emissions change every year by the average yearly change for the previous 15 year period (unless an absolute lower limit is hit)", worksheet.detailed_lever_guides_o49); end
  def test_detailed_lever_guides_b50; assert_equal("Atmospheric CO2 fraction", worksheet.detailed_lever_guides_b50); end
  def test_detailed_lever_guides_c50; assert_equal("atm.fraction", worksheet.detailed_lever_guides_c50); end
  def test_detailed_lever_guides_d50; assert_equal("Current fraction of CO2 emissions which remain in the atmosphere: measured at 44±6 %  (IPCC AR5)", worksheet.detailed_lever_guides_d50); end
  def test_detailed_lever_guides_h50; assert_equal("Land and ocean sinks increase; by 2100, only 30% of emitted CO2 remains in atmosphere", worksheet.detailed_lever_guides_h50); end
  def test_detailed_lever_guides_i50; assert_equal("Land and ocean sinks increase relative to the present day; by 2100, only 30% of emitted CO2 remains in atmosphere.  Such a low atmospheric fraction is only expected for trajectories with very low rates of CO2 emissions.", worksheet.detailed_lever_guides_i50); end
  def test_detailed_lever_guides_j50; assert_equal(" Land and ocean sinks remain similar to today; 44% of emitted CO2 remains in atmosphere.", worksheet.detailed_lever_guides_j50); end
  def test_detailed_lever_guides_k50; assert_equal(" Land and ocean sinks remain similar to today; 44% of emitted CO2 remains in atmosphere.", worksheet.detailed_lever_guides_k50); end
  def test_detailed_lever_guides_l50; assert_equal("Land and ocean sinks decrease slightly; by 2100, 60% of emitted CO2 remains in atmosphere.", worksheet.detailed_lever_guides_l50); end
  def test_detailed_lever_guides_m50; assert_equal("Land and ocean sinks decrease slightly; by 2100, 60% of emitted CO2 remains in atmosphere.", worksheet.detailed_lever_guides_m50); end
  def test_detailed_lever_guides_n50; assert_equal("Land and ocean sinks decrease significantly: by 2100, 74% of emitted CO2 remains in atmosphere.", worksheet.detailed_lever_guides_n50); end
  def test_detailed_lever_guides_o50; assert_equal("Land and ocean sinks decrease significantly: by 2100, 74% of emitted CO2 remains in atmosphere.  Such a high atmospheric fraction is only expected for trajectories with very high rates of CO2 emissions.", worksheet.detailed_lever_guides_o50); end
  def test_detailed_lever_guides_b51; assert_equal("Confidence in climate models", worksheet.detailed_lever_guides_b51); end
  def test_detailed_lever_guides_c51; assert_equal("model.unc", worksheet.detailed_lever_guides_c51); end
  def test_detailed_lever_guides_d51; assert_equal("Various methods are used to account for the fact that numerical models cannot represent the full range of our uncertainty about the future climate.", worksheet.detailed_lever_guides_d51); end
  def test_detailed_lever_guides_h51; assert_equal("Show only the raw range of output from climate models.", worksheet.detailed_lever_guides_h51); end
  def test_detailed_lever_guides_i51; assert_equal("Display only the range of model-generated outputs with no additional range to account for unmodelled phenomena.  This level is provided for comparison purposes only.", worksheet.detailed_lever_guides_i51); end
  def test_detailed_lever_guides_j51; assert_equal("Generate an uncertainty range based on model output, using a method similar to the most recent IPCC report, to account for unmodelled phenomena.", worksheet.detailed_lever_guides_j51); end
  def test_detailed_lever_guides_k51; assert_equal("Generate an uncertainty range based on model output, using a method similar to the most recent IPCC report, to account for unmodelled phenomena.  This method takes the \"very likely\" range generated by computer models and downgrades that to a \"likely\" range, so that the effect in the Calculator is to widen the range of projected temperatures.  See documentation for further details.", worksheet.detailed_lever_guides_k51); end
  def test_detailed_lever_guides_l51; assert_equal("Low confidence in climate models.  Show alternative evidence for climate impacts.", worksheet.detailed_lever_guides_l51); end
  def test_detailed_lever_guides_m51; assert_equal("If \"low confidence in climate models\" is selected, no climate model results are shown.  Instead, the \"Basic Physics\" page explains why we can have confidence in certain large-scale climate impacts without using computer models.", worksheet.detailed_lever_guides_m51); end
  def test_detailed_lever_guides_b52; assert_equal("High cost", worksheet.detailed_lever_guides_b52); end
  def test_detailed_lever_guides_h52; assert_equal("US costs", worksheet.detailed_lever_guides_h52); end
  def test_detailed_lever_guides_b53; assert_equal("Point cost", worksheet.detailed_lever_guides_b53); end
  def test_detailed_lever_guides_h53; assert_equal("US costs", worksheet.detailed_lever_guides_h53); end
  def test_detailed_lever_guides_b54; assert_equal("Low cost", worksheet.detailed_lever_guides_b54); end
  def test_detailed_lever_guides_h54; assert_equal("US costs", worksheet.detailed_lever_guides_h54); end
  def test_tables_chosen_pathway_draft__b10; assert_equal("Global average", worksheet.tables_chosen_pathway_draft__b10); end
  def test_tables_chosen_pathway_draft__c10; assert_equal("Urban", worksheet.tables_chosen_pathway_draft__c10); end
  def test_tables_chosen_pathway_draft__d10; assert_equal("Rural", worksheet.tables_chosen_pathway_draft__d10); end
  def test_tables_chosen_pathway_draft__b11; assert_equal("Passenger km/head", worksheet.tables_chosen_pathway_draft__b11); end
  def test_tables_chosen_pathway_draft__c11; assert_equal(:na, worksheet.tables_chosen_pathway_draft__c11); end
  def test_tables_chosen_pathway_draft__d11; assert_equal(:na, worksheet.tables_chosen_pathway_draft__d11); end
  def test_tables_chosen_pathway_draft__b12; assert_equal("% of total passenger km using private transport", worksheet.tables_chosen_pathway_draft__b12); end
  def test_tables_chosen_pathway_draft__c12; assert_equal(:na, worksheet.tables_chosen_pathway_draft__c12); end
  def test_tables_chosen_pathway_draft__d12; assert_equal(:na, worksheet.tables_chosen_pathway_draft__d12); end
  def test_tables_chosen_pathway_draft__b13; assert_equal("Residential building size (metres squared)", worksheet.tables_chosen_pathway_draft__b13); end
  def test_tables_chosen_pathway_draft__c13; assert_equal(:na, worksheet.tables_chosen_pathway_draft__c13); end
  def test_tables_chosen_pathway_draft__d13; assert_equal(:na, worksheet.tables_chosen_pathway_draft__d13); end
  def test_tables_chosen_pathway_draft__b14; assert_equal("Number of appliances per household", worksheet.tables_chosen_pathway_draft__b14); end
  def test_tables_chosen_pathway_draft__c14; assert_equal(:na, worksheet.tables_chosen_pathway_draft__c14); end
  def test_tables_chosen_pathway_draft__d14; assert_equal(:na, worksheet.tables_chosen_pathway_draft__d14); end
  def test_tables_chosen_pathway_draft__b15; assert_equal("Building temperature in warm months (degrees)", worksheet.tables_chosen_pathway_draft__b15); end
  def test_tables_chosen_pathway_draft__c15; assert_equal(:na, worksheet.tables_chosen_pathway_draft__c15); end
  def test_tables_chosen_pathway_draft__d15; assert_equal(:na, worksheet.tables_chosen_pathway_draft__d15); end
  def test_tables_chosen_pathway_draft__b16; assert_equal("Building temp in cold months (degrees)", worksheet.tables_chosen_pathway_draft__b16); end
  def test_tables_chosen_pathway_draft__c16; assert_equal(:na, worksheet.tables_chosen_pathway_draft__c16); end
  def test_tables_chosen_pathway_draft__d16; assert_equal(:na, worksheet.tables_chosen_pathway_draft__d16); end
  def test_tables_chosen_pathway_draft__b17; assert_equal("% of population in urban/rural areas", worksheet.tables_chosen_pathway_draft__b17); end
  def test_tables_chosen_pathway_draft__c17; assert_equal(:na, worksheet.tables_chosen_pathway_draft__c17); end
  def test_tables_chosen_pathway_draft__d17; assert_equal(:na, worksheet.tables_chosen_pathway_draft__d17); end
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
  def test_outputs_energy_flows_w32; assert_in_epsilon(19.166996204499434, worksheet.outputs_energy_flows_w32, 0.002); end
  def test_outputs_energy_flows_x32; assert_in_epsilon(18.17997674160652, worksheet.outputs_energy_flows_x32, 0.002); end
  def test_outputs_energy_flows_y32; assert_in_epsilon(17.220556017879385, worksheet.outputs_energy_flows_y32, 0.002); end
  def test_outputs_energy_flows_z32; assert_in_epsilon(16.388987063875156, worksheet.outputs_energy_flows_z32, 0.002); end
  def test_outputs_energy_flows_aa32; assert_in_epsilon(15.510981992493065, worksheet.outputs_energy_flows_aa32, 0.002); end
  def test_outputs_energy_flows_ab32; assert_in_epsilon(14.908448577900844, worksheet.outputs_energy_flows_ab32, 0.002); end
  def test_outputs_energy_flows_ac32; assert_in_epsilon(14.42445926711063, worksheet.outputs_energy_flows_ac32, 0.002); end
  def test_outputs_energy_flows_ad32; assert_in_epsilon(14.061806180664021, worksheet.outputs_energy_flows_ad32, 0.002); end
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
  def test_outputs_energy_flows_w48; assert_in_epsilon(131.3330814078115, worksheet.outputs_energy_flows_w48, 0.002); end
  def test_outputs_energy_flows_x48; assert_in_epsilon(149.4265295696347, worksheet.outputs_energy_flows_x48, 0.002); end
  def test_outputs_energy_flows_y48; assert_in_epsilon(167.10093981138172, worksheet.outputs_energy_flows_y48, 0.002); end
  def test_outputs_energy_flows_z48; assert_in_epsilon(183.42242651262535, worksheet.outputs_energy_flows_z48, 0.002); end
  def test_outputs_energy_flows_aa48; assert_in_epsilon(196.84816251452827, worksheet.outputs_energy_flows_aa48, 0.002); end
  def test_outputs_energy_flows_ab48; assert_in_epsilon(206.15497577119777, worksheet.outputs_energy_flows_ab48, 0.002); end
  def test_outputs_energy_flows_ac48; assert_in_epsilon(207.7270701166962, worksheet.outputs_energy_flows_ac48, 0.002); end
  def test_outputs_energy_flows_ad48; assert_in_epsilon(211.25926108660425, worksheet.outputs_energy_flows_ad48, 0.002); end
  def test_outputs_energy_flows_c50; assert_equal("Q.01", worksheet.outputs_energy_flows_c50); end
  def test_outputs_energy_flows_d50; assert_equal("Global Coal reserves ", worksheet.outputs_energy_flows_d50); end
  def test_outputs_energy_flows_e50; assert_equal("L.02", worksheet.outputs_energy_flows_e50); end
  def test_outputs_energy_flows_f50; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f50); end
  def test_outputs_energy_flows_g50; assert_equal("Coal.extract", worksheet.outputs_energy_flows_g50); end
  def test_outputs_energy_flows_h50; assert_equal("Global Coal Extraction", worksheet.outputs_energy_flows_h50); end
  def test_outputs_energy_flows_v50; assert_in_epsilon(31.669339178120495, worksheet.outputs_energy_flows_v50, 0.002); end
  def test_outputs_energy_flows_w50; assert_in_epsilon(29.811803755147395, worksheet.outputs_energy_flows_w50, 0.002); end
  def test_outputs_energy_flows_x50; assert_in_epsilon(33.91890548513183, worksheet.outputs_energy_flows_x50, 0.002); end
  def test_outputs_energy_flows_y50; assert_in_epsilon(37.930888178043716, worksheet.outputs_energy_flows_y50, 0.002); end
  def test_outputs_energy_flows_z50; assert_in_epsilon(28.626621478849046, worksheet.outputs_energy_flows_z50, 0.002); end
  def test_outputs_energy_flows_aa50; assert_in_epsilon(30.72196756007088, worksheet.outputs_energy_flows_aa50, 0.002); end
  def test_outputs_energy_flows_ab50; assert_in_epsilon(32.174475987412364, worksheet.outputs_energy_flows_ab50, 0.002); end
  def test_outputs_energy_flows_ac50; assert_in_epsilon(32.41983175231675, worksheet.outputs_energy_flows_ac50, 0.002); end
  def test_outputs_energy_flows_ad50; assert_in_epsilon(31.28868505186216, worksheet.outputs_energy_flows_ad50, 0.002); end
  def test_outputs_energy_flows_c52; assert_equal("Q.02", worksheet.outputs_energy_flows_c52); end
  def test_outputs_energy_flows_d52; assert_equal("Global Oil reserves ", worksheet.outputs_energy_flows_d52); end
  def test_outputs_energy_flows_e52; assert_equal("CFF.02", worksheet.outputs_energy_flows_e52); end
  def test_outputs_energy_flows_f52; assert_equal("Global Crude oil", worksheet.outputs_energy_flows_f52); end
  def test_outputs_energy_flows_g52; assert_equal("Oil.extract", worksheet.outputs_energy_flows_g52); end
  def test_outputs_energy_flows_h52; assert_equal("Global Oil Extraction", worksheet.outputs_energy_flows_h52); end
  def test_outputs_energy_flows_v52; assert_in_epsilon(165.2139601973134, worksheet.outputs_energy_flows_v52, 0.002); end
  def test_outputs_energy_flows_w52; assert_in_epsilon(182.1287468441799, worksheet.outputs_energy_flows_w52, 0.002); end
  def test_outputs_energy_flows_x52; assert_in_epsilon(197.30313002445908, worksheet.outputs_energy_flows_x52, 0.002); end
  def test_outputs_energy_flows_y52; assert_in_epsilon(212.2879586368494, worksheet.outputs_energy_flows_y52, 0.002); end
  def test_outputs_energy_flows_z52; assert_in_epsilon(229.35558008702097, worksheet.outputs_energy_flows_z52, 0.002); end
  def test_outputs_energy_flows_aa52; assert_in_epsilon(244.2328451679457, worksheet.outputs_energy_flows_aa52, 0.002); end
  def test_outputs_energy_flows_ab52; assert_in_epsilon(262.1873115457835, worksheet.outputs_energy_flows_ab52, 0.002); end
  def test_outputs_energy_flows_ac52; assert_in_epsilon(282.5574830956591, worksheet.outputs_energy_flows_ac52, 0.002); end
  def test_outputs_energy_flows_ad52; assert_in_epsilon(299.46114532416493, worksheet.outputs_energy_flows_ad52, 0.002); end
  def test_outputs_energy_flows_c54; assert_equal("Q.02", worksheet.outputs_energy_flows_c54); end
  def test_outputs_energy_flows_d54; assert_equal("Global Oil reserves ", worksheet.outputs_energy_flows_d54); end
  def test_outputs_energy_flows_e54; assert_equal("L.02", worksheet.outputs_energy_flows_e54); end
  def test_outputs_energy_flows_f54; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f54); end
  def test_outputs_energy_flows_g54; assert_equal("Oil.extract", worksheet.outputs_energy_flows_g54); end
  def test_outputs_energy_flows_h54; assert_equal("Global Oil Extraction", worksheet.outputs_energy_flows_h54); end
  def test_outputs_energy_flows_v54; assert_in_epsilon(12.435459369690221, worksheet.outputs_energy_flows_v54, 0.002); end
  def test_outputs_energy_flows_w54; assert_in_epsilon(13.708615353862967, worksheet.outputs_energy_flows_w54, 0.002); end
  def test_outputs_energy_flows_x54; assert_in_epsilon(14.850773227647409, worksheet.outputs_energy_flows_x54, 0.002); end
  def test_outputs_energy_flows_y54; assert_in_epsilon(15.978663553311208, worksheet.outputs_energy_flows_y54, 0.002); end
  def test_outputs_energy_flows_z54; assert_in_epsilon(17.263323232356385, worksheet.outputs_energy_flows_z54, 0.002); end
  def test_outputs_energy_flows_aa54; assert_in_epsilon(14.762748859568319, worksheet.outputs_energy_flows_aa54, 0.002); end
  def test_outputs_energy_flows_ab54; assert_in_epsilon(15.848013529278546, worksheet.outputs_energy_flows_ab54, 0.002); end
  def test_outputs_energy_flows_ac54; assert_in_epsilon(17.07929643314168, worksheet.outputs_energy_flows_ac54, 0.002); end
  def test_outputs_energy_flows_ad54; assert_in_epsilon(18.101044839318604, worksheet.outputs_energy_flows_ad54, 0.002); end
  def test_outputs_energy_flows_c56; assert_equal("Q.03", worksheet.outputs_energy_flows_c56); end
  def test_outputs_energy_flows_d56; assert_equal("Global Gas reserves ", worksheet.outputs_energy_flows_d56); end
  def test_outputs_energy_flows_e56; assert_equal("CFF.03", worksheet.outputs_energy_flows_e56); end
  def test_outputs_energy_flows_f56; assert_equal("Global Unprocessed gas", worksheet.outputs_energy_flows_f56); end
  def test_outputs_energy_flows_g56; assert_equal("NaturalGas.extract", worksheet.outputs_energy_flows_g56); end
  def test_outputs_energy_flows_h56; assert_equal("Global Natural Gas Extraction", worksheet.outputs_energy_flows_h56); end
  def test_outputs_energy_flows_v56; assert_in_epsilon(89.96839014856472, worksheet.outputs_energy_flows_v56, 0.002); end
  def test_outputs_energy_flows_w56; assert_in_epsilon(95.65857742026618, worksheet.outputs_energy_flows_w56, 0.002); end
  def test_outputs_energy_flows_x56; assert_in_epsilon(102.06919818556969, worksheet.outputs_energy_flows_x56, 0.002); end
  def test_outputs_energy_flows_y56; assert_in_epsilon(109.79132643695297, worksheet.outputs_energy_flows_y56, 0.002); end
  def test_outputs_energy_flows_z56; assert_in_epsilon(119.24213899923578, worksheet.outputs_energy_flows_z56, 0.002); end
  def test_outputs_energy_flows_aa56; assert_in_epsilon(128.84937608490029, worksheet.outputs_energy_flows_aa56, 0.002); end
  def test_outputs_energy_flows_ab56; assert_in_epsilon(136.83700660738074, worksheet.outputs_energy_flows_ab56, 0.002); end
  def test_outputs_energy_flows_ac56; assert_in_epsilon(147.98696690501612, worksheet.outputs_energy_flows_ac56, 0.002); end
  def test_outputs_energy_flows_ad56; assert_in_epsilon(157.2293434530718, worksheet.outputs_energy_flows_ad56, 0.002); end
  def test_outputs_energy_flows_c58; assert_equal("Q.03", worksheet.outputs_energy_flows_c58); end
  def test_outputs_energy_flows_d58; assert_equal("Global Gas reserves ", worksheet.outputs_energy_flows_d58); end
  def test_outputs_energy_flows_e58; assert_equal("L.02", worksheet.outputs_energy_flows_e58); end
  def test_outputs_energy_flows_f58; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f58); end
  def test_outputs_energy_flows_g58; assert_equal("NaturalGas.extract", worksheet.outputs_energy_flows_g58); end
  def test_outputs_energy_flows_h58; assert_equal("Global Natural Gas Extraction", worksheet.outputs_energy_flows_h58); end
  def test_outputs_energy_flows_v58; assert_in_epsilon(38.55788149224203, worksheet.outputs_energy_flows_v58, 0.002); end
  def test_outputs_energy_flows_w58; assert_in_epsilon(40.9965331801141, worksheet.outputs_energy_flows_w58, 0.002); end
  def test_outputs_energy_flows_x58; assert_in_epsilon(43.74394207952989, worksheet.outputs_energy_flows_x58, 0.002); end
  def test_outputs_energy_flows_y58; assert_in_epsilon(47.053425615837, worksheet.outputs_energy_flows_y58, 0.002); end
  def test_outputs_energy_flows_z58; assert_in_epsilon(36.62993812394825, worksheet.outputs_energy_flows_z58, 0.002); end
  def test_outputs_energy_flows_aa58; assert_in_epsilon(39.58118088882557, worksheet.outputs_energy_flows_aa58, 0.002); end
  def test_outputs_energy_flows_ab58; assert_in_epsilon(42.03489745455488, worksheet.outputs_energy_flows_ab58, 0.002); end
  def test_outputs_energy_flows_ac58; assert_in_epsilon(45.46004865709645, worksheet.outputs_energy_flows_ac58, 0.002); end
  def test_outputs_energy_flows_ad58; assert_in_epsilon(48.29921008035538, worksheet.outputs_energy_flows_ad58, 0.002); end
  def test_outputs_energy_flows_c60; assert_equal("CFF.01", worksheet.outputs_energy_flows_c60); end
  def test_outputs_energy_flows_d60; assert_equal("Global Crude coal", worksheet.outputs_energy_flows_d60); end
  def test_outputs_energy_flows_e60; assert_equal("FF.01", worksheet.outputs_energy_flows_e60); end
  def test_outputs_energy_flows_f60; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_f60); end
  def test_outputs_energy_flows_g60; assert_equal("Coal.wash", worksheet.outputs_energy_flows_g60); end
  def test_outputs_energy_flows_h60; assert_equal("Global Coal washeries", worksheet.outputs_energy_flows_h60); end
  def test_outputs_energy_flows_v60; assert_in_epsilon(120.34348887685792, worksheet.outputs_energy_flows_v60, 0.002); end
  def test_outputs_energy_flows_w60; assert_in_epsilon(123.84709576756624, worksheet.outputs_energy_flows_w60, 0.002); end
  def test_outputs_energy_flows_x60; assert_in_epsilon(139.4149520884692, worksheet.outputs_energy_flows_x60, 0.002); end
  def test_outputs_energy_flows_y60; assert_in_epsilon(154.73547026533947, worksheet.outputs_energy_flows_y60, 0.002); end
  def test_outputs_energy_flows_z60; assert_in_epsilon(168.01494268556485, worksheet.outputs_energy_flows_z60, 0.002); end
  def test_outputs_energy_flows_aa60; assert_in_epsilon(178.9349797257062, worksheet.outputs_energy_flows_aa60, 0.002); end
  def test_outputs_energy_flows_ab60; assert_in_epsilon(185.3333232183068, worksheet.outputs_energy_flows_ab60, 0.002); end
  def test_outputs_energy_flows_ac60; assert_in_epsilon(185.29254654409306, worksheet.outputs_energy_flows_ac60, 0.002); end
  def test_outputs_energy_flows_ad60; assert_in_epsilon(186.33066827838493, worksheet.outputs_energy_flows_ad60, 0.002); end
  def test_outputs_energy_flows_c62; assert_equal("CFF.01", worksheet.outputs_energy_flows_c62); end
  def test_outputs_energy_flows_d62; assert_equal("Global Crude coal", worksheet.outputs_energy_flows_d62); end
  def test_outputs_energy_flows_e62; assert_equal("L.02", worksheet.outputs_energy_flows_e62); end
  def test_outputs_energy_flows_f62; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f62); end
  def test_outputs_energy_flows_g62; assert_equal("Coal.wash", worksheet.outputs_energy_flows_g62); end
  def test_outputs_energy_flows_h62; assert_equal("Global Coal washeries", worksheet.outputs_energy_flows_h62); end
  def test_outputs_energy_flows_v62; assert_in_epsilon(6.333867835624105, worksheet.outputs_energy_flows_v62, 0.002); end
  def test_outputs_energy_flows_w62; assert_in_epsilon(7.485985640245261, worksheet.outputs_energy_flows_w62, 0.002); end
  def test_outputs_energy_flows_x62; assert_in_epsilon(10.011577481165517, worksheet.outputs_energy_flows_x62, 0.002); end
  def test_outputs_energy_flows_y62; assert_in_epsilon(12.365469546042249, worksheet.outputs_energy_flows_y62, 0.002); end
  def test_outputs_energy_flows_z62; assert_in_epsilon(15.407483827060503, worksheet.outputs_energy_flows_z62, 0.002); end
  def test_outputs_energy_flows_aa62; assert_in_epsilon(17.91318278882207, worksheet.outputs_energy_flows_aa62, 0.002); end
  def test_outputs_energy_flows_ab62; assert_in_epsilon(20.82165255289098, worksheet.outputs_energy_flows_ab62, 0.002); end
  def test_outputs_energy_flows_ac62; assert_in_epsilon(22.434523572603155, worksheet.outputs_energy_flows_ac62, 0.002); end
  def test_outputs_energy_flows_ad62; assert_in_epsilon(24.92859280821932, worksheet.outputs_energy_flows_ad62, 0.002); end
  def test_outputs_energy_flows_c64; assert_equal("CFF.02", worksheet.outputs_energy_flows_c64); end
  def test_outputs_energy_flows_d64; assert_equal("Global Crude oil", worksheet.outputs_energy_flows_d64); end
  def test_outputs_energy_flows_e64; assert_equal("FF.02", worksheet.outputs_energy_flows_e64); end
  def test_outputs_energy_flows_f64; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_f64); end
  def test_outputs_energy_flows_g64; assert_equal("Oil.refine", worksheet.outputs_energy_flows_g64); end
  def test_outputs_energy_flows_h64; assert_equal("Global Oil refineries", worksheet.outputs_energy_flows_h64); end
  def test_outputs_energy_flows_v64; assert_in_epsilon(153.1552875458585, worksheet.outputs_energy_flows_v64, 0.002); end
  def test_outputs_energy_flows_w64; assert_in_epsilon(169.37973456508732, worksheet.outputs_energy_flows_w64, 0.002); end
  def test_outputs_energy_flows_x64; assert_in_epsilon(183.49191092274697, worksheet.outputs_energy_flows_x64, 0.002); end
  def test_outputs_energy_flows_y64; assert_in_epsilon(197.42780153226997, worksheet.outputs_energy_flows_y64, 0.002); end
  def test_outputs_energy_flows_z64; assert_in_epsilon(213.30068948092955, worksheet.outputs_energy_flows_z64, 0.002); end
  def test_outputs_energy_flows_aa64; assert_in_epsilon(229.57887445786895, worksheet.outputs_energy_flows_aa64, 0.002); end
  def test_outputs_energy_flows_ab64; assert_in_epsilon(246.45607285303643, worksheet.outputs_energy_flows_ab64, 0.002); end
  def test_outputs_energy_flows_ac64; assert_in_epsilon(265.60403410991955, worksheet.outputs_energy_flows_ac64, 0.002); end
  def test_outputs_energy_flows_ad64; assert_in_epsilon(281.493476604715, worksheet.outputs_energy_flows_ad64, 0.002); end
  def test_outputs_energy_flows_c66; assert_equal("CFF.02", worksheet.outputs_energy_flows_c66); end
  def test_outputs_energy_flows_d66; assert_equal("Global Crude oil", worksheet.outputs_energy_flows_d66); end
  def test_outputs_energy_flows_e66; assert_equal("L.02", worksheet.outputs_energy_flows_e66); end
  def test_outputs_energy_flows_f66; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f66); end
  def test_outputs_energy_flows_g66; assert_equal("Oil.refine", worksheet.outputs_energy_flows_g66); end
  def test_outputs_energy_flows_h66; assert_equal("Global Oil refineries", worksheet.outputs_energy_flows_h66); end
  def test_outputs_energy_flows_v66; assert_in_epsilon(12.058672651454913, worksheet.outputs_energy_flows_v66, 0.002); end
  def test_outputs_energy_flows_w66; assert_in_epsilon(12.749012279092568, worksheet.outputs_energy_flows_w66, 0.002); end
  def test_outputs_energy_flows_x66; assert_in_epsilon(13.811219101712112, worksheet.outputs_energy_flows_x66, 0.002); end
  def test_outputs_energy_flows_y66; assert_in_epsilon(14.860157104579429, worksheet.outputs_energy_flows_y66, 0.002); end
  def test_outputs_energy_flows_z66; assert_in_epsilon(16.05489060609142, worksheet.outputs_energy_flows_z66, 0.002); end
  def test_outputs_energy_flows_aa66; assert_in_epsilon(14.653970710076749, worksheet.outputs_energy_flows_aa66, 0.002); end
  def test_outputs_energy_flows_ab66; assert_in_epsilon(15.731238692747041, worksheet.outputs_energy_flows_ab66, 0.002); end
  def test_outputs_energy_flows_ac66; assert_in_epsilon(16.953448985739556, worksheet.outputs_energy_flows_ac66, 0.002); end
  def test_outputs_energy_flows_ad66; assert_in_epsilon(17.967668719449932, worksheet.outputs_energy_flows_ad66, 0.002); end
  def test_outputs_energy_flows_c68; assert_equal("CFF.03", worksheet.outputs_energy_flows_c68); end
  def test_outputs_energy_flows_d68; assert_equal("Global Unprocessed gas", worksheet.outputs_energy_flows_d68); end
  def test_outputs_energy_flows_e68; assert_equal("FF.03", worksheet.outputs_energy_flows_e68); end
  def test_outputs_energy_flows_f68; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_f68); end
  def test_outputs_energy_flows_g68; assert_equal("Natural.gas.process", worksheet.outputs_energy_flows_g68); end
  def test_outputs_energy_flows_h68; assert_equal("Global Natural gas processing plants", worksheet.outputs_energy_flows_h68); end
  def test_outputs_energy_flows_v68; assert_in_epsilon(88.16902234559343, worksheet.outputs_energy_flows_v68, 0.002); end
  def test_outputs_energy_flows_w68; assert_in_epsilon(93.74540587186085, worksheet.outputs_energy_flows_w68, 0.002); end
  def test_outputs_energy_flows_x68; assert_in_epsilon(100.02781422185829, worksheet.outputs_energy_flows_x68, 0.002); end
  def test_outputs_energy_flows_y68; assert_in_epsilon(107.59549990821391, worksheet.outputs_energy_flows_y68, 0.002); end
  def test_outputs_energy_flows_z68; assert_in_epsilon(116.85729621925105, worksheet.outputs_energy_flows_z68, 0.002); end
  def test_outputs_energy_flows_aa68; assert_in_epsilon(126.27238856320228, worksheet.outputs_energy_flows_aa68, 0.002); end
  def test_outputs_energy_flows_ab68; assert_in_epsilon(134.10026647523313, worksheet.outputs_energy_flows_ab68, 0.002); end
  def test_outputs_energy_flows_ac68; assert_in_epsilon(145.0272275669158, worksheet.outputs_energy_flows_ac68, 0.002); end
  def test_outputs_energy_flows_ad68; assert_in_epsilon(154.08475658401036, worksheet.outputs_energy_flows_ad68, 0.002); end
  def test_outputs_energy_flows_c70; assert_equal("CFF.03", worksheet.outputs_energy_flows_c70); end
  def test_outputs_energy_flows_d70; assert_equal("Global Unprocessed gas", worksheet.outputs_energy_flows_d70); end
  def test_outputs_energy_flows_e70; assert_equal("L.02", worksheet.outputs_energy_flows_e70); end
  def test_outputs_energy_flows_f70; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f70); end
  def test_outputs_energy_flows_g70; assert_equal("Natural.gas.process", worksheet.outputs_energy_flows_g70); end
  def test_outputs_energy_flows_h70; assert_equal("Global Natural gas processing plants", worksheet.outputs_energy_flows_h70); end
  def test_outputs_energy_flows_v70; assert_in_epsilon(1.7993678029712896, worksheet.outputs_energy_flows_v70, 0.002); end
  def test_outputs_energy_flows_w70; assert_in_epsilon(1.9131715484053302, worksheet.outputs_energy_flows_w70, 0.002); end
  def test_outputs_energy_flows_x70; assert_in_epsilon(2.0413839637113966, worksheet.outputs_energy_flows_x70, 0.002); end
  def test_outputs_energy_flows_y70; assert_in_epsilon(2.1958265287390617, worksheet.outputs_energy_flows_y70, 0.002); end
  def test_outputs_energy_flows_z70; assert_in_epsilon(2.384842779984723, worksheet.outputs_energy_flows_z70, 0.002); end
  def test_outputs_energy_flows_aa70; assert_in_epsilon(2.576987521698001, worksheet.outputs_energy_flows_aa70, 0.002); end
  def test_outputs_energy_flows_ab70; assert_in_epsilon(2.7367401321476166, worksheet.outputs_energy_flows_ab70, 0.002); end
  def test_outputs_energy_flows_ac70; assert_in_epsilon(2.95973933810032, worksheet.outputs_energy_flows_ac70, 0.002); end
  def test_outputs_energy_flows_ad70; assert_in_epsilon(3.144586869061442, worksheet.outputs_energy_flows_ad70, 0.002); end
  def test_outputs_energy_flows_c72; assert_equal("FF.01", worksheet.outputs_energy_flows_c72); end
  def test_outputs_energy_flows_d72; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d72); end
  def test_outputs_energy_flows_e72; assert_equal("n/a", worksheet.outputs_energy_flows_e72); end
  def test_outputs_energy_flows_f72; assert_equal("Solid", worksheet.outputs_energy_flows_f72); end
  def test_outputs_energy_flows_g72; assert_equal("coal.network", worksheet.outputs_energy_flows_g72); end
  def test_outputs_energy_flows_h72; assert_equal("Global Coal distribution network", worksheet.outputs_energy_flows_h72); end
  def test_outputs_energy_flows_i72; assert_equal("C.01", worksheet.outputs_energy_flows_i72); end
  def test_outputs_energy_flows_j72; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j72); end
  def test_outputs_energy_flows_v72; assert_in_epsilon(120.08870818706784, worksheet.outputs_energy_flows_v72, 0.002); end
  def test_outputs_energy_flows_w72; assert_in_epsilon(123.58489754826377, worksheet.outputs_energy_flows_w72, 0.002); end
  def test_outputs_energy_flows_x72; assert_in_epsilon(139.11979496786668, worksheet.outputs_energy_flows_x72, 0.002); end
  def test_outputs_energy_flows_y72; assert_in_epsilon(154.40787788608299, worksheet.outputs_energy_flows_y72, 0.002); end
  def test_outputs_energy_flows_z72; assert_in_epsilon(167.65923617088774, worksheet.outputs_energy_flows_z72, 0.002); end
  def test_outputs_energy_flows_aa72; assert_in_epsilon(178.55615426545432, worksheet.outputs_energy_flows_aa72, 0.002); end
  def test_outputs_energy_flows_ab72; assert_in_epsilon(184.94095174585456, worksheet.outputs_energy_flows_ab72, 0.002); end
  def test_outputs_energy_flows_ac72; assert_in_epsilon(184.9002614004425, worksheet.outputs_energy_flows_ac72, 0.002); end
  def test_outputs_energy_flows_ad72; assert_in_epsilon(185.93618531436192, worksheet.outputs_energy_flows_ad72, 0.002); end
  def test_outputs_energy_flows_c74; assert_equal("FF.01", worksheet.outputs_energy_flows_c74); end
  def test_outputs_energy_flows_d74; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d74); end
  def test_outputs_energy_flows_e74; assert_equal("L.02", worksheet.outputs_energy_flows_e74); end
  def test_outputs_energy_flows_f74; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f74); end
  def test_outputs_energy_flows_g74; assert_equal("coal.network", worksheet.outputs_energy_flows_g74); end
  def test_outputs_energy_flows_h74; assert_equal("Global Coal distribution network", worksheet.outputs_energy_flows_h74); end
  def test_outputs_energy_flows_i74; assert_equal("C.01", worksheet.outputs_energy_flows_i74); end
  def test_outputs_energy_flows_j74; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j74); end
  def test_outputs_energy_flows_v74; assert_in_delta(0.2547806897900884, worksheet.outputs_energy_flows_v74, 0.002); end
  def test_outputs_energy_flows_w74; assert_in_delta(0.26219821930247755, worksheet.outputs_energy_flows_w74, 0.002); end
  def test_outputs_energy_flows_x74; assert_in_delta(0.2951571206024994, worksheet.outputs_energy_flows_x74, 0.002); end
  def test_outputs_energy_flows_y74; assert_in_delta(0.3275923792564906, worksheet.outputs_energy_flows_y74, 0.002); end
  def test_outputs_energy_flows_z74; assert_in_delta(0.3557065146771074, worksheet.outputs_energy_flows_z74, 0.002); end
  def test_outputs_energy_flows_aa74; assert_in_delta(0.37882546025186503, worksheet.outputs_energy_flows_aa74, 0.002); end
  def test_outputs_energy_flows_ab74; assert_in_delta(0.3923714724522158, worksheet.outputs_energy_flows_ab74, 0.002); end
  def test_outputs_energy_flows_ac74; assert_in_delta(0.3922851436505459, worksheet.outputs_energy_flows_ac74, 0.002); end
  def test_outputs_energy_flows_ad74; assert_in_delta(0.3944829640230267, worksheet.outputs_energy_flows_ad74, 0.002); end
  def test_outputs_energy_flows_c76; assert_equal("FF.02", worksheet.outputs_energy_flows_c76); end
  def test_outputs_energy_flows_d76; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d76); end
  def test_outputs_energy_flows_e76; assert_equal("n/a", worksheet.outputs_energy_flows_e76); end
  def test_outputs_energy_flows_f76; assert_equal("Liquid", worksheet.outputs_energy_flows_f76); end
  def test_outputs_energy_flows_g76; assert_equal("oil.network", worksheet.outputs_energy_flows_g76); end
  def test_outputs_energy_flows_h76; assert_equal("Global Oil distribution network", worksheet.outputs_energy_flows_h76); end
  def test_outputs_energy_flows_i76; assert_equal("C.02", worksheet.outputs_energy_flows_i76); end
  def test_outputs_energy_flows_j76; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j76); end
  def test_outputs_energy_flows_v76; assert_in_epsilon(153.0104275275249, worksheet.outputs_energy_flows_v76, 0.002); end
  def test_outputs_energy_flows_w76; assert_in_epsilon(169.21952885591722, worksheet.outputs_energy_flows_w76, 0.002); end
  def test_outputs_energy_flows_x76; assert_in_epsilon(183.31835738759804, worksheet.outputs_energy_flows_x76, 0.002); end
  def test_outputs_energy_flows_y76; assert_in_epsilon(197.2410669088182, worksheet.outputs_energy_flows_y76, 0.002); end
  def test_outputs_energy_flows_z76; assert_in_epsilon(213.09894168440297, worksheet.outputs_energy_flows_z76, 0.002); end
  def test_outputs_energy_flows_aa76; assert_in_epsilon(229.36173014312885, worksheet.outputs_energy_flows_aa76, 0.002); end
  def test_outputs_energy_flows_ab76; assert_in_epsilon(246.22296545071302, worksheet.outputs_energy_flows_ab76, 0.002); end
  def test_outputs_energy_flows_ac76; assert_in_epsilon(265.35281584728455, worksheet.outputs_energy_flows_ac76, 0.002); end
  def test_outputs_energy_flows_ad76; assert_in_epsilon(281.2272295110942, worksheet.outputs_energy_flows_ad76, 0.002); end
  def test_outputs_energy_flows_c78; assert_equal("FF.02", worksheet.outputs_energy_flows_c78); end
  def test_outputs_energy_flows_d78; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d78); end
  def test_outputs_energy_flows_e78; assert_equal("L.02", worksheet.outputs_energy_flows_e78); end
  def test_outputs_energy_flows_f78; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f78); end
  def test_outputs_energy_flows_g78; assert_equal("oil.network", worksheet.outputs_energy_flows_g78); end
  def test_outputs_energy_flows_h78; assert_equal("Global Oil distribution network", worksheet.outputs_energy_flows_h78); end
  def test_outputs_energy_flows_i78; assert_equal("C.02", worksheet.outputs_energy_flows_i78); end
  def test_outputs_energy_flows_j78; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j78); end
  def test_outputs_energy_flows_v78; assert_in_delta(0.14486001833357612, worksheet.outputs_energy_flows_v78, 0.002); end
  def test_outputs_energy_flows_w78; assert_in_delta(0.16020570917009974, worksheet.outputs_energy_flows_w78, 0.002); end
  def test_outputs_energy_flows_x78; assert_in_delta(0.17355353514891306, worksheet.outputs_energy_flows_x78, 0.002); end
  def test_outputs_energy_flows_y78; assert_in_delta(0.18673462345176223, worksheet.outputs_energy_flows_y78, 0.002); end
  def test_outputs_energy_flows_z78; assert_in_delta(0.20174779652658112, worksheet.outputs_energy_flows_z78, 0.002); end
  def test_outputs_energy_flows_aa78; assert_in_delta(0.21714431474010165, worksheet.outputs_energy_flows_aa78, 0.002); end
  def test_outputs_energy_flows_ab78; assert_in_delta(0.2331074023234234, worksheet.outputs_energy_flows_ab78, 0.002); end
  def test_outputs_energy_flows_ac78; assert_in_delta(0.25121826263500197, worksheet.outputs_energy_flows_ac78, 0.002); end
  def test_outputs_energy_flows_ad78; assert_in_delta(0.2662470936207893, worksheet.outputs_energy_flows_ad78, 0.002); end
  def test_outputs_energy_flows_c80; assert_equal("FF.03", worksheet.outputs_energy_flows_c80); end
  def test_outputs_energy_flows_d80; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d80); end
  def test_outputs_energy_flows_e80; assert_equal("n/a", worksheet.outputs_energy_flows_e80); end
  def test_outputs_energy_flows_f80; assert_equal("Gas", worksheet.outputs_energy_flows_f80); end
  def test_outputs_energy_flows_g80; assert_equal("gas.nework", worksheet.outputs_energy_flows_g80); end
  def test_outputs_energy_flows_h80; assert_equal("Global Gas distribution network", worksheet.outputs_energy_flows_h80); end
  def test_outputs_energy_flows_i80; assert_equal("C.03", worksheet.outputs_energy_flows_i80); end
  def test_outputs_energy_flows_j80; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j80); end
  def test_outputs_energy_flows_v80; assert_in_epsilon(85.74387898879355, worksheet.outputs_energy_flows_v80, 0.002); end
  def test_outputs_energy_flows_w80; assert_in_epsilon(91.16688064573857, worksheet.outputs_energy_flows_w80, 0.002); end
  def test_outputs_energy_flows_x80; assert_in_epsilon(97.27648747804444, worksheet.outputs_energy_flows_x80, 0.002); end
  def test_outputs_energy_flows_y80; assert_in_epsilon(104.63601930060108, worksheet.outputs_energy_flows_y80, 0.002); end
  def test_outputs_energy_flows_z80; assert_in_epsilon(113.64306418990073, worksheet.outputs_energy_flows_z80, 0.002); end
  def test_outputs_energy_flows_aa80; assert_in_epsilon(122.79918861015089, worksheet.outputs_energy_flows_aa80, 0.002); end
  def test_outputs_energy_flows_ab80; assert_in_epsilon(130.4117559106861, worksheet.outputs_energy_flows_ab80, 0.002); end
  def test_outputs_energy_flows_ac80; assert_in_epsilon(141.03816419599153, worksheet.outputs_energy_flows_ac80, 0.002); end
  def test_outputs_energy_flows_ad80; assert_in_epsilon(149.84656028929422, worksheet.outputs_energy_flows_ad80, 0.002); end
  def test_outputs_energy_flows_c82; assert_equal("FF.03", worksheet.outputs_energy_flows_c82); end
  def test_outputs_energy_flows_d82; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d82); end
  def test_outputs_energy_flows_e82; assert_equal("L.02", worksheet.outputs_energy_flows_e82); end
  def test_outputs_energy_flows_f82; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f82); end
  def test_outputs_energy_flows_g82; assert_equal("gas.nework", worksheet.outputs_energy_flows_g82); end
  def test_outputs_energy_flows_h82; assert_equal("Global Gas distribution network", worksheet.outputs_energy_flows_h82); end
  def test_outputs_energy_flows_i82; assert_equal("C.03", worksheet.outputs_energy_flows_i82); end
  def test_outputs_energy_flows_j82; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j82); end
  def test_outputs_energy_flows_v82; assert_in_epsilon(2.4251433567998735, worksheet.outputs_energy_flows_v82, 0.002); end
  def test_outputs_energy_flows_w82; assert_in_epsilon(2.5785252261222746, worksheet.outputs_energy_flows_w82, 0.002); end
  def test_outputs_energy_flows_x82; assert_in_epsilon(2.751326743813843, worksheet.outputs_energy_flows_x82, 0.002); end
  def test_outputs_energy_flows_y82; assert_in_epsilon(2.959480607612834, worksheet.outputs_energy_flows_y82, 0.002); end
  def test_outputs_energy_flows_z82; assert_in_epsilon(3.2142320293503337, worksheet.outputs_energy_flows_z82, 0.002); end
  def test_outputs_energy_flows_aa82; assert_in_epsilon(3.4731999530513935, worksheet.outputs_energy_flows_aa82, 0.002); end
  def test_outputs_energy_flows_ab82; assert_in_epsilon(3.688510564547029, worksheet.outputs_energy_flows_ab82, 0.002); end
  def test_outputs_energy_flows_ac82; assert_in_epsilon(3.9890633709242596, worksheet.outputs_energy_flows_ac82, 0.002); end
  def test_outputs_energy_flows_ad82; assert_in_epsilon(4.238196294716136, worksheet.outputs_energy_flows_ad82, 0.002); end
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
  def test_outputs_energy_flows_w92; assert_in_epsilon(87.47879166770862, worksheet.outputs_energy_flows_w92, 0.002); end
  def test_outputs_energy_flows_x92; assert_in_epsilon(98.47725338773073, worksheet.outputs_energy_flows_x92, 0.002); end
  def test_outputs_energy_flows_y92; assert_in_epsilon(109.22930667560234, worksheet.outputs_energy_flows_y92, 0.002); end
  def test_outputs_energy_flows_z92; assert_in_epsilon(118.15457182481892, worksheet.outputs_energy_flows_z92, 0.002); end
  def test_outputs_energy_flows_aa92; assert_in_epsilon(124.78275365144495, worksheet.outputs_energy_flows_aa92, 0.002); end
  def test_outputs_energy_flows_ab92; assert_in_epsilon(127.13424464292576, worksheet.outputs_energy_flows_ab92, 0.002); end
  def test_outputs_energy_flows_ac92; assert_in_epsilon(122.90349911640429, worksheet.outputs_energy_flows_ac92, 0.002); end
  def test_outputs_energy_flows_ad92; assert_in_epsilon(120.51118364650915, worksheet.outputs_energy_flows_ad92, 0.002); end
  def test_outputs_energy_flows_c94; assert_equal("n/a", worksheet.outputs_energy_flows_c94); end
  def test_outputs_energy_flows_d94; assert_equal("Liquid", worksheet.outputs_energy_flows_d94); end
  def test_outputs_energy_flows_e94; assert_equal("n/a", worksheet.outputs_energy_flows_e94); end
  def test_outputs_energy_flows_f94; assert_equal("Thermal generation", worksheet.outputs_energy_flows_f94); end
  def test_outputs_energy_flows_i94; assert_equal("C.02", worksheet.outputs_energy_flows_i94); end
  def test_outputs_energy_flows_j94; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j94); end
  def test_outputs_energy_flows_k94; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k94); end
  def test_outputs_energy_flows_l94; assert_equal("Unabated power", worksheet.outputs_energy_flows_l94); end
  def test_outputs_energy_flows_v94; assert_in_epsilon(13.366790608402482, worksheet.outputs_energy_flows_v94, 0.002); end
  def test_outputs_energy_flows_w94; assert_in_epsilon(21.182714988562644, worksheet.outputs_energy_flows_w94, 0.002); end
  def test_outputs_energy_flows_x94; assert_in_epsilon(24.434670210992987, worksheet.outputs_energy_flows_x94, 0.002); end
  def test_outputs_energy_flows_y94; assert_in_epsilon(27.983127083781245, worksheet.outputs_energy_flows_y94, 0.002); end
  def test_outputs_energy_flows_z94; assert_in_epsilon(33.18312335130325, worksheet.outputs_energy_flows_z94, 0.002); end
  def test_outputs_energy_flows_aa94; assert_in_epsilon(38.86402187580834, worksheet.outputs_energy_flows_aa94, 0.002); end
  def test_outputs_energy_flows_ab94; assert_in_epsilon(45.46676658938077, worksheet.outputs_energy_flows_ab94, 0.002); end
  def test_outputs_energy_flows_ac94; assert_in_epsilon(53.82879750217999, worksheet.outputs_energy_flows_ac94, 0.002); end
  def test_outputs_energy_flows_ad94; assert_in_epsilon(59.72226923668789, worksheet.outputs_energy_flows_ad94, 0.002); end
  def test_outputs_energy_flows_c96; assert_equal("n/a", worksheet.outputs_energy_flows_c96); end
  def test_outputs_energy_flows_d96; assert_equal("Gas", worksheet.outputs_energy_flows_d96); end
  def test_outputs_energy_flows_e96; assert_equal("n/a", worksheet.outputs_energy_flows_e96); end
  def test_outputs_energy_flows_f96; assert_equal("Thermal generation", worksheet.outputs_energy_flows_f96); end
  def test_outputs_energy_flows_i96; assert_equal("C.03", worksheet.outputs_energy_flows_i96); end
  def test_outputs_energy_flows_j96; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j96); end
  def test_outputs_energy_flows_k96; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k96); end
  def test_outputs_energy_flows_l96; assert_equal("Unabated power", worksheet.outputs_energy_flows_l96); end
  def test_outputs_energy_flows_v96; assert_in_epsilon(35.74892547965594, worksheet.outputs_energy_flows_v96, 0.002); end
  def test_outputs_energy_flows_w96; assert_in_epsilon(37.60426182359599, worksheet.outputs_energy_flows_w96, 0.002); end
  def test_outputs_energy_flows_x96; assert_in_epsilon(38.80518297320951, worksheet.outputs_energy_flows_x96, 0.002); end
  def test_outputs_energy_flows_y96; assert_in_epsilon(41.66131581656205, worksheet.outputs_energy_flows_y96, 0.002); end
  def test_outputs_energy_flows_z96; assert_in_epsilon(45.95273624887264, worksheet.outputs_energy_flows_z96, 0.002); end
  def test_outputs_energy_flows_aa96; assert_in_epsilon(50.501129582402854, worksheet.outputs_energy_flows_aa96, 0.002); end
  def test_outputs_energy_flows_ab96; assert_in_epsilon(54.00130468642857, worksheet.outputs_energy_flows_ab96, 0.002); end
  def test_outputs_energy_flows_ac96; assert_in_epsilon(60.17889482415738, worksheet.outputs_energy_flows_ac96, 0.002); end
  def test_outputs_energy_flows_ad96; assert_in_epsilon(65.51759030623707, worksheet.outputs_energy_flows_ad96, 0.002); end
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
  def test_outputs_energy_flows_w100; assert_in_epsilon(10.544734770162252, worksheet.outputs_energy_flows_w100, 0.002); end
  def test_outputs_energy_flows_x100; assert_in_epsilon(11.882322779111119, worksheet.outputs_energy_flows_x100, 0.002); end
  def test_outputs_energy_flows_y100; assert_in_epsilon(13.151278123520534, worksheet.outputs_energy_flows_y100, 0.002); end
  def test_outputs_energy_flows_z100; assert_in_epsilon(14.552783481082463, worksheet.outputs_energy_flows_z100, 0.002); end
  def test_outputs_energy_flows_aa100; assert_in_epsilon(15.932568469193292, worksheet.outputs_energy_flows_aa100, 0.002); end
  def test_outputs_energy_flows_ab100; assert_in_epsilon(17.15780017251497, worksheet.outputs_energy_flows_ab100, 0.002); end
  def test_outputs_energy_flows_ac100; assert_in_epsilon(18.50719303898304, worksheet.outputs_energy_flows_ac100, 0.002); end
  def test_outputs_energy_flows_ad100; assert_in_epsilon(19.495890840266284, worksheet.outputs_energy_flows_ad100, 0.002); end
  def test_outputs_energy_flows_c102; assert_equal("n/a", worksheet.outputs_energy_flows_c102); end
  def test_outputs_energy_flows_d102; assert_equal("Thermal generation", worksheet.outputs_energy_flows_d102); end
  def test_outputs_energy_flows_f102; assert_equal("Electricity grid", worksheet.outputs_energy_flows_f102); end
  def test_outputs_energy_flows_i102; assert_equal("E.02", worksheet.outputs_energy_flows_i102); end
  def test_outputs_energy_flows_j102; assert_equal("Global Electricity (supplied to grid)", worksheet.outputs_energy_flows_j102); end
  def test_outputs_energy_flows_k102; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k102); end
  def test_outputs_energy_flows_l102; assert_equal("Unabated power", worksheet.outputs_energy_flows_l102); end
  def test_outputs_energy_flows_m102; assert_equal("Nuclear", worksheet.outputs_energy_flows_m102); end
  def test_outputs_energy_flows_v102; assert_in_epsilon(58.64944014387076, worksheet.outputs_energy_flows_v102, 0.002); end
  def test_outputs_energy_flows_w102; assert_in_epsilon(63.77564362381391, worksheet.outputs_energy_flows_w102, 0.002); end
  def test_outputs_energy_flows_x102; assert_in_epsilon(70.80656104984652, worksheet.outputs_energy_flows_x102, 0.002); end
  def test_outputs_energy_flows_y102; assert_in_epsilon(78.9571855375737, worksheet.outputs_energy_flows_y102, 0.002); end
  def test_outputs_energy_flows_z102; assert_in_epsilon(87.37899059798889, worksheet.outputs_energy_flows_z102, 0.002); end
  def test_outputs_energy_flows_aa102; assert_in_epsilon(95.89860491204692, worksheet.outputs_energy_flows_aa102, 0.002); end
  def test_outputs_energy_flows_ab102; assert_in_epsilon(102.68165311336979, worksheet.outputs_energy_flows_ab102, 0.002); end
  def test_outputs_energy_flows_ac102; assert_in_epsilon(108.63989974983198, worksheet.outputs_energy_flows_ac102, 0.002); end
  def test_outputs_energy_flows_ad102; assert_in_epsilon(114.02618782875439, worksheet.outputs_energy_flows_ad102, 0.002); end
  def test_outputs_energy_flows_c104; assert_equal("n/a", worksheet.outputs_energy_flows_c104); end
  def test_outputs_energy_flows_d104; assert_equal("Thermal generation", worksheet.outputs_energy_flows_d104); end
  def test_outputs_energy_flows_e104; assert_equal("L.02", worksheet.outputs_energy_flows_e104); end
  def test_outputs_energy_flows_f104; assert_equal("Global Distribution losses and own use", worksheet.outputs_energy_flows_f104); end
  def test_outputs_energy_flows_k104; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k104); end
  def test_outputs_energy_flows_l104; assert_equal("Unabated power", worksheet.outputs_energy_flows_l104); end
  def test_outputs_energy_flows_m104; assert_equal("Nuclear", worksheet.outputs_energy_flows_m104); end
  def test_outputs_energy_flows_v104; assert_in_epsilon(2.5219259261864426, worksheet.outputs_energy_flows_v104, 0.002); end
  def test_outputs_energy_flows_w104; assert_in_epsilon(2.747998524134334, worksheet.outputs_energy_flows_w104, 0.002); end
  def test_outputs_energy_flows_x104; assert_in_epsilon(3.061249655432567, worksheet.outputs_energy_flows_x104, 0.002); end
  def test_outputs_energy_flows_y104; assert_in_epsilon(3.420366424299555, worksheet.outputs_energy_flows_y104, 0.002); end
  def test_outputs_energy_flows_z104; assert_in_epsilon(3.8201148553358566, worksheet.outputs_energy_flows_z104, 0.002); end
  def test_outputs_energy_flows_aa104; assert_in_epsilon(4.208569972727206, worksheet.outputs_energy_flows_aa104, 0.002); end
  def test_outputs_energy_flows_ab104; assert_in_epsilon(4.530278501304261, worksheet.outputs_energy_flows_ab104, 0.002); end
  def test_outputs_energy_flows_ac104; assert_in_epsilon(4.828776559474634, worksheet.outputs_energy_flows_ac104, 0.002); end
  def test_outputs_energy_flows_ad104; assert_in_epsilon(5.14434573636154, worksheet.outputs_energy_flows_ad104, 0.002); end
  def test_outputs_energy_flows_c106; assert_equal("n/a", worksheet.outputs_energy_flows_c106); end
  def test_outputs_energy_flows_d106; assert_equal("Thermal generation", worksheet.outputs_energy_flows_d106); end
  def test_outputs_energy_flows_e106; assert_equal("L.01", worksheet.outputs_energy_flows_e106); end
  def test_outputs_energy_flows_f106; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_f106); end
  def test_outputs_energy_flows_k106; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_k106); end
  def test_outputs_energy_flows_l106; assert_equal("Unabated power", worksheet.outputs_energy_flows_l106); end
  def test_outputs_energy_flows_m106; assert_equal("Nuclear", worksheet.outputs_energy_flows_m106); end
  def test_outputs_energy_flows_v106; assert_in_epsilon(94.30343261708111, worksheet.outputs_energy_flows_v106, 0.002); end
  def test_outputs_energy_flows_w106; assert_in_epsilon(100.00740170830915, worksheet.outputs_energy_flows_w106, 0.002); end
  def test_outputs_energy_flows_x106; assert_in_epsilon(107.19266995184725, worksheet.outputs_energy_flows_x106, 0.002); end
  def test_outputs_energy_flows_y106; assert_in_epsilon(115.53087635162304, worksheet.outputs_energy_flows_y106, 0.002); end
  def test_outputs_energy_flows_z106; assert_in_epsilon(123.97121098234864, worksheet.outputs_energy_flows_z106, 0.002); end
  def test_outputs_energy_flows_aa106; assert_in_epsilon(131.58749490854396, worksheet.outputs_energy_flows_aa106, 0.002); end
  def test_outputs_energy_flows_ab106; assert_in_epsilon(136.12924992973615, worksheet.outputs_energy_flows_ab106, 0.002); end
  def test_outputs_energy_flows_ac106; assert_in_epsilon(139.66144180996034, worksheet.outputs_energy_flows_ac106, 0.002); end
  def test_outputs_energy_flows_ad106; assert_in_epsilon(142.68016789011875, worksheet.outputs_energy_flows_ad106, 0.002); end
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
  def test_outputs_energy_flows_w112; assert_in_epsilon(6.392397136830928, worksheet.outputs_energy_flows_w112, 0.002); end
  def test_outputs_energy_flows_x112; assert_in_epsilon(7.162280107114132, worksheet.outputs_energy_flows_x112, 0.002); end
  def test_outputs_energy_flows_y112; assert_in_epsilon(7.923209811953754, worksheet.outputs_energy_flows_y112, 0.002); end
  def test_outputs_energy_flows_z112; assert_in_epsilon(8.750252784910366, worksheet.outputs_energy_flows_z112, 0.002); end
  def test_outputs_energy_flows_aa112; assert_in_epsilon(9.585993573884029, worksheet.outputs_energy_flows_aa112, 0.002); end
  def test_outputs_energy_flows_ab112; assert_in_epsilon(10.385486292940863, worksheet.outputs_energy_flows_ab112, 0.002); end
  def test_outputs_energy_flows_ac112; assert_in_epsilon(11.233652152605007, worksheet.outputs_energy_flows_ac112, 0.002); end
  def test_outputs_energy_flows_ad112; assert_in_epsilon(12.031048268917788, worksheet.outputs_energy_flows_ad112, 0.002); end
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
  def test_outputs_energy_flows_w124; assert_in_epsilon(4.101626967950039, worksheet.outputs_energy_flows_w124, 0.002); end
  def test_outputs_energy_flows_x124; assert_in_epsilon(4.41889415153183, worksheet.outputs_energy_flows_x124, 0.002); end
  def test_outputs_energy_flows_y124; assert_in_epsilon(4.76450756917871, worksheet.outputs_energy_flows_y124, 0.002); end
  def test_outputs_energy_flows_z124; assert_in_epsilon(5.15730050748353, worksheet.outputs_energy_flows_z124, 0.002); end
  def test_outputs_energy_flows_aa124; assert_in_epsilon(5.574917190320857, worksheet.outputs_energy_flows_aa124, 0.002); end
  def test_outputs_energy_flows_ab124; assert_in_epsilon(6.021525834454521, worksheet.outputs_energy_flows_ab124, 0.002); end
  def test_outputs_energy_flows_ac124; assert_in_epsilon(6.608306533411135, worksheet.outputs_energy_flows_ac124, 0.002); end
  def test_outputs_energy_flows_ad124; assert_in_epsilon(7.5790419089513215, worksheet.outputs_energy_flows_ad124, 0.002); end
  def test_outputs_energy_flows_c126; assert_equal("n/a", worksheet.outputs_energy_flows_c126); end
  def test_outputs_energy_flows_d126; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d126); end
  def test_outputs_energy_flows_e126; assert_equal("n/a", worksheet.outputs_energy_flows_e126); end
  def test_outputs_energy_flows_f126; assert_equal("Aluminium", worksheet.outputs_energy_flows_f126); end
  def test_outputs_energy_flows_i126; assert_equal("E.01", worksheet.outputs_energy_flows_i126); end
  def test_outputs_energy_flows_j126; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j126); end
  def test_outputs_energy_flows_v126; assert_in_epsilon(2.4366032392955352, worksheet.outputs_energy_flows_v126, 0.002); end
  def test_outputs_energy_flows_w126; assert_in_epsilon(2.759086009060115, worksheet.outputs_energy_flows_w126, 0.002); end
  def test_outputs_energy_flows_x126; assert_in_epsilon(3.3039114029685925, worksheet.outputs_energy_flows_x126, 0.002); end
  def test_outputs_energy_flows_y126; assert_in_epsilon(3.9123433515633756, worksheet.outputs_energy_flows_y126, 0.002); end
  def test_outputs_energy_flows_z126; assert_in_epsilon(4.609008083299308, worksheet.outputs_energy_flows_z126, 0.002); end
  def test_outputs_energy_flows_aa126; assert_in_epsilon(5.380168699042486, worksheet.outputs_energy_flows_aa126, 0.002); end
  def test_outputs_energy_flows_ab126; assert_in_epsilon(6.212839418268785, worksheet.outputs_energy_flows_ab126, 0.002); end
  def test_outputs_energy_flows_ac126; assert_in_epsilon(7.177308377273987, worksheet.outputs_energy_flows_ac126, 0.002); end
  def test_outputs_energy_flows_ad126; assert_in_epsilon(8.235898132326474, worksheet.outputs_energy_flows_ad126, 0.002); end
  def test_outputs_energy_flows_c128; assert_equal("n/a", worksheet.outputs_energy_flows_c128); end
  def test_outputs_energy_flows_d128; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d128); end
  def test_outputs_energy_flows_e128; assert_equal("n/a", worksheet.outputs_energy_flows_e128); end
  def test_outputs_energy_flows_f128; assert_equal("Cement", worksheet.outputs_energy_flows_f128); end
  def test_outputs_energy_flows_i128; assert_equal("E.01", worksheet.outputs_energy_flows_i128); end
  def test_outputs_energy_flows_j128; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j128); end
  def test_outputs_energy_flows_v128; assert_in_epsilon(1.2888723312000763, worksheet.outputs_energy_flows_v128, 0.002); end
  def test_outputs_energy_flows_w128; assert_in_epsilon(1.3833062156915115, worksheet.outputs_energy_flows_w128, 0.002); end
  def test_outputs_energy_flows_x128; assert_in_epsilon(1.479730841684005, worksheet.outputs_energy_flows_x128, 0.002); end
  def test_outputs_energy_flows_y128; assert_in_epsilon(1.5734110190358883, worksheet.outputs_energy_flows_y128, 0.002); end
  def test_outputs_energy_flows_z128; assert_in_epsilon(1.817389300774131, worksheet.outputs_energy_flows_z128, 0.002); end
  def test_outputs_energy_flows_aa128; assert_in_epsilon(2.0810900403834784, worksheet.outputs_energy_flows_aa128, 0.002); end
  def test_outputs_energy_flows_ab128; assert_in_epsilon(2.362408366967534, worksheet.outputs_energy_flows_ab128, 0.002); end
  def test_outputs_energy_flows_ac128; assert_in_epsilon(2.6670005783199797, worksheet.outputs_energy_flows_ac128, 0.002); end
  def test_outputs_energy_flows_ad128; assert_in_epsilon(2.9892202440646187, worksheet.outputs_energy_flows_ad128, 0.002); end
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
  def test_outputs_energy_flows_w132; assert_in_epsilon(4.090750073432904, worksheet.outputs_energy_flows_w132, 0.002); end
  def test_outputs_energy_flows_x132; assert_in_epsilon(4.399357411970085, worksheet.outputs_energy_flows_x132, 0.002); end
  def test_outputs_energy_flows_y132; assert_in_epsilon(4.71317974244646, worksheet.outputs_energy_flows_y132, 0.002); end
  def test_outputs_energy_flows_z132; assert_in_epsilon(5.085337871439329, worksheet.outputs_energy_flows_z132, 0.002); end
  def test_outputs_energy_flows_aa132; assert_in_epsilon(5.4613500939635475, worksheet.outputs_energy_flows_aa132, 0.002); end
  def test_outputs_energy_flows_ab132; assert_in_epsilon(5.836480769265463, worksheet.outputs_energy_flows_ab132, 0.002); end
  def test_outputs_energy_flows_ac132; assert_in_epsilon(6.235513813391515, worksheet.outputs_energy_flows_ac132, 0.002); end
  def test_outputs_energy_flows_ad132; assert_in_epsilon(6.613578647051822, worksheet.outputs_energy_flows_ad132, 0.002); end
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
  def test_outputs_energy_flows_w136; assert_in_delta(0.4054195972115721, worksheet.outputs_energy_flows_w136, 0.002); end
  def test_outputs_energy_flows_x136; assert_in_delta(0.6951058912365845, worksheet.outputs_energy_flows_x136, 0.002); end
  def test_outputs_energy_flows_y136; assert_in_epsilon(1.0227356651224697, worksheet.outputs_energy_flows_y136, 0.002); end
  def test_outputs_energy_flows_z136; assert_in_epsilon(1.3872235044516177, worksheet.outputs_energy_flows_z136, 0.002); end
  def test_outputs_energy_flows_aa136; assert_in_epsilon(1.7896446152038954, worksheet.outputs_energy_flows_aa136, 0.002); end
  def test_outputs_energy_flows_ab136; assert_in_epsilon(2.227244282844568, worksheet.outputs_energy_flows_ab136, 0.002); end
  def test_outputs_energy_flows_ac136; assert_in_epsilon(2.7030053285254465, worksheet.outputs_energy_flows_ac136, 0.002); end
  def test_outputs_energy_flows_ad136; assert_in_epsilon(3.208920460808696, worksheet.outputs_energy_flows_ad136, 0.002); end
  def test_outputs_energy_flows_c138; assert_equal("n/a", worksheet.outputs_energy_flows_c138); end
  def test_outputs_energy_flows_d138; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d138); end
  def test_outputs_energy_flows_e138; assert_equal("n/a", worksheet.outputs_energy_flows_e138); end
  def test_outputs_energy_flows_f138; assert_equal("International passenger", worksheet.outputs_energy_flows_f138); end
  def test_outputs_energy_flows_i138; assert_equal("E.01", worksheet.outputs_energy_flows_i138); end
  def test_outputs_energy_flows_j138; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j138); end
  def test_outputs_energy_flows_l138; assert_equal("International", worksheet.outputs_energy_flows_l138); end
  def test_outputs_energy_flows_v138; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v138||0), 0.002); end
  def test_outputs_energy_flows_w138; assert_in_delta(0.0035566144782740883, worksheet.outputs_energy_flows_w138, 0.002); end
  def test_outputs_energy_flows_x138; assert_in_delta(0.008923202074846573, worksheet.outputs_energy_flows_x138, 0.002); end
  def test_outputs_energy_flows_y138; assert_in_delta(0.015474071538210604, worksheet.outputs_energy_flows_y138, 0.002); end
  def test_outputs_energy_flows_z138; assert_in_delta(0.023428876202411512, worksheet.outputs_energy_flows_z138, 0.002); end
  def test_outputs_energy_flows_aa138; assert_in_delta(0.03307456344694703, worksheet.outputs_energy_flows_aa138, 0.002); end
  def test_outputs_energy_flows_ab138; assert_in_delta(0.04476805840443547, worksheet.outputs_energy_flows_ab138, 0.002); end
  def test_outputs_energy_flows_ac138; assert_in_delta(0.05894154696605328, worksheet.outputs_energy_flows_ac138, 0.002); end
  def test_outputs_energy_flows_ad138; assert_in_delta(0.07612314828954712, worksheet.outputs_energy_flows_ad138, 0.002); end
  def test_outputs_energy_flows_c140; assert_equal("n/a", worksheet.outputs_energy_flows_c140); end
  def test_outputs_energy_flows_d140; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d140); end
  def test_outputs_energy_flows_e140; assert_equal("n/a", worksheet.outputs_energy_flows_e140); end
  def test_outputs_energy_flows_f140; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f140); end
  def test_outputs_energy_flows_i140; assert_equal("E.01", worksheet.outputs_energy_flows_i140); end
  def test_outputs_energy_flows_j140; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j140); end
  def test_outputs_energy_flows_l140; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l140); end
  def test_outputs_energy_flows_v140; assert_in_delta(0.13826458288412322, worksheet.outputs_energy_flows_v140, 0.002); end
  def test_outputs_energy_flows_w140; assert_in_delta(0.19028936378851463, worksheet.outputs_energy_flows_w140, 0.002); end
  def test_outputs_energy_flows_x140; assert_in_delta(0.2588855832326774, worksheet.outputs_energy_flows_x140, 0.002); end
  def test_outputs_energy_flows_y140; assert_in_delta(0.3327942207329314, worksheet.outputs_energy_flows_y140, 0.002); end
  def test_outputs_energy_flows_z140; assert_in_delta(0.4121578909269097, worksheet.outputs_energy_flows_z140, 0.002); end
  def test_outputs_energy_flows_aa140; assert_in_delta(0.49711705609213186, worksheet.outputs_energy_flows_aa140, 0.002); end
  def test_outputs_energy_flows_ab140; assert_in_delta(0.5878095489380524, worksheet.outputs_energy_flows_ab140, 0.002); end
  def test_outputs_energy_flows_ac140; assert_in_delta(0.6843700612822643, worksheet.outputs_energy_flows_ac140, 0.002); end
  def test_outputs_energy_flows_ad140; assert_in_delta(0.7869295967490559, worksheet.outputs_energy_flows_ad140, 0.002); end
  def test_outputs_energy_flows_c142; assert_equal("n/a", worksheet.outputs_energy_flows_c142); end
  def test_outputs_energy_flows_d142; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d142); end
  def test_outputs_energy_flows_e142; assert_equal("n/a", worksheet.outputs_energy_flows_e142); end
  def test_outputs_energy_flows_f142; assert_equal("International freight", worksheet.outputs_energy_flows_f142); end
  def test_outputs_energy_flows_i142; assert_equal("E.01", worksheet.outputs_energy_flows_i142); end
  def test_outputs_energy_flows_j142; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j142); end
  def test_outputs_energy_flows_l142; assert_equal("International freight", worksheet.outputs_energy_flows_l142); end
  def test_outputs_energy_flows_v142; assert_in_delta(0.27579627474268875, worksheet.outputs_energy_flows_v142, 0.002); end
  def test_outputs_energy_flows_w142; assert_in_delta(0.39646482252629967, worksheet.outputs_energy_flows_w142, 0.002); end
  def test_outputs_energy_flows_x142; assert_in_delta(0.5754277583446761, worksheet.outputs_energy_flows_x142, 0.002); end
  def test_outputs_energy_flows_y142; assert_in_delta(0.7917013027577323, worksheet.outputs_energy_flows_y142, 0.002); end
  def test_outputs_energy_flows_z142; assert_in_epsilon(1.048606645755292, worksheet.outputs_energy_flows_z142, 0.002); end
  def test_outputs_energy_flows_aa142; assert_in_epsilon(1.3496897776075807, worksheet.outputs_energy_flows_aa142, 0.002); end
  def test_outputs_energy_flows_ab142; assert_in_epsilon(1.6987348423282165, worksheet.outputs_energy_flows_ab142, 0.002); end
  def test_outputs_energy_flows_ac142; assert_in_epsilon(2.0997782287602216, worksheet.outputs_energy_flows_ac142, 0.002); end
  def test_outputs_energy_flows_ad142; assert_in_epsilon(2.557123438268045, worksheet.outputs_energy_flows_ad142, 0.002); end
  def test_outputs_energy_flows_c144; assert_equal("n/a", worksheet.outputs_energy_flows_c144); end
  def test_outputs_energy_flows_d144; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d144); end
  def test_outputs_energy_flows_e144; assert_equal("n/a", worksheet.outputs_energy_flows_e144); end
  def test_outputs_energy_flows_f144; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_f144); end
  def test_outputs_energy_flows_i144; assert_equal("E.01", worksheet.outputs_energy_flows_i144); end
  def test_outputs_energy_flows_j144; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j144); end
  def test_outputs_energy_flows_v144; assert_in_delta(5.69986361910142e-09, worksheet.outputs_energy_flows_v144, 0.002); end
  def test_outputs_energy_flows_w144; assert_in_delta(5.551617427626446e-09, worksheet.outputs_energy_flows_w144, 0.002); end
  def test_outputs_energy_flows_x144; assert_in_delta(5.224028050484951e-09, worksheet.outputs_energy_flows_x144, 0.002); end
  def test_outputs_energy_flows_y144; assert_in_delta(6.168562745075731e-09, worksheet.outputs_energy_flows_y144, 0.002); end
  def test_outputs_energy_flows_z144; assert_in_delta(1.2337078451018472e-08, worksheet.outputs_energy_flows_z144, 0.002); end
  def test_outputs_energy_flows_aa144; assert_in_delta(1.5719338462567206e-08, worksheet.outputs_energy_flows_aa144, 0.002); end
  def test_outputs_energy_flows_ab144; assert_in_delta(1.5163784538738273e-08, worksheet.outputs_energy_flows_ab144, 0.002); end
  def test_outputs_energy_flows_ac144; assert_in_delta(1.0222650334534962e-08, worksheet.outputs_energy_flows_ac144, 0.002); end
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
  def test_outputs_energy_flows_w160; assert_in_delta(0.7308167246755688, worksheet.outputs_energy_flows_w160, 0.002); end
  def test_outputs_energy_flows_x160; assert_in_delta(0.9966246318049462, worksheet.outputs_energy_flows_x160, 0.002); end
  def test_outputs_energy_flows_y160; assert_in_epsilon(1.29297556527669, worksheet.outputs_energy_flows_y160, 0.002); end
  def test_outputs_energy_flows_z160; assert_in_epsilon(1.6282601060891173, worksheet.outputs_energy_flows_z160, 0.002); end
  def test_outputs_energy_flows_aa160; assert_in_epsilon(1.9991042293420342, worksheet.outputs_energy_flows_aa160, 0.002); end
  def test_outputs_energy_flows_ab160; assert_in_epsilon(2.408657088283493, worksheet.outputs_energy_flows_ab160, 0.002); end
  def test_outputs_energy_flows_ac160; assert_in_epsilon(2.9076374668205474, worksheet.outputs_energy_flows_ac160, 0.002); end
  def test_outputs_energy_flows_ad160; assert_in_epsilon(3.3744599418124257, worksheet.outputs_energy_flows_ad160, 0.002); end
  def test_outputs_energy_flows_c162; assert_equal("n/a", worksheet.outputs_energy_flows_c162); end
  def test_outputs_energy_flows_d162; assert_equal("Solid", worksheet.outputs_energy_flows_d162); end
  def test_outputs_energy_flows_e162; assert_equal("n/a", worksheet.outputs_energy_flows_e162); end
  def test_outputs_energy_flows_f162; assert_equal("Aluminium", worksheet.outputs_energy_flows_f162); end
  def test_outputs_energy_flows_i162; assert_equal("C.01", worksheet.outputs_energy_flows_i162); end
  def test_outputs_energy_flows_j162; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j162); end
  def test_outputs_energy_flows_v162; assert_in_delta(0.0, (worksheet.outputs_energy_flows_v162||0), 0.002); end
  def test_outputs_energy_flows_w162; assert_in_delta(0.0001701755291904898, worksheet.outputs_energy_flows_w162, 0.002); end
  def test_outputs_energy_flows_x162; assert_in_delta(0.0004590634894896141, worksheet.outputs_energy_flows_x162, 0.002); end
  def test_outputs_energy_flows_y162; assert_in_delta(0.0008464564834589594, worksheet.outputs_energy_flows_y162, 0.002); end
  def test_outputs_energy_flows_z162; assert_in_delta(0.0013534387750758763, worksheet.outputs_energy_flows_z162, 0.002); end
  def test_outputs_energy_flows_aa162; assert_in_delta(0.001998596706146508, worksheet.outputs_energy_flows_aa162, 0.002); end
  def test_outputs_energy_flows_ab162; assert_in_delta(0.0027904427873353048, worksheet.outputs_energy_flows_ab162, 0.002); end
  def test_outputs_energy_flows_ac162; assert_in_delta(0.003781432636655342, worksheet.outputs_energy_flows_ac162, 0.002); end
  def test_outputs_energy_flows_ad162; assert_in_delta(0.004963048876587154, worksheet.outputs_energy_flows_ad162, 0.002); end
  def test_outputs_energy_flows_c164; assert_equal("n/a", worksheet.outputs_energy_flows_c164); end
  def test_outputs_energy_flows_d164; assert_equal("Solid", worksheet.outputs_energy_flows_d164); end
  def test_outputs_energy_flows_e164; assert_equal("n/a", worksheet.outputs_energy_flows_e164); end
  def test_outputs_energy_flows_f164; assert_equal("Cement", worksheet.outputs_energy_flows_f164); end
  def test_outputs_energy_flows_i164; assert_equal("C.01", worksheet.outputs_energy_flows_i164); end
  def test_outputs_energy_flows_j164; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j164); end
  def test_outputs_energy_flows_v164; assert_in_delta(0.4925092998042991, worksheet.outputs_energy_flows_v164, 0.002); end
  def test_outputs_energy_flows_w164; assert_in_delta(0.5580000822904255, worksheet.outputs_energy_flows_w164, 0.002); end
  def test_outputs_energy_flows_x164; assert_in_delta(0.6362147821056998, worksheet.outputs_energy_flows_x164, 0.002); end
  def test_outputs_energy_flows_y164; assert_in_delta(0.718300883742166, worksheet.outputs_energy_flows_y164, 0.002); end
  def test_outputs_energy_flows_z164; assert_in_delta(0.8059569385837441, worksheet.outputs_energy_flows_z164, 0.002); end
  def test_outputs_energy_flows_aa164; assert_in_delta(0.8986394639858173, worksheet.outputs_energy_flows_aa164, 0.002); end
  def test_outputs_energy_flows_ab164; assert_in_delta(0.9952321702350626, worksheet.outputs_energy_flows_ab164, 0.002); end
  def test_outputs_energy_flows_ac164; assert_in_epsilon(1.0979058165373905, worksheet.outputs_energy_flows_ac164, 0.002); end
  def test_outputs_energy_flows_ad164; assert_in_epsilon(1.2040759452971437, worksheet.outputs_energy_flows_ad164, 0.002); end
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
  def test_outputs_energy_flows_w168; assert_in_delta(0.15943584025764318, worksheet.outputs_energy_flows_w168, 0.002); end
  def test_outputs_energy_flows_x168; assert_in_delta(0.17146372498443113, worksheet.outputs_energy_flows_x168, 0.002); end
  def test_outputs_energy_flows_y168; assert_in_delta(0.18369486256383463, worksheet.outputs_energy_flows_y168, 0.002); end
  def test_outputs_energy_flows_z168; assert_in_delta(0.19652783342020538, worksheet.outputs_energy_flows_z168, 0.002); end
  def test_outputs_energy_flows_aa168; assert_in_delta(0.20930999250370907, worksheet.outputs_energy_flows_aa168, 0.002); end
  def test_outputs_energy_flows_ab168; assert_in_delta(0.2218540094877711, worksheet.outputs_energy_flows_ab168, 0.002); end
  def test_outputs_energy_flows_ac168; assert_in_delta(0.23512698273340332, worksheet.outputs_energy_flows_ac168, 0.002); end
  def test_outputs_energy_flows_ad168; assert_in_delta(0.2474074688606566, worksheet.outputs_energy_flows_ad168, 0.002); end
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
  def test_outputs_energy_flows_w184; assert_in_epsilon(30.465415519082434, worksheet.outputs_energy_flows_w184, 0.002); end
  def test_outputs_energy_flows_x184; assert_in_epsilon(30.711629734622864, worksheet.outputs_energy_flows_x184, 0.002); end
  def test_outputs_energy_flows_y184; assert_in_epsilon(30.969755749849938, worksheet.outputs_energy_flows_y184, 0.002); end
  def test_outputs_energy_flows_z184; assert_in_epsilon(31.33603357265103, worksheet.outputs_energy_flows_z184, 0.002); end
  def test_outputs_energy_flows_aa184; assert_in_epsilon(31.63090345458466, worksheet.outputs_energy_flows_aa184, 0.002); end
  def test_outputs_energy_flows_ab184; assert_in_epsilon(32.16938546764907, worksheet.outputs_energy_flows_ab184, 0.002); end
  def test_outputs_energy_flows_ac184; assert_in_epsilon(32.78561944342722, worksheet.outputs_energy_flows_ac184, 0.002); end
  def test_outputs_energy_flows_ad184; assert_in_epsilon(33.47092439601707, worksheet.outputs_energy_flows_ad184, 0.002); end
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
  def test_outputs_energy_flows_w208; assert_in_epsilon(49.27827008363321, worksheet.outputs_energy_flows_w208, 0.002); end
  def test_outputs_energy_flows_x208; assert_in_epsilon(51.83084407039961, worksheet.outputs_energy_flows_x208, 0.002); end
  def test_outputs_energy_flows_y208; assert_in_epsilon(54.079441002100836, worksheet.outputs_energy_flows_y208, 0.002); end
  def test_outputs_energy_flows_z208; assert_in_epsilon(56.3076708206669, worksheet.outputs_energy_flows_z208, 0.002); end
  def test_outputs_energy_flows_aa208; assert_in_epsilon(58.3822147157419, worksheet.outputs_energy_flows_aa208, 0.002); end
  def test_outputs_energy_flows_ab208; assert_in_epsilon(60.16138458384837, worksheet.outputs_energy_flows_ab208, 0.002); end
  def test_outputs_energy_flows_ac208; assert_in_epsilon(61.895145394963606, worksheet.outputs_energy_flows_ac208, 0.002); end
  def test_outputs_energy_flows_ad208; assert_in_epsilon(63.30851149718744, worksheet.outputs_energy_flows_ad208, 0.002); end
  def test_outputs_energy_flows_c210; assert_equal("n/a", worksheet.outputs_energy_flows_c210); end
  def test_outputs_energy_flows_d210; assert_equal("Liquid", worksheet.outputs_energy_flows_d210); end
  def test_outputs_energy_flows_e210; assert_equal("n/a", worksheet.outputs_energy_flows_e210); end
  def test_outputs_energy_flows_f210; assert_equal("International passenger", worksheet.outputs_energy_flows_f210); end
  def test_outputs_energy_flows_i210; assert_equal("C.02", worksheet.outputs_energy_flows_i210); end
  def test_outputs_energy_flows_j210; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j210); end
  def test_outputs_energy_flows_l210; assert_equal("International", worksheet.outputs_energy_flows_l210); end
  def test_outputs_energy_flows_v210; assert_in_epsilon(11.200783672219371, worksheet.outputs_energy_flows_v210, 0.002); end
  def test_outputs_energy_flows_w210; assert_in_epsilon(12.11719982784027, worksheet.outputs_energy_flows_w210, 0.002); end
  def test_outputs_energy_flows_x210; assert_in_epsilon(12.970087642179235, worksheet.outputs_energy_flows_x210, 0.002); end
  def test_outputs_energy_flows_y210; assert_in_epsilon(13.87462550263741, worksheet.outputs_energy_flows_y210, 0.002); end
  def test_outputs_energy_flows_z210; assert_in_epsilon(14.848142922042479, worksheet.outputs_energy_flows_z210, 0.002); end
  def test_outputs_energy_flows_aa210; assert_in_epsilon(15.912931698939452, worksheet.outputs_energy_flows_aa210, 0.002); end
  def test_outputs_energy_flows_ab210; assert_in_epsilon(17.08882511673625, worksheet.outputs_energy_flows_ab210, 0.002); end
  def test_outputs_energy_flows_ac210; assert_in_epsilon(18.393391011303937, worksheet.outputs_energy_flows_ac210, 0.002); end
  def test_outputs_energy_flows_ad210; assert_in_epsilon(19.84602259861426, worksheet.outputs_energy_flows_ad210, 0.002); end
  def test_outputs_energy_flows_c212; assert_equal("n/a", worksheet.outputs_energy_flows_c212); end
  def test_outputs_energy_flows_d212; assert_equal("Liquid", worksheet.outputs_energy_flows_d212); end
  def test_outputs_energy_flows_e212; assert_equal("n/a", worksheet.outputs_energy_flows_e212); end
  def test_outputs_energy_flows_f212; assert_equal("Domestic freight", worksheet.outputs_energy_flows_f212); end
  def test_outputs_energy_flows_i212; assert_equal("C.02", worksheet.outputs_energy_flows_i212); end
  def test_outputs_energy_flows_j212; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j212); end
  def test_outputs_energy_flows_l212; assert_equal("Domestic freight", worksheet.outputs_energy_flows_l212); end
  def test_outputs_energy_flows_v212; assert_in_epsilon(13.538303988230114, worksheet.outputs_energy_flows_v212, 0.002); end
  def test_outputs_energy_flows_w212; assert_in_epsilon(14.440206868959788, worksheet.outputs_energy_flows_w212, 0.002); end
  def test_outputs_energy_flows_x212; assert_in_epsilon(15.51443938034406, worksheet.outputs_energy_flows_x212, 0.002); end
  def test_outputs_energy_flows_y212; assert_in_epsilon(16.61212064053672, worksheet.outputs_energy_flows_y212, 0.002); end
  def test_outputs_energy_flows_z212; assert_in_epsilon(17.733509455864947, worksheet.outputs_energy_flows_z212, 0.002); end
  def test_outputs_energy_flows_aa212; assert_in_epsilon(18.87886378842113, worksheet.outputs_energy_flows_aa212, 0.002); end
  def test_outputs_energy_flows_ab212; assert_in_epsilon(20.04844076034672, worksheet.outputs_energy_flows_ab212, 0.002); end
  def test_outputs_energy_flows_ac212; assert_in_epsilon(21.24249666968283, worksheet.outputs_energy_flows_ac212, 0.002); end
  def test_outputs_energy_flows_ad212; assert_in_epsilon(22.461287018818286, worksheet.outputs_energy_flows_ad212, 0.002); end
  def test_outputs_energy_flows_c214; assert_equal("n/a", worksheet.outputs_energy_flows_c214); end
  def test_outputs_energy_flows_d214; assert_equal("Liquid", worksheet.outputs_energy_flows_d214); end
  def test_outputs_energy_flows_e214; assert_equal("n/a", worksheet.outputs_energy_flows_e214); end
  def test_outputs_energy_flows_f214; assert_equal("International freight", worksheet.outputs_energy_flows_f214); end
  def test_outputs_energy_flows_i214; assert_equal("C.02", worksheet.outputs_energy_flows_i214); end
  def test_outputs_energy_flows_j214; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j214); end
  def test_outputs_energy_flows_l214; assert_equal("International freight", worksheet.outputs_energy_flows_l214); end
  def test_outputs_energy_flows_v214; assert_in_epsilon(27.084375466003895, worksheet.outputs_energy_flows_v214, 0.002); end
  def test_outputs_energy_flows_w214; assert_in_epsilon(29.81749026258991, worksheet.outputs_energy_flows_w214, 0.002); end
  def test_outputs_energy_flows_x214; assert_in_epsilon(33.082635129174186, worksheet.outputs_energy_flows_x214, 0.002); end
  def test_outputs_energy_flows_y214; assert_in_epsilon(36.46009160118957, worksheet.outputs_energy_flows_y214, 0.002); end
  def test_outputs_energy_flows_z214; assert_in_epsilon(39.951366214548685, worksheet.outputs_energy_flows_z214, 0.002); end
  def test_outputs_energy_flows_aa214; assert_in_epsilon(43.557857965991076, worksheet.outputs_energy_flows_aa214, 0.002); end
  def test_outputs_energy_flows_ab214; assert_in_epsilon(47.28084624533192, worksheet.outputs_energy_flows_ab214, 0.002); end
  def test_outputs_energy_flows_ac214; assert_in_epsilon(51.12147794677349, worksheet.outputs_energy_flows_ac214, 0.002); end
  def test_outputs_energy_flows_ad214; assert_in_epsilon(55.08075371186318, worksheet.outputs_energy_flows_ad214, 0.002); end
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
  def test_outputs_energy_flows_w244; assert_in_delta(0.3975044235174482, worksheet.outputs_energy_flows_w244, 0.002); end
  def test_outputs_energy_flows_x244; assert_in_delta(0.4944908633151916, worksheet.outputs_energy_flows_x244, 0.002); end
  def test_outputs_energy_flows_y244; assert_in_delta(0.5974366741568577, worksheet.outputs_energy_flows_y244, 0.002); end
  def test_outputs_energy_flows_z244; assert_in_delta(0.7087499215921543, worksheet.outputs_energy_flows_z244, 0.002); end
  def test_outputs_energy_flows_aa244; assert_in_delta(0.8268194150541337, worksheet.outputs_energy_flows_aa244, 0.002); end
  def test_outputs_energy_flows_ab244; assert_in_delta(0.9487169899855461, worksheet.outputs_energy_flows_ab244, 0.002); end
  def test_outputs_energy_flows_ac244; assert_in_epsilon(1.0781094967722398, worksheet.outputs_energy_flows_ac244, 0.002); end
  def test_outputs_energy_flows_ad244; assert_in_epsilon(1.2093120498265713, worksheet.outputs_energy_flows_ad244, 0.002); end
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
  def test_outputs_energy_flows_w248; assert_in_delta(0.08418936255760126, worksheet.outputs_energy_flows_w248, 0.002); end
  def test_outputs_energy_flows_x248; assert_in_delta(0.1887953729115588, worksheet.outputs_energy_flows_x248, 0.002); end
  def test_outputs_energy_flows_y248; assert_in_delta(0.3101861118271958, worksheet.outputs_energy_flows_y248, 0.002); end
  def test_outputs_energy_flows_z248; assert_in_delta(0.44930719942219244, worksheet.outputs_energy_flows_z248, 0.002); end
  def test_outputs_energy_flows_aa248; assert_in_delta(0.6071431699965985, worksheet.outputs_energy_flows_aa248, 0.002); end
  def test_outputs_energy_flows_ab248; assert_in_delta(0.7847188409369233, worksheet.outputs_energy_flows_ab248, 0.002); end
  def test_outputs_energy_flows_ac248; assert_in_delta(0.9831007254240733, worksheet.outputs_energy_flows_ac248, 0.002); end
  def test_outputs_energy_flows_ad248; assert_in_epsilon(1.2033984902605597, worksheet.outputs_energy_flows_ad248, 0.002); end
  def test_outputs_energy_flows_c250; assert_equal("n/a", worksheet.outputs_energy_flows_c250); end
  def test_outputs_energy_flows_d250; assert_equal("Gas", worksheet.outputs_energy_flows_d250); end
  def test_outputs_energy_flows_e250; assert_equal("n/a", worksheet.outputs_energy_flows_e250); end
  def test_outputs_energy_flows_f250; assert_equal("International freight", worksheet.outputs_energy_flows_f250); end
  def test_outputs_energy_flows_i250; assert_equal("C.03", worksheet.outputs_energy_flows_i250); end
  def test_outputs_energy_flows_j250; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j250); end
  def test_outputs_energy_flows_l250; assert_equal("International freight", worksheet.outputs_energy_flows_l250); end
  def test_outputs_energy_flows_v250; assert_in_delta(1.237111016955099e-08, worksheet.outputs_energy_flows_v250, 0.002); end
  def test_outputs_energy_flows_w250; assert_in_delta(0.09557800290979476, worksheet.outputs_energy_flows_w250, 0.002); end
  def test_outputs_energy_flows_x250; assert_in_delta(0.25086285801995095, worksheet.outputs_energy_flows_x250, 0.002); end
  def test_outputs_energy_flows_y250; assert_in_delta(0.4490970396881614, worksheet.outputs_energy_flows_y250, 0.002); end
  def test_outputs_energy_flows_z250; assert_in_delta(0.6938580471176653, worksheet.outputs_energy_flows_z250, 0.002); end
  def test_outputs_energy_flows_aa250; assert_in_delta(0.9889377754046069, worksheet.outputs_energy_flows_aa250, 0.002); end
  def test_outputs_energy_flows_ab250; assert_in_epsilon(1.3383534478674959, worksheet.outputs_energy_flows_ab250, 0.002); end
  def test_outputs_energy_flows_ac250; assert_in_epsilon(1.746359054438872, worksheet.outputs_energy_flows_ac250, 0.002); end
  def test_outputs_energy_flows_ad250; assert_in_epsilon(2.2174573180799397, worksheet.outputs_energy_flows_ad250, 0.002); end
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
  def test_outputs_energy_flows_w268; assert_in_epsilon(16.983390122006053, worksheet.outputs_energy_flows_w268, 0.002); end
  def test_outputs_energy_flows_x268; assert_in_epsilon(17.977170338967145, worksheet.outputs_energy_flows_x268, 0.002); end
  def test_outputs_energy_flows_y268; assert_in_epsilon(19.044713694966617, worksheet.outputs_energy_flows_y268, 0.002); end
  def test_outputs_energy_flows_z268; assert_in_epsilon(20.25518166186946, worksheet.outputs_energy_flows_z268, 0.002); end
  def test_outputs_energy_flows_aa268; assert_in_epsilon(21.513810767661134, worksheet.outputs_energy_flows_aa268, 0.002); end
  def test_outputs_energy_flows_ab268; assert_in_epsilon(22.832735280711365, worksheet.outputs_energy_flows_ab268, 0.002); end
  def test_outputs_energy_flows_ac268; assert_in_epsilon(24.621841237396612, worksheet.outputs_energy_flows_ac268, 0.002); end
  def test_outputs_energy_flows_ad268; assert_in_epsilon(25.81461905575231, worksheet.outputs_energy_flows_ad268, 0.002); end
  def test_outputs_energy_flows_c270; assert_equal("FF.01", worksheet.outputs_energy_flows_c270); end
  def test_outputs_energy_flows_d270; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d270); end
  def test_outputs_energy_flows_e270; assert_equal("n/a", worksheet.outputs_energy_flows_e270); end
  def test_outputs_energy_flows_f270; assert_equal("Aluminium", worksheet.outputs_energy_flows_f270); end
  def test_outputs_energy_flows_i270; assert_equal("FF.01", worksheet.outputs_energy_flows_i270); end
  def test_outputs_energy_flows_j270; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j270); end
  def test_outputs_energy_flows_v270; assert_in_delta(0.7339274805745354, worksheet.outputs_energy_flows_v270, 0.002); end
  def test_outputs_energy_flows_w270; assert_in_delta(0.8340397050872307, worksheet.outputs_energy_flows_w270, 0.002); end
  def test_outputs_energy_flows_x270; assert_in_epsilon(1.002972796757265, worksheet.outputs_energy_flows_x270, 0.002); end
  def test_outputs_energy_flows_y270; assert_in_epsilon(1.1924819867985856, worksheet.outputs_energy_flows_y270, 0.002); end
  def test_outputs_energy_flows_z270; assert_in_epsilon(1.4092356653230136, worksheet.outputs_energy_flows_z270, 0.002); end
  def test_outputs_energy_flows_aa270; assert_in_epsilon(1.652505993333912, worksheet.outputs_energy_flows_aa270, 0.002); end
  def test_outputs_energy_flows_ab270; assert_in_epsilon(1.9153225488943901, worksheet.outputs_energy_flows_ab270, 0.002); end
  def test_outputs_energy_flows_ac270; assert_in_epsilon(2.220696230362219, worksheet.outputs_energy_flows_ac270, 0.002); end
  def test_outputs_energy_flows_ad270; assert_in_epsilon(2.548870902195006, worksheet.outputs_energy_flows_ad270, 0.002); end
  def test_outputs_energy_flows_c272; assert_equal("FF.01", worksheet.outputs_energy_flows_c272); end
  def test_outputs_energy_flows_d272; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_d272); end
  def test_outputs_energy_flows_e272; assert_equal("n/a", worksheet.outputs_energy_flows_e272); end
  def test_outputs_energy_flows_f272; assert_equal("Cement", worksheet.outputs_energy_flows_f272); end
  def test_outputs_energy_flows_i272; assert_equal("FF.01", worksheet.outputs_energy_flows_i272); end
  def test_outputs_energy_flows_j272; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_j272); end
  def test_outputs_energy_flows_v272; assert_in_epsilon(6.851960921136625, worksheet.outputs_energy_flows_v272, 0.002); end
  def test_outputs_energy_flows_w272; assert_in_epsilon(7.325989517614941, worksheet.outputs_energy_flows_w272, 0.002); end
  def test_outputs_energy_flows_x272; assert_in_epsilon(7.799207853066443, worksheet.outputs_energy_flows_x272, 0.002); end
  def test_outputs_energy_flows_y272; assert_in_epsilon(8.25315019698832, worksheet.outputs_energy_flows_y272, 0.002); end
  def test_outputs_energy_flows_z272; assert_in_epsilon(8.708742493850322, worksheet.outputs_energy_flows_z272, 0.002); end
  def test_outputs_energy_flows_aa272; assert_in_epsilon(9.159357564609104, worksheet.outputs_energy_flows_aa272, 0.002); end
  def test_outputs_energy_flows_ab272; assert_in_epsilon(9.594262385908491, worksheet.outputs_energy_flows_ab272, 0.002); end
  def test_outputs_energy_flows_ac272; assert_in_epsilon(10.034995663575547, worksheet.outputs_energy_flows_ac272, 0.002); end
  def test_outputs_energy_flows_ad272; assert_in_epsilon(10.457539486334031, worksheet.outputs_energy_flows_ad272, 0.002); end
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
  def test_outputs_energy_flows_w276; assert_in_epsilon(2.852531434560859, worksheet.outputs_energy_flows_w276, 0.002); end
  def test_outputs_energy_flows_x276; assert_in_epsilon(3.0752838505374656, worksheet.outputs_energy_flows_x276, 0.002); end
  def test_outputs_energy_flows_y276; assert_in_epsilon(3.2958259316792944, worksheet.outputs_energy_flows_y276, 0.002); end
  def test_outputs_energy_flows_z276; assert_in_epsilon(3.5201635765597414, worksheet.outputs_energy_flows_z276, 0.002); end
  def test_outputs_energy_flows_aa276; assert_in_epsilon(3.736920834364369, worksheet.outputs_energy_flows_aa276, 0.002); end
  def test_outputs_energy_flows_ab276; assert_in_epsilon(3.954892298233765, worksheet.outputs_energy_flows_ab276, 0.002); end
  def test_outputs_energy_flows_ac276; assert_in_epsilon(4.178753716692179, worksheet.outputs_energy_flows_ac276, 0.002); end
  def test_outputs_energy_flows_ad276; assert_in_epsilon(4.386915945472428, worksheet.outputs_energy_flows_ad276, 0.002); end
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
  def test_outputs_energy_flows_x288; assert_in_delta(1.1430709704547394e-08, worksheet.outputs_energy_flows_x288, 0.002); end
  def test_outputs_energy_flows_y288; assert_in_delta(1.7144560289296904e-08, worksheet.outputs_energy_flows_y288, 0.002); end
  def test_outputs_energy_flows_z288; assert_in_delta(2.481169289641216e-08, worksheet.outputs_energy_flows_z288, 0.002); end
  def test_outputs_energy_flows_aa288; assert_in_delta(2.3698707193685394e-08, worksheet.outputs_energy_flows_aa288, 0.002); end
  def test_outputs_energy_flows_ab288; assert_in_delta(1.6087414278366208e-08, worksheet.outputs_energy_flows_ab288, 0.002); end
  def test_outputs_energy_flows_ac288; assert_in_delta(8.17771173106912e-09, worksheet.outputs_energy_flows_ac288, 0.002); end
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
  def test_outputs_energy_flows_w304; assert_in_delta(0.626992187539836, worksheet.outputs_energy_flows_w304, 0.002); end
  def test_outputs_energy_flows_x304; assert_in_delta(0.6720232336428776, worksheet.outputs_energy_flows_x304, 0.002); end
  def test_outputs_energy_flows_y304; assert_in_delta(0.7207971153356584, worksheet.outputs_energy_flows_y304, 0.002); end
  def test_outputs_energy_flows_z304; assert_in_delta(0.776068540732932, worksheet.outputs_energy_flows_z304, 0.002); end
  def test_outputs_energy_flows_aa304; assert_in_delta(0.8343640786525314, worksheet.outputs_energy_flows_aa304, 0.002); end
  def test_outputs_energy_flows_ab304; assert_in_delta(0.8962284723995778, worksheet.outputs_energy_flows_ab304, 0.002); end
  def test_outputs_energy_flows_ac304; assert_in_delta(0.978028075211205, worksheet.outputs_energy_flows_ac304, 0.002); end
  def test_outputs_energy_flows_ad304; assert_in_epsilon(1.037559934702446, worksheet.outputs_energy_flows_ad304, 0.002); end
  def test_outputs_energy_flows_c306; assert_equal("FF.02", worksheet.outputs_energy_flows_c306); end
  def test_outputs_energy_flows_d306; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d306); end
  def test_outputs_energy_flows_e306; assert_equal("n/a", worksheet.outputs_energy_flows_e306); end
  def test_outputs_energy_flows_f306; assert_equal("Aluminium", worksheet.outputs_energy_flows_f306); end
  def test_outputs_energy_flows_i306; assert_equal("FF.02", worksheet.outputs_energy_flows_i306); end
  def test_outputs_energy_flows_j306; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j306); end
  def test_outputs_energy_flows_v306; assert_in_delta(0.5405428608660057, worksheet.outputs_energy_flows_v306, 0.002); end
  def test_outputs_energy_flows_w306; assert_in_delta(0.61403116479102, worksheet.outputs_energy_flows_w306, 0.002); end
  def test_outputs_energy_flows_x306; assert_in_delta(0.7380401281160698, worksheet.outputs_energy_flows_x306, 0.002); end
  def test_outputs_energy_flows_y306; assert_in_delta(0.8770668111883675, worksheet.outputs_energy_flows_y306, 0.002); end
  def test_outputs_energy_flows_z306; assert_in_epsilon(1.0359920746879339, worksheet.outputs_energy_flows_z306, 0.002); end
  def test_outputs_energy_flows_aa306; assert_in_epsilon(1.2142526212124483, worksheet.outputs_energy_flows_aa306, 0.002); end
  def test_outputs_energy_flows_ab306; assert_in_epsilon(1.4067012272515584, worksheet.outputs_energy_flows_ab306, 0.002); end
  def test_outputs_energy_flows_ac306; assert_in_epsilon(1.6302094303911958, worksheet.outputs_energy_flows_ac306, 0.002); end
  def test_outputs_energy_flows_ad306; assert_in_epsilon(1.870236209188198, worksheet.outputs_energy_flows_ad306, 0.002); end
  def test_outputs_energy_flows_c308; assert_equal("FF.02", worksheet.outputs_energy_flows_c308); end
  def test_outputs_energy_flows_d308; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_d308); end
  def test_outputs_energy_flows_e308; assert_equal("n/a", worksheet.outputs_energy_flows_e308); end
  def test_outputs_energy_flows_f308; assert_equal("Cement", worksheet.outputs_energy_flows_f308); end
  def test_outputs_energy_flows_i308; assert_equal("FF.02", worksheet.outputs_energy_flows_i308); end
  def test_outputs_energy_flows_j308; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_j308); end
  def test_outputs_energy_flows_v308; assert_in_epsilon(1.1385974140784139, worksheet.outputs_energy_flows_v308, 0.002); end
  def test_outputs_energy_flows_w308; assert_in_epsilon(1.2220208642375259, worksheet.outputs_energy_flows_w308, 0.002); end
  def test_outputs_energy_flows_x308; assert_in_epsilon(1.3072029471722308, worksheet.outputs_energy_flows_x308, 0.002); end
  def test_outputs_energy_flows_y308; assert_in_epsilon(1.3899605680018645, worksheet.outputs_energy_flows_y308, 0.002); end
  def test_outputs_energy_flows_z308; assert_in_epsilon(1.4737998103009078, worksheet.outputs_energy_flows_z308, 0.002); end
  def test_outputs_energy_flows_aa308; assert_in_epsilon(1.557609485641663, worksheet.outputs_energy_flows_aa308, 0.002); end
  def test_outputs_energy_flows_ab308; assert_in_epsilon(1.6395550029470598, worksheet.outputs_energy_flows_ab308, 0.002); end
  def test_outputs_energy_flows_ac308; assert_in_epsilon(1.7233076879206501, worksheet.outputs_energy_flows_ac308, 0.002); end
  def test_outputs_energy_flows_ad308; assert_in_epsilon(1.804749361317774, worksheet.outputs_energy_flows_ad308, 0.002); end
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
  def test_outputs_energy_flows_w312; assert_in_epsilon(18.89664080735211, worksheet.outputs_energy_flows_w312, 0.002); end
  def test_outputs_energy_flows_x312; assert_in_epsilon(20.456341779503017, worksheet.outputs_energy_flows_x312, 0.002); end
  def test_outputs_energy_flows_y312; assert_in_epsilon(21.919121319284873, worksheet.outputs_energy_flows_y312, 0.002); end
  def test_outputs_energy_flows_z312; assert_in_epsilon(23.538422842148133, worksheet.outputs_energy_flows_z312, 0.002); end
  def test_outputs_energy_flows_aa312; assert_in_epsilon(25.211949418342662, worksheet.outputs_energy_flows_aa312, 0.002); end
  def test_outputs_energy_flows_ab312; assert_in_epsilon(26.892406352253317, worksheet.outputs_energy_flows_ab312, 0.002); end
  def test_outputs_energy_flows_ac312; assert_in_epsilon(28.933728649572732, worksheet.outputs_energy_flows_ac312, 0.002); end
  def test_outputs_energy_flows_ad312; assert_in_epsilon(30.62665100059073, worksheet.outputs_energy_flows_ad312, 0.002); end
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
  def test_outputs_energy_flows_w340; assert_in_epsilon(2.420180717306023, worksheet.outputs_energy_flows_w340, 0.002); end
  def test_outputs_energy_flows_x340; assert_in_epsilon(2.638577059956645, worksheet.outputs_energy_flows_x340, 0.002); end
  def test_outputs_energy_flows_y340; assert_in_epsilon(2.87780696289284, worksheet.outputs_energy_flows_y340, 0.002); end
  def test_outputs_energy_flows_z340; assert_in_epsilon(3.1498046760956533, worksheet.outputs_energy_flows_z340, 0.002); end
  def test_outputs_energy_flows_aa340; assert_in_epsilon(3.441549300204146, worksheet.outputs_energy_flows_aa340, 0.002); end
  def test_outputs_energy_flows_ab340; assert_in_epsilon(3.7559491185791316, worksheet.outputs_energy_flows_ab340, 0.002); end
  def test_outputs_energy_flows_ac340; assert_in_epsilon(4.16341831627398, worksheet.outputs_energy_flows_ac340, 0.002); end
  def test_outputs_energy_flows_ad340; assert_in_epsilon(4.485512690220536, worksheet.outputs_energy_flows_ad340, 0.002); end
  def test_outputs_energy_flows_c342; assert_equal("FF.03", worksheet.outputs_energy_flows_c342); end
  def test_outputs_energy_flows_d342; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d342); end
  def test_outputs_energy_flows_e342; assert_equal("n/a", worksheet.outputs_energy_flows_e342); end
  def test_outputs_energy_flows_f342; assert_equal("Aluminium", worksheet.outputs_energy_flows_f342); end
  def test_outputs_energy_flows_i342; assert_equal("FF.03", worksheet.outputs_energy_flows_i342); end
  def test_outputs_energy_flows_j342; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j342); end
  def test_outputs_energy_flows_v342; assert_in_delta(0.6799566079776811, worksheet.outputs_energy_flows_v342, 0.002); end
  def test_outputs_energy_flows_w342; assert_in_delta(0.7288023898841121, worksheet.outputs_energy_flows_w342, 0.002); end
  def test_outputs_energy_flows_x342; assert_in_delta(0.8215759924977797, worksheet.outputs_energy_flows_x342, 0.002); end
  def test_outputs_energy_flows_y342; assert_in_delta(0.9228478709866903, worksheet.outputs_energy_flows_y342, 0.002); end
  def test_outputs_energy_flows_z342; assert_in_epsilon(1.0369979100695812, worksheet.outputs_energy_flows_z342, 0.002); end
  def test_outputs_energy_flows_aa342; assert_in_epsilon(1.1625106165834052, worksheet.outputs_energy_flows_aa342, 0.002); end
  def test_outputs_energy_flows_ab342; assert_in_epsilon(1.294027985222877, worksheet.outputs_energy_flows_ab342, 0.002); end
  def test_outputs_energy_flows_ac342; assert_in_epsilon(1.4465822264550563, worksheet.outputs_energy_flows_ac342, 0.002); end
  def test_outputs_energy_flows_ad342; assert_in_epsilon(1.6063062088204834, worksheet.outputs_energy_flows_ad342, 0.002); end
  def test_outputs_energy_flows_c344; assert_equal("FF.03", worksheet.outputs_energy_flows_c344); end
  def test_outputs_energy_flows_d344; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_d344); end
  def test_outputs_energy_flows_e344; assert_equal("n/a", worksheet.outputs_energy_flows_e344); end
  def test_outputs_energy_flows_f344; assert_equal("Cement", worksheet.outputs_energy_flows_f344); end
  def test_outputs_energy_flows_i344; assert_equal("FF.03", worksheet.outputs_energy_flows_i344); end
  def test_outputs_energy_flows_j344; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j344); end
  def test_outputs_energy_flows_v344; assert_in_delta(0.8284396320493046, worksheet.outputs_energy_flows_v344, 0.002); end
  def test_outputs_energy_flows_w344; assert_in_delta(0.8891382525621911, worksheet.outputs_energy_flows_w344, 0.002); end
  def test_outputs_energy_flows_x344; assert_in_delta(0.9511164483415464, worksheet.outputs_energy_flows_x344, 0.002); end
  def test_outputs_energy_flows_y344; assert_in_epsilon(1.0113306136836215, worksheet.outputs_energy_flows_y344, 0.002); end
  def test_outputs_energy_flows_z344; assert_in_epsilon(1.0723317631528841, worksheet.outputs_energy_flows_z344, 0.002); end
  def test_outputs_energy_flows_aa344; assert_in_epsilon(1.1333113998031772, worksheet.outputs_energy_flows_aa344, 0.002); end
  def test_outputs_energy_flows_ab344; assert_in_epsilon(1.1929346813644837, worksheet.outputs_energy_flows_ab344, 0.002); end
  def test_outputs_energy_flows_ac344; assert_in_epsilon(1.253872852016157, worksheet.outputs_energy_flows_ac344, 0.002); end
  def test_outputs_energy_flows_ad344; assert_in_epsilon(1.3131295384519002, worksheet.outputs_energy_flows_ad344, 0.002); end
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
  def test_outputs_energy_flows_w348; assert_in_epsilon(11.616315051962154, worksheet.outputs_energy_flows_w348, 0.002); end
  def test_outputs_energy_flows_x348; assert_in_epsilon(12.510925325525086, worksheet.outputs_energy_flows_x348, 0.002); end
  def test_outputs_energy_flows_y348; assert_in_epsilon(13.406894692904505, worksheet.outputs_energy_flows_y348, 0.002); end
  def test_outputs_energy_flows_z348; assert_in_epsilon(14.321508835438355, worksheet.outputs_energy_flows_z348, 0.002); end
  def test_outputs_energy_flows_aa348; assert_in_epsilon(15.209153600300828, worksheet.outputs_energy_flows_aa348, 0.002); end
  def test_outputs_energy_flows_ab348; assert_in_epsilon(16.09516341107824, worksheet.outputs_energy_flows_ab348, 0.002); end
  def test_outputs_energy_flows_ac348; assert_in_epsilon(17.000957408224846, worksheet.outputs_energy_flows_ac348, 0.002); end
  def test_outputs_energy_flows_ad348; assert_in_epsilon(17.850091523203, worksheet.outputs_energy_flows_ad348, 0.002); end
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
  def test_outputs_energy_flows_w360; assert_in_delta(8.57347382583207e-08, worksheet.outputs_energy_flows_w360, 0.002); end
  def test_outputs_energy_flows_x360; assert_in_delta(7.329942598041018e-08, worksheet.outputs_energy_flows_x360, 0.002); end
  def test_outputs_energy_flows_y360; assert_in_delta(6.369863553638772e-08, worksheet.outputs_energy_flows_y360, 0.002); end
  def test_outputs_energy_flows_z360; assert_in_delta(4.396862787689783e-08, worksheet.outputs_energy_flows_z360, 0.002); end
  def test_outputs_energy_flows_aa360; assert_in_delta(2.9291602091395157e-08, worksheet.outputs_energy_flows_aa360, 0.002); end
  def test_outputs_energy_flows_ab360; assert_in_delta(1.848341214961224e-08, worksheet.outputs_energy_flows_ab360, 0.002); end
  def test_outputs_energy_flows_ac360; assert_in_delta(8.586597317622577e-09, worksheet.outputs_energy_flows_ac360, 0.002); end
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
  def test_outputs_energy_flows_w366; assert_in_epsilon(-4.088955020179201, worksheet.outputs_energy_flows_w366, 0.002); end
  def test_outputs_energy_flows_x366; assert_in_epsilon(-4.246972439583023, worksheet.outputs_energy_flows_x366, 0.002); end
  def test_outputs_energy_flows_y366; assert_in_epsilon(-4.388818903694894, worksheet.outputs_energy_flows_y366, 0.002); end
  def test_outputs_energy_flows_z366; assert_in_epsilon(-4.516559527684551, worksheet.outputs_energy_flows_z366, 0.002); end
  def test_outputs_energy_flows_aa366; assert_in_epsilon(-4.718341292577504, worksheet.outputs_energy_flows_aa366, 0.002); end
  def test_outputs_energy_flows_ab366; assert_in_epsilon(-4.822216225142612, worksheet.outputs_energy_flows_ab366, 0.002); end
  def test_outputs_energy_flows_ac366; assert_in_epsilon(-4.913068482185674, worksheet.outputs_energy_flows_ac366, 0.002); end
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
  def test_outputs_energy_flows_w372; assert_in_delta(6.768531967762161e-08, worksheet.outputs_energy_flows_w372, 0.002); end
  def test_outputs_energy_flows_x372; assert_in_delta(6.471567741165161e-08, worksheet.outputs_energy_flows_x372, 0.002); end
  def test_outputs_energy_flows_y372; assert_in_delta(5.973230745407538e-08, worksheet.outputs_energy_flows_y372, 0.002); end
  def test_outputs_energy_flows_z372; assert_in_delta(5.260902584541927e-08, worksheet.outputs_energy_flows_z372, 0.002); end
  def test_outputs_energy_flows_aa372; assert_in_delta(4.321424893643101e-08, worksheet.outputs_energy_flows_aa372, 0.002); end
  def test_outputs_energy_flows_ab372; assert_in_delta(3.1410799558472e-08, worksheet.outputs_energy_flows_ab372, 0.002); end
  def test_outputs_energy_flows_ac372; assert_in_delta(1.705570691442942e-08, worksheet.outputs_energy_flows_ac372, 0.002); end
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
  def test_outputs_energy_flows_w382; assert_in_delta(0.8320910719897328, worksheet.outputs_energy_flows_w382, 0.002); end
  def test_outputs_energy_flows_x382; assert_in_delta(0.8918524728003583, worksheet.outputs_energy_flows_x382, 0.002); end
  def test_outputs_energy_flows_y382; assert_in_delta(0.9565810488645822, worksheet.outputs_energy_flows_y382, 0.002); end
  def test_outputs_energy_flows_z382; assert_in_epsilon(1.029932616114048, worksheet.outputs_energy_flows_z382, 0.002); end
  def test_outputs_energy_flows_aa382; assert_in_epsilon(1.107297530069464, worksheet.outputs_energy_flows_aa382, 0.002); end
  def test_outputs_energy_flows_ab382; assert_in_epsilon(1.189398728033281, worksheet.outputs_energy_flows_ab382, 0.002); end
  def test_outputs_energy_flows_ac382; assert_in_epsilon(1.2979562516268852, worksheet.outputs_energy_flows_ac382, 0.002); end
  def test_outputs_energy_flows_ad382; assert_in_epsilon(1.3769619071454584, worksheet.outputs_energy_flows_ad382, 0.002); end
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
  def test_outputs_energy_flows_w390; assert_in_epsilon(1.9254209275573846, worksheet.outputs_energy_flows_w390, 0.002); end
  def test_outputs_energy_flows_x390; assert_in_epsilon(2.0706752250213776, worksheet.outputs_energy_flows_x390, 0.002); end
  def test_outputs_energy_flows_y390; assert_in_epsilon(2.218384097914454, worksheet.outputs_energy_flows_y390, 0.002); end
  def test_outputs_energy_flows_z390; assert_in_epsilon(2.3733609877383577, worksheet.outputs_energy_flows_z390, 0.002); end
  def test_outputs_energy_flows_aa390; assert_in_epsilon(2.52772425109856, worksheet.outputs_energy_flows_aa390, 0.002); end
  def test_outputs_energy_flows_ab390; assert_in_epsilon(2.679211600352772, worksheet.outputs_energy_flows_ab390, 0.002); end
  def test_outputs_energy_flows_ac390; assert_in_epsilon(2.8395021624795294, worksheet.outputs_energy_flows_ac390, 0.002); end
  def test_outputs_energy_flows_ad390; assert_in_epsilon(2.987806991254426, worksheet.outputs_energy_flows_ad390, 0.002); end
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
  def test_outputs_energy_flows_w400; assert_in_epsilon(123.58489754826377, worksheet.outputs_energy_flows_w400, 0.002); end
  def test_outputs_energy_flows_x400; assert_in_epsilon(139.1197949678667, worksheet.outputs_energy_flows_x400, 0.002); end
  def test_outputs_energy_flows_y400; assert_in_epsilon(154.40787788608299, worksheet.outputs_energy_flows_y400, 0.002); end
  def test_outputs_energy_flows_z400; assert_in_epsilon(167.65923617088774, worksheet.outputs_energy_flows_z400, 0.002); end
  def test_outputs_energy_flows_aa400; assert_in_epsilon(178.55615426545432, worksheet.outputs_energy_flows_aa400, 0.002); end
  def test_outputs_energy_flows_ab400; assert_in_epsilon(184.94095174585456, worksheet.outputs_energy_flows_ab400, 0.002); end
  def test_outputs_energy_flows_ac400; assert_in_epsilon(184.9002614004425, worksheet.outputs_energy_flows_ac400, 0.002); end
  def test_outputs_energy_flows_ad400; assert_in_epsilon(185.93618531436192, worksheet.outputs_energy_flows_ad400, 0.002); end
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
  def test_outputs_energy_flows_w402; assert_in_epsilon(51.735848925363655, worksheet.outputs_energy_flows_w402, 0.002); end
  def test_outputs_energy_flows_x402; assert_in_epsilon(51.68899402667122, worksheet.outputs_energy_flows_x402, 0.002); end
  def test_outputs_energy_flows_y402; assert_in_epsilon(51.60469995343935, worksheet.outputs_energy_flows_y402, 0.002); end
  def test_outputs_energy_flows_z402; assert_in_epsilon(51.19421740844749, worksheet.outputs_energy_flows_z402, 0.002); end
  def test_outputs_energy_flows_aa402; assert_in_epsilon(50.90651476176129, worksheet.outputs_energy_flows_aa402, 0.002); end
  def test_outputs_energy_flows_ab402; assert_in_epsilon(50.952034888838604, worksheet.outputs_energy_flows_ab402, 0.002); end
  def test_outputs_energy_flows_ac402; assert_in_epsilon(50.67508411234554, worksheet.outputs_energy_flows_ac402, 0.002); end
  def test_outputs_energy_flows_ad402; assert_in_epsilon(51.68851902823827, worksheet.outputs_energy_flows_ad402, 0.002); end
  def test_outputs_energy_flows_d404; assert_equal("Oil reserves", worksheet.outputs_energy_flows_d404); end
  def test_outputs_energy_flows_f404; assert_equal("Liquid", worksheet.outputs_energy_flows_f404); end
  def test_outputs_energy_flows_i404; assert_equal("G.Q.02", worksheet.outputs_energy_flows_i404); end
  def test_outputs_energy_flows_j404; assert_equal("Global Oil reserves ", worksheet.outputs_energy_flows_j404); end
  def test_outputs_energy_flows_v404; assert_in_epsilon(153.0104275275249, worksheet.outputs_energy_flows_v404, 0.002); end
  def test_outputs_energy_flows_w404; assert_in_epsilon(169.21952885591722, worksheet.outputs_energy_flows_w404, 0.002); end
  def test_outputs_energy_flows_x404; assert_in_epsilon(183.31835738759804, worksheet.outputs_energy_flows_x404, 0.002); end
  def test_outputs_energy_flows_y404; assert_in_epsilon(197.2410669088182, worksheet.outputs_energy_flows_y404, 0.002); end
  def test_outputs_energy_flows_z404; assert_in_epsilon(213.09894168440297, worksheet.outputs_energy_flows_z404, 0.002); end
  def test_outputs_energy_flows_aa404; assert_in_epsilon(229.36173014312885, worksheet.outputs_energy_flows_aa404, 0.002); end
  def test_outputs_energy_flows_ab404; assert_in_epsilon(246.22296545071302, worksheet.outputs_energy_flows_ab404, 0.002); end
  def test_outputs_energy_flows_ac404; assert_in_epsilon(265.35281584728455, worksheet.outputs_energy_flows_ac404, 0.002); end
  def test_outputs_energy_flows_ad404; assert_in_epsilon(281.2272295110942, worksheet.outputs_energy_flows_ad404, 0.002); end
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
  def test_outputs_energy_flows_w408; assert_in_epsilon(91.16688064573859, worksheet.outputs_energy_flows_w408, 0.002); end
  def test_outputs_energy_flows_x408; assert_in_epsilon(97.27648747804446, worksheet.outputs_energy_flows_x408, 0.002); end
  def test_outputs_energy_flows_y408; assert_in_epsilon(104.63601930060108, worksheet.outputs_energy_flows_y408, 0.002); end
  def test_outputs_energy_flows_z408; assert_in_epsilon(113.64306418990071, worksheet.outputs_energy_flows_z408, 0.002); end
  def test_outputs_energy_flows_aa408; assert_in_epsilon(122.79918861015089, worksheet.outputs_energy_flows_aa408, 0.002); end
  def test_outputs_energy_flows_ab408; assert_in_epsilon(130.4117559106861, worksheet.outputs_energy_flows_ab408, 0.002); end
  def test_outputs_energy_flows_ac408; assert_in_epsilon(141.03816419599156, worksheet.outputs_energy_flows_ac408, 0.002); end
  def test_outputs_energy_flows_ad408; assert_in_epsilon(149.84656028929425, worksheet.outputs_energy_flows_ad408, 0.002); end
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
  def test_outputs_energy_flows_w414; assert_in_epsilon(37.55998761469513, worksheet.outputs_energy_flows_w414, 0.002); end
  def test_outputs_energy_flows_x414; assert_in_epsilon(44.225640086899844, worksheet.outputs_energy_flows_x414, 0.002); end
  def test_outputs_energy_flows_y414; assert_in_epsilon(50.62395010334246, worksheet.outputs_energy_flows_y414, 0.002); end
  def test_outputs_energy_flows_z414; assert_in_epsilon(44.38981182058666, worksheet.outputs_energy_flows_z414, 0.002); end
  def test_outputs_energy_flows_aa414; assert_in_epsilon(49.01397580914482, worksheet.outputs_energy_flows_aa414, 0.002); end
  def test_outputs_energy_flows_ab414; assert_in_epsilon(53.388500012755564, worksheet.outputs_energy_flows_ab414, 0.002); end
  def test_outputs_energy_flows_ac414; assert_in_epsilon(55.246640468570455, worksheet.outputs_energy_flows_ac414, 0.002); end
  def test_outputs_energy_flows_ad414; assert_in_epsilon(56.61176082410451, worksheet.outputs_energy_flows_ad414, 0.002); end
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
  def test_outputs_energy_flows_w416; assert_in_epsilon(26.617833342125635, worksheet.outputs_energy_flows_w416, 0.002); end
  def test_outputs_energy_flows_x416; assert_in_epsilon(28.835545864508433, worksheet.outputs_energy_flows_x416, 0.002); end
  def test_outputs_energy_flows_y416; assert_in_epsilon(31.0255552813424, worksheet.outputs_energy_flows_y416, 0.002); end
  def test_outputs_energy_flows_z416; assert_in_epsilon(33.519961634974386, worksheet.outputs_energy_flows_z416, 0.002); end
  def test_outputs_energy_flows_aa416; assert_in_epsilon(29.633863884385168, worksheet.outputs_energy_flows_aa416, 0.002); end
  def test_outputs_energy_flows_ab416; assert_in_epsilon(31.81235962434901, worksheet.outputs_energy_flows_ab416, 0.002); end
  def test_outputs_energy_flows_ac416; assert_in_epsilon(34.283963681516234, worksheet.outputs_energy_flows_ac416, 0.002); end
  def test_outputs_energy_flows_ad416; assert_in_epsilon(36.33496065238933, worksheet.outputs_energy_flows_ad416, 0.002); end
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
  def test_outputs_energy_flows_w418; assert_in_epsilon(45.4882299546417, worksheet.outputs_energy_flows_w418, 0.002); end
  def test_outputs_energy_flows_x418; assert_in_epsilon(48.536652787055125, worksheet.outputs_energy_flows_x418, 0.002); end
  def test_outputs_energy_flows_y418; assert_in_epsilon(52.208732752188894, worksheet.outputs_energy_flows_y418, 0.002); end
  def test_outputs_energy_flows_z418; assert_in_epsilon(42.22901293328331, worksheet.outputs_energy_flows_z418, 0.002); end
  def test_outputs_energy_flows_aa418; assert_in_epsilon(45.631368363574964, worksheet.outputs_energy_flows_aa418, 0.002); end
  def test_outputs_energy_flows_ab418; assert_in_epsilon(48.46014815124953, worksheet.outputs_energy_flows_ab418, 0.002); end
  def test_outputs_energy_flows_ac418; assert_in_epsilon(52.40885136612103, worksheet.outputs_energy_flows_ac418, 0.002); end
  def test_outputs_energy_flows_ad418; assert_in_epsilon(55.681993244132954, worksheet.outputs_energy_flows_ad418, 0.002); end
  def test_outputs_energy_flows_d420; assert_equal("Solid", worksheet.outputs_energy_flows_d420); end
  def test_outputs_energy_flows_f420; assert_equal("Power plants", worksheet.outputs_energy_flows_f420); end
  def test_outputs_energy_flows_i420; assert_equal("G.C.01", worksheet.outputs_energy_flows_i420); end
  def test_outputs_energy_flows_j420; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j420); end
  def test_outputs_energy_flows_n420; assert_equal("Global Electricity Generation", worksheet.outputs_energy_flows_n420); end
  def test_outputs_energy_flows_v420; assert_in_epsilon(86.94146718841361, worksheet.outputs_energy_flows_v420, 0.002); end
  def test_outputs_energy_flows_w420; assert_in_epsilon(87.47879166770862, worksheet.outputs_energy_flows_w420, 0.002); end
  def test_outputs_energy_flows_x420; assert_in_epsilon(98.47725338773073, worksheet.outputs_energy_flows_x420, 0.002); end
  def test_outputs_energy_flows_y420; assert_in_epsilon(109.22930667560234, worksheet.outputs_energy_flows_y420, 0.002); end
  def test_outputs_energy_flows_z420; assert_in_epsilon(118.15457182481892, worksheet.outputs_energy_flows_z420, 0.002); end
  def test_outputs_energy_flows_aa420; assert_in_epsilon(124.78275365144495, worksheet.outputs_energy_flows_aa420, 0.002); end
  def test_outputs_energy_flows_ab420; assert_in_epsilon(127.13424464292576, worksheet.outputs_energy_flows_ab420, 0.002); end
  def test_outputs_energy_flows_ac420; assert_in_epsilon(122.90349911640429, worksheet.outputs_energy_flows_ac420, 0.002); end
  def test_outputs_energy_flows_ad420; assert_in_epsilon(120.51118364650915, worksheet.outputs_energy_flows_ad420, 0.002); end
  def test_outputs_energy_flows_d422; assert_equal("Liquid", worksheet.outputs_energy_flows_d422); end
  def test_outputs_energy_flows_f422; assert_equal("Power plants", worksheet.outputs_energy_flows_f422); end
  def test_outputs_energy_flows_i422; assert_equal("G.C.02", worksheet.outputs_energy_flows_i422); end
  def test_outputs_energy_flows_j422; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j422); end
  def test_outputs_energy_flows_n422; assert_equal("Global Electricity Generation", worksheet.outputs_energy_flows_n422); end
  def test_outputs_energy_flows_v422; assert_in_epsilon(13.366790608402482, worksheet.outputs_energy_flows_v422, 0.002); end
  def test_outputs_energy_flows_w422; assert_in_epsilon(21.182714988562644, worksheet.outputs_energy_flows_w422, 0.002); end
  def test_outputs_energy_flows_x422; assert_in_epsilon(24.434670210992987, worksheet.outputs_energy_flows_x422, 0.002); end
  def test_outputs_energy_flows_y422; assert_in_epsilon(27.983127083781245, worksheet.outputs_energy_flows_y422, 0.002); end
  def test_outputs_energy_flows_z422; assert_in_epsilon(33.18312335130325, worksheet.outputs_energy_flows_z422, 0.002); end
  def test_outputs_energy_flows_aa422; assert_in_epsilon(38.86402187580834, worksheet.outputs_energy_flows_aa422, 0.002); end
  def test_outputs_energy_flows_ab422; assert_in_epsilon(45.46676658938077, worksheet.outputs_energy_flows_ab422, 0.002); end
  def test_outputs_energy_flows_ac422; assert_in_epsilon(53.82879750217999, worksheet.outputs_energy_flows_ac422, 0.002); end
  def test_outputs_energy_flows_ad422; assert_in_epsilon(59.72226923668789, worksheet.outputs_energy_flows_ad422, 0.002); end
  def test_outputs_energy_flows_d424; assert_equal("Gas", worksheet.outputs_energy_flows_d424); end
  def test_outputs_energy_flows_f424; assert_equal("Power plants", worksheet.outputs_energy_flows_f424); end
  def test_outputs_energy_flows_i424; assert_equal("G.C.03", worksheet.outputs_energy_flows_i424); end
  def test_outputs_energy_flows_j424; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j424); end
  def test_outputs_energy_flows_n424; assert_equal("Global Electricity Generation", worksheet.outputs_energy_flows_n424); end
  def test_outputs_energy_flows_v424; assert_in_epsilon(35.74892547965594, worksheet.outputs_energy_flows_v424, 0.002); end
  def test_outputs_energy_flows_w424; assert_in_epsilon(37.60426182359599, worksheet.outputs_energy_flows_w424, 0.002); end
  def test_outputs_energy_flows_x424; assert_in_epsilon(38.80518297320951, worksheet.outputs_energy_flows_x424, 0.002); end
  def test_outputs_energy_flows_y424; assert_in_epsilon(41.66131581656205, worksheet.outputs_energy_flows_y424, 0.002); end
  def test_outputs_energy_flows_z424; assert_in_epsilon(45.95273624887264, worksheet.outputs_energy_flows_z424, 0.002); end
  def test_outputs_energy_flows_aa424; assert_in_epsilon(50.501129582402854, worksheet.outputs_energy_flows_aa424, 0.002); end
  def test_outputs_energy_flows_ab424; assert_in_epsilon(54.00130468642857, worksheet.outputs_energy_flows_ab424, 0.002); end
  def test_outputs_energy_flows_ac424; assert_in_epsilon(60.17889482415738, worksheet.outputs_energy_flows_ac424, 0.002); end
  def test_outputs_energy_flows_ad424; assert_in_epsilon(65.51759030623707, worksheet.outputs_energy_flows_ad424, 0.002); end
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
  def test_outputs_energy_flows_w428; assert_in_epsilon(63.77564362381391, worksheet.outputs_energy_flows_w428, 0.002); end
  def test_outputs_energy_flows_x428; assert_in_epsilon(70.80656104984652, worksheet.outputs_energy_flows_x428, 0.002); end
  def test_outputs_energy_flows_y428; assert_in_epsilon(78.9571855375737, worksheet.outputs_energy_flows_y428, 0.002); end
  def test_outputs_energy_flows_z428; assert_in_epsilon(87.37899059798889, worksheet.outputs_energy_flows_z428, 0.002); end
  def test_outputs_energy_flows_aa428; assert_in_epsilon(95.89860491204692, worksheet.outputs_energy_flows_aa428, 0.002); end
  def test_outputs_energy_flows_ab428; assert_in_epsilon(102.68165311336979, worksheet.outputs_energy_flows_ab428, 0.002); end
  def test_outputs_energy_flows_ac428; assert_in_epsilon(108.63989974983198, worksheet.outputs_energy_flows_ac428, 0.002); end
  def test_outputs_energy_flows_ad428; assert_in_epsilon(114.02618782875439, worksheet.outputs_energy_flows_ad428, 0.002); end
  def test_outputs_energy_flows_d430; assert_equal("Power plants", worksheet.outputs_energy_flows_d430); end
  def test_outputs_energy_flows_f430; assert_equal("Heat network", worksheet.outputs_energy_flows_f430); end
  def test_outputs_energy_flows_i430; assert_equal("G.H.01", worksheet.outputs_energy_flows_i430); end
  def test_outputs_energy_flows_j430; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j430); end
  def test_outputs_energy_flows_p430; assert_equal("Unabated power", worksheet.outputs_energy_flows_p430); end
  def test_outputs_energy_flows_r430; assert_equal("Carbon Capture and Storage", worksheet.outputs_energy_flows_r430); end
  def test_outputs_energy_flows_t430; assert_equal("Nuclear", worksheet.outputs_energy_flows_t430); end
  def test_outputs_energy_flows_v430; assert_in_epsilon(9.635809154838396, worksheet.outputs_energy_flows_v430, 0.002); end
  def test_outputs_energy_flows_w430; assert_in_epsilon(10.544734770162252, worksheet.outputs_energy_flows_w430, 0.002); end
  def test_outputs_energy_flows_x430; assert_in_epsilon(11.882322779111119, worksheet.outputs_energy_flows_x430, 0.002); end
  def test_outputs_energy_flows_y430; assert_in_epsilon(13.151278123520534, worksheet.outputs_energy_flows_y430, 0.002); end
  def test_outputs_energy_flows_z430; assert_in_epsilon(14.552783481082463, worksheet.outputs_energy_flows_z430, 0.002); end
  def test_outputs_energy_flows_aa430; assert_in_epsilon(15.932568469193292, worksheet.outputs_energy_flows_aa430, 0.002); end
  def test_outputs_energy_flows_ab430; assert_in_epsilon(17.15780017251497, worksheet.outputs_energy_flows_ab430, 0.002); end
  def test_outputs_energy_flows_ac430; assert_in_epsilon(18.50719303898304, worksheet.outputs_energy_flows_ac430, 0.002); end
  def test_outputs_energy_flows_ad430; assert_in_epsilon(19.495890840266284, worksheet.outputs_energy_flows_ad430, 0.002); end
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
  def test_outputs_energy_flows_w444; assert_in_epsilon(100.00740170830915, worksheet.outputs_energy_flows_w444, 0.002); end
  def test_outputs_energy_flows_x444; assert_in_epsilon(107.19266995184725, worksheet.outputs_energy_flows_x444, 0.002); end
  def test_outputs_energy_flows_y444; assert_in_epsilon(115.53087635162304, worksheet.outputs_energy_flows_y444, 0.002); end
  def test_outputs_energy_flows_z444; assert_in_epsilon(123.97121098234864, worksheet.outputs_energy_flows_z444, 0.002); end
  def test_outputs_energy_flows_aa444; assert_in_epsilon(131.58749490854396, worksheet.outputs_energy_flows_aa444, 0.002); end
  def test_outputs_energy_flows_ab444; assert_in_epsilon(136.12924992973615, worksheet.outputs_energy_flows_ab444, 0.002); end
  def test_outputs_energy_flows_ac444; assert_in_epsilon(139.66144180996034, worksheet.outputs_energy_flows_ac444, 0.002); end
  def test_outputs_energy_flows_ad444; assert_in_epsilon(142.68016789011875, worksheet.outputs_energy_flows_ad444, 0.002); end
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
  def test_outputs_energy_flows_x448; assert_in_delta(1.1430709704547394e-08, worksheet.outputs_energy_flows_x448, 0.002); end
  def test_outputs_energy_flows_y448; assert_in_delta(1.7144560289296904e-08, worksheet.outputs_energy_flows_y448, 0.002); end
  def test_outputs_energy_flows_z448; assert_in_delta(2.481169289641216e-08, worksheet.outputs_energy_flows_z448, 0.002); end
  def test_outputs_energy_flows_aa448; assert_in_delta(2.3698707193685394e-08, worksheet.outputs_energy_flows_aa448, 0.002); end
  def test_outputs_energy_flows_ab448; assert_in_delta(1.6087414278366208e-08, worksheet.outputs_energy_flows_ab448, 0.002); end
  def test_outputs_energy_flows_ac448; assert_in_delta(8.17771173106912e-09, worksheet.outputs_energy_flows_ac448, 0.002); end
  def test_outputs_energy_flows_ad448; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad448||0), 0.002); end
  def test_outputs_energy_flows_d450; assert_equal("Gas", worksheet.outputs_energy_flows_d450); end
  def test_outputs_energy_flows_f450; assert_equal("Hydrogen", worksheet.outputs_energy_flows_f450); end
  def test_outputs_energy_flows_i450; assert_equal("G.FF.03", worksheet.outputs_energy_flows_i450); end
  def test_outputs_energy_flows_j450; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_j450); end
  def test_outputs_energy_flows_p450; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_p450); end
  def test_outputs_energy_flows_v450; assert_in_delta(8.663792701034158e-08, worksheet.outputs_energy_flows_v450, 0.002); end
  def test_outputs_energy_flows_w450; assert_in_delta(8.57347382583207e-08, worksheet.outputs_energy_flows_w450, 0.002); end
  def test_outputs_energy_flows_x450; assert_in_delta(7.329942598041018e-08, worksheet.outputs_energy_flows_x450, 0.002); end
  def test_outputs_energy_flows_y450; assert_in_delta(6.369863553638772e-08, worksheet.outputs_energy_flows_y450, 0.002); end
  def test_outputs_energy_flows_z450; assert_in_delta(4.396862787689783e-08, worksheet.outputs_energy_flows_z450, 0.002); end
  def test_outputs_energy_flows_aa450; assert_in_delta(2.9291602091395157e-08, worksheet.outputs_energy_flows_aa450, 0.002); end
  def test_outputs_energy_flows_ab450; assert_in_delta(1.848341214961224e-08, worksheet.outputs_energy_flows_ab450, 0.002); end
  def test_outputs_energy_flows_ac450; assert_in_delta(8.586597317622577e-09, worksheet.outputs_energy_flows_ac450, 0.002); end
  def test_outputs_energy_flows_ad450; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad450||0), 0.002); end
  def test_outputs_energy_flows_d452; assert_equal("Electricity", worksheet.outputs_energy_flows_d452); end
  def test_outputs_energy_flows_f452; assert_equal("Hydrogen", worksheet.outputs_energy_flows_f452); end
  def test_outputs_energy_flows_i452; assert_equal("G.E.01", worksheet.outputs_energy_flows_i452); end
  def test_outputs_energy_flows_j452; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j452); end
  def test_outputs_energy_flows_p452; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_p452); end
  def test_outputs_energy_flows_v452; assert_in_delta(5.69986361910142e-09, worksheet.outputs_energy_flows_v452, 0.002); end
  def test_outputs_energy_flows_w452; assert_in_delta(5.551617427626446e-09, worksheet.outputs_energy_flows_w452, 0.002); end
  def test_outputs_energy_flows_x452; assert_in_delta(5.224028050484951e-09, worksheet.outputs_energy_flows_x452, 0.002); end
  def test_outputs_energy_flows_y452; assert_in_delta(6.168562745075731e-09, worksheet.outputs_energy_flows_y452, 0.002); end
  def test_outputs_energy_flows_z452; assert_in_delta(1.2337078451018472e-08, worksheet.outputs_energy_flows_z452, 0.002); end
  def test_outputs_energy_flows_aa452; assert_in_delta(1.5719338462567206e-08, worksheet.outputs_energy_flows_aa452, 0.002); end
  def test_outputs_energy_flows_ab452; assert_in_delta(1.5163784538738273e-08, worksheet.outputs_energy_flows_ab452, 0.002); end
  def test_outputs_energy_flows_ac452; assert_in_delta(1.0222650334534962e-08, worksheet.outputs_energy_flows_ac452, 0.002); end
  def test_outputs_energy_flows_ad452; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad452||0), 0.002); end
  def test_outputs_energy_flows_d454; assert_equal("Hydrogen", worksheet.outputs_energy_flows_d454); end
  def test_outputs_energy_flows_f454; assert_equal("Losses / own use", worksheet.outputs_energy_flows_f454); end
  def test_outputs_energy_flows_i454; assert_equal("G.L.01", worksheet.outputs_energy_flows_i454); end
  def test_outputs_energy_flows_j454; assert_equal("Global Conversion losses", worksheet.outputs_energy_flows_j454); end
  def test_outputs_energy_flows_p454; assert_equal("Hydrogen production", worksheet.outputs_energy_flows_p454); end
  def test_outputs_energy_flows_v454; assert_in_delta(2.393942720022596e-08, worksheet.outputs_energy_flows_v454, 0.002); end
  def test_outputs_energy_flows_w454; assert_in_delta(2.360103600832554e-08, worksheet.outputs_energy_flows_w454, 0.002); end
  def test_outputs_energy_flows_x454; assert_in_delta(2.6209221484965677e-08, worksheet.outputs_energy_flows_x454, 0.002); end
  def test_outputs_energy_flows_y454; assert_in_delta(2.7279451116684983e-08, worksheet.outputs_energy_flows_y454, 0.002); end
  def test_outputs_energy_flows_z454; assert_in_delta(2.8508373378909193e-08, worksheet.outputs_energy_flows_z454, 0.002); end
  def test_outputs_energy_flows_aa454; assert_in_delta(2.5495398811216747e-08, worksheet.outputs_energy_flows_aa454, 0.002); end
  def test_outputs_energy_flows_ab454; assert_in_delta(1.8323811408244723e-08, worksheet.outputs_energy_flows_ab454, 0.002); end
  def test_outputs_energy_flows_ac454; assert_in_delta(9.93125246879724e-09, worksheet.outputs_energy_flows_ac454, 0.002); end
  def test_outputs_energy_flows_ad454; assert_in_delta(0.0, (worksheet.outputs_energy_flows_ad454||0), 0.002); end
  def test_outputs_energy_flows_d456; assert_equal("Hydrogen", worksheet.outputs_energy_flows_d456); end
  def test_outputs_energy_flows_f456; assert_equal("Transport", worksheet.outputs_energy_flows_f456); end
  def test_outputs_energy_flows_i456; assert_equal("G.HY.01", worksheet.outputs_energy_flows_i456); end
  def test_outputs_energy_flows_j456; assert_equal("Global H2", worksheet.outputs_energy_flows_j456); end
  def test_outputs_energy_flows_p456; assert_equal("Global transport", worksheet.outputs_energy_flows_p456); end
  def test_outputs_energy_flows_v456; assert_in_delta(6.839836342921704e-08, worksheet.outputs_energy_flows_v456, 0.002); end
  def test_outputs_energy_flows_w456; assert_in_delta(6.768531967762161e-08, worksheet.outputs_energy_flows_w456, 0.002); end
  def test_outputs_energy_flows_x456; assert_in_delta(6.471567741165161e-08, worksheet.outputs_energy_flows_x456, 0.002); end
  def test_outputs_energy_flows_y456; assert_in_delta(5.973230745407538e-08, worksheet.outputs_energy_flows_y456, 0.002); end
  def test_outputs_energy_flows_z456; assert_in_delta(5.260902584541927e-08, worksheet.outputs_energy_flows_z456, 0.002); end
  def test_outputs_energy_flows_aa456; assert_in_delta(4.321424893643101e-08, worksheet.outputs_energy_flows_aa456, 0.002); end
  def test_outputs_energy_flows_ab456; assert_in_delta(3.1410799558472e-08, worksheet.outputs_energy_flows_ab456, 0.002); end
  def test_outputs_energy_flows_ac456; assert_in_delta(1.705570691442942e-08, worksheet.outputs_energy_flows_ac456, 0.002); end
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
  def test_outputs_energy_flows_w460; assert_in_epsilon(105.65316704302319, worksheet.outputs_energy_flows_w460, 0.002); end
  def test_outputs_energy_flows_x460; assert_in_epsilon(113.39800622209708, worksheet.outputs_energy_flows_x460, 0.002); end
  def test_outputs_energy_flows_y460; assert_in_epsilon(121.02627874646453, worksheet.outputs_energy_flows_y460, 0.002); end
  def test_outputs_energy_flows_z460; assert_in_epsilon(128.84068941312302, worksheet.outputs_energy_flows_z460, 0.002); end
  def test_outputs_energy_flows_aa460; assert_in_epsilon(136.73186816909356, worksheet.outputs_energy_flows_aa460, 0.002); end
  def test_outputs_energy_flows_ab460; assert_in_epsilon(144.57949670626326, worksheet.outputs_energy_flows_ab460, 0.002); end
  def test_outputs_energy_flows_ac460; assert_in_epsilon(152.65251102272387, worksheet.outputs_energy_flows_ac460, 0.002); end
  def test_outputs_energy_flows_ad460; assert_in_epsilon(160.69657482648316, worksheet.outputs_energy_flows_ad460, 0.002); end
  def test_outputs_energy_flows_d462; assert_equal("Gas", worksheet.outputs_energy_flows_d462); end
  def test_outputs_energy_flows_f462; assert_equal("Transport", worksheet.outputs_energy_flows_f462); end
  def test_outputs_energy_flows_i462; assert_equal("G.C.03", worksheet.outputs_energy_flows_i462); end
  def test_outputs_energy_flows_j462; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j462); end
  def test_outputs_energy_flows_p462; assert_equal("Global transport", worksheet.outputs_energy_flows_p462); end
  def test_outputs_energy_flows_v462; assert_in_delta(0.33380184332999924, worksheet.outputs_energy_flows_v462, 0.002); end
  def test_outputs_energy_flows_w462; assert_in_delta(0.5772717889848442, worksheet.outputs_energy_flows_w462, 0.002); end
  def test_outputs_energy_flows_x462; assert_in_delta(0.9341490942467015, worksheet.outputs_energy_flows_x462, 0.002); end
  def test_outputs_energy_flows_y462; assert_in_epsilon(1.356719825672215, worksheet.outputs_energy_flows_y462, 0.002); end
  def test_outputs_energy_flows_z462; assert_in_epsilon(1.8519151681320123, worksheet.outputs_energy_flows_z462, 0.002); end
  def test_outputs_energy_flows_aa462; assert_in_epsilon(2.4229003604553387, worksheet.outputs_energy_flows_aa462, 0.002); end
  def test_outputs_energy_flows_ab462; assert_in_epsilon(3.071789278789965, worksheet.outputs_energy_flows_ab462, 0.002); end
  def test_outputs_energy_flows_ac462; assert_in_epsilon(3.807569276635185, worksheet.outputs_energy_flows_ac462, 0.002); end
  def test_outputs_energy_flows_ad462; assert_in_epsilon(4.630167858167071, worksheet.outputs_energy_flows_ad462, 0.002); end
  def test_outputs_energy_flows_d464; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d464); end
  def test_outputs_energy_flows_f464; assert_equal("Transport", worksheet.outputs_energy_flows_f464); end
  def test_outputs_energy_flows_i464; assert_equal("G.E.01", worksheet.outputs_energy_flows_i464); end
  def test_outputs_energy_flows_j464; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j464); end
  def test_outputs_energy_flows_p464; assert_equal("Global transport", worksheet.outputs_energy_flows_p464); end
  def test_outputs_energy_flows_v464; assert_in_delta(0.6129674547554449, worksheet.outputs_energy_flows_v464, 0.002); end
  def test_outputs_energy_flows_w464; assert_in_delta(0.9957303980046606, worksheet.outputs_energy_flows_w464, 0.002); end
  def test_outputs_energy_flows_x464; assert_in_epsilon(1.5383424348887846, worksheet.outputs_energy_flows_x464, 0.002); end
  def test_outputs_energy_flows_y464; assert_in_epsilon(2.1627052601513443, worksheet.outputs_energy_flows_y464, 0.002); end
  def test_outputs_energy_flows_z464; assert_in_epsilon(2.871416917336231, worksheet.outputs_energy_flows_z464, 0.002); end
  def test_outputs_energy_flows_aa464; assert_in_epsilon(3.6695260123505546, worksheet.outputs_energy_flows_aa464, 0.002); end
  def test_outputs_energy_flows_ab464; assert_in_epsilon(4.558556732515273, worksheet.outputs_energy_flows_ab464, 0.002); end
  def test_outputs_energy_flows_ac464; assert_in_epsilon(5.546095165533986, worksheet.outputs_energy_flows_ac464, 0.002); end
  def test_outputs_energy_flows_ad464; assert_in_epsilon(6.629096644115344, worksheet.outputs_energy_flows_ad464, 0.002); end
  def test_outputs_energy_flows_d466; assert_equal("Solid", worksheet.outputs_energy_flows_d466); end
  def test_outputs_energy_flows_f466; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f466); end
  def test_outputs_energy_flows_i466; assert_equal("G.C.01", worksheet.outputs_energy_flows_i466); end
  def test_outputs_energy_flows_j466; assert_equal("Global Solid hydrocarbons", worksheet.outputs_energy_flows_j466); end
  def test_outputs_energy_flows_k466; assert_equal("G.FF.01", worksheet.outputs_energy_flows_k466); end
  def test_outputs_energy_flows_l466; assert_equal("Global Coal and fossil waste", worksheet.outputs_energy_flows_l466); end
  def test_outputs_energy_flows_p466; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p466); end
  def test_outputs_energy_flows_v466; assert_in_epsilon(50.70935180962913, worksheet.outputs_energy_flows_v466, 0.002); end
  def test_outputs_energy_flows_w466; assert_in_epsilon(53.906015084210416, worksheet.outputs_energy_flows_w466, 0.002); end
  def test_outputs_energy_flows_x466; assert_in_epsilon(58.331197888423304, worksheet.outputs_energy_flows_x466, 0.002); end
  def test_outputs_energy_flows_y466; assert_in_epsilon(62.78579281871379, worksheet.outputs_energy_flows_y466, 0.002); end
  def test_outputs_energy_flows_z466; assert_in_epsilon(67.3652291813545, worksheet.outputs_energy_flows_z466, 0.002); end
  def test_outputs_energy_flows_aa466; assert_in_epsilon(71.94241675524427, worksheet.outputs_energy_flows_aa466, 0.002); end
  def test_outputs_energy_flows_ab466; assert_in_epsilon(76.50643441216002, worksheet.outputs_energy_flows_ab466, 0.002); end
  def test_outputs_energy_flows_ac466; assert_in_epsilon(81.5486006423376, worksheet.outputs_energy_flows_ac466, 0.002); end
  def test_outputs_energy_flows_ad466; assert_in_epsilon(85.79042956264199, worksheet.outputs_energy_flows_ad466, 0.002); end
  def test_outputs_energy_flows_d468; assert_equal("Liquid", worksheet.outputs_energy_flows_d468); end
  def test_outputs_energy_flows_f468; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f468); end
  def test_outputs_energy_flows_i468; assert_equal("G.C.02", worksheet.outputs_energy_flows_i468); end
  def test_outputs_energy_flows_j468; assert_equal("Global Liquid hydrocarbons", worksheet.outputs_energy_flows_j468); end
  def test_outputs_energy_flows_k468; assert_equal("G.FF.02", worksheet.outputs_energy_flows_k468); end
  def test_outputs_energy_flows_l468; assert_equal("Global Oil and petroleum products", worksheet.outputs_energy_flows_l468); end
  def test_outputs_energy_flows_p468; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p468); end
  def test_outputs_energy_flows_v468; assert_in_epsilon(30.809506899323743, worksheet.outputs_energy_flows_v468, 0.002); end
  def test_outputs_energy_flows_w468; assert_in_epsilon(31.558926737145818, worksheet.outputs_energy_flows_w468, 0.002); end
  def test_outputs_energy_flows_x468; assert_in_epsilon(34.41890516668225, worksheet.outputs_energy_flows_x468, 0.002); end
  def test_outputs_energy_flows_y468; assert_in_epsilon(37.17067787419153, worksheet.outputs_energy_flows_y468, 0.002); end
  def test_outputs_energy_flows_z468; assert_in_epsilon(40.06928421364364, worksheet.outputs_energy_flows_z468, 0.002); end
  def test_outputs_energy_flows_aa468; assert_in_epsilon(43.001705310536586, worksheet.outputs_energy_flows_aa468, 0.002); end
  def test_outputs_energy_flows_ab468; assert_in_epsilon(45.90580931726639, worksheet.outputs_energy_flows_ab468, 0.002); end
  def test_outputs_energy_flows_ac468; assert_in_epsilon(49.161421497229675, worksheet.outputs_energy_flows_ac468, 0.002); end
  def test_outputs_energy_flows_ad468; assert_in_epsilon(51.988378315306555, worksheet.outputs_energy_flows_ad468, 0.002); end
  def test_outputs_energy_flows_d470; assert_equal("Gas", worksheet.outputs_energy_flows_d470); end
  def test_outputs_energy_flows_f470; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f470); end
  def test_outputs_energy_flows_i470; assert_equal("G.C.03", worksheet.outputs_energy_flows_i470); end
  def test_outputs_energy_flows_j470; assert_equal("Global Gaseous hydrocarbons", worksheet.outputs_energy_flows_j470); end
  def test_outputs_energy_flows_k470; assert_equal("G.FF.03", worksheet.outputs_energy_flows_k470); end
  def test_outputs_energy_flows_l470; assert_equal("Global Natural gas", worksheet.outputs_energy_flows_l470); end
  def test_outputs_energy_flows_p470; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p470); end
  def test_outputs_energy_flows_v470; assert_in_epsilon(28.315031514137644, worksheet.outputs_energy_flows_v470, 0.002); end
  def test_outputs_energy_flows_w470; assert_in_epsilon(29.933513438203242, worksheet.outputs_energy_flows_w470, 0.002); end
  def test_outputs_energy_flows_x470; assert_in_epsilon(32.71401518736111, worksheet.outputs_energy_flows_x470, 0.002); end
  def test_outputs_energy_flows_y470; assert_in_epsilon(35.501522035205596, worksheet.outputs_energy_flows_y470, 0.002); end
  def test_outputs_energy_flows_z470; assert_in_epsilon(38.31875446790113, worksheet.outputs_energy_flows_z470, 0.002); end
  def test_outputs_energy_flows_aa470; assert_in_epsilon(41.09653243954152, worksheet.outputs_energy_flows_aa470, 0.002); end
  def test_outputs_energy_flows_ab470; assert_in_epsilon(43.84385453067079, worksheet.outputs_energy_flows_ab470, 0.002); end
  def test_outputs_energy_flows_ac470; assert_in_epsilon(46.653725331268774, worksheet.outputs_energy_flows_ac470, 0.002); end
  def test_outputs_energy_flows_ad470; assert_in_epsilon(49.23853687719483, worksheet.outputs_energy_flows_ad470, 0.002); end
  def test_outputs_energy_flows_d472; assert_equal("Electricity grid", worksheet.outputs_energy_flows_d472); end
  def test_outputs_energy_flows_f472; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f472); end
  def test_outputs_energy_flows_i472; assert_equal("G.E.01", worksheet.outputs_energy_flows_i472); end
  def test_outputs_energy_flows_j472; assert_equal("Global Electricity (delivered to end user)", worksheet.outputs_energy_flows_j472); end
  def test_outputs_energy_flows_p472; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p472); end
  def test_outputs_energy_flows_v472; assert_in_epsilon(28.20362809307946, worksheet.outputs_energy_flows_v472, 0.002); end
  def test_outputs_energy_flows_w472; assert_in_epsilon(30.021037186219363, worksheet.outputs_energy_flows_w472, 0.002); end
  def test_outputs_energy_flows_x472; assert_in_epsilon(32.82882894919402, worksheet.outputs_energy_flows_x472, 0.002); end
  def test_outputs_energy_flows_y472; assert_in_epsilon(35.65728807244253, worksheet.outputs_energy_flows_y472, 0.002); end
  def test_outputs_energy_flows_z472; assert_in_epsilon(38.76586916145102, worksheet.outputs_energy_flows_z472, 0.002); end
  def test_outputs_energy_flows_aa472; assert_in_epsilon(41.90561865003471, worksheet.outputs_energy_flows_aa472, 0.002); end
  def test_outputs_energy_flows_ab472; assert_in_epsilon(45.049931292489234, worksheet.outputs_energy_flows_ab472, 0.002); end
  def test_outputs_energy_flows_ac472; assert_in_epsilon(48.39601208859824, worksheet.outputs_energy_flows_ac472, 0.002); end
  def test_outputs_energy_flows_ad472; assert_in_epsilon(52.08602512335791, worksheet.outputs_energy_flows_ad472, 0.002); end
  def test_outputs_energy_flows_d474; assert_equal("Heat network", worksheet.outputs_energy_flows_d474); end
  def test_outputs_energy_flows_f474; assert_equal("Manufacturing", worksheet.outputs_energy_flows_f474); end
  def test_outputs_energy_flows_i474; assert_equal("G.H.01", worksheet.outputs_energy_flows_i474); end
  def test_outputs_energy_flows_j474; assert_equal("Global Heat transport", worksheet.outputs_energy_flows_j474); end
  def test_outputs_energy_flows_p474; assert_equal("Global manufacturing", worksheet.outputs_energy_flows_p474); end
  def test_outputs_energy_flows_v474; assert_in_epsilon(5.310102447345097, worksheet.outputs_energy_flows_v474, 0.002); end
  def test_outputs_energy_flows_w474; assert_in_epsilon(5.546961819792447, worksheet.outputs_energy_flows_w474, 0.002); end
  def test_outputs_energy_flows_x474; assert_in_epsilon(6.052374812485818, worksheet.outputs_energy_flows_x474, 0.002); end
  def test_outputs_energy_flows_y474; assert_in_epsilon(6.558238687439531, worksheet.outputs_energy_flows_y474, 0.002); end
  def test_outputs_energy_flows_z474; assert_in_epsilon(7.070170566030831, worksheet.outputs_energy_flows_z474, 0.002); end
  def test_outputs_energy_flows_aa474; assert_in_epsilon(7.573947793863933, worksheet.outputs_energy_flows_aa474, 0.002); end
  def test_outputs_energy_flows_ab474; assert_in_epsilon(8.065534947157893, worksheet.outputs_energy_flows_ab474, 0.002); end
  def test_outputs_energy_flows_ac474; assert_in_epsilon(8.575090783692819, worksheet.outputs_energy_flows_ac474, 0.002); end
  def test_outputs_energy_flows_ad474; assert_in_epsilon(9.022911696641593, worksheet.outputs_energy_flows_ad474, 0.002); end
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
  def test_outputs_energy_flows_w492; assert_in_epsilon(6.392397136830928, worksheet.outputs_energy_flows_w492, 0.002); end
  def test_outputs_energy_flows_x492; assert_in_epsilon(7.162280107114132, worksheet.outputs_energy_flows_x492, 0.002); end
  def test_outputs_energy_flows_y492; assert_in_epsilon(7.923209811953754, worksheet.outputs_energy_flows_y492, 0.002); end
  def test_outputs_energy_flows_z492; assert_in_epsilon(8.750252784910366, worksheet.outputs_energy_flows_z492, 0.002); end
  def test_outputs_energy_flows_aa492; assert_in_epsilon(9.585993573884029, worksheet.outputs_energy_flows_aa492, 0.002); end
  def test_outputs_energy_flows_ab492; assert_in_epsilon(10.385486292940863, worksheet.outputs_energy_flows_ab492, 0.002); end
  def test_outputs_energy_flows_ac492; assert_in_epsilon(11.233652152605007, worksheet.outputs_energy_flows_ac492, 0.002); end
  def test_outputs_energy_flows_ad492; assert_in_epsilon(12.031048268917788, worksheet.outputs_energy_flows_ad492, 0.002); end
  def test_outputs_climate_impacts_e11; assert_in_epsilon(3.711290752490146, worksheet.outputs_climate_impacts_e11, 0.002); end
  def test_outputs_climate_impacts_e12; assert_in_delta(0.9830350895135218, worksheet.outputs_climate_impacts_e12, 0.002); end
  def test_outputs_climate_impacts_f11; assert_in_epsilon(6.092251415468736, worksheet.outputs_climate_impacts_f11, 0.002); end
  def test_outputs_climate_impacts_f12; assert_in_epsilon(1.9890038638701006, worksheet.outputs_climate_impacts_f12, 0.002); end
end
