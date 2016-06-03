# create PassangerCar
class PassangerCar < Carriage
  attr_reader :type

  def initialize(seats)
    @items = seats
    @takes_items = 0
    @type = 'PassangerTrain'
    validate!
  end

  def add_passanger
    @takes_items += 1 if free > 0
  end

  protected

  def validate!
    raise 'Seating capacity -  must Fixnum!' unless items.is_a? Fixnum
  end
end
