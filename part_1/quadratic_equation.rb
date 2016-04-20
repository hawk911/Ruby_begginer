puts "Введите a"
a_string = gets.chomp
a = a_string.to_f
puts "Введите b"
b_string = gets.chomp
b = b_string.to_f
puts "Введите c"
c_string = gets.chomp
c = c_string.to_f
#проверка быстрая без дискриминанта
if a+b+c ==0 && a !=0
x1 = 0
x2 = c/a
puts "Ответ х1 = #{x1}, х2 = #{x2}."
return  #наверное так прерывается исполнение
end

if b == a + c && c != 0 
x1 = -1
x2 = -a/c	
puts "Ответ х1 = #{x1}, х2 = #{x2}."	
return 
end
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
