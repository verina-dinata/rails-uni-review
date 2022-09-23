Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :users do
    get "users/profile", to: "users#profile"
  end
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :educations
  resources :favorites, only: %i[index]

  # resources :universities do

  # end
  # Defines the root path route ("/")
  # root "articles#index"
  # get "education", to: "educations#index"

  get "search", to: "pages#home_search", as: :home_search

  resources :universities, only: %i[index show] do
    resources :favorites, only: %i[create destroy]
    resources :reviews, only: %i[index create] do
      resources :votes, only: %i[create]
      delete '/votes', to: 'votes#destroy'
    end
  end

  resources :reviews, only: :destroy

  resources :chatrooms, only: %i[show index create] do
    resources :messages, only: :create
  end
end
