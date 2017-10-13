Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'articles/search' => 'articles#search'
  resources :articles do
    resources :comments
  end
end
