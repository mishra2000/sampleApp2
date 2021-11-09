Rails.application.routes.draw do
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'employees#index'
  post 'admin/login'
  get 'admin/logout'
  get 'admin/login'
end
