require "pry"

class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
    self.count
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
  end

  def buy_cat(name)
    pets[:cats] << "#{Cat.new_cat(name)}"
  end
  
  def buy_dog(name)
  end

end