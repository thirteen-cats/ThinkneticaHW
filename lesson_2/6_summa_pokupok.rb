# 6. Сумма покупок. Пользователь вводит поочередно название товара, 
# цену за единицу и кол-во купленного товара (может быть нецелым числом). 
# Пользователь может ввести произвольное кол-во товаров до тех пор, 
# пока не введет "стоп" в качестве названия товара. 
# На основе введенных данных требуетеся:
# Заполнить и вывести на экран хеш, ключами которого являются названия товаров, 
# а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного 
# товара. Также вывести итоговую сумму за каждый товар.
# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".

pokupki = {}

loop do 
  puts "Enter the name of a purchased item: "
  name = gets.chomp.to_s.downcase
    if name == "stop"
      break
    else
      puts "Enter the price of a purchased item: "
      price = gets.chomp.to_f
      puts "Enter the quantity of items purchased: "
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
puts "You have purchased #{name} at the amount of #{summa} RUR."
end

puts "Total cost of your purchase is #{total} RUR."
