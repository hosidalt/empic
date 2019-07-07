Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures, only:[:index, :create, :edit, :show, :update, :destroy]

end
