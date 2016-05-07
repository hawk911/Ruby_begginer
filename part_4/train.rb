class Train

	attr_reader :carriage, :speed

	def initialize(number,type)
		@number = number
		@type = type
		@speed = 0
		@carriage = []
	end
  
	def speed_up=(speed)
		if @speed < MAX_SPEED
			@speed+=speed
		else
			puts "Максимальная скорость #{MAX_SPEED}!"	
		end
	end

	def stop
		@speed = 0 
	end

	def count_add(carriage)
    if @speed == 0 
    	 	@carriage << carriage
		else
			puts "Поезд надо остановить, чтобы добавить вагон"
		end
	end

	def count_del(carriage)
		if @speed == 0 
    	 	@carriage.delete(@carriage.last)
    else
		  puts "Поезд надо остановить, чтобы отцепить вагон"
		end
	end

 def route_add(route)
 	  @route  = route.route_array
 	  @point = 0 
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
 
 protected 

  def station # для тестов
    puts @route[@point].name_station 
  end
  
  MAX_SPEED = 50
end