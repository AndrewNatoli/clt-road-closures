class PagesController < ApplicationController

    def index
        require 'open-uri'
        require 'json'
        response = JSON.parse(open("http://clt.charlotte.opendata.arcgis.com/datasets/32526cecacdc4802bbacbdd76f246896_0.geojson").read)
        
        # Remove past closures
        @results = response['features'].select do |elem|
            elem['properties']['ENDDATE'] && !Date.parse(elem['properties']['ENDDATE']).past?
        end
        
        # Sort remaining colsures
        @results.sort! { |x,y| x['properties']['ENDDATE'] <=> y['properties']['ENDDATE'] }
    
    end
end
