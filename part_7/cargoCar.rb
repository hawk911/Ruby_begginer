class CargoCar < Carriage
  attr_reader :type

  def initialize(volumes)
    @items = volumes
    @takes_items = 0
    @type = 'CargoTrain'
    validate!
  end

  def add_volume=(volume)
    @takes_items += volume if free > 0
  end

  protected

  def validate!
    raise "Объем -  должено быть цифрой!" unless items.is_a? Fixnum
  end

  def weight_carriage
    40_000
  end
end
