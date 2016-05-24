# create Station
class Station
  attr_accessor :name_station
  @@station = []

  def initialize(name_station)
    @name_station = name_station
    validate!
    @rails_array = []
    @@station << self
  end

  def block_train
    @rails_array.each { |t| yield t }
  end

  def add(train)
    @rails_array << train
  end

  def del(train)
    @rails_array.delete(train)
  end

  def valid?
    validate!
  rescue
    false
  end

  def list
    @rails_array.each	{ |name| puts name }
  end

  def litt_type(type)
    @rails_array.each do |train|
      type_count += 1 if train.type == type
    end
    puts "#Train with type  {type}  -  #{type_count}  шт."
  end

  def self.all
    @@station
  end

  protected

  def validate!
    raise 'The station has no name' if name_station.empty?
    true
  end
end
