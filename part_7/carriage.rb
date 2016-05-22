class Carriage

  include Manufacturer

  attr_reader :weight, :items, :takes_items

  def initialize()
    @weight = weight_carriage
  end

  def free
    @items - @takes_items
  end



  protected
  attr_writer :items, :takes_items

  def weight_carriage
    20000
  end

end
