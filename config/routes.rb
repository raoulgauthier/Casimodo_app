Rails.application.routes.draw do


  resources :workorders do
    collection do
      get 'filter'
    end
  end


  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
