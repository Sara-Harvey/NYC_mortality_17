module NYCMortality17
  
    module PDF

      class Reader
        attr_accessor :pdf_version, :info, :metadata, :page_count

        def self.read

        #io     = open('http://example.com/somefile.pdf')
        io     = open('https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf')
        reader = PDF::Reader.new(io)
        puts reader.info

        #https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf


        #reader = PDF::Reader.new("https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf")

        #puts reader.pdf_version
        #puts reader.info
        #puts reader.metadata
        #puts reader.page_count


        end
      end
        
    end 
end