Rails.application.routes.draw do
  get '/', to: 'static_pages#home', as: 'home'

  get 'user/new', to: 'users_controller#new', as: 'new_user'

  post 'user/create', to: 'users_controller#create', as: 'create_user'

  get '/user/:id_user', to: 'users_controller#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
