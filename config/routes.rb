Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:show, :new, :create]
  end
  resources :doses, only: [:destroy]
end
#   resources :doses, only: [:new, :create, :destroy]
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
