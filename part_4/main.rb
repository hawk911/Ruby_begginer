require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'passangerTrain'
require_relative 'cargoTrain'
require_relative 'carriage'
require_relative 'cargoCar'
require_relative 'passangerCar'

passangerCar = PassangerCar.new()
CargoCar1 = CargoCar.new()


pas = PassangerTrain.new(4,passangerCar)

puts pas.speed
pas.speed_up = 7
puts pas.speed
pas.speed_up = -7
puts pas.speed

pas.carriage_add = passangerCar
pas.carriage_cost

pas.carriage_add = CargoCar1
pas.carriage_cost

pas.carriage_del = passangerCar
pas.carriage_cost

passangerCar2 = PassangerCar.new()
CargoCar2 = CargoCar.new()

pas2 = CargoTrain.new(4,CargoCar2)
pas2.carriage_add = passangerCar2
pas2.carriage_cost

pas2.carriage_add = CargoCar2
pas2.carriage_cost

