require_relative 'manufacturer'
#require_relative 'route'
#require_relative 'station'
#require_relative 'train'
#require_relative 'passangerTrain'
#require_relative 'cargoTrain'
require_relative 'carriage'
require_relative 'cargoCar'
require_relative 'passangerCar'


car = PassangerCar.new(88)
puts car.free_seats
car.add_passanger
puts car.free_seats

cargo = CargoCar.new(55)
puts cargo.free_volumes
cargo.add_volume
puts cargo.free_volumes
