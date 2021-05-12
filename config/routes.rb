Rails.application.routes.draw do
  devise_for :users
  root to: 'channels#index'

  resources :channels do
    resource :channel_user
  end

end
