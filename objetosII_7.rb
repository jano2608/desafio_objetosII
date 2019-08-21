class Point
  attr_accessor :x, :y
  def initialize (x ,y)
    @x = x
    @y = y
  end
end

10.times do
point = Point.new (rand 100),(rand 100)
puts "Punto #{point.x}, #{point.y}"
end