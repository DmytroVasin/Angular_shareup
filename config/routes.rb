Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/dashboard' => 'welcome#dashboard'

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  namespace :api do
    resources :shares
  end

end
