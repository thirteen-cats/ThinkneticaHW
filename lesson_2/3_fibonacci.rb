#3. Заполнить массив числами фибоначчи до 100

    arr = [1, 1]
    result = 0
    
    while true 
        result = arr[-2] + arr[-1]
        break if result > 100
        arr.push(result)
    end
    puts arr
    

