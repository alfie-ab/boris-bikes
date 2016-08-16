require './docking_station'

describe DockingStation do
  it 'should release bike when called' do
    expect(DockingStation.new.release_bike).to eq Bike.new
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
end
