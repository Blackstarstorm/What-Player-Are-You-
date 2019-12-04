Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  
  resources :users
  resources :game_genres 
  resources :games


  # get '/endpoint', to: 'controller#method'
get '/game_genres/:game_genre_id/games', to: 'games#index_by_game_genre'
post '/game_genres/:game_genre_id/new_games', to: 'games#add_game'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html