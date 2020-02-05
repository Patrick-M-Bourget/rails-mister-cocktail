Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: %i(new create)
  end
  resources :doses, only: %i(destroy)
end
