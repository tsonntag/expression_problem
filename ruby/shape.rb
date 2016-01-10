class Shape

end

class Square < Shape
  attr_reader :side
  def initialize side
    @side = side
  end

  def area
    @side * @side
  end
end

class Circle < Shape
  attr_reader :radius
  def initialize radius
    @radius = radius
  end

  def area
    @radius * @radius * 3.14
  end
end


#puts Circle.new(2).area
#puts Square.new(2).area






