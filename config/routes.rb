Rails.application.routes.draw do


  resources :interventions, only: [:show, :index] do
    member do
      post 'start'
      post 'stop'
      post 'report'
    end
  end

  resources :workorders






  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
