Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    'static_page#home'
  
  get     '/help',    to: 'static_page#help'
  get     '/about',   to: 'static_page#about'
  get     '/contact', to: 'static_page#contact'
  get     '/signup',  to: 'users#new'
  get     '/login',   to: 'session#new'
  post    '/login',   to: 'session#create'
  delete  '/logout',  to: 'session#destroy'

  resources :users
  resources :microposts,          only: [:create, :destroy]
end
