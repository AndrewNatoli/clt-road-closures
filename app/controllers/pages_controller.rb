class PagesController < ApplicationController

    def index
        # 1. Require json and open-uri
        
        # 2. Retrieve the closure feed from Charlotte's Open Data portal
        # Use open("url").read to fetch the feed and use JSON.parse() to convert it to an array.
        # http://clt.charlotte.opendata.arcgis.com/datasets/32526cecacdc4802bbacbdd76f246896_0.geojson
        
        # response = your_code_here
        
        # 3. Filter out closures that have expired. ENDDATE < NOW
        # Notice that the records are within a 'features' array in the JSON. 
        
        # @results = response['features'].select do |elem|
            # Keep records that have an ENDDATE and the ENDDATE has not passed yet
        # end
         
        # 4. Sort remaining colsures. Records with the closest ENDDATE should be first.
        # @results.sort! { |x,y| comparison_here }
    
    end
end
