Gem::Specification.new do |s|
  s.name = "global_2050_model"
  s.required_ruby_version = ">1.9.1"
  s.version = '0.0.4'
  s.add_dependency('ffi','>= 1.0.11')
  s.add_development_dependency('excel_to_code')
  s.author = "Thomas Counsell, Department of Energy and Climate Change, Her Majesty's Government, UK"
  s.email = "tom.counsell@decc.gsi.gov.uk"
  s.homepage = "http://github.com/decc/decc_2050_model"
  s.platform = Gem::Platform::CURRENT
  s.summary = "A C version of DECC's global 2050 Pathway Excel Spreadsheet (binary included version)"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README.markdown'))
  s.license = "MIT"
  s.files = ["LICENSE", "README.markdown", "{lib}/**/*",'ext/**/*.{c,h,rb}','test/**/*'].map{|p| Dir[p]}.flatten
  s.has_rdoc = false
end
