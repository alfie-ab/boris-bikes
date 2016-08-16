require './docking_station'

describe DockingStation do
  bike1 = Bike.new
  ds1 = DockingStation.new

  ds1.dock_bike(bike1)

  it 'should release bike when called' do
    expect(ds1.release_bike).to eq @docked_bikes = []
  end

  it 'should dock a bike when i envoke, on a station,
      the dock_bike method to dock a specifck bike' do
    bike = Bike.new
    docking_station = DockingStation.new

    expect(docking_station.dock_bike(bike)).to eq [bike]
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}

  it 'should raise an error when you try to get a bike from an empty station' do
    expect {DockingStation.new.release_bike}.to raise_error "No bikes in docking station"
  end

  it 'should raise an error when you try to dock a bike at a station with no capacity left' do
    expect {DockingStation.new(0).dock_bike(Bike.new)}.to raise_error "This docking station is full"
  end
end
