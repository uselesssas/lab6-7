Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'labs#index'
  resources :labs

  get '/labs/:id/mark', to: 'labs#mark', as: 'mark_lab'
  post '/labs/:id/mark', to: 'labs#grade'
end
