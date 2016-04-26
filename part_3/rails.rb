class Station
	attr_accessor :name_station

	def initialize(name_station)
		@name_station = name_station
	  @rails_array= []
	end

	def add(train)
     @rails_array[]<<train
	end 

	def del(train)
		  @rails_array.delete(train)
	end

	def list
		  @rails_array.each	{|name| puts name }
	end

	def litt_type
		@rails_array.each do |train|
			if train.type == "пассажиркий" # Как-то не очень по значению...
			type_pass+=1
			else
 			type_goods +=1
			end
		end
		puts "#Пассажирских поездом: {type_pass} , Грузовых поездов: #{type_goods}"
	end

end

class Route

	def initialize(begin_stop, end_stop)
		@route_array = [begin_stop,end_stop] 
	end

	def add(station)
    @route_array.insert(@route_array.length-1,station) 
	end

	def delete(station)
		@route_array.delete(station)
	end

	def list
    @route_array.each	{|name_station| puts name_station}
  end

end

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