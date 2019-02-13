class Owner

  @@all = []

  def initialize(species)
    @species = species
  end

  def self.all
    @@all << self
  end


end
