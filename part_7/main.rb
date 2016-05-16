require_relative 'manufacturer'
#require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'passangerTrain'
require_relative 'cargoTrain'
require_relative 'carriage'
require_relative 'cargoCar'
require_relative 'passangerCar'

Moscow = Station.new("Moscow")
Volgograd = Station.new("Volgograd")

train1 = PassangerTrain.new("111-01","fast","PassangerTrain")
train15 = PassangerTrain.new("150-15","slow","PassangerTrain")

train50 = CargoTrain.new("500-50","Cargo50","CargoTrain")
train59 = CargoTrain.new("590-59","Cargo59","CargoTrain")

passangerCar1 = PassangerCar.new(100)
puts passangerCar1.free_seats
passangerCar2 = PassangerCar.new(120)


cargoCar1 = CargoCar.new(550)
puts cargoCar1.add_volume
puts cargoCar1.add_volume

cargoCar2 = CargoCar.new(850)
puts cargoCar2.free_volumes

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
  puts "Поезд №#{t.number}, тип: #{t.type}, число вагонов:#{t.carriage_cost}"
    puts "В поезде #{t.number}:"
    t.block_car do |c|
      if c.type == "PassangerTrain"
        puts "Вагон #{r.rand(1...100)}, тип: #{c.type}, свободные места: #{c.free_seats}, занятые места: #{c.taken_seats}"
      elsif c.type == "CargoTrain"
        puts "Вагон #{r.rand(1...110)}, тип: #{c.type}, свободый объем: #{c.free_volumes}, занятый объем: #{c.taken_volumes}"
      end
    end
  end
end
