class Triangle

attr_accessor :s1, :s2, :s3



def initialize(s1, s2, s3)
  @sides = [s1, s2, s3]
end

def valid?
  if @sides.any? {|s|  s <= 0 }
    raise TriangleError
  elsif ((@sides[0] + @sides[1]) <= @sides[2]) || ((@sides[0] + @sides[2]) <= @sides[1]) || ((@sides[1] + @sides[2]) <= @sides[0])
    raise TriangleError
  else
    return true
  end
end


def kind
  self.valid?
  if (@sides[0] == @sides[1]) && (@sides[1] == @sides[2])
    return :equilateral
  elsif ((@sides[0] == @sides[1]) && (@sides[0] != @sides[2])) || ((@sides[0] == @sides[2]) && (@sides[0] != @sides[1])) || ((@sides[1] == @sides[2]) && (@sides[1] != @sides[0]))
    return :isosceles
  elsif (@sides[0] != @sides[1]) && (@sides[1] != @sides[2])
    return :scalene
  else
    return :invalid
  end
end

class TriangleError < StandardError
end

end
