Rails.application.routes.draw do

  root to: 'homes#top'

  get 'homes/top'

  get 'homes/about'

  get 'homes/flow'

  get 'homes/photos'

  get 'homes/staffs'

  get 'homes/login'

  get 'inquiry' => 'inquiry#index' #入力画面



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
