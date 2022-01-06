numArray = [9,8,7,6,5,4]
# like forach
numArray.each do |val|
  puts val
end

myHash = {"liz" => 9090, "gurru" => 9999}
myHash.each do |myKey, value|
  puts "mi key es #{myKey} y mi valor es #{value}"
end

"LIZBETHBERENICEBURGOSVEGA".each_char do |chr|
  puts chr
end

# times

8.times do |ind|
  puts "soy times #{ind}"
end
