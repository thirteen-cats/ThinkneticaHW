# Площадь треугольника. Площадь треугольника можно вычислить, зная его основание (a) и высоту (h) 
# по формуле: 1/2*a*h. 
# Программа должна запрашивать основание и высоту треугольника и возвращать его площадь.

puts "Kakova dlina osnovania treugolnika?"
a = gets.chomp.to_i

puts "Kakova vysota treugolnika?"
h = gets.chomp.to_i

s= (a * h) / 2
puts "Ploschad dannogo treugolnika ravna #{s} kvadratnih santimetrov."