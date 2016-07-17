Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show] do
    resources :registered_applications, except: [:edit, :update]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
