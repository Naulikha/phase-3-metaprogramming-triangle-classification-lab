class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind 
    triangle_sides = [side1, side2, side3]
    if @side1 + @side2 <= @side3 || side1 + side3 <= side2 || side2 + side3 <= side1 ||
       triangle_sides.any? { |side| side <= 0 }
      raise TriangleError
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else 
      :scalene
    end
  end

  private
  class TriangleError < StandardError
    def message
      "Triangle is not valid"
    end
  end 
end
