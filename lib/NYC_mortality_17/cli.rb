require 'pry'
module NYCMortality17
  class CLI

    def intro

        data = Scraper.read
        Neighborhood.make_boroughs(data)

        puts "Summary of Vital Statistics 2017".blue
        puts "The City of New York".blue
        puts ""
        puts "Death rates for New York City 2017".blue.bold
        puts "by neighborhood (Community District)".blue.bold
        puts ""   

        start     
    end

    def start

        puts "Enter a number to see neighborhoods by borough".blue
        puts "or type exit"
        puts ""
        puts "1. Manhattan"
        puts "2. Bronx"
        puts "3. Brooklyn"
        puts "4. Queens"
        puts "5. Staten Island"
        puts "6. See all"
        puts "7. See options again"

        reply = gets.strip
        puts ""

        case(reply)
                
            when "1"
                borough = Neighborhood.see_manhattan
                Neighborhood.see_neighborhoods(borough)
                start

            when "2"
                borough = Neighborhood.see_bronx
                Neighborhood.see_neighborhoods(borough)
                start

            when "3"
                borough = Neighborhood.see_brooklyn
                Neighborhood.see_neighborhoods(borough)
                start

            when "4"
                borough = Neighborhood.see_queens
                Neighborhood.see_neighborhoods(borough)
                start

            when "5"
                borough = Neighborhood.see_staten_island
                Neighborhood.see_neighborhoods(borough)
                start

            when "6"  
                Neighborhood.all_neighborhoods
                start

            when "7"
                start

            when "exit"
                puts "Thanks for visiting!".blue.bold

            else 
                start
        end

    end
    end    
end
