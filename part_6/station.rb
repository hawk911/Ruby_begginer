class Station
	attr_accessor :name_station
	@@station = []

	def initialize(name_station)
		@name_station = name_station
	  @rails_array= []
	  @@station << self
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

	def all
		@@station
	end

end

