# 6. Сумма покупок. Пользователь вводит поочередно название товара, 
# цену за единицу и кол-во купленного товара (может быть нецелым числом). 
# Пользователь может ввести произвольное кол-во товаров до тех пор, 
# пока не введет "стоп" в качестве названия товара. 
# На основе введенных данных требуетеся:
# Заполнить и вывести на экран хеш, ключами которого являются названия товаров, 
# а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного 
# товара. Также вывести итоговую сумму за каждый товар.
# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".


pokupki = Hash.new

loop do 
    puts "Vvedite naimenovanie tovara: "
    name = gets.chomp.to_s.downcase
        if name == "stop"
            break
        else
        puts "Vvedite stiomost edinitsy tovara: "
        price = gets.chomp.to_f
        puts "Vvedite kolichestvo priobretennih tovarov: "
        qty = gets.chomp.to_f
        end
    
    pokupki[name] = {price => qty}

end

puts pokupki
total = 0.0
pokupki.each do |name, price_qty|
    summa = 0.0
    price_qty.each {|key, value| summa = key * value}
    total = total + summa 
puts "Vy kupili #{name} na summu #{summa} rubley."
end
puts "Obshaya stoimost vashih pokupok #{total} rubley."



