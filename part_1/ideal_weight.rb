puts "Как тебя зовут?"
name = gets.chomp
name.capitalize!
puts "Какого ты роста?"
height = gets.chomp
ideal_weight = height.to_i - 110
if ideal_weight>0
puts "#{name}, твой идеальный вес равен #{ideal_weight}"	
else
puts "Ваш вес уже оптимальный!"	
end
