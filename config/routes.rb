Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'posts#index'
  resources :posts do
    resources :comments
  end
end
