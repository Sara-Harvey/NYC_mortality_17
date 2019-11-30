class Neighborhood
attr_accessor :name, :rate, :borough

@@all = []

	def initialize(name, rate, borough)
	  @name = name
	  @rate = rate
	  @borough = borough
	  borough.neighborhoods << self
	  @@all << self
	end

	def self.all
		@@all 
	end

end