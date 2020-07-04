class Triangle

attr_accessor :s1, :s2, :s3

def initialize(s1, s2, s3)
  @s1 = s1
  @s2 = s2
  @s3 = s3
end



def kind
  case self
  when (@s1 == 0) || (@s2 == 0) || (@s3 == 0)
    raise TriangleError
  when ((@s1 + @s2) <= @s3) || ((@s1 + @s3) <= @s2) || ((@s2 + @s3) <= @s1)
    raise TriangleError
  when (@s1 == @s2) && (@s2 == @s3)
    kind = :equilateral
  when ((@s1 == @s2) && (@s1 != @s3)) || ((@s1 == @s3) && (@s1 != @s2)) || ((@s2 == @s3) && (@s2 != @s1))
    kind = :isosceles
  when (@s1 != @s2) && (@s2 != @s3)
    kind = :scalene
  end
  return kind
end

class TriangleError < StandardError
  # triangle error code
end


end
