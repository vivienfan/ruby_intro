class MyCar
  attr_accessor :color, :speed
  attr_reader :year, :model

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
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

  def repaint(c)
    self.color = c
  end

  def to_s
    "model: #{self.model}, year: #{self.year}, color: #{self.color}"
  end

  def self.gas_mileage(g, m)
    puts "#{m / g} miles per gallon of gas"
  end
end

MyCar.gas_mileage(13, 351)

lumina = MyCar.new(1997, 'white', 'chevy lumina')
puts lumina
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

lumina.repaint('purple')
puts lumina