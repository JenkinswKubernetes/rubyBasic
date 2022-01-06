# nombre = 'cadenas'
# print "interpolacion de #{nombre} con doble comillas"

print "Como se llama tu mascota?"
miMascota = gets
#chomp es para que no de el salto de linea
miMascota = miMascota.chomp
puts "que es?"
tipo = gets
print "Mi mascota se llama #{miMascota} y es un #{tipo}"
