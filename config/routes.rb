Rails.application.routes.draw do
  root to: 'home#index'
  resources :shopping_items, only: [
    :new, 
    :create, 
    :show, 
    :edit, 
    :update, 
    :destroy
  ]
end
