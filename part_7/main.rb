require_relative 'manufacturer'
# require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'passangerTrain'
require_relative 'cargoTrain'
require_relative 'carriage'
require_relative 'cargoCar'
require_relative 'passangerCar'

Moscow = Station.new('Moscow')
Volgograd = Station.new('Volgograd')

train1 = PassangerTrain.new('111-01', 'fast', 'PassangerTrain')
train15 = PassangerTrain.new('150-15', 'slow', 'PassangerTrain')

train50 = CargoTrain.new('500-50', 'Cargo50', 'CargoTrain')
train59 = CargoTrain.new('590-59', 'Cargo59', 'CargoTrain')

passangerCar1 = PassangerCar.new(100)
passangerCar2 = PassangerCar.new(120)
passangerCar2.add_passanger

cargoCar1 = CargoCar.new(550)
cargoCar1.add_volume = 55

cargoCar2 = CargoCar.new(850)

train1.carriage_add = passangerCar1
train15.carriage_add = passangerCar2

train50.carriage_add = cargoCar1
train59.carriage_add = cargoCar2

Moscow.add(train1)
Moscow.add(train50)
Volgograd.add(train15)
Volgograd.add(train59)
r = Random.new
Station.all.each do |s|
  puts "На станции #{s.name_station}:"
  s.block_train do |t|
    puts "Train №#{t.number}, type: #{t.type}, count car:#{t.carriage_cost}"
    puts "In train #{t.number}:"
    t.block_car do |c|
      if c.type == 'PassangerTrain'
        puts "Car #{r.rand(1...100)}, type: #{c.type}, free places: #{c.free}, taken places: #{c.takes_items}"
      elsif c.type == 'CargoTrain'
        puts "Car #{r.rand(1...110)}, type: #{c.type}, free volume: #{c.free}, taken volume: #{c.takes_items}"
      end
    end
  end
end
