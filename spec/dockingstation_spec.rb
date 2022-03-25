require 'dockingstation'
require 'bike'

describe DockingStation do
  it "will release a bike if there is one, and raise and error if there are no bikes available" do
    station = DockingStation.new
    expect { station.release_bike }. to raise_error(RuntimeError, "No bikes available")
    bike = Bike.new
    station.dock(bike)
    expect(station.release_bike).to be_a Bike
  end

  it "responds to dock_bike" do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end
  
  it { is_expected.to respond_to(:bike_rack) }

  it 'docks something' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike_rack).to include(bike)
  end

  it 'rejects docking bike if capacity is full' do
    station = DockingStation.new
    station.DEFAULT_CAPACITY.times { station.dock(Bike.new)}
    bike = Bike.new
    expect { station.dock(bike) }.to raise_error(RuntimeError, "Docking station full")
  end

  it 'reports bike as working or broken' do
    bike = Bike.new
    bike.working?(false)
    expect(bike).to have_attributes(:working => false)
  end

  it "Dockingstation doesn't release broken bikes" do
    station = DockingStation.new
    bike = Bike.new
    bike.working?(false)
    station.dock(bike)
    expect { station.release_bike }.to raise_error(RuntimeError, "No working bikes available")
  end
end