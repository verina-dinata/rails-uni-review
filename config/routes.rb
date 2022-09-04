Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :users do
    get "users/profile", to: "users#profile"
  end
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :educations
  resource :likes, only: %i[create destory]
  # Defines the root path route ("/")
  # root "articles#index"
  # get "education", to: "educations#index"

  get "search", to: "pages#home_search", as: :home_search

  resources :universities, only: %i[index show] do
    resources :reviews, only: %i[create]
  end

  resources :reviews, only: :destroy
end
