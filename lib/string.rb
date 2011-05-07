require 'romain'
class String 
  def to_decimal
    Romain.new(self).to_decimal
  end
end
