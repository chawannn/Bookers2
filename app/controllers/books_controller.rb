class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def cleate
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end

  def index
  end

  def show
  end


  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end