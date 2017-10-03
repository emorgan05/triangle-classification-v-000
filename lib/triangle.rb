class Triangle
  attr_accessor :length_1, :length_2, :length_3
  
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if @length_1 == @length_2 && @length_1 == @length_3
      :equilateral
    elsif @length_1 == @length_2 || @length_1 == @length_3
      :isosceles
    elsif @length_1 != @length_2 && @length_1 != @length_3 && @length_2 != @length_3
      :scaline
    end
  end
end