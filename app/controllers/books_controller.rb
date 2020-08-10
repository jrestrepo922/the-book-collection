class BooksController < ApplicationController
  before_action :get_genre, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @books = @genre.books

    render json: @books
  end


  def show 
    @book = @genre.books.find(params[:id])
    render json: @book
  end

  # POST /video_games
  def create
    
    @book = @genre.books.build(book_params)
    if @book.save
      render json: @book
      #, status: :created, location: @video_game
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # might need to look into this once this function gets build
  def update
    
    @book = @genre.books.find(params[:id])
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @book = @genre.books.find(params[:id])
    @book.destroy
  end

  private
  #allows us to get the genre from the genre_id in the url
  def get_genre
    @genre = Genre.find(params[:genre_id])
  end 

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:title, :description, :author, :completed, :format, :image, :genre_id)
    end
end
