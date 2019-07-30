module NYCMortality17
  
    class Scraper

        def self.read     
   
            io     = open('https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf')
            reader = PDF::Reader::Turtletext.new(io)

            textangle = reader.bounding_box do
              page 12
              below /MN01/i
            
            end
            puts textangle.text
            end
    end
end

        #def self.neighborhoods

         #   end

            #puts @@all 
            #n = 2
            #unless @@all.empty?
            #puts b = (n - 1).step(@all.size - 1, n).map { |i| @@all[i] }
        #end

        #def self.village
         #   read
          #  row_1 = textangle.text[0]
           # puts row_1[1..2]

