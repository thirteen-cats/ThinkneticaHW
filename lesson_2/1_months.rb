# #Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30

def generate_months(year)
  months = {january: 31,
  february: 28,
  march: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
  }
  if year.to_i % 400 == 0 || year.to_i % 100 == 0 || year.to_i % 4 == 0
    months[:february] = 29           
  end
  
end
  
months = generate_months(2010)
months.each do |name, days|
  puts "#{name}" unless days != 30
end
