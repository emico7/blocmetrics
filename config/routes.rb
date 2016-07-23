Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show] do
    resources :registered_applications, except: [:edit, :update]
  end

  resources :registered_applications, only: [] do
    resources :events, only: [:show]
  end

  match '/events', to: 'events#preflight', via: [:options]
  resources :events, only: [:create]

  get 'about' => 'welcome#about'

  root 'welcome#index'

  namespace :api, defaults: { format: :json } do
    resources :events, only: [:create]
  end

end
