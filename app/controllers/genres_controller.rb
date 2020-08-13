require 'pry'
class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :update, :destroy]

  # GET /genres
  def index
    @genres = Genre.all

    render json: @genres
  end


  # POST /genres
  def create
    @genre = Genre.find_or_create_by(genre_params)
    # @genre = Genre.new(genre_params)
    if @genre.save
      render json: @genre
    end
  end

  # # PATCH/PUT /genres/1
  # def update
  #   if @genre.update(genre_params)
  #     render json: @genre
  #   else
  #     render json: @genre.errors, status: :unprocessable_entity
  #   end
  # end

def destroy
  @books = @genre.books.destroy_all
  @genre.destroy
end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def genre_params
      params.require(:genre).permit(:genre_name)
    end
end
