class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind

    if @length_1 == 0 && @length_2 == 0 && @length_3 == 0
        raise TriangleError
    elsif @length_1 + @length_2 <= @length_3 || @length_1 + @length_3 <= @length_2 || @length_2 + @length_3 <= @length_1
        raise TriangleError
    elsif @length_1 == @length_2 && @length_1 == @length_3
      :equilateral
    elsif @length_1 == @length_2 || @length_1 == @length_3 || @length_2 == @length_3
      :isosceles
    elsif @length_1 != @length_2 && @length_1 != @length_3 && @length_2 != @length_3
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Your Triangle is illegal!"
  end
end

a = Triangle.new(2, 2, 2).kind
b = Triangle.new(3, 4, 4).kind
c = Triangle.new(10, 11, 12).kind
t = Triangle.new(2, 4, 2).kind
