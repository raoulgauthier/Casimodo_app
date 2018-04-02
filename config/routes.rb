Rails.application.routes.draw do

  get 'users/create'

  get 'users/new'

  get 'users/index'

  get 'users/edit'

  get 'users/destroy'

  get 'users/update'

  get 'dashboard/showE'

  get 'faqs/show'

  get 'prices/index'

  get 'prices/show'


  authenticated :user do
    root 'home#index'
  end

  resources :user do
    get 'user_status'
  end

  resources :workorders do
    collection do
      get 'filter'
    end
  end

  resources :interventions, only: [:show, :index, :signature] do
    member do
      post 'start'
      post 'stop'
      post 'report'
      post 'new_photo'
      get 'signature'
      post 'signature_process'
    end
  end

  resources :demos, only: [:create]


devise_for :users, :controllers => { :invitations => 'devise/invitations' }
  root to: 'demos#new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




# root :to => "pages#home", :constraints => lambda { |request|!request.env['warden'].user}
# root :to => 'customer/dashboard#index', :constraints => lambda { |request| request.env['warden'].user.type == 'customer' }
# root :to => 'admin/dashboard#index', :constraints => lambda { |request| request.env['warden'].user.type == 'admin' }
