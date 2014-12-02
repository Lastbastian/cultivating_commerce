class UsersController < ApplicationController

  def index
    redirect_to current_user
  end

  def show
    @listing = Listing.new
    @user = User.find_by(id: params[:id])
    @items= Item.all
  end

  def edit
    @user = User.find_by(id: params[:id])
    if @user
      render 'edit'
    else
      redirect_to edit_event_path
    end
  end

  def create
    @user = User.find_by(id: params[:id])
    if @user.update(update_params)
      redirect_to current_user
    else
      render 'edit'
    end
  end
end
