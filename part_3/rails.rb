class Station
	attr_accessor :name_station

	def initialize(name_station)
		@name_station = name_station
	  @rails_array= []
	end

	def add_train()

	end 

end

class Route

	def initialize(begin_stop, end_stop)
		@route_array = [begin_stop,end_stop] 
	end

	def add(point)
    @route_array.insert(@route_array.length-1,point) 
	end

	def delete(point)
		@route_array.delete(point)
	end

	def list_route
    @route_array.each	{|name| puts name }
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

	def count_remove=(count)
		if count>0 
		 @count+=1 if @speed == 0 
		else
	   @count-=1 if @speed == 0 
		end
	end

end