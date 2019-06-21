Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :articles
      resources :users
    end
  end

  post 'api/v1/auth/login', to: 'api/v1/authentication#login'
  
  get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
