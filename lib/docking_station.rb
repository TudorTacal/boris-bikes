require_relative "./bike"

class DockingStation
  attr_reader :docked_bike
  def release_bike
    Bike.new
  end

  def dock(bike)
    @docked_bike = []
    @docked_bike << bike
    @docked_bike.any?
  end
end
