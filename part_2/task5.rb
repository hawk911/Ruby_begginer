

puts "Введите число"
day = gets.chomp.to_i

puts "Введите месяц"
month = gets.chomp.to_i

puts "Введите год"
year = gets.chomp.to_i

month_day = [31,28,31,30,31,30,31,31,30,31,30,31]

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 
	month_day[1] = 29
end

number = 0 

if month == 1 
	number = day
else
	month_day.each_with_index do |days, index|
		number += days if index + 1 < month
	end
end

puts "Дней с начало года #{number}"

