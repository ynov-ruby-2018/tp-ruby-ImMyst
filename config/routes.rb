Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   match '/sign-in' => "devise/sessions#new", :as => :login
  # end
  root to: 'comments#index'

  resources :comments, only: [:index, :create]
end
