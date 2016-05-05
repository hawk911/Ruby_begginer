class CargoTrain < Train

	def speed_up=(speed)
		if @speed > max_speed
			@speed+=speed
		else
			puts "Максимальная скорость #{max_speed}!"	
		end
	  
  end

  protected

  def max_speed
  	80 
  end

end