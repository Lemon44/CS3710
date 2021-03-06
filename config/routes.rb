Rails.application.routes.draw do
  devise_for :users

  resources :makes do
    collection do
      get 'search'
    end
  end

  resources :users
  
  resources :cars do
    collection do
      get 'search'
    end
  end

  resources :parts do
    collection do
      get 'search'
    end
  end
  
  root to: "cars#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
