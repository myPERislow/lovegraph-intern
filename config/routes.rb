Rails.application.routes.draw do

  root to: 'homes#top'

  get 'homes/top'

  get 'homes/about'

  get 'homes/flow'

  get 'homes/photos'

  get 'homes/staffs'

  get 'homes/login'

  resources :inquiry do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :order
  end
end
