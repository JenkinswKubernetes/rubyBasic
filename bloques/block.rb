# 5.times do |time|
#   puts "holi #{time}"
# end

# def hola
#   puts "Hola desde mi funcion"
#   result = 9 + 9
#   yield result             #cuando se manda a llamar despues de un bloque de codigo y poner var aqui
# end
#
# hola do |reciboResult|
#   puts "El resultado de mi funcion hola es #{reciboResult}"
# end

# another ways
# def suma(a, b, &block)
#   result = a + b
#   block.call result
# end
#
# suma(9, 9) do |res|
#   puts "el resultado es #{res}"
# end


# validar si mandamos bloque de codigo
def suma(a, b, &block)
  result = a + b
  if block_given?
    yield result
  else
    puts "Bueno, te doy el resultado aca, es #{result}"
  end
end

# suma(9, 9)

##docu
hash = { "a" => 90, "b" => 899}

puts hash
# hash.delete("b")
puts hash.delete("t"){"No tenemos ese registro"}
puts hash


"holaGurrumina".each_char {
  |c| print c, '*'
}
