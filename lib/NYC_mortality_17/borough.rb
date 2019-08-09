class Borough
attr_accessor :name, :neighborhoods

@@all = []

  def initialize(name)
    @name = name
    @neighborhoods = []
    @@all << self#.name
  end

  def self.make_boroughs
    boroughs = ["Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"]
    boroughs.each do |borough|
      name = borough
      Borough.new(name)
    end
  end

  def self.all
    @@all
  end
end

