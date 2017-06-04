class MyCar
  attr_accessor :year, :color, :model, :speed

  def initialize(y, c, m)
    self.year = y
    self.color = c
    self.model = m
    self.speed = 0
  end

  def speed_up
    self.speed += 10
  end

  def brake
    if self.speed >= 10
      self.speed -= 10
    end
  end

  def shut_down
    self.speed = 0
  end

  def current_speed
    puts "You are now going #{self.speed} mph."
  end
end

lumina = MyCar.new(1997, 'white', 'chevy lumina')
lumina.speed_up
lumina.current_speed
lumina.speed_up
lumina.current_speed
lumina.brake
lumina.current_speed
lumina.brake
lumina.current_speed
lumina.speed_up
lumina.current_speed
lumina.shut_down
lumina.current_speed