class Romain
  NUMERALS = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  def initialize(roman_numeral)
    @roman_numeral = roman_numeral
  end

  def to_decimal
    number = 0
    roman_numerals.each {|numeral, factor| number += calculate_number(numeral, factor) }
    number
  end

  private
  def thousands?(number = @roman_numeral)
    number =~ /\(/
  end

  def million?(number = @roman_numeral)
    number =~ /\(\(/
  end

  def roman_numerals
    numbers = @roman_numeral.split("\)") if thousands? or million?
    numbers ||= [@roman_numeral]
    numbers = numbers.map do |number|
      [number.gsub("\(", ""), calculate_factor(number)]
    end
    numbers
  end

  def calculate_factor(number)
    factor = 1 if !million?(number) and !thousands?(number)
    factor = 1000 if thousands?(number)
    factor = 1000000 if million?(number)
    factor
  end

  def calculate_number(numeral, factor)
    number = 0
    numeral.size.times do |position|
      if NUMERALS[numeral[position + 1]] && NUMERALS[numeral[position]] < NUMERALS[numeral[position + 1]]
        number -= NUMERALS[numeral[position]]
      else
        number += NUMERALS[numeral[position]]
      end
    end
    number *= factor
    number
  end    
end
