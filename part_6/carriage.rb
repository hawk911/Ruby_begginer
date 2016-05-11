class Carriage

  include Manufacturer

  attr_reader :weight

  def initialize
    @weight = weight_carriage
  end

  protected

  def weight_carriage
    20000
  end
end
