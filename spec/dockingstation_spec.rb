require "dockingstation"

describe "docking station" do
  it "creates Dockingstation instance" do
    expect(Dockingstation.new.class).to eq Dockingstation
  end
end