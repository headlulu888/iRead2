Rails.application.routes.draw do
  resources :items

  get 'new' => 'items#new'
end