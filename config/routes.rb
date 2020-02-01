Rails.application.routes.draw do
#   resources :cocktails do
#     resources :doses
#   end
  # delete "cocktails/:id", to: "cocktails#destroy", as: :destroy
#   create "cocktails/:id/doses", to: "doses#create", as: :destroy
# end

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: %i(new create)
  end

    resources :doses, only: %i(destroy)
    delete "cocktails/:id", to: "cocktails#destroy", as: :destroy
end
