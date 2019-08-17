require 'pry'
module NYCMortality17
  class CLI

    def intro
        Scraper.read
        Scraper.make_locations

        puts 
        puts "Summary of Vital Statistics 2017"
        puts "City of New York"
        puts 
        puts "Death rates for New York City 2017".blue.bold
        puts "by neighborhood (Community District)".blue.bold
        puts "Source: p. 12, https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf"
        puts

        start     
    end

    def start

        puts
        puts "Enter a number to see neighborhoods by borough".blue.bold
        puts "Or type exit"
        puts 

        show_boroughs
        
        puts
        puts "6. See all"
        puts "7. See options again"
        puts

        reply = gets.strip
        puts

        case(reply)
                
            when "1"
                Scraper.show_manhattan

            when "exit"
                puts "Thanks for visiting!".blue.bold
                puts

            else 
                start

            end
        end

        def show_boroughs
            Borough.all.each.with_index(1) do |value, index|
            puts "#{index}. #{value.name}".blue
          end
        end

        def show_borough_name(reply)
            borough = Borough.all[reply]
            puts borough.name.blue.bold
            puts "Deaths per 100,000 people"
            puts "Citywide average: 545.7"
            puts
        end


    end
end
