module NYCMortality17
  class CLI
  
    def start
            puts "Summary of Vital Statistics 2017"
            puts "The City of New York"
            puts ""
            puts "Death rates for New York City 2017"
            puts "Enter the letter (A, B, C or D) to see information for:"
            puts ""
            puts "A. Leading causes of death"
            puts "B. Leading causes of premature death"
            puts "C. Homicides by community district"
            puts "D. Drug-related deaths by community district"    

            reply = gets.strip
            puts ""

            case(reply)
            	when "A"
                    puts "Leading causes of death"
                    puts ""
                    puts "Select a number to see information organized by:"
                    puts "1. community district"
                    puts "2. sex"
                    puts "3. racial/ethnic group"
                    puts "4. neighborhod poverty"

                    reply2 = gets.strip
                    case(reply2)
                        when "1"
                            Scraper.read 
                        else 
                            "Chimichanga"
                    end



    			when "B"
    				puts "I'll build this soon."
    			else
    				puts "thanks for checking in."
   			end 				
    end

  end      
end