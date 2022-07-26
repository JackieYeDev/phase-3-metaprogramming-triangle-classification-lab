class Triangle
  attr_reader :length, :width, :height
  def initialize (l, w, h)
    @length, @width, @height = l,w,h
  end

  def inequality
    length + width > height && length + height > width && height + width > length
  end

  def kind
    if length <= 0 || width <=0 || height <= 0
      raise TriangleError
    elsif inequality == false
      raise TriangleError
    elsif length == width && length == height
      :equilateral
    elsif length == width || length == height || width == height
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
