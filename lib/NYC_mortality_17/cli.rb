module NYCMortality17
  class CLI
  
    def start
            puts "Summary of Vital Statistics 2017"
            puts "The City of New York"
            puts ""
            puts "Death rates for New York City 2017"
            puts "Enter the letter (A, B, C or D) to see information for:"
            puts ""
            puts "A. Death rates by neighborhood (Community District)"
            puts "B. Leading causes of death"
            puts "C. Leading causes of premature death"
            puts "D. Homicides by community district"
            puts "E. Drug-related deaths by community district"    

            reply = gets.strip
            puts ""

            case(reply)
            	
                when "A"
                    puts "Death rates by neighborhood (Community District)"
                    Scraper.read 

                when "B"
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
                            "Still working on it."                          
                        else 
                            "Still under construction."
                    end

    			when "C"
    				puts "I'll build this soon."
    			else
    				puts "thanks for checking in."
   			end 				
    end

  end      
end