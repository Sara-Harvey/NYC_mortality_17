class Neighborhood
  attr_accessor :name, :rate
  
  @@all = []

  def initialize(name, rate)
    @name = name
    @rate = rate
    @@all << self  
  end

  def self.all
    @@all
  end

  def self.iterate_neighborhoods(neighborhood_array)
    neighborhood_array.each do |element|
    self.new(element)
  end
  end

end