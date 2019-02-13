require 'pry'

class Owner

  attr_accessor :name, :pets, :fish, :dog, :cat
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] = [fish]
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] = [cat]
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] = [dog]
  end

  def walk_dogs
    self.dog.mood = "happy"
  end



end
