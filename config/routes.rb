Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resource :articles
end
