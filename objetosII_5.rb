class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    morse = {0 => '-----',1 => '.----',2 => '..---',
             3 => '...--',4 => '....-',5 => '.....',
             6 => '-....',7 => '--...',8 => '---..',
             9 => '----.'}
    h = morse[number]
    return h
  end

  def to_morse
    self.generate_hash(@number)
  end
end

m = Morseable.new(1)
puts m.to_morse
m = Morseable.new(2)
puts m.to_morse
m = Morseable.new(3)
puts m.to_morse
m = Morseable.new(4)
puts m.to_morse
m = Morseable.new(5)
puts m.to_morse
m = Morseable.new(6)
puts m.to_morse
m = Morseable.new(7)
puts m.to_morse
m = Morseable.new(8)
puts m.to_morse
m = Morseable.new(9)
puts m.to_morse
