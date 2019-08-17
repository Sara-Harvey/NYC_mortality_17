class Borough
attr_accessor :name, :neighborhoods

@@all = []

  def initialize(name)
    @name = name
    @neighborhoods = []
    @@all << self
  end

def add_neighborhood(neighborhood)
    @neighborhoods << neighborhood
  end

  def self.all
    @@all
  end
end

