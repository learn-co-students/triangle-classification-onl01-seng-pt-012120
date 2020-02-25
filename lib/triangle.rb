class Triangle

class TriangleError < StandardError
end

 attr_accessor :lenght1, :length2, :lenght3, :kind

def initialize(lenght1, length2, lenght3)
  @lenght1 = lenght1
  @length2 = length2
  @lenght3 = lenght3
  TriangleError < StandardError
end



#
 def kind
   if (lenght1 * length2 * lenght3) <= 0 || (lenght1 + length2) <= lenght3||(length2 + lenght3) <= lenght1 || (lenght3 + lenght1 )<=length2

begin
  raise TriangleError
  puts error.message
end

elsif lenght1 == length2 && lenght1 == lenght3
  self.kind = :equilateral

elsif lenght1 == length2 || lenght1 == lenght3 ||length2 == lenght3
  self.kind = :isosceles
else
  self.kind = :scalene
end
end
end


 #  if @lenght1 = @length2 && = @lenght3
 #    puts "equilateral"
 #  elsif @lenght1 != @length2 = @lenght3
 #     puts "isosceles"
 #  else @lenght1!= @length2 != @lenght3
 #     puts "scalene"
 # end
 # end
 # end
