require "bike"

describe Bike do

it { is_expected.to respond_to :working? }

describe "#working?" do
  it "is to working?" do
    expect(subject).to be_working
  end

 it "can be reported broken" do
   subject.report_broken
   expect(subject).to be_broken
 end
end
end
