require 'romain'
describe Romain do
  it { Romain.new("I").to_decimal.should == 1 }
  it { Romain.new("V").to_decimal.should == 5 }
  it { Romain.new("X").to_decimal.should == 10 }
  it { Romain.new("L").to_decimal.should == 50 }
  it { Romain.new("C").to_decimal.should == 100 }
  it { Romain.new("D").to_decimal.should == 500 }
  it { Romain.new("M").to_decimal.should == 1000 }
end
