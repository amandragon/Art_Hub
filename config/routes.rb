ArtApp::Application.routes.draw do
  resources :users, :sessions, :reviews

  root to: 'users#index'

  get '/signup', to: 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

end
