Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create' # Why don't I need the as: 'new' ?
  get 'pictures/new' => 'pictures#new' # Why don't I need the as: 'new' ?

  get 'pictures/:id' => 'pictures#show', as: 'picture'

end
