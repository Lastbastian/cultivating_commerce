class PagesController < ApplicationController

  def home
    if params[:search]
      @listings = Listing.search(params[:search]).order("created_at DESC")
    # else
    #   @listings = Listing.all.order('created_at DESC')
    end
  end
end
