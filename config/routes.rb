Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/store'
  get 'welcome/garage'
  get 'welcome/service'

  root 'welcome#index'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
