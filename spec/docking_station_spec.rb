require "./lib/docking_station"

# In this challenge, you will raise an exception when a user attempts to dock a bike at a DockingStation that already contains a bike (i.e. with a capacity of 1). Scaffolding has been removed, but the steps are similar to Challenge 12

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

  describe '#dock' do
    it 'raises an error when there are too many bikes in the docking station' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end
  end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
