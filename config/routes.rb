Rails.application.routes.draw do

  get 'forums/_form'

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/destroy'

  get 'topics/index'

  get 'topics/show'

  get 'topics/new'

  get 'topics/edit'

  get 'topics/destroy'

  get 'forums/index'

  get 'forums/show'

  get 'forums/new'

  get 'forums/edit'

  get 'forums/destroy'

  get 'topics/_form'

  get 'posts/_form'

  get '/forums', to: 'forums#index'

  resources :forums do
    resources :topics, :controller => 'topics' do
      resources :posts, :controller => 'posts'
    end
  end

  resources :users do
    resources :coins, :controller=>'coins'
  end

  get 'sessions/new'

  #root 'welcome#index'
  root 'pages#home'

  #static pages
  get     '/about',     to: 'pages#about'
  get     '/features',  to: 'pages#features'
  get     '/faq',       to: 'pages#faq'
  get     '/contact',   to: 'pages#contact'
  get     '/news',      to: 'pages#news'

  #users
  get     '/register',  to: 'users#new'
  resources :users

  #login session
  get     '/login',     to: 'sessions#new'
  post    '/login',     to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy' 


  get     '/profile',   to: 'coins#index'


  match ':controller(/:action(/:id(.:format)))', :via => :all
end
