Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
      resources :products do
        get 'add_on_erp_variants' => 'add_on_erp_variants#index'
        resources :variants do
          resources :add_on_erp_variants do
        end
      end
    end
  end
end
