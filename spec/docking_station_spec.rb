require './lib/docking_station.rb'
require './lib/bike.rb'

describe DockingStation do

  describe 'should respond to' do
    subject {docking_station = DockingStation.new}
    it {is_expected.to respond_to :release_bike}
  end

  describe "gets bike and checks if it's working" do
    subject {docking_station = DockingStation.new
    bike = docking_station.release_bike
    bike.working?}
    it {is_expected.to be true}
  end
end
