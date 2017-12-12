Rails.application.routes.draw do
 
  resources :news_stays
  get 'password_resets/new'

  get 'password_resets/edit'

  root                 'static_pages#home'
  get     'news'    => 'static_pages#news'
  get     'map'    => 'static_pages#map'
  get     'help'    => 'static_pages#help'
  get     'about'   => 'static_pages#about'
  get     'contact' => 'static_pages#contact'
  post     'contact' => 'static_pages#contact_message'
  get     'signup'  => 'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'

  # Sets up users/1/following and user/1/followers
  resources :users do
    member do
      get :following, :followers
    end
    collection do
      get :add_user
      get :show_post
    end  
  end
  resources :tweets, only: [:index]
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy, :edit, :update]
  resources :relationships,       only: [:create, :destroy]
  resources :charges
end
