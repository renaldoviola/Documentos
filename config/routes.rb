Rails.application.routes.draw do

  devise_for :users
  #devise_for :users
  #get 'users/new'

  #devise_for :users, controllers: { :registrations =>'registration'}

  devise_scope :user do
    get '/users/establishments' => 'users/index'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :countries
  resources :states
  resources :cities
  resources :pais
  resources :establishments


#get "/findByName" => 'establishments#findByName'

  #get 'paginainicial/homepage'


  #root :to => 'establishments#index'
    root :to => 'paginainicial#homepage'

  resources :establishments do
    resources :menus do
      resources :items
    end
  end

end
