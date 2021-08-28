class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  def show
  end


  def new
    @review = Review.new
  end


  def edit
    @review = Artist.find(params[:request_id]).reviews.find(params[:id])
    if @review.update(review_params)
      redirect_to @review.artist
    else
      render :edit
    end
  end

  def create
    @artist = Artist.find(params[:artist_id])

    @review = @artist.reviews.create(review_params)
    redirect_to artist_path(@artist)
  end

  def update
    @review = Artist.find(params[:artist_id]).reviews.find(params[:id])
    
    if @review.update(review_params)
      redirect_to @review.movie
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.find(params[:id])
    @review.destroy
    redirect_to movie_path(@movie)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:voto, :author_id, :test)
    end
end
