class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
    @book.build_author
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book successfully created"
      redirect_to books_path
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
    params.require(:book).permit(:title, :summary, :cover, :isbn, author_attributes: [:first_name, :last_name])
  end
  
end
