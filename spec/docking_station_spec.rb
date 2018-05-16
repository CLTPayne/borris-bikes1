require "./lib/docking_station"

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there a no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  
  it 'docks something' do
    bike = Bike.new

    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end


  end
end
