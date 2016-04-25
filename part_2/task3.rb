num = 100
array = [1,1]
=begin
i=2

until i > num
  array << array[i-1] + array[i-2]
  i +=1
end
=end
while array.length <=100
  array << array[-1] + array [-2]
end

puts array