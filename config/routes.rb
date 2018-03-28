Rails.application.routes.draw do

  devise_for :users do
  root to: 'landing_page#index'
  end

  authenticated :user do
    root 'home#index'
  end

  resources :workorders do
    collection do
      get 'filter'
    end
  end

  resources :interventions, only: [:show, :index] do
    member do
      post 'start'
      post 'stop'
      post 'report'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
