class Romain < String
  NUMERALS = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  def to_decimal
    NUMERALS[self]
  end
end
