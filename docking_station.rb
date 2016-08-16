class Bike
  def working?

  end
end

class DockingStation
  attr_reader :docked_bikes
  attr_reader :capacity

  def initialize(capacity = 99)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike
    if @docked_bikes.empty?
      raise "No bikes in docking station"
    else
      returned_bike = @docked_bikes[0]
      @docked_bikes.delete(@docked_bikes[0])
      returned_bike
    end
  end

  def dock_bike(bike)
    if @docked_bikes.count >= @capacity
      raise "This docking station is full"
    else
      @docked_bikes << bike
    end
  end
end
