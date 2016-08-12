Rails.application.routes.draw do

  get 'reviews/index'

  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/new'

  get 'reviews/update'

  get 'reviews/edit'

  get 'reviews/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses
    resources :reviews, only: [:new, :create]
  end

  root to: 'cocktails#index'
end
