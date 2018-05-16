require "bike"

describe Bike do
  it "working?" do
    expect(subject).to respond_to :working?
  end
end
