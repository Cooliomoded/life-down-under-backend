Rails.application.routes.draw do
  resources :favorites
  resources :organisms
  resources :users
  
  post "search_by_species", to: "organisms#search_by_species", as: "search_by_species"
  
end
