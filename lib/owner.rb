class Owner
  attr_reader :species
  attr_accessor :name
  # code goes here
  @@all = []

  def initialize(spec)
    @species = spec
    @@all << self
  end
  def say_species
    "I am a #{@species}"
  end

  def all
    @@all
  end

  def count
    @@all.count
  end

  def reset_all
    @@all = []
  end

end
