class Neighborhood
attr_accessor :name, :rate, :borough

@@all = []

  def initialize(name, rate)   
    @name = name
    @rate = rate
    @@all << self
    borough.add_neighborhood(self)
  end

  def self.make_neighborhoods(data)
    data.each do |row| 
      manhattan_neighborhood = Neighborhood.new(row.slice(1), row.slice(2))
      bronx_neighborhood = Neighborhood.new(row.slice(4), row.slice(5))
      brooklyn_neighborhood = Neighborhood.new(row.slice(7), row.slice(8))
      queens_neighborhood = Neighborhood.new(row.slice(10), row.slice(11))
    end
  end
  binding.pry

    def self.all
    @@all
  end
end