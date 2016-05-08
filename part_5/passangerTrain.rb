class PassangerTrain < Train

  def type_carriage(carriage)
    carriage.class == @type.class
  end

  private

    MAX_SPEED = 120

end
