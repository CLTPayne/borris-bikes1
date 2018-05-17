require './lib/docking_station.rb'
require './lib/bike.rb'

docking_station = DockingStation.new
bike = Bike.new
20.times { docking_station.dock(bike ) }
