Rails.application.routes.draw do
  root to: 'topics#index'
  resources :topics do
    resources :texts
  end
  
end
