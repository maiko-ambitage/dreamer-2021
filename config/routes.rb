Rails.application.routes.draw do
  devise_for :users
  get 'dreamers/index'
  root to: "dreamers#index"
end
