class Borough
attr_accessor :name, :neighborhoods

@@all = []

  def initialize(name)
    @name = name
    @neighborhoods = []
    @@all << self
  end

  def self.make_locations
    @@manhattan = Borough.new("Manhattan")
    @@bronx = Borough.new("Bronx")
    @@brooklyn = Borough.new("Brooklyn")
    @@queens = Borough.new("Queens")
    @@staten_island = Borough.new("Staten Island")
  end

  def add_neighborhood(neighborhood)
    @neighborhoods << neighborhood
  end

  def self.all
    @@all
  end
end

