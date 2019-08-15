class Neighborhood
attr_accessor :name, :rate, :borough

@@all = []

  def initialize(name, rate, borough)   
    @name = name
    @rate = rate
    @borough = Borough.find_or_create_by_name(borough)
    
    @@all << self
  end

  def self.make_neighborhoods(data)
    data.each do |row| 
      manhattan_neighborhoods = Neighborhood.new(row.slice(1), row.slice(2), "Manhattan")
      bronx_neighborhoods = Neighborhood.new(row.slice(4), row.slice(5), "Bronx")
      brooklyn_neighborhoods = Neighborhood.new(row.slice(7), row.slice(8), "Brooklyn")
      queens_neighborhoods = Neighborhood.new(row.slice(10), row.slice(11), "Queens")
    end
  end

    def self.all
    @@all
  end
end