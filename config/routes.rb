Rails.application.routes.draw do
  devise_for :users
 
  root to: "dreamers#index"
  resources :dreamers, only: [:index,:new,:create,:show]

end
