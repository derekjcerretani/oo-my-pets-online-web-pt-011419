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
    "I am a #{species}."
  end

  def buy_fish(name)
    #fish = Fish.new(name)
    #self.pets[:fishes] = [fish]
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    #cat = Cat.new(name)
    #self.pets[:cats] = [cat]
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    #dog = Dog.new(name)
    #self.pets[:dogs] = [dog]
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].map { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map { |fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |animals, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    #binding.pry
  end


end
