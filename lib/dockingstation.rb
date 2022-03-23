class DockingStation
  attr_reader :bike_rack

  def initialize
    @bike_rack = []
  end

  def empty?
    if @bike_rack == nil
      true
    else
      false
    end
  end

  def full?
    if @bike_rack.length >= 20
      true
    else
      false
    end
  end

  def release_bike
    if self.empty?
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock(bike)
    if self.full?
      raise "Docking station full"
    else
      @bike_rack.push(bike)
    end
  end

  private :full?, :empty?
end
