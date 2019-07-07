Rails.application.routes.draw do
  resources :comments
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users, :controller => 'users', :only => [:index, :edit, :destroy]
  resources :publications

  get 'welcome/index'

  root to: 'welcome#index'
  
  get 'tag/:id', to: "publications#by_tags", as: "by_tags"
  #backoffice
  scope :backoffice do
    get "/", to: "backoffice#index", as: :backoffice
    resources :ejs
    resources :universities
    resources :tags
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
