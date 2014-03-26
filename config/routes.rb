ArtApp::Application.routes.draw do

  root 'posts#landing'
  resources :users, :sessions, :reviews, :posts


  # get '/posts/:id/reviews/new', to: 'reviews#new'
  # how do I carry over the posts ID to the reviews?

  get '/signup', to: 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

end
