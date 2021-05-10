Rails.application.routes.draw do
  resources :groups, path: 'grupos', path_names: { new: :cadastrar, edit: :editar } do
    member do
      get :log
    end
  end
  
  resources :dealers, path: 'lojas', path_names: { new: :cadastrar, edit: :editar } do
    member do
      get :log
    end
  end

  devise_for :users
  root to: 'pages#dashboard'

  get 'blank', to: "pages#blank"
  get 'chat', to: "pages#chat"
  get 'dashboard', to: "pages#chat"
  get 'home', to: "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
