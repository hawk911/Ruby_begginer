test.rb
#irb

load './rails.rb'
Первая = Station.new("Первая")
Вторая = Station.new("Вторая")
Третья = Station.new("Третья")
Четвертая = Station.new("Четвертая")

Маршрут1 = Route.new(Первая,Четвертая)
Маршрут1.add(Третья)
Маршрут1.add(Вторая)

Маршрут1.list

Маршрут1.delete(Четвертая)

поезд1 = Train.new(4,"пассажиркий",10)
поезд1.speed
поезд1.speed_up = 5
поезд1.stop
поезд1.count
поезд1.count_add
поезд1.count_del


поезд1.route_add(Маршрут1)
поезд1.station
поезд1.station_list
поезд1.station_next
поезд1.station_list