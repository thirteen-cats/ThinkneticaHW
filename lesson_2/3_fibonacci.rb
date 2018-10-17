#3. Заполнить массив числами фибоначчи до 100

arr = [1, 1]
result = 0
    
while result < 100
  result = arr[-2] + arr[-1]
  arr << result
end

puts arr
