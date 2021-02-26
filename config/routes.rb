Rails.application.routes.draw do
  root to: 'topics#index'
  resources :topics do
    resources :texts
    collection do
      get 'search'
    end
  end
  
end
