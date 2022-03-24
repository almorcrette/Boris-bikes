class DockingStation
  attr_reader :bike_rack, :DEFAULT_CAPACITY
  def initialize
    @bike_rack = []
    @DEFAULT_CAPACITY = 20
  end

  def empty?
    if @bike_rack == nil
      true
    else
      false
    end
  end

  def full?
    if @bike_rack.length >= @DEFAULT_CAPACITY
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
