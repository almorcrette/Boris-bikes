require 'dockingstation'

describe DockingStation do
  it "responses to release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
    # expect(obj).to respond_to(:foo) # pass if obj.respond_to?(:foo)
  end
  # it "creates Dockingstation instance" do
  #   expect(Dockingstation.new.class).to eq Dockingstation
  # end
end