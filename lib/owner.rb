class Owner

  attr_accessor
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
  end

  def self.all
    @@all << self
  end


end
