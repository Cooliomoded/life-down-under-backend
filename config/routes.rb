Rails.application.routes.draw do
  resources :favorites
  resources :organisms
  resources :users
  
  post "/search_by_species", to: "organisms#search_by_species", as: "search_by_species"
  post "/search_by_taxonID", to: "organisms#search_by_taxonID", as: "search_by_taxonID"
  
end
