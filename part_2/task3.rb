num = 100
array = [1,1]
i=2

until i > num
      array[i] = array[i-1] + array[i-2]
      array << array[i]
      i +=1
end

puts array