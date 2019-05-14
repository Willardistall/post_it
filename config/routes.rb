Rails.application.routes.draw do
  root 'static_postits#home'

  get '/about', to: 'static_postits#about'
  resources :postits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
