require './lib/docking_station.rb'
require './lib/bike.rb'

docking_station = DockingStation.new
bike = Bike.new
p docking_station.dock(bike)
p docking_station.release_bike
# p docking_station.release_bike
