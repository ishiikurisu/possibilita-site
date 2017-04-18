Rails.application.routes.draw do
  resources :tags
  devise_for :admins
  resources :projects
  root 'main#index'
  match "*path", to: redirect("/"), via: :all #escondendo todas as rotas indefinidas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
