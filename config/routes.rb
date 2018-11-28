Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :profile, to: 'users#profile'
  resources :pitches do
    get :video, to: 'pitches#video'
    get :random, to: 'pitches#random'
    resources :feedbacks
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
