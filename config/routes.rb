Rails.application.routes.draw do
  resources :clients
  resources :profiles
  resources :users, path: :usuarios, path_names: { new: :cadastrar, edit: :editar } do
    member do
      get :log
    end
  end

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

  devise_for :users, path: :account, path_names: {
    sign_in: 'entrar',
    sign_out: 'sair',
    password: 'secret',
    confirmation: 'verificar',
    unlock: 'desbloquear',
    registration: 'minha-conta',
    sign_up: 'cadastre-se',
    edit: 'editar-perfil'
  }
  root to: 'pages#dashboard'

  get 'blank', to: "pages#blank"
  get 'chat', to: "pages#chat"
  get 'dashboard', to: "pages#chat"
  get 'home', to: "pages#index"
  
  #Routes for selects
  get 'dealers_by_group/:id', to: "select_options#dealers_by_group"

end
