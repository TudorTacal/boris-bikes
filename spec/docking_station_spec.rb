require './lib/docking_station.rb'
require './lib/bike.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "shows if bike is working" do
    bike = subject.release_bike
    expect(bike.working?).to be
  end
end
