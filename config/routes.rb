Rails.application.routes.draw do
  # VERB '/path', to: 'controller#action', as: :prefix
  root to: 'flats#index'
  get '/flats/:id', to: 'flats#show', as: :flat
end
