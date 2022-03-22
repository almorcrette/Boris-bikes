require 'bike'

describe Bike do
  it "responds to the method working?" do
    expect(Bike.new).to respond_to(:working?)
  end
end