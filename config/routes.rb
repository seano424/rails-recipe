Rails.application.routes.draw do
  root to: 'pages#home'
  resources :recipes, only: %i[index show new create] do 
    resources :dashes, only: %i[new create]
  end
  resources :dashes, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
