class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @listings = Listing.all
  end

  def show
    # @listing = Listing.find(params[:id])
  end

end