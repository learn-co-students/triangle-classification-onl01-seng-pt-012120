class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one, @side_two, @side_three = side_one, side_two, side_three
  end
  
  def kind
     smallest_side, middle_side, largest_side = [@side_one, @side_two, @side_three].sort
    if smallest_side < 0 || ((smallest_side + middle_side) <= largest_side)
      raise TriangleError
    end
    
    if smallest_side == middle_side && middle_side && largest_side
      :equilateral
    elsif smallest_side == middle_side || smallest_side == largest_side || middle_side == largest_side
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
  
end
