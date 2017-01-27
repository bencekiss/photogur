Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'
  get 'pictures' => 'pictures#index' # so 'pictures' actually can be replaced with pictures_url

  post 'pictures' => 'pictures#create' # Why don't I need the as: 'new' ?
  get 'pictures/new' => 'pictures#new', as: 'new' # Why don't I need the as: 'new' ?

  get 'pictures/:id' => 'pictures#show', as: 'picture' # and why do i need it here?

  get 'pictures/:id/edit' => 'pictures#edit', as: "edit_picture" # and here?
  patch 'pictures/:id' => 'pictures#update'

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

end
