class Neighborhood

    @@manhattan = []
    @@bronx = []
    @@brooklyn = []
    @@queens = []
    @@all = []

  def self.make_boroughs(data)
    data.each do |row|
     @@manhattan << row.slice(1,2)
     @@bronx << row.slice(4,5)
     @@brooklyn << row.slice(7,8)
     @@queens << row.slice(10,11)
   end
  end

  def self.see_manhattan
    @@manhattan
  end

  def self.see_bronx
    @@bronx
  end

  def self.see_brooklyn
    @@brooklyn
  end

  def self.see_queens
    @@queens
  end

  def self.see_neighborhoods(borough)
    sorted_list = borough.sort_by {|name_rate| name_rate[1]}
    sorted_list.each do |pair|
      puts pair[0].blue.bold
      puts pair[1]
      puts ""  
    end
  end  

  def self.all_neighborhoods
    
    @@all << Neighborhood.see_manhattan
    @@all << Neighborhood.see_bronx
    @@all << Neighborhood.see_brooklyn
    @@all << Neighborhood.see_queens

    puts @@all#.sort_by {|i| i.odd?}

    #@@all.each_slice(2) do |pair|
     #puts pair[1]
        #puts pair[0]#.colorize(:red).bold
        #puts pair[1]
        #puts ""
      
    #Item.all.sort_by {|object| object.calories}


      #end
    end

  end





