Rails.application.routes.draw do

  resources :users
  resources :posts do
    resources :comments
  end

  root "posts#index"

  get "/login" => "sessions#login"
  post "/login_attempt" => "sessions#login_attempt"
  get "/logout" => "sessions#logout"
end