puts "Как тебя зовут?"
name = gets.chomp
name.capitalize!
puts "Какого ты роста?"
height = gets.chomp.to_i
ideal_weight = height - 110
if ideal_weight>0
	puts "#{name}, твой идеальный вес равен #{ideal_weight}"	
else
	puts "Ваш вес уже оптимальный!"	
end
