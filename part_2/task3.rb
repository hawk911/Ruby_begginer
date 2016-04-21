ch = 0; 
ch1 = 1;
i = 0
num = 100
array = []
until i > num
      ch2 = ch1
      ch1 = ch
      ch = ch1 + ch2
      array << ch

      i +=1
end

puts array