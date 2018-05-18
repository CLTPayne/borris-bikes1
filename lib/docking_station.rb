require_relative 'bike'

class DockingStation

  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    # feature tests only work if we dock a bike first then release a bike because the default state of the @bikes array is still empty.
    # need a way to set the array at 20, as per the user story.
  end

  def release_bike
    fail "No bikes available" if empty?
    fail "No working bikes available" if (@bikes.last).broken?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    # Use if here as it's the opposite of unless (e.g. !@bike)
    @bikes << bike
  end

 private

  def full?
     @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
