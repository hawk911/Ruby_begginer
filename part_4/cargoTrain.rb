class CargoTrain < Train
	
	def type_carriage(carriage)
		if carriage.class == CargoCar
			return true
		else
			return false
		end
	end

  private

  MAX_SPEED = 80

end