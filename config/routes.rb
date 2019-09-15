Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
  resources :albums
    resources :reviews, only: [ :new, :create ] do
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]
  resources :songs
end
