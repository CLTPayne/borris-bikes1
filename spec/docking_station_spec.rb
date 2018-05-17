require "./lib/docking_station"

describe DockingStation do
  
  describe '#release_bike' do

    it 'releases a bike from the group of bikes' do
      bike = Bike.new
      20.times { subject.dock(bike) }
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

   describe '#dock' do
    it 'raises an error when there are too many bikes in the docking station' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end
  end

    it 'returns docked bikes' do
      bike = Bike.new
      # is this still a working test? Have we just hard coded the last
      expect(subject.dock(bike)[-1]).to eq bike
    end
end
