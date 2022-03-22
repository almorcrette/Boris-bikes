require 'dockingstation'
require 'bike'

describe DockingStation do
  it "responses to release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  
  it "release a bike object which is working when method :release_bike is used" do
    p DockingStation.new.release_bike
    expect(DockingStation.new.release_bike).to be_working?
  end
    
    
  # expect(actual).to be_xxx         # passes if actual.xxx?
# expect(actual).to have_xxx(:arg) # passes if actual.has_xxx?(:arg)
  
  
end