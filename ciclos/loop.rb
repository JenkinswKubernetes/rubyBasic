# loop {
#   puts "holi"
# }

loop do
  print "quieres escuchar esta cancion "
  res = gets.chomp
  if (res == "n")
    print "bueno :("
    break;
  end
  puts "ponle play"
end
