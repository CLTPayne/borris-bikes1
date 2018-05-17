require_relative 'bike'

class DockingStation

#  attr_reader :bike
  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if @bikes.count >= 20
    # Use if here as it's the opposite of unless (e.g. !@bike)
    @bikes << bike
  end

  def full?
  p  @bikes.count >= 20
  end

end
