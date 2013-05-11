Oreshio::Application.routes.draw do
  resources :stories
  resources :users
  root :to => 'statics#home'
end
