class StoreController < ApplicationController
	include ViewCounter
  def index
  	@products = Product.order(:title)
  	@view_count = track_views	
  end
end
