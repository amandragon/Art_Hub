ArtApp::Application.routes.draw do
  resources :users, :sessions, :reviews, :posts

  root to: 'posts#landing'

  # get '/posts/:id/reviews/new', to: 'reviews#new'
  # how do I carry over the posts ID to the reviews?

  get '/signup', to: 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

end
