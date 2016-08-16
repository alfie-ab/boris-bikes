require './docking_station'

describe Bike do
  it 'when the bike is created it should be working' do
    expect(Bike.new).to eq @working = true
  end
end
