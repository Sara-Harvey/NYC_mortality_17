require 'pry'
class Neighborhood
  attr_accessor :name, :rate
  
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    puts @@all
  end

  def self.iterate_neighborhoods(neighborhood_array)
    neighborhood_array.each do |element|
      self.new
    end
  end

end