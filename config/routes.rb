Rails.application.routes.draw do
  root 'articles#index'
  get 'articles/search' => 'articles#search'
  resources :articles do
    resources :comments
  end
end
