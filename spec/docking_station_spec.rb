require "./lib/docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releasing a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
