class BooksController < ApplicationController
  before_action :set_book, only: [:show]
  before_action :authenticate_user!

  # GET /books
  # GET /books.json
  def index
    if params[:search]
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :year,:isbn,:image)
    end
end
