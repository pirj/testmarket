Testmarket::Application.routes.draw do

  Spree::Core::Engine.routes.prepend do
    match '/brands' => 'brands#index'
    match '/admin/pricelist' => 'admin/pricelist#show', :as => 'show', :via => :get
    match '/admin/pricelist/load' => 'admin/pricelist#load', :as => 'load', :via => :post
    match '/admin/picture' => 'admin/pricelist#picture'
    match '/admin', :to => 'admin/orders#index', :as => :admin
  end

  mount Spree::Core::Engine, :at => '/'
  
end
