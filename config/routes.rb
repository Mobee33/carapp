Rails.application.routes.draw do
  root to: "pages#home"
  get "cars", to: "cars#index"
  get "cars/new", to: "cars#new", as: :new_car
  post "cars", to: "cars#create"
  get "cars/:id", to: "cars#show", as: :car
  get "cars/:id/edit", to: "cars#edit", as: :edit_car
  patch "cars/:id", to: "cars#update"
  delete "cars/:id", to: "cars#destroy"
end
