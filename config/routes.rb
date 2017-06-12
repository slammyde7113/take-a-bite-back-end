# frozen_string_literal: true
Rails.application.routes.draw do
  resources :menu_items, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  get 'profiles/show-profile-items/:id' => 'profiles#show_profile_items'
  get 'show-profiles/:id' => 'profiles#show_profiles'
  get 'profiles/show-profile-total/:price' => 'profiles#show_profile_total'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :profiles, except: [:new, :edit]
end
