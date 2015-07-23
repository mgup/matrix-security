MatrixSecurity::Engine.routes.draw do
  devise_for :users, class_name: 'MatrixSecurity::User', module: :devise, path: 'auth'
  resources :users
end

Rails.application.routes.draw do
  mount MatrixSecurity::Engine => '/security'
end
