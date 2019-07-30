Rails.application.routes.draw do
  root 'cleaner#new'
  
  post 'cleaner/create'

  get 'cleaner/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
