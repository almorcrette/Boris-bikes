class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      raise "No bikes available"
    else 
      Bike.new
    end
  end

  def dock(bike)
    if @bike != nil
      raise "Docking station full"
    else
      @bike = bike
    end
  end

end
