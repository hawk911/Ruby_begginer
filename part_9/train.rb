# create Train
require './instances.rb'
require './validator.rb'

class Train
  NUMBER = /^[a-z\d]{3}-?[a-z\d]{2}$/i
  include Manufacturer
  include Instance
  include Validation

  attr_reader :carriage, :speed, :name, :number, :type

  validate :name, :presence, 'true'
  validate :number, :regexp, NUMBER

  #NUMBER_GER = /^[0-9а-яa-z]{3}-*[0-9а-яa-z]{2}$/i
  @@all = {}
  def initialize(number, name, type)
    @number = number
    @name = name
    @type = type
    @speed = 0
    validate!
    @carriage = []
    @@all[number] = self
  end

  def block_car
    @carriage.each { |car| yield car }
  end

  def find(number)
    @@all[number]
  end

  def speed_up=(speed)
    if @speed < MAX_SPEED
      @speed += speed
    else
      puts "Max speed  #{MAX_SPEED}!"
    end
  end

  def stop
    @speed = 0
  end

  def carriage_cost
    @carriage.size
  end

  def carriage_add=(carriage)
    if @speed == 0
      @carriage << carriage
    else
      puts 'The train should be stopped to add a coach'
    end
  end

  def carriage_del=(_carriage)
    if @speed == 0
      @carriage.delete(@carriage.last)
    else
      puts 'The train should be stopped to unhitch a coach'
    end
  end

  def route_add(route)
    @route = route.route_array
    @point = 0
  end

  def station_next
    if !@route[@point + 1].nil?
      @point += 1
      @route[@point]
      puts @route[@point].name_station
    else
      puts "Further the train doesn't go!"
   end
  end

  def station_list
    info1 = if @route.first == @route[@point]
              'There is no previous station.'
            else
              "Previous station: #{@route[@point - 1].name_station}"
            end

    info3 = if @route.last == @route[@point]
              'Current, already last station!'
            else
              "Next station:#{@route[@point + 1].name_station}."
            end

    puts info1 + " ,Current station: #{@route[@point].name_station} ," + info3
  end

  def valid?
    validate!
  rescue
    false
  end

  protected

  #def validate!
  #  raise "Number can't be empty!" if number.nil?
  # raise 'The train has no name' if name.empty?
  # raise 'Not the correct format of number of the train' if number !~ NUMBER_GER
  # true
  #end

  def station
    puts @route[@point].name_station
  end

  MAX_SPEED = 50
end
