class UserController < ApplicationController
  def home
    @user = User.find_by(first_name: "Marlon")
    @items= Item.all
    render 'show'
  end

  def edit
    @user = User.find_by(id: params[:id])
    if @user
      render 'edit'
    else
      redirect_to '/'
    end
  end

  def create
    @user = User.find_by(id: params[:id])
    if @user.update(update_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
end
