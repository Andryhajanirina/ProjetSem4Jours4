Rails.application.routes.draw do
  root 'static_pages#home'

  get '/contact', to: 'static_pages#contact', as: 'contact_page'

  get '/about', to: 'static_pages#about', as: 'about_page'

  get '/about/me', to: 'static_pages#about_me', as: 'cv_page'

  get '/about/group', to: 'static_pages#about_group', as: 'group_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
