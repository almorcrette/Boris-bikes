require 'dockingstation'
require 'bike'

describe DockingStation do
  it "responses to release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  
  it "when releasing bike is attempted, raises an error if dock is empty, otherwise releases a working bike object " do
    if subject.bike_rack.length == 0
      expect { subject.release_bike }. to raise_error(RuntimeError, "No bikes available")
    else
      expect(DockingStation.new.release_bike).to be_working
    end
  end

  it "responds to dock_bike" do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end

  it 'when bike docking is attempted, raises an error if dock is full, otherwise docks a bike' do
    if subject.bike_rack.length >= subject.DEFAULT_CAPACITY
      expect { subject.dock(Bike.new) }. to raise_error(RuntimeError, "Docking station full")
    else
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike_rack).to include(bike)
    end
  end

  it { is_expected.to respond_to(:bike_rack) }

end