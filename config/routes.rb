Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'
  get '/hottakes/:id/vote', to: 'hot_takes#edit'
  patch '/hottakes/:id', to: 'hot_takes#update'
  get '/hottakes', to: 'hot_takes#index'
end
