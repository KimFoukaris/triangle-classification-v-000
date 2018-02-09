require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if
      side1 == side2 && side1 == side3
      type = :equilateral
      #type
    elsif side1 == side2 || side1 == side3 || side2 == side3
      type = :isosceles
      #type
    elsif side1 == 0 || side2 == 0 || side3 == 0
      binding.pry
      puts "error"
        #raise TriangleError
    else
      type = :scalene
    end
  end

  class TriangleError < StandardError
  end

end
