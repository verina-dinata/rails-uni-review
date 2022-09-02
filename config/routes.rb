Rails.application.routes.draw do
  devise_for :users
  devise_scope :users do
    get "users/profile", to: "users#profile"
  end
  root to: "pages#home"
  resources :educations

  get "search", to: "pages#home_search", as: :home_search

  resources :universities, only: %i[index show]
  # get "universities",     to: "universities#index"
  # get "universities/:id", to: "universities#show"

  namespace :api do
    namespace :v1 do
      resources :universities, only: [:index, :show, :create]
    end
  end

end
