properties = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
def initialize(hash)
  @name = hash[:nombre]
  @race = hash[:raza]
  @color = hash[:color]
end
def bark
  puts "#{@name} is barking"
end
end

doggo = Dog.new(properties)
doggo.bark