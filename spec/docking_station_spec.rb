require "./lib/docking_station"

describe DockingStation do

  describe '#release_bike' do

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'releases a bike from the group of bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
 end


   describe '#dock' do
    it 'raises an error when there are too many bikes in the docking station' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end
  end

  it 'can have a variable capacity' do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq 30
  end

  #  it 'raises an error when there are over the customer provided amount of bikes in the docking station'
  #    docking_station = DockingStation.new(50)
  #   bike = Bike.new
  #   50.times { docking_station.dock(bike) }
  #   expect { docking_station.dock(bike) }.to raise_error "Docking station already has 50 bikes"
  # end

    it 'returns docked bikes' do
      bike = Bike.new
      # is this still a working test? Have we just hard coded the last
      expect(subject.dock(bike)).to eq [bike]
    end
end
