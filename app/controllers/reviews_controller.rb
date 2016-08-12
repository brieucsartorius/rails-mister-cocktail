class ReviewsController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create ]

 def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = @cocktail.reviews.build(review_params)
    @review.save!
    redirect_to cocktail_path(@cocktail)
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end

