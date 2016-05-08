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


pas = PassangerTrain.new(4,passangerCar)
pas.make_print
pas.make_manufacturer ="Russia"
pas.make_print

st1 = Station.new("первая")
st2 = Station.new("вторая")
st2.all
st3 = Station.new("третья")
st3.all
