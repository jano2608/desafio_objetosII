class MyPet
  def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 #  Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + '  nace  '
  end

  def walk
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine  = 2
    timeLapse
  end

  def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del estomago al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      exit  #  Sale del programa.
    end

    if @fullIntestine  >= 10
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end

    if @satisfied <= 3
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + ' retumba...'
    end

    if @fullIntestine >= 7
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
    puts "Alimentación: #{@satisfied} \nDigestión: #{@fullIntestine}"
  end

  def feed
    puts "#{@name} come felizmente"
    @satisfied = @satisfied + 1
    timeLapse
  end

  def sleep
    puts "#{@name} se duerme plácidamente"
    @sleep = true
    @satisfied = @satisfied - 1
    timeLapse
  end
end
def init
  puts 'Mi mascota virtual'
  puts 'Asigna un nombre a tu mascota virtual'
  pet_name = (gets.chomp.to_s)
  while pet_name.size < 3
    puts 'Asigna un nombre válido a tu mascota virtual (3 caracteres o más)'
    pet_name = (gets.chomp.to_s)
  end
  pet = MyPet.new(pet_name)
  return pet
  endline
end
def menu
  endline
  puts 'Mi mascota virtual: 1) Alimentar 2) Hacerlo dormir 3) Ir a caminar'
  endline
end
def endline
  puts '--------------------------------------------------------'
end
def option
  print 'ingresa una opción: '
  o = gets.chomp.to_i
  while o > 3 || o < 1
    puts 'Ingresa una opción válida'
    o = gets.chomp.to_i
  end
  endline
  return o
end

pet = init
menu
opt = option
while opt <= 3 && opt >= 1
case opt
when 1
  pet.feed
  puts 'Alimenta mascota'
when 2
  pet.sleep
when 3
  pet.walk
end
menu
opt = option
end

