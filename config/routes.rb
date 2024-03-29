Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/dashboard' => 'welcome#dashboard'

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  devise_scope :user do
    get  '/api/current_user'  => 'users/sessions#show_current_user'
    post '/api/check/is_user' => 'users/users#is_user', as: 'is_user'
  end

  namespace :api do
    resources :shares
  end

end
