class Triangle
  attr_accessor :length, :width, :height 
  
  def initialize(length, width, height)
    @length = length 
    @width = width 
    @height = height 
  end 
  
  def kind
    if (@length == @width) && (@width == @height) 
      :equilateral
    elsif (@length == @width) || (@width == @height) || (@length == @height)  
      :isosceles
    else
      :scalene 
    end 
  end 
  
    class TriangleError < StandardError
      
    end 
  
end
