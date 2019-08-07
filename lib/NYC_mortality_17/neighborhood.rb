class Neighborhood

    @@manhattan = []
    @@bronx = []
    @@brooklyn = []
    @@queens = []

  def self.iterate_neighborhoods(neighborhood_array)

    neighborhood_array.each do |row|
     @@manhattan << row.slice(1,2)
     @@bronx << row.slice(4,5)
     @@brooklyn << row.slice(7,8)
     @@queens << row.slice(10,11)

   end
  end

  def self.see_manhattan
    @@manhattan.each do |name_rate|
      puts name_rate[0].colorize(:blue)
      puts name_rate[1]
      puts ""
    end
  end

end