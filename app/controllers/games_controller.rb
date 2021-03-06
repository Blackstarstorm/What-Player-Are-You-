class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  def index_by_game_genre
    # endpoint = '/game_genre/:game_genre_id/games'
    @game_genre = GameGenre.find(params[:game_genre_id])
    @games = @game_genre.games
    render json: @games, include: :game_genre, status: :ok
  end


  # GET /games/1
  def show
    @game = Game.find(params[:id])


    render json: @game, include: :game_genre, status: :ok

  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
    render json: @game
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:name, :description, :img_url, :game_genre_id, :id)
    end
end
