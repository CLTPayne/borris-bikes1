require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

=begin
# If not using the one-liner syntax ??
describe DockingStation do
  it "responds when asked to release_bike" do
    expect(subject).to respond_to :release_bike
  end
end

But why is the method a symbol?
And why is subject used for the test instead of being specfic about how you want to run it.
E.g. the storing names test, we gave an example name.
Hence why not have an example class

can you not do:
describe DockingStation do
  it { is_expected.to respond_to(release_bike) }
end

OR

describe DockingStation do
  it "responds when asked to release the bike" do
    expect(docking_station).to respond_to(release_bike)
  end
end

=end
