Rails.application.routes.draw do
  resources :password_managers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'

  #resources :static_pages, only: %i[sobre contato]
end
