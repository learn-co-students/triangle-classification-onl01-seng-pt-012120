class Triangle
  
  def initialize(a, b, c)
    @side1 = a
    @side2 = b
    @side3 = c
    @shape = []
    @shape << a
    @shape << b 
    @shape << c
  end
  
  def kind 
    @shape.each do |x|
      if x < 0 || x == 0
        raise TriangleError
      end
    end
    if @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2 || @side1 + @side2 == @side3 || @side2 + @side3 == @side1 || @side1 + @side3 == @side2
      raise TriangleError 
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
    return :isosceles 
    else 
      return :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
  
  
end
