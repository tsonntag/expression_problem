require 'shape'

# add shape
class Rectangle < Shape
  attr_reader :width, :height

  def initialize width, height
    @width = width
    @height = height
  end

  def area
    @width * @height
  end
end

#puts Circle.new(3).area
#puts Square.new(3).area
puts "Rect"
puts Rectangle.new(2,3).area

# add method

class Rectangle
  def perimeter
    Math.sqrt(@width ** 2 +  @height ** 2)
  end
end

class Square
  def perimeter
    Math.sqrt(@side ** 2 +  @side ** 2)
  end
end

class Circle 
  def perimeter
    2 * @radius
  end
end

puts "perimeter"
puts Circle.new(2).perimeter
puts Circle.new(2).area

