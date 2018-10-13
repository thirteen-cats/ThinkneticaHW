#5. Заданы три числа, которые обозначают число, месяц, год 
#(запрашиваем у пользователя). 
#Найти порядковый номер даты, начиная отсчет с начала года. 
#Учесть, что год может быть високосным. 
#(Запрещено использовать встроенные в ruby методы для этого вроде 
#Date#yday или Date#leap?) 
#Алгоритм опредления високосного года: www.adm.yar.ru



def whats_the_day
    puts "Please enter the year:  "
    year = gets.chomp.to_i
    puts "Please enter the month :  "
    month = gets.chomp.to_i
    puts "Please enter the date:  "
    date = gets.chomp.to_i

    count = date
    months_year = generate_months(year)
    (1...month).each do |month|
        count = count + months_year[month]  

    end
    puts "#{date}.#{month} is day number #{count} in year #{year}."
    return count

end

def generate_months(year)
    months = {1 => 31,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31
    }
    if year.to_i % 400 == 0
        months[2] = 29   
        
    elsif year.to_i % 100 == 0
     months[2] = 28
        
    elsif 
        year.to_i % 4 == 0
        months[2] = 29
    else
        months[2] = 28
    end
    return months 
end

whats_the_day()