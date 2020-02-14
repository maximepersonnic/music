Rails.application.routes.draw do
  get "/search" => "songs#search"
  get "songs/named/:name" => "songs#search"
  resources :songs do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
