class Perro
  # attr_reader /> solo leer
  # attr_reader :raza, :color, :edad
  # pa escribir attr_writer
  # attr_writer :raza, :color, :edad
  # para ambas
  attr_accessor :raza, :color, :edad

  def initialize(raza, color, edad)
    @raza = raza
    @color = color
    @edad = edad
  end

# region :: gets
# puedo sustituir todos estos gets con attr_reader :raza, :color, :edad
  # def raza
  #  se devuelve la ultima linea de codigo por eso no es necesario usar un return
  #   @raza
  # end
  # def color
  #   @color
  # end
  # def edad
  #   @edad
  # end
# endregion ##############################################3

# region :: sets
# puedo sustituir todos estos gets con attr_reader :raza, :color, :edad
  # def color=(newColor)
  #   @color = newColor
  # end
# endregion ##############################################3

# region :: methods
  def comer
    puts "yomi yomi"
  end

  def to_s
    "soy un doggy #{@raza} de color #{@color} y tengo #{@edad}"
  end
# endregion ##############################################3
end
perro = Perro.new("chuihua", "white", "9")
puts perro.raza
puts perro.color
puts perro.edad
