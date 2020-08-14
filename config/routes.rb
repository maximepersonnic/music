Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/search', to: 'songs#search'
  get 'songs/named/:name', to: 'songs#search'
  resources :songs, only: [:edit, :update, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
