Blog::Application.routes.draw do |map|
  root :to => "articles#index"
  resources :articles do
    member do
      post :notify_friend
    end
    resources :comments
  end
  resources :users
  resource :session
  match '/login', :to => "sessions#new", :as => "login"
  match '/logout', :to => "sessions#destroy", :as => "logout"
end
