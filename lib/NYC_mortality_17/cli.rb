module NYCMortality17
  class CLI



    def intro

        Borough.make_boroughs
        data = Scraper.read

        puts ""
        puts "Summary of Vital Statistics 2017"
        puts "City of New York"
        puts ""
        puts "Death rates for New York City 2017".blue.bold
        puts "by neighborhood (Community District)".blue.bold
        puts ""
        puts "Visit the chart on p. 12"
        puts "https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf"
        puts ""
        puts "Per 100,000 people"
        puts "Citywide average: 545.7"
        puts ""

        start     
    end

    def start

        puts "Enter a number to see neighborhoods by borough".blue.bold
        puts "Or type exit"
        puts ""
        
        display_boroughs #Borough.all
        
        puts 
        puts "6. See all"
        puts "7. See options again"
        puts ""

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
                puts ""

            else 
                start
        end
    end
 
    def display_boroughs
      Borough.all.each.with_index(1) do |value, index|
      puts "#{index}. #{value.name}".blue
    end
    end

    end
end