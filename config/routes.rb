Rails.application.routes.draw do
  devise_for :users
  devise_scope :users do
    get "users/profile", to: "users#profile"
  end
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :educations
  # Defines the root path route ("/")
  # root "articles#index"
  # get "education", to: "educations#index"
  
  get "universities",     to: "universities#index"
  get "universities/:id", to: "universities#show"

end
