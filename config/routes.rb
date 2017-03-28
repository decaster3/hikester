Rails.application.routes.draw do
  get 'app/index'
  devise_for :users
  root 'first_page#index'

  namespace :api do
    namespace :v1 do
       resources :events , only: [:create, :destroy, :index, :update]
    end
  end
end
