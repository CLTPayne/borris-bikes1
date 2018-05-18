require './lib/docking_station.rb'
require './lib/bike.rb'

# As a maintainer of the system,
# So that I can manage broken bikes and not disappoint users,
# I'd like docking stations not to release broken bikes.

# docking_station = DockingStation.new
# bike = Bike.new
# bike.report_broken
# docking_station.dock(bike)
# p docking_station.release_bike
# EXPECT AN ERROR as no break method

# docking_station = DockingStation.new(50)
# docking_station.dock(broken_bike)
#
# docking_station.release_bike



# As a maintainer of the system,
# So that I can manage broken bikes and not disappoint users,
# I'd like docking stations to accept returning bikes (broken or not).
