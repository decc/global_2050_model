# Global 2050 CALCULATOR TOOL

A C version and ruby wrapper for the www.decc.gov.uk Global energy and climate change excel calculator

This is not ready for public use.

Canonical source:
http://github.com/decc/global_2050_model

## DEPENDENCIES

1. ruby 1.9.2 (including development headers)
2. basic c development headers

This has ONLY been tested on OSX and on Ubuntu 64 bit EC2 ami.

## INSTALLATION

You need to be working on the github version of the code:
    
    git clone http://github.com/decc/decc_2050_model

Then put the new spreadsheet in spreadsheet/2050Model.xlsx

Then, from the top directory of the gem:
  
    bundle
    bundle exec rake
  
The next step is to check whether lib/decc_2050_model/decc_2050_model_result.rb and lib/decc_2050_model/model_structure.rb need to be altered so that they
pick up the correct places in the underlying excel.
