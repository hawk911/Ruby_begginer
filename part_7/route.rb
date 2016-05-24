class Route
  attr_reader :route_array

  def initialize(begin_stop, end_stop)
    @route_array = [begin_stop, end_stop]
  end

  def add(station)
    @route_array.insert(@route_array.length - 1, station)
  end

  def delete(station)
    @route_array.delete(station)
  end

  def list
    @route_array.each	{ |name_station| puts name_station }
  end
end
