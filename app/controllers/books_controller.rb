class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book successfully created"
      redirect_to @bookshelf
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :summary, :cover, :isbn)
  end
  
end
