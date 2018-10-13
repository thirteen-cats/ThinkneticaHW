#2. Заполнить массив числами от 10 до 100 с шагом 5

arr = []
(10..100).each do |x| 
    if x % 5 == 0
        arr.push(x)

    end
    
end
puts arr

#10.upto(100)
