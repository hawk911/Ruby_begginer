class PassangerTrain < Train

	def type_carriage(carriage)
		if carriage.class == PassangerCar
			return true
		else
			return false
		end
	end
	
  private
 
		MAX_SPEED = 120
  
end
