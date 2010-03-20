Blog::Application.routes.draw do |map|
  root :to => "articles#index"
  resources :articles do
    resources :comments
  end
  resources :users
  resource :session
  match '/login', :to => "sessions#new"
  match '/logout', :to => "sessions#destroy"
end
