require "bike"

describe Bike do
  it "#working?" do
    expect(subject).to respond_to :working?
    # or using predicate matcher:
    # expect(subject)to be_working
  end

end
