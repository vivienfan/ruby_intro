class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0
  attr_accessor :name, :height, :weight, :age

  def initialize(n, h, w, a)
    @name = n
    @height = h
    @weight = w
    @age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w, a)
    self.name = n
    self.height = h
    self.weight = w
    self.age = a * DOG_YEARS
  end

  def to_s
    "#{self.name} is #{self.age} in dog years, weighs #{self.weight} and is #{self.height} tall."
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs', 4)
puts sparky

sparky.change_info('Spartacus', '24 inches', '45 lbs', 5)
puts sparky

puts GoodDog.total_number_of_dogs