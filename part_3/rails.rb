class Station
	attr_accessor :name_station

	def initialize(name_station)
		@name_station = name_station
	  @rails_array= []
	end

	def add(train)
     @rails_array << train
	end 

	def del(train)
		  @rails_array.delete(train)
	end

	def list
		  @rails_array.each	{|name| puts name }
	end

	def litt_type(type)
		@rails_array.each do |train|
			if train.type == type 
			    type_count +=1
			end
		end
		puts "#Поездов с типом {type}  -  #{type_count}  шт."
	end

end

class Route
  attr_reader :route_array

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
     puts "Предыдущая станция: #{@route[@point-1].name_station} , Текущая станция: #{@route[@point].name_station} , Следующая станция:#{@route[@point+1].name_station}."
 end
end