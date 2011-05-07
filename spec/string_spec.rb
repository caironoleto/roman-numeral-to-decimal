require 'string'
describe String do
  it { "I".to_decimal.should == 1 }
  it { "II".to_decimal.should == 2 }
  it { "III".to_decimal.should == 3 }
  it { "IV".to_decimal.should == 4 }
  it { "V".to_decimal.should == 5 }
  it { "VI".to_decimal.should == 6 }
  it { "VII".to_decimal.should == 7 }
  it { "VIII".to_decimal.should == 8 }
  it { "IX".to_decimal.should == 9 }
  it { "X".to_decimal.should == 10 }
  it { "XV".to_decimal.should == 15 }
  it { "XX".to_decimal.should == 20 }
  it { "XXX".to_decimal.should == 30 }
  it { "L".to_decimal.should == 50 }
  it { "C".to_decimal.should == 100 }
  it { "D".to_decimal.should == 500 }
  it { "DCCCLXXXVIII".to_decimal.should == 888 }
  it { "CM".to_decimal.should == 900 }
  it { "M".to_decimal.should == 1000 }
  it { "(V)".to_decimal.should == 5000 }
  it { "(VI)".to_decimal.should == 6000 }
  it { "(VII)".to_decimal.should == 7000 }
  it { "(VIII)".to_decimal.should == 8000 }
  it { "(VIII)DCCCLXXXVIII".to_decimal.should == 8888 }
  it { "(X)".to_decimal.should == 10000 }
  it { "(L)".to_decimal.should == 50000 }
  it { "(LXXX)".to_decimal.should == 80000 }
  it { "(C)".to_decimal.should == 100000 }
  it { "(D)".to_decimal.should == 500000 }
  it { "(DCCC)".to_decimal.should == 800000 }
  it { "(M)".to_decimal.should == 1000000 }
  it { "((VIII))".to_decimal.should == 8000000}
  it { "((VIII))(DCCC)(LXXX)(VIII)DCCCLXXXVIII".to_decimal.should == 8888888 }
end
