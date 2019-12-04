class GenreImagesController < ApplicationController
  before_action :set_genre_images, only: [:show]

  # GET /genre_images
  def index
      @game_genre = GameGenre.find(params[:game_genre_id])
      @genre_images = GenreImage.where(game_genre_id: @game_genre.id)
  
      render json: @genre_images, status: :ok
  
    end

  def index_by_game_images
    # endpoint = '/game_genre/:game_genre_id/images'
    @game_genre = GameGenre.find(params[:game_genre_id])
    @genre_images = @game_genre.genre_images
    render json: @genre_images, include: :game_genre, status: :ok 
  end

  # GET /genre_images/1
  def show
    @genre_images = GenreImage.find(params[:id])

    render json: @genre_images, include: :game_genre, status: :ok
    end
  end