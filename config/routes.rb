Rails.application.routes.draw do
devise_for :users

resources :users,only: [:show,:index,:edit,:update]
resources :books,only: [:show,:index,:edit,:create, :update,]

delete 'books/:id' => 'books#destroy', as:'destroy_book'

root 'homes#top'
get 'home/about' => 'homes#about'

end