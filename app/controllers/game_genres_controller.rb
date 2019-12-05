class GameGenresController < ApplicationController
  before_action :set_game_genre, only: [:show, :update, :destroy]

  # GET /game_genres
  def index
    @game_genres = GameGenre.all

    render json: @game_genres, include: [:genre_facts, :genre_images]
  end

  # GET /game_genres/1
  def show
    render json: @game_genre, include: [:genre_facts, :genre_images]
  end

  # POST /game_genres
  def create
    @game_genre = GameGenre.new(game_genre_params)

    if @game_genre.save
      render json: @game_genre, status: :created, location: @game_genre
    else
      render json: @game_genre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_genres/1
  def update
    if @game_genre.update(game_genre_params)
      render json: @game_genre
    else
      render json: @game_genre.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_genres/1
  def destroy
    @game_genre.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_genre
      @game_genre = GameGenre.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_genre_params
      params.require(:game_genre).permit(:genre, :description, :facts, :img_url)
    end
end
