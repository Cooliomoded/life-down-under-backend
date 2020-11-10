class OrganismsController < ApplicationController

    def show
    end

    def search_by_species
        url ="http://apps.des.qld.gov.au/species/?op=speciessearch&kingdom=#{params[:kingdom]}&species=#{params[:animal]}"
        # encoded_url = URI.encode(url)
        resp = RestClient.get(url)
        final = JSON.parse(resp)
        render :json => final
    end

    def search_by_taxonID
        url ="https://apps.des.qld.gov.au/species/?op=getspeciesbyid&taxonid=#{params[:taxonID]}"
        # encoded_url = URI.encode(url)
        resp = RestClient.get(url)
        final = JSON.parse(resp)
        render :json => final
    end


end
