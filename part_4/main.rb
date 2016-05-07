require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'passangerTrain'
require_relative 'cargoTrain'
require_relative 'carriage'
require_relative 'cargoCar'
require_relative 'passangerCar'

passangerCar = PassangerCar.new()
CargoCar = CargoCar.new()


pas = PassangerTrain.new(4,passangerCar)
puts pas.speed
pas.speed_up = 7
puts pas.speed
pas.speed_up = -7
puts pas.speed

pas.carriage_add = passangerCar
pas.carriage_cost

pas.carriage_add = CargoCar
pas.carriage_cost

pas.carriage_del = passangerCar
pas.carriage_cost
