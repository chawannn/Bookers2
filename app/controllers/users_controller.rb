class UsersController < ApplicationController

  def index
    @books = Book.all
    @users = User.all
    @book = Book.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
  end
end
