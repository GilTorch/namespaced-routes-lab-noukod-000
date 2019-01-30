Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namepace :admin do 
    resources :preferences,only:[:index,:new]
  end
  
  resources :songs

end
