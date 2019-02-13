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
    self.pets[:dogs].map { |dog| dog.mood = "happy"}
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
    pet_fish = []
    pet_dog = []
    pet_cat = []
    self.pets[:fishes].map do |fish|
      pet_fish << fish
    end
    self.pets[:cats].map do |cat|
      pet_cat << cat
    end
    self.pets[:dogs].map do |dog|
      pet_dog << dog
    end

    I 
    binding.pry
  end


end
