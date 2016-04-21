row = ('а'..'я').to_a
vowels = ["а", "е", "ё", "и", "о", "у", "ы", "э", "ю", "я"]
hash = {}
row.each_with_index do |v, id|
	if vowels.include?(v)
   		hash[v] = id
	end
end

puts hash