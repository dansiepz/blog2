Blog2::Application.routes.draw do
  resources :enquiries

  resources :comments

  get "blog" => "blog#index"
  resources :posts

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end