GitTutalSite::Application.routes.draw do
  root :to => "users#new"
  match "JIZZin" => "sessions#new", :as => :signin
  match "JIZZout" => "sessions#destroy", :as => :signout

  resources :welcome, :only => [:index]
  resources :users, :only => [:create]
  resources :sessions, :only => [:create, :destroy]

  resources :features #, :only => [:index, :show]
  
  resources :admin, :only => [:index]
  namespace :admin do
    resources :features
    resources :users, :only => [:index, :update]
  end
end
