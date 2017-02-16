Rails.application.routes.draw do
  resources :collections, path: 'portafolio' do
    resources :photos
  end

  get '/paquetes', to: "pages#paquetes"
  get '/conoceme', to: "pages#conoceme"
  get '/contacto', to: "pages#contacto"

  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
