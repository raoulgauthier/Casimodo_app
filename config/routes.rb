Rails.application.routes.draw do



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

devise_for :users
  root to: 'landing_page#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# root :to => "pages#home", :constraints => lambda { |request|!request.env['warden'].user}
# root :to => 'customer/dashboard#index', :constraints => lambda { |request| request.env['warden'].user.type == 'customer' }
# root :to => 'admin/dashboard#index', :constraints => lambda { |request| request.env['warden'].user.type == 'admin' }
