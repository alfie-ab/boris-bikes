class Bike
  def working?

  end
end

class DockingStation
  attr_reader :docked_bikes
  attr_reader :capacity

  def initialize(capacity = 20)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike(num = 1)
    bikes_to_release = []
    num.times do

      if @docked_bikes.empty?
          raise "No bikes in docking station"
        break
      else
        bikes_to_release << @docked_bikes[0]
        @docked_bikes.delete_at(0)
      end
    end
    return bikes_to_release
  end

  def dock_bike(*bikes)
    bikes.each do |bike|
      if @docked_bikes.count >= @capacity
        raise "This docking station is full"
        break
      else
        @docked_bikes << bike
      end
    end
  end
end
