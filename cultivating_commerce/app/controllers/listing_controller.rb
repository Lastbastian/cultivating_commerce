class ListingController < ApplicationController

  def new
    render 'new'
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def remove
    @listing = Listing.find_by(id: params[:id])
    @listing.destroy

    redirect_to @user
  end

  def activate
    @listing = Listing.find_by(id: params[:id])
    @listing.active = true
    @listing.save

    redirect_to @user
  end

  def deactivate
    @listing = Listing.find_by(id: params[:id])
    @listing.active = false
    @listing.save

    redirect_to @user
  end

  private
    def listing_params
      params.require(:listing).permit(:description, :title, :desired, :quantity, :active, :image)
    end

end
