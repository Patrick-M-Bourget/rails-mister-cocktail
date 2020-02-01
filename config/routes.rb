Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
  end
  delete "cocktails/:id", to: "cocktails#destroy", as: :destroy
  create "cocktails/:id/doses", to: "doses#create", as: :destroy
end
