class Triangle
  attr_accessor :len1
  attr_accessor :len2
  attr_accessor :len3
  attr_accessor :kind
  
  def initialize len1, len2, len3
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    if @len1 + @len2 <= @len3 || @len2 + @len3 <= @len1 || @len3 + @len1 <= @len2
      raise TriangleError
    elsif @len1 + @len2 + @len3 == 0
      raise TriangleError
    elsif @len1.negative?() == true || @len2.negative?() == true || @len3.negative?() == true
      raise TriangleError
    elsif @len1 == @len2 && @len3 == @len2
      self.kind = :equilateral
    elsif @len1 == @len2 || @len2 == @len3 || @len1 == @len3
      self.kind = :isosceles
    else 
      self.kind = :scalene
    end
  end

  class TriangleError < StandardError
  end

end
