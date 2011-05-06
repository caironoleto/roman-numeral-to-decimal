class Romain < String
  NUMERALS = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}

  def to_decimal
    number = 0
    roman_number = self
    if roman_number =~ /\(/
      roman_number.gsub!("(", "")
      roman_number.gsub!(")", "")
      by_1000 = true
    end
    roman_number.size.times do |position|
      if NUMERALS[roman_number[position + 1]] && NUMERALS[roman_number[position]] < NUMERALS[roman_number[position + 1]]
        number -= NUMERALS[roman_number[position]]
      else
        number += NUMERALS[roman_number[position]]
      end
    end
    number *= 1000 if by_1000
    number
  end
end
