class Owner
  attr_reader :species
  attr_accessor :name, :pets
  # code goes here
  @@all = []

  def initialize(spec)
    @species = spec
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

end
