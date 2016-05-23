class Train

  include Manufacturer

  attr_reader :carriage, :speed, :name, :number, :type
  NUMBER_GER = /^[0-9а-яa-z]{3}-*[0-9а-яa-z]{2}$/i
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
      @speed+=speed
    else
      puts "Максимальная скорость #{MAX_SPEED}!"
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
        #if type_carriage(carriage)
          @carriage << carriage
       # else
       #  puts "Не тот тип вагона!"
       # end
    else
      puts "Поезд надо остановить, чтобы добавить вагон"
    end
  end

  def carriage_del=(carriage)
    if @speed == 0
        @carriage.delete(@carriage.last)
    else
      puts "Поезд надо остановить, чтобы отцепить вагон"
    end
  end

 def route_add(route)
    @route  = route.route_array
    @point = 0
 end

 def station_next
    if @route[@point+1] != nil
      @point+=1
      @route[@point]
      puts @route[@point].name_station
   else
      puts "Дальше поезд не идёт!"
   end
 end

  def station_list
   if @route.first == @route[@point]
     info1 =  "Предыдущей станции нет."
   else
     info1 =  "Предыдущая станция: #{@route[@point-1].name_station}"
   end

   if @route.last == @route[@point]
     info3 =  "Текущая, уже последняя станция!"
   else
     info3 = "Следующая станция:#{@route[@point+1].name_station}."
   end

     puts info1 + " ,Текущая станция: #{@route[@point].name_station} ," + info3
  end

  def valid?
    validate!
  rescue
    false
  end

 protected

  def validate!
    raise "Номер не может быть пустым!" if number.nil?
    raise "Нет наименования у поезда" if name.length == 0
    raise "Не правильный формат номера поезда" if number !~NUMBER_GER
    true
  end


  def station # для тестов
    puts @route[@point].name_station
  end

  MAX_SPEED = 50
end
