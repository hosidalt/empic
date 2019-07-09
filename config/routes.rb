Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures
  resources :selects, only:[:index]

end
