class BookshelvesController < ApplicationController
  def index
    @bookshelves = Bookshelf.all
  end

  def new
    @bookshelf = Bookshelf.new
  end
  
  def create
    @bookshelf = Bookshelf.new(bookshelf_params)
    @bookshelf.user = current_user
    if @bookshelf.save
      flash[:success] = "Bookshelf successfully created"
      redirect_to @bookshelf
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @bookshelf = Bookshelf.find(params[:id])
  end
  
  
  private

  def bookshelf_params
    params.require(:bookshelf).permit(:title, :user_id)
  end
end
