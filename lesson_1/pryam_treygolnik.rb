#Прямоугольный треугольник. 
# Программа запрашивает у пользователя 3 стороны треугольника и определяет, 
#является ли треугольник прямоугольным, используя теорему Пифагора (www-formula.ru) 
# a**2 + b**2 == c**2
#и выводит результат на экран. Также, если треугольник является при этом равнобедренным 
#(т.е. у него равны любые 2 стороны), то дополнительно выводится информация о том, 
#что треугольник еще и равнобедренный. 
#Подсказка: чтобы воспользоваться теоремой Пифагора, нужно сначала найти самую длинную сторону 
#(гипотенуза) и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон. 
#Если все 3 стороны равны, то треугольник равнобедренный и равносторонний, но не прямоугольный.

puts "Vvedite dlinu pervoy storoni treugolnika."
side1 = gets.chomp.to_i
puts "Vvedite dlinu vtoroy storoni treugolnika."
side2 = gets.chomp.to_i
puts "Vvedite dlinu tretyei storoni treugolnika."
side3 = gets.chomp.to_i

if side1 == side2 && side1 == side3
    puts "Danniy treugolnik ravnostoronniy."
elsif side1 == side2 || side1 == side3 || side2 == side3
    puts "Danniy treugolnik ravnobedrenniy."
end

if side1 ** 2 + side2 **2 == side3 **2 || side1 ** 2 + side3 **2 == side2 **2 || side2 ** 2 + side3 **2 == side1 **2
    puts "Danniy treugolnik yavlyaetsya pryamougolnim."
end 

# longest = side1 > side2 ? side1 : side2
# longest = side3 if side3 > longest
# puts longest 



