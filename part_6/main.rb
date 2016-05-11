require_relative 'manufacturer'
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


pas = PassangerTrain.new(43333,"fd",passangerCar)
pas.valid?

pas2 = PassangerTrain.new(5,"Sapsan",passangerCar)
puts pas.make
pas.make ="Russia"
puts pas.make

st1 = Station.new("первая")
st2 = Station.new("вторая")
st2.all
st3 = Station.new("третья")
st3.all

pas.find(5)
