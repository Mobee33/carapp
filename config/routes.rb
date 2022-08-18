Rails.application.routes.draw do
  root to: "pages#home"
  resources :cars do
    resources :reviews
  end
end
