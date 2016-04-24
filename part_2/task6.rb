
products = {}
loop do
	puts "Выход из ввода команда: стоп"
	puts "Введите название товара"
	name = gets.chomp

	break if name == "стоп"

    products[name] = {}

	puts "Введите цену товара за единицу"
	products[name][:price] = gets.chomp.to_i

	puts "Введите количество товара"
	products[name][:quantity] = gets.chomp.to_f

end

sum_general  = 0 
products.each do |name, general|
	sum = general[:price] * general[:quantity]
	sum_general +=sum 
	puts "Товар #{name}, цена за единицу #{general[:price]}, количество #{general[:quantity]} сумма по товару равна #{sum}"
end

puts "Общая сумма покупок равна #{sum_general}"