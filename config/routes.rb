Rails.application.routes.draw do
    get '/home'  => 'home#index'
    get '/home/usuarios' => 'home#usuarios'
    get '/home/filtros' => 'home#filtros'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
