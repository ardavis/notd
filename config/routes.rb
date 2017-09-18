Rails.application.routes.draw do
  root to: 'notes#index'

  resources :notes
  resources :tags, except: [:show]


  # The following are replaced with the 'resources :notes' above
  # get '/notes', to: 'notes#index'
  # get '/notes/new', to: 'notes#new', as: 'new_note'
  # get '/notes/:id', to: 'notes#show'
  # get '/notes/:id/edit', to: 'notes#edit', as: 'edit_note'
  # post '/notes', to: 'notes#create'
  # patch '/notes/:id', to: 'notes#update', as: 'note'
  # delete '/notes/:id', to: 'notes#destroy'
end
