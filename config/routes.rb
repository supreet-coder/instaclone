Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }


  if Rails.env.development?
    scope format: true, constraints: { format: /jpg|png|gif|PNG/ } do
      get '/*anything', to: proc { [404, {}, ['']] }, constraints: lambda { |request| !request.path_parameters[:anything].start_with?('rails/') }
    end
  end

  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'posts#index'
  resources :posts do
    resources :comments
  end
end
