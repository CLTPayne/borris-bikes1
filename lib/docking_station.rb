require_relative 'bike'

class DockingStation

#  attr_reader :bike
  def initialize
    @bikes = []
    # feature tests only work if we dock a bike first then release a bike because the default state of the @bikes array is still empty.
    # need a way to set the array at 20, as per the user story. 
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    # Use if here as it's the opposite of unless (e.g. !@bike)
    @bikes << bike
  end

  private

  def full?
     @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
