require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    fail "Docking station full" if @bike
    # Use if here as it's the opposite of unless (e.g. !@bike)
    @bike = bike
  end

end
