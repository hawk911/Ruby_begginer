puts "Введите a"
a = gets.chomp.to_f
puts "Введите b"
b = gets.chomp.to_f
puts "Введите c"
c = gets.chomp.to_f

#классическое решение
d = b**2 - 4 * a * c
if d > 0 
x1 = (-b + Math.sqrt(d)) / 2 * a
x2 = (-b - Math.sqrt(d)) / 2 * a
puts "Ответ х1 = #{x1}, х2 = #{x2} , дискриминант = #{d}"
elsif d == 0 
x1 = -b/2*a
puts "Ответ х1 = #{x1}, дискриминант = #{d}"
else
 puts "Корней нет"
end
