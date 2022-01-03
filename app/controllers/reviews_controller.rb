class ReviewsController < ApplicationController
  def new
  end

  def create
    id_artist = params[:artist_id]
    @artist = Artist.find(id_artist)
    @review = @artist.reviews.create!(:comments => params[:review][:comments])
    redirect_to artists_path
  end

  def destroy
  end
end

