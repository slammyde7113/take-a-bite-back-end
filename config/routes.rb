# frozen_string_literal: true
Rails.application.routes.draw do
  resources :profiles, except: [:new, :edit]
  resources :menu_items, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  get 'profiles/show-user/:id' => 'profiles#show_user'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
