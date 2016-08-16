class Bike
  def working?

  end
end

class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    if @docked_bikes.empty?
      "Sorry, there are no bikes left."
    else
      returned_bike = @docked_bikes[0]
      @docked_bikes.delete(@docked_bikes[0])
      returned_bike
    end
  end

  def dock_bike(bike)
    @docked_bikes << bike
  end
end
