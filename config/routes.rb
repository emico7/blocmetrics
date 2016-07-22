Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show] do
    resources :registered_applications, except: [:edit, :update]
  end

  resources :registered_applications, only: [] do
    resources :events, only: [:show]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
