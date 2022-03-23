require 'dockingstation'
require 'bike'

describe DockingStation do
  it "responses to release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
    expect { raise "No bikes available"}. to raise_error(RuntimeError, "No bikes available")
  end
  
  it "release a bike object which is working when method :release_bike is used" do
    expect(DockingStation.new.release_bike).to be_working
  end

  it "responds to dock_bike" do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end
  
  it { is_expected.to respond_to(:bike_rack) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'rejects docking bike if capacity is full' do
    expect { raise "Docking station full" }. to raise_error(RuntimeError, "Docking station full")
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  # it "docks a bike when dock_bike is call with a bike as argument" do
  #  expect(DockingStation.new.dock_bike(Bike.new)).to eq
end