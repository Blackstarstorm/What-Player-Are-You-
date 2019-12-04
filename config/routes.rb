Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  
  resources :users
  resources :games
  resources :game_genres do
    resources :genre_facts 
      resources :genre_images
  end
  # get '/endpoint', to: 'controller#method'
get '/game_genres/:game_genre_id/games', to: 'games#index_by_game_genre'
# post '/game_genres/:game_genre_id/new_games', to: 'games#add_game'

get '/game_genres/:game_genre_id/genre_facts', to: 'facts#index_by_genre_facts'

get '/game_genres/:game_genre_id/genre_images', to: 'images#index_by_genre_images'
end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html