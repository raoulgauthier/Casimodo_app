Rails.application.routes.draw do




  authenticated :user do
    root 'home#index'
  end

  resources :workorders

  devise_for :users
  root to: 'landing_page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
