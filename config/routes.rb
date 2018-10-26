Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'profile#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'edit', to: 'profile#edit',
  #resources :avatars, only: [:edit, :update]
  get 'avatar/edit', to: 'avatars#edit', as: 'edit_avatar'
  put 'avatar', to: 'avatars#update', as: 'avatar'
  patch 'avatar', to: 'avatars#update'
end
