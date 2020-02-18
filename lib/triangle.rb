class Triangle
  attr_reader(:sides)
  
  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
  end
  
  def kind()
    if illegal_tri()
      raise TriangleError
    elsif e_tri()
      return :equilateral
    elsif i_tri()
      return :isosceles
    else
      return :scalene
    end
      
  end
    
  def e_tri()
    result = false
    
    if sides[0] == sides[1] && sides[0] == sides[2]
      result = true
    end
    
    return result
  end

  def i_tri()
    result = false
    
    if sides[0] == sides[1] || sides[0] == sides[2] || sides[1] == sides[2]
      return true
    end
    
    return result
  end
  
  def illegal_tri()
    result = false
    
    if sides[0] <= 0 || sides[1] <= 0 || sides[2] <= 0
      result = true
    elsif (sides[0] + sides[1]) <= sides[2]
      result = true
    elsif (sides[1] + sides[2]) <= sides[0]
      result = true
    elsif (sides[2] + sides[0]) <= sides[1]
      result = true
    end
    
    return result
  end
    
  class TriangleError < StandardError
    def message()
      return "THIS IS ILLEGAL!"
    end
  end
end
