Rails.application.routes.draw do

 root :to => "v1/main#index"
  
 
  devise_for :user, only: []
  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions   
    post "/register" => "sessions#new"
    get "/profile" => "profiles#show"
    post "/profile" => "profiles#edit"
    resource :index, only: [:index], controller: :main
  end
end