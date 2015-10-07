Rails.application.routes.draw do

  #get 'users/new'

  #devise_for :users, controllers: { :registrations =>'registration'}

  resources :cities
  resources :states
  resources :countries
  resources :cidades
  resources :cities
  resources :cities
  resources :states
  resources :pais
  resources :establishments

  get 'paginainicial/homepage'


  #root :to => 'establishments#index'
    root :to => 'paginainicial#homepage'

  resources :establishments do
    resources :menus do
      resources :items
    end
  end

end
