require 'romain'
describe Romain do
  describe "convert the roman numerals" do
    it { Romain.new("I").to_decimal.should == 1 }
    it { Romain.new("II").to_decimal.should == 2 }
    it { Romain.new("III").to_decimal.should == 3 }
    it { Romain.new("IV").to_decimal.should == 4 }
    it { Romain.new("V").to_decimal.should == 5 }
    it { Romain.new("VI").to_decimal.should == 6 }
    it { Romain.new("VII").to_decimal.should == 7 }
    it { Romain.new("VIII").to_decimal.should == 8 }
    it { Romain.new("IX").to_decimal.should == 9 }
    it { Romain.new("X").to_decimal.should == 10 }
    it { Romain.new("XV").to_decimal.should == 15 }
    it { Romain.new("XX").to_decimal.should == 20 }
    it { Romain.new("XXX").to_decimal.should == 30 }
    it { Romain.new("L").to_decimal.should == 50 }
    it { Romain.new("C").to_decimal.should == 100 }
    it { Romain.new("D").to_decimal.should == 500 }
    it { Romain.new("DCCCLXXXVIII").to_decimal.should == 888 }
    it { Romain.new("CM").to_decimal.should == 900 }
    it { Romain.new("M").to_decimal.should == 1000 }
    it { Romain.new("(V)").to_decimal.should == 5000 }
    it { Romain.new("(VI)").to_decimal.should == 6000 }
    it { Romain.new("(VII)").to_decimal.should == 7000 }
    it { Romain.new("(VIII)").to_decimal.should == 8000 }
    it { Romain.new("(VIII)DCCCLXXXVIII").to_decimal.should == 8888 }
    it { Romain.new("(X)").to_decimal.should == 10000 }
    it { Romain.new("(L)").to_decimal.should == 50000 }
    it { Romain.new("(LXXX)").to_decimal.should == 80000 }
    it { Romain.new("(C)").to_decimal.should == 100000 }
    it { Romain.new("(D)").to_decimal.should == 500000 }
    it { Romain.new("(DCCC)").to_decimal.should == 800000 }
    it { Romain.new("(M)").to_decimal.should == 1000000 }
    it { Romain.new("((VIII))").to_decimal.should == 8000000}
    it "should convert to 8888888" do
      romain_number = Romain.new("((VIII))(DCCC)(LXXX)(VIII)DCCCLXXXVIII")
      romain_number.to_decimal.should == 8888888
    end
  end
end
