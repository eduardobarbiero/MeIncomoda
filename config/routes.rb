Rails.application.routes.draw do
  resources :problemas
  get 'home/index'

  devise_for :users

  unauthenticated :user do
    devise_scope :user do
      get "/" => "users/sessions#new"
      get '/signout' => 'users/sessions#destroy', as: :signout
    end
  end

  root 'home#index'

  get '/get_points' => 'problemas#index'
end
