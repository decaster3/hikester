Rails.application.routes.draw do
  devise_for :users
  root 'first_page#index'
end
