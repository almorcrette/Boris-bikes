class DockingStation
  attr_reader :bike_rack, :DEFAULT_CAPACITY
  def initialize
    @bike_rack = []
    @DEFAULT_CAPACITY = 20
  end

  def empty?
    if @bike_rack.length == 0
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
    elsif self.bike_rack[0].working == false
      raise "No working bikes available"
    else
      @bike_rack.shift
    end
  end

  def dock(bike)
    if self.full?
      raise "Docking station full"
    elsif
      @bike_rack.push(bike)
    end
  end

  private :full?, :empty?
end
