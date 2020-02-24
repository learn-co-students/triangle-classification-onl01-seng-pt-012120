class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind 
    validation
    if (@side_1 == @side_2) && (@side_2 == @side_3)
      :equilateral
    elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
      :isosceles
    else (@side_1 != @side_2) || (@side_2 != @side_3) || (@side_1 != @side_3)
      :scalene
    end 
    
  end
    
  def validation 
      if (@side_1 <=0) || (@side_2 <= 0) || (@side_3 <=0)
      raise TriangleError
      elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
      end
  end
  
  class TriangleError < StandardError
   
  end  
    

end



#class Triangle
  
  # def initialize(side_1, side_2, side_3)
  #   @side_1 = side_1
  #   @side_2 = side_2
  #   @side_3 = side_3
  # end
  
  # def kind 
  #   if (@side_1 == @side_2) && (@side_2 == @side_3)
  #     :equilateral
  #   elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
  #     :isosceles
  #   elsif (@side_1 != @side_2) || (@side_2 != @side_3) || (@side_1 != @side_3)
  #     :scalene
    
  #   else
  #     if (@side_1 <=0) || (@side_2 <= 0) || (@side_3 <=0)
  #     raise TriangleError
  #     end
  #   end
  # end
  
  # class TriangleError < StandardError
   
  # end  
    

#end
