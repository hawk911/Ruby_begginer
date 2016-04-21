mount_hash = {
 1 => 31,
 2 => 28,
 3 => 31,
 4 => 30,
 5 => 31,
 6 => 30,
 7 => 31,
 8 => 31,
 9 => 30,
 10 => 31,
 11 => 30,
 12 => 31,
}

puts "Введите число"
number = gets.chomp.to_i

puts "Введите месяц"
mount = gets.chomp.to_i

puts "Введите год"
year = gets.chomp.to_i

if year == 2000 || year%4 == 0 
	mount_hash[2] = 29
end

if mount == 1 
	summa_number = number
else
	#mount_hash.each do |key, value| 
	#	summa_number = value
	until mount_hash. < mount

	end
end

puts "Дней с начало года #{summa_number}"

