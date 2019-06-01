Rails.application.routes.draw do
  resources :comments
  resources :ejs
  resources :universities
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users, :controller => 'users', :only => [:index, :edit, :destroy]
  resources :publications

  get 'welcome/index'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
