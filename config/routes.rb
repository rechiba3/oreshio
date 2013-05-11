Oreshio::Application.routes.draw do
  get '/auth/:provider/callback', to: 'users#auth_callback'

  resources :stories
  resources :users do
    collection do
      get :login
      get :logout
    end
  end

  root :to => 'statics#home'
end
