Rails.application.routes.draw do
  resources :problemas
  get 'home/index'

  devise_for :users

  root 'home#index'

  get '/get_points' => 'problemas#index'
end
