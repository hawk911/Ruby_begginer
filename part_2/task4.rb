row = ('а'..'я').to_a
vowels = ["а", "е", "ё", "и", "о", "у", "ы", "э", "ю", "я"]
hash = {}
row.each_with_index do |v, id|
	hash[v] = id+1 if vowels.include?(v)
end

puts hash