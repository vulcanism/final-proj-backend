Rails.application.routes.draw do
  
  resources :cryptids do
    resources :sightings
  end  
end
