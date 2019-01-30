Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namespace :admin do
    resources :preferences,only:[:index,:new]
  end

  resources :songs

end
