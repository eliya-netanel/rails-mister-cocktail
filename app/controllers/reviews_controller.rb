class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = @cocktail.reviews.new(review_params)
    @review.save
    redirect_to cocktail_path(@cocktail)
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end