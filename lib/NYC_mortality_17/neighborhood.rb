class Neighborhood
attr_accessor :name, :rate, :borough

def initialize(name, rate, borough)
  @name = name
  @rate = rate
  @borough = borough
  borough.neighborhoods << self
end
end