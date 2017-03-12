Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations"}
  resources :schools, path: 'escuelas' do
    resources :generations, path: 'generaciones' do
      resources :groups, path: 'grupos' do
        resources :students, path: 'alumnos'
      end
    end
  end



  #resources :students, path: 'alumnos'

  root 'schools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
