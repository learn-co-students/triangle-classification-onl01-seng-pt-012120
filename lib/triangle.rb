class Triangle
  attr_accessor :s1, :s2, :s3
  attr_writer :kind
  def initialize(side1, side2, side3)
    @triangle_sides = []
    # @triangle_sides << side1
    # @triangle_sides << side2
    # @triangle_sides << side3
    @s1 = side1
    @s2 = side2
    @s3 = side3
  end
  # def valid?
  #   sum1_2 = @triangle_sides[1] + @triangle_sides[2]
  #   sum2_3 = @triangle_sides[2] + @triangle_sides[3]
  #   sum3_1 = @triangle_sides[3] + @triangle_sides[1]
  # end

  def kind
    if (@s1 + @s2) <= @s3 || (@s2 + @s3) <= @s1 || (@s3 + @s1) <= @s2
      begin
        raise TriangleError
        puts error.message
        end

      elsif @s1 == @s2 && @s1 == @s3
        self.kind = :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
  end


  class TriangleError < StandardError
    def message
      puts "not a triangle"
    end
  end
end

# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
