Rails.application.routes.draw do
  get '/', to: 'static#home'
  get '/about', to: 'static#about'
  get '/blockbusters', to: 'blockbusters#index'
  get '/blockbusters/new', to: 'blockbusters#new'
  get '/blockbusters/:id', to: 'blockbusters#show', as: 'blockbuster'
  post '/blockbusters', to: 'blockbusters#create'
  get '/blockbusters/:id/edit', to: 'blockbusters#edit', as: 'edit_blockbuster'
  patch '/blockbusters/:id', to: 'blockbusters#update'
  delete '/blockbusters/:id', to: 'blockbusters#destroy', as: 'delete_blockbuster'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
