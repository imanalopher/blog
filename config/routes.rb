Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  get 'articles/search' => 'articles#search'
  resources :articles do
    resources :comments
  end
end
