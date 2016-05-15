class PassangerCar < Carriage

  attr_reader :seats, :taken_seats

  def initialize(seats)
    @seats = seats
    @taken_seats = 0
    validate!
  end

  def free_seats
    @seats - @taken_seats
  end

  def add_passanger
    @taken_seats+=1 if free_seats>0
  end

  protected
  attr_writer :seats,:taken_seats

  def validate!
    raise "Количество мест -  должено быть цифрой!" unless seats.is_a? Fixnum
  end

end
