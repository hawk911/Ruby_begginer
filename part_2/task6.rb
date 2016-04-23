
# Из условия не понятно, когда выводить постоянно или после "стоп". Выводил постоянно, потому 
#что надо знать общую сумму, чтобы расчитывать свой бюджет :)
sum_general  = 0 
loop do
puts "Выход из ввода команда: стоп"
puts "Введите название товара"
name = gets.chomp

break if name == "стоп"

puts "Введите цену товара за единицу"
cost = gets.chomp.to_i

puts "Введите количество товара"
quantity = gets.chomp.to_f

products = { name  => {cost_name: cost , quantity_name:quantity} }

products.each do |name, general|
	sum = general[:cost_name] * general[:quantity_name]
	sum_general +=sum 
	puts "Товар #{name}, цена за единицу #{general[:cost_name]}, количество #{general[:quantity_name]} сумма по товару равна #{sum}"
end
puts "Общая сумма покупок равна #{sum_general}"
end
