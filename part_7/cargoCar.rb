class CargoCar < Carriage

  attr_reader :volumes, :taken_volumes, :type

  def initialize(volumes)
    @volumes = volumes
    @taken_volumes = 0
    @type = "CargoTrain"
    validate!
  end

  def free_volumes
    @volumes - @taken_volumes
  end

  def add_volume
    @taken_volumes+=1 if free_volumes>0
  end

  protected
  attr_writer :volumes, :taken_volumes

  def validate!
    raise "Количество мест -  должено быть цифрой!" unless volumes.is_a? Fixnum
  end
  def weight_carriage
    40000
  end
end
