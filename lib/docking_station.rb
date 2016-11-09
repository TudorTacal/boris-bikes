require_relative "./bike"

class DockingStation
  attr_reader :docked_bike
  def initialize
    @docked_bike = []
  end
  def release_bike
    raise "Docking station is empty" if @docked_bike.empty?
      Bike.new
  end

  def dock(bike)
    raise "Docking station is full" if @docked_bike.count == 3
      @docked_bike << bike
      @docked_bike.any?
  end
end
