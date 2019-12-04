class GenreFactsController < ApplicationController
  before_action :set_genre_facts, only: [:show]

  # GET /genre_facts
  def index
    @game_genre = GameGenre.find(params[:game_genre_id])
    @genre_facts = GenreFact.where(game_genre_id: @game_genre.id)

    render json: @genre_facts, status: :ok

  end

  def index_by_game_facts
    # endpoint = '/game_genre/:game_genre_id/game_facts'
    @game_genre = GameGenre.find(params[:game_genre_id])
    @genre_facts = @game_genre.genre_facts

    render json: @game_facts, include: {game_genre: {include: :game_genre_id}}, status: :ok

  end

# GET /genre_facts/1
def show
  @genre_facts = GenreFact.find(params[:id])

    render json: @genre_facts, include: :game_genre, status: :ok
  end 
end
