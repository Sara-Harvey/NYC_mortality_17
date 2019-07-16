module NYCMortality17
  
    module PDF

      class Reader
        attr_accessor :pdf_version, :info, :metadata, :page_count

        def self.read

            puts "hi!"

        io     = open('https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf')
        reader = PDF::Reader.new(io)
        puts reader.info

        end
      end
        
    end 
end