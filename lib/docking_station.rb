require_relative "./bike"

class DockingStation
  attr_reader :docked_bike
  def initialize
    @docked_bike = []
  end
  def release_bike
    if @docked_bike.empty?
      raise "Docking station is empty"
    else
      Bike.new
    end
  end

  def dock(bike)
    @docked_bike << bike
    @docked_bike.any?
  end
end
