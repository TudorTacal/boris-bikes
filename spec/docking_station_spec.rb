require './lib/docking_station.rb'
require './lib/bike.rb'

describe DockingStation do

  describe 'should respond to' do
    subject {docking_station = DockingStation.new}
    it {is_expected.to respond_to :release_bike}
  end

  describe "gets bike and checks if it's working" do
    subject {docking_station = DockingStation.new
    first_bike = Bike.new
    docking_station.dock(first_bike)
    bike = docking_station.release_bike
    bike.working?}
    it {is_expected.to be true}
  end

  describe 'docks a bike and checks if there are any bikes docked' do
    subject {docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)}
    it {is_expected.to be true}
  end

  describe "prints an error message if the docking station has no bikes" do
    it "should raise an exception" do
      docking_station = DockingStation.new
      expect {docking_station.release_bike}.to raise_error("Docking station is empty")
    end
  end

  describe "print an error message if attempting to dock a bike into a full docking station" do
    it "should raise an exception" do
      docking_station = DockingStation.new
      20.times {docking_station.dock Bike.new}
      bike = Bike.new
      expect {docking_station.dock(bike)}.to raise_error("Docking station is full")
    end
  end
end
