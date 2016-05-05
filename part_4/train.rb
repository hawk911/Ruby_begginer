class Train

	attr_accessor :speed, :count

	def initialize(number,type,count)
		@number = number
		@type = type
		@count = count
		@speed = 0

	end

	def speed_up=(speed)
	   @speed+=speed
	end

	def stop
		@speed = 0 
	end

	def count_add
		 @count+=1 if @speed == 0 
	end

	def count_del
		 @count-=1 if @speed == 0 
	end

 def route_add(route)
 	  @route  = route.route_array
 	  @point = 0 
 end

 def station
  puts @route[@point].name_station 
 end
 	
 def station_next
    if @route[@point+1] != nil
    	@point+=1
    	@route[@point] 
    	puts @route[@point].name_station
 	 else
 	 	  puts "Дальше поезд не идёт!"
 	 end
 end

 def station_list
 	 if @route.first == @route[@point]
 	 	 info1 =  "Предыдущей станции нет."
 	 else
     info1 =  "Предыдущая станция: #{@route[@point-1].name_station}"
   end

   if @route.last == @route[@point]
   	 info3 =  "Текущая, уже последняя станция!"
   else
 		 info3 = "Следующая станция:#{@route[@point+1].name_station}."
   end

     puts info1 + " ,Текущая станция: #{@route[@point].name_station} ," + info3
 end
end