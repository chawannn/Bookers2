class UsersController < ApplicationController

  def index
    @user = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = Book.all
    @book = Book.new
  end

  def edit
  end
end
