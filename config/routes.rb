Rails.application.routes.draw do
  root  'tweets#index'
  devise_for :users
  resources :tweets do
    resources :comments,only: [:create]
  get "tweets"      => 'tweets#index'
  get 'tweets/new' =>  'tweets#new'
  post 'tweets'    =>  'tweets#create'
  delete 'tweets/:id' => 'tweets#destroy'
  patch 'tweets/:id' => 'tweets#update'
  get 'tweets/:id/edit' => 'tweets#edit'
  get  'users/:id' =>  'users#show'
  get 'tweets/:id' => 'tweets#show'
  end
  resources :users,only: [:show]
end 