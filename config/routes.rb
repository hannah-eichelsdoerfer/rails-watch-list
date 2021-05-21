Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # index, show, new, create
  # get root to: 'lists#index'
  # get '/new', to: 'lists#new' # new needs to be before show
  # post '/', to: 'lists#create'
  # get '/:id', to: 'lists#show', as: :list
  # resources :lists
  
  root to: 'lists#index'
  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  # resources :reviews, only: :destroy
  resources :bookmarks, only: [:destroy]
  # resources :bookmarks, only: [:new, :create, :destroy]

  # root to: 'lists#index'
  # resources :lists, except: [:edit, :update] do
  #   resources :bookmarks, only: [:new, :create]
  #   # resources :reviews, only: :create
  # end
  # resources :bookmarks, only: :destroy
  # # resources :reviews, only: :destroy

end
