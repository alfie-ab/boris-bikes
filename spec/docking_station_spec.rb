require './docking_station'

describe DockingStation do
  it 'should release bike when called' do
    expect(DockingStation.release_bike).to eq "test"
  end
end
