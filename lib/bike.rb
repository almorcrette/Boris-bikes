class Bike
  attr_reader :working
  def initialize
    @working = true
  end

  def working?(status)
    if status == true
      @working = true
    elsif status == false
      @working = false
    end
  end
end