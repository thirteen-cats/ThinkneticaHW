# Квадратное уравнение. Пользователь вводит 3 коэффициента a, b и с. 
# Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) 
# и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
#   Если D > 0, то выводим дискриминант и 2 корня
#   Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
#   Если D < 0, то выводим дискриминант и сообщение "Корней нет"
# Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, 
# нужно использовать  Math.sqrt
 
#  Например,  
 
# Math.sqrt(16)
 
#   вернет 4, т.е. квадратный корень из 16.

puts "Vvedite koefficient A."
a = gets.chomp.to_f
puts "Vvedite koefficient B."
b = gets.chomp.to_f
puts "Vvedite koefficient C."
c = gets.chomp.to_f

d = b ** 2 - 4.0 * a * c
puts "D = #{d}."
kor = Math.sqrt(d)
if d < 0
    puts "Korney net."

elsif d == 0
    x = -b / 2.0 * a
    puts "Koren uravnenia raven #{x}."
else 
    x = (-b + kor) / (2.0 * a)
    y = (-b - kor) / (2.0 * a) 
    puts "V uravnenii dva kornya: #{x} i #{y}."
end