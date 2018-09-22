
# Идеальный вес. Программа запрашивает у пользователя имя и рост и выводит идеальный вес 
# по формуле <рост> - 110, после чего выводит результат пользователю на экран 
# с обращением по имени. Если идеальный вес получается отрицательным, 
# то выводится строка "Ваш вес уже оптимальный"

puts "What's your name?"
name = gets.chomp.capitalize

puts "How tall are you?"
heigth = gets.chomp.to_i

perfect_weight = heigth - 110

if perfect_weight <= 0
    puts "Ваш вес уже оптимальный"
elsif 
    puts "Hello, #{name}, your perfect weight is #{perfect_weight}"
end


