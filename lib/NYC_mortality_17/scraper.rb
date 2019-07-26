module NYCMortality17
  
    class Scraper
        @@content = []

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
