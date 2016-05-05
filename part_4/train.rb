class Train

	attr_accessor :speed, :count

	def initialize(number,type,count)
		@number = number
		@type = type
		@count = count
		@speed = 0
		@route 
		@point
	end

	def speed_up=(speed)
	   @speed+=speed
	end

	def stop
		@speed = 0 
	end

	def count_remove=(count)
		if count>0 
		 @count+=1 if @speed == 0 
		else
	   @count-=1 if @speed == 0 
		end
	end

 def route_add(route)
 	  @route  = route.route_array
 	  @point = 0 
 end

 def station
  puts @route[@point] 
 end
 	
 def station_next
    if @route[@point+1] != nil
    	@point+=1
    	@route[@point] 
    	puts @route[@point]
 	 else
 	 	  puts "Дальше поезд не идёт!"
 	 end
 end

 def station_list
     puts "Предыдущая станция: #{@route[@point-1]} , Текущая станция: #{@route[@point]} , Следующая станция:#{@route[@point+1]}."
 end
end