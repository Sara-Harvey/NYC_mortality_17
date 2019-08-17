require 'pry'
module NYCMortality17
  
    class Scraper

        @@textangle = []

        def self.read     
   
            io     = open('https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf')
            reader = PDF::Reader::Turtletext.new(io)

            @@textangle = reader.bounding_box do
              page 12
              below /MN01/i
              above /375.0/i
            
            end 
            @@textangle

          end

        def self.make_locations
          @manhattan = Borough.new("Manhattan")
          @bronx = Borough.new("Bronx")
          @brooklyn = Borough.new("Brooklyn")
          @queens = Borough.new("Queens")
          @staten_island = Borough.new("Staten Island")

          @@textangle.text.each do |row|
            Neighborhood.new(row.slice(1), row.slice(2), @manhattan)
            Neighborhood.new(row.slice(4), row.slice(5), @bronx)
            Neighborhood.new(row.slice(7), row.slice(8), @brooklyn)
            Neighborhood.new(row.slice(10), row.slice(11), @queens)
          end
        end

        def self.data 
            puts "Deaths per 100,000 people"
            puts "Citywide average: 545.7"
            puts
        end

        def self.see_manhattan
          puts @manhattan.name.blue.bold
          data
          list = @manhattan.neighborhoods.sort_by {|neighborhood| neighborhood.rate.to_i}

          list.each do |neighborhood|
          puts neighborhood.name.blue
          puts neighborhood.rate
          puts  
          end
        end  

        def self.see_the_bronx
          puts @bronx.name.blue.bold
          data
          list = @bronx.neighborhoods.sort_by {|neighborhood| neighborhood.rate.to_i}

          list.each do |neighborhood|
          puts neighborhood.name.blue
          puts neighborhood.rate
          puts  
          end        
        end

        def self.see_brooklyn
           puts @brooklyn.name.blue.bold
          data
          list = @brooklyn.neighborhoods.sort_by {|neighborhood| neighborhood.rate.to_i}

          list.each do |neighborhood|
          puts neighborhood.name.blue
          puts neighborhood.rate
          puts  
          end          
        end

        def self.see_queens
          puts @queens.name.blue.bold
          data
          list = @queens.neighborhoods.sort_by {|neighborhood| neighborhood.rate.to_i}

          list.each do |neighborhood|
          puts neighborhood.name.blue
          puts neighborhood.rate
          puts  
          end          
        end

        def self.see_staten_island
          puts "Under development"
        end

        def self.see_all
          puts "All neighborhoods".bold.blue
          puts
          list = Neighborhood.all.sort_by {|neighborhood| neighborhood.rate.to_i}
          list.each do |neighborhood|
          puts neighborhood.name.blue.bold
          puts neighborhood.borough.name.blue
          puts neighborhood.rate 
          puts
          end
        end

    end
end