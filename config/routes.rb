Spree::Core::Engine.routes.draw do
  
  match "buscape", :to => 'products#buscape'
  
  namespace :admin do
    resource :buscapes
  end
  
end
