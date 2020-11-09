class OrganismsController < ApplicationController

    def show family

    end

    def show class
    end

    def search_by_species
        url =`https://apps.des.qld.gov.au/species/?op=speciessearch&kingdom=#{animal}&species=#{koala}`
        resp = RestClient.get(url)
        final = JSON.parse(resp)
        puts final
    end



end
