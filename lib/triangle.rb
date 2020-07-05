class Triangle

attr_accessor :s1, :s2, :s3



def initialize(s1, s2, s3)
  @sides = [s1, s2, s3]
end

def valid?
  if @sides.any? {|s|  (s <= 0) || (s == nil) }
    begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message1
      end
      return false
  elsif ((@sides[0] + @sides[1]) <= @sides[2]) || ((@sides[0] + @sides[2]) <= @sides[1]) || ((@sides[1] + @sides[2]) <= @sides[0])
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message2
      end
      return false
    else
      return true
    end
end


def kind
  return unless !valid?
end

class TriangleError < StandardError
  def message1
    "INVALID TRIANGLE: All sides of a triangle must have a length greater than 0!"
  end

  def message2
    "INVALID TRIANGLE: The sum of the lengths of two sides of a triangle must exceed that of the third."
  end

end


end




# if (@s1 == 0) || (@s2 == 0) || (@s3 == 0)
#   begin
#     raise TriangleError
#   rescue TriangleError => error
#     puts error.message1
#   end
# elsif ((@s1 + @s2) <= @s3) || ((@s1 + @s3) <= @s2) || ((@s2 + @s3) <= @s1)
#   begin
#     raise TriangleError
#   rescue TriangleError => error
#     puts error.message2
#   end
# elsif (@s1 == @s2) && (@s2 == @s3)
#   return :equilateral
# elsif ((@s1 == @s2) && (@s1 != @s3)) || ((@s1 == @s3) && (@s1 != @s2)) || ((@s2 == @s3) && (@s2 != @s1))
#   return :isosceles
# elsif (@s1 != @s2) && (@s2 != @s3)
#   return :scalene
# end
