module NYCMortality17
  class CLI
  
    def start
            puts "Summary of Vital Statistics 2017"
            puts "The City of New York"
            puts ""
            puts "Death rates for New York City 2017"
            puts "by neighborhood (Community District)"
            puts ""

            Scraper.read
            puts ""

            puts "Enter a number to see figures by neighborhood"
            puts "1. Manhattan"
      		puts "2. Bronx"
            puts "3. Brooklyn"
            puts "4. Queens"
            puts "5. Staten Island"

            reply = gets.strip
            puts ""

            case(reply)
                
                when "1"
                    puts "Fancy pants"
                    puts ""

                when "2"
                    puts "Mario lives here"
                    puts ""

                    #reply2 = gets.strip
                    #case(reply2)
     end
     end                   

  end      
end
