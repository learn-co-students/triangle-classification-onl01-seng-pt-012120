require "pry"

class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    sides = [@s1, @s2, @s3]
    if sides.sum <= 0 || sides.any? {|s| s < 0 } || !(@s1 + @s2 > @s3) || !(@s1 + @s3 > @s2) || !(@s2 + @s3 > @s1)
      begin
        raise TriangleError
      # rescue TriangleError => error
      end
    elsif @s1 == @s2 && @s1 == @s3
      :equilateral
    elsif @s1 == @s2 || @s2 ==  @s3 || @s1 == @s3
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  
  end
  
  
end
