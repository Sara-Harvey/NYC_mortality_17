require 'pry'
class Borough
attr_accessor :name, :neighborhoods

@@all = []

  def initialize(name)
    @name = name
    @neighborhoods = []
    @@all << self
  end

  def self.make_boroughs
    manhattan = Borough.new("Manhattan")
    bronx = Borough.new("Bronx")
    brooklyn = Borough.new("Brooklyn")
    queens = Borough.new("Queens")
    staten_island = Borough.new("Staten Island")
  end

  def add_neighborhood(new_neighborhood)
    @neighborhoods << new_neighborhood
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|borough| borough.name == name} || Borough.new(name).save
  end

  def self.all
    @@all
  end

  def self.see_manhattan
    manhattan.neighborhoods
  end

end

