Rails.application.routes.draw do
  get 'dreamers/index'
  root to: "dreamers#index"
end
