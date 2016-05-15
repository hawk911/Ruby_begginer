require_relative 'manufacturer'
require_relative 'station'
require_relative 'train'


class Interface_train

  attr_reader :stations, :trains, :route, :name, :number,:type
  NUMBER_GER = /^[0-9а-яa-z]{3}-*[0-9а-яa-z]{2}$/i
  def initialize
    @stations = []
    @trains = []
  end

  def begin
    loop do
      puts "Добрый день."
      puts "1  - Создать поезд"
      puts "2  - Создать остановки"
      puts "q   - Выход из программы"

      value =gets.chomp
      case value
      when "1"
        trains_create
      when "2"
        stations_create
      when "q"
        break
      end
    end
  end

  private

  def trains_create
      puts "Введите название поезда"
      name = gets.chomp
      puts "Введите номер поезда в формате XX-XXX или XXXXX"
      number = gets.chomp
      puts "Введите тип поезда"
      type = gets.chomp
    raise "Наименование, должно быть больше 3-х букв"  if name.length<3
    raise "Не правильный формат номера поезда" if number !~NUMBER_GER
      self.stations << Train.new(number, name, type)
    rescue RuntimeError => e
      puts e.message
  end

  def stations_create
      puts "Введите наименование станции"
      name = gets.chomp
    raise "Наименование, должно быть больше 3-х букв"  if name.length<3
      self.stations << Station.new(name)
    rescue RuntimeError => e
      puts e.message
  end


interface_train = Interface_train.new
interface_train.begin

