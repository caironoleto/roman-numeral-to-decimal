class Romain < String
  NUMERALS = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}

  def to_decimal
    number = 0
    roman_numerals.each {|numeral, factor| number += calculate_number(numeral, factor) }
    number
  end

  private
  def thousands?(number = self)
    number =~ /\(/
  end

  def million?(number = self)
    number =~ /\(\(/
  end

  def roman_numerals
    numbers = self.split("\)") if thousands? or million?
    numbers ||= [self]
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
