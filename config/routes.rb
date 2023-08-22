Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  devise_for :users
  #get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
