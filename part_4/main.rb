require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'passangerTrain'
require_relative 'cargoTrain'
require_relative 'carriage'
require_relative 'cargoCar'
require_relative 'passangerCar'


pas = PassangerTrain.new(4,"sdf")
puts pas.speed
pas.speed_up = 7
puts pas.speed