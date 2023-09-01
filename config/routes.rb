Rails.application.routes.draw do
  root "welcome#homepage"
  
  resources :books
  resources :stores
end
