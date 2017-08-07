class ReviewsController < ApplicationController

  # GET /reviews
  def index
    @reviews = Review.all
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:notice] = "#{@review.title} created successfully."
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  # GET /reviews/1
  def show
    @review = Review.find(params[:id])
    @comments = @review.comments
    @bowl = @review.bowl
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # PATCH/PUT /reviews/1
  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    flash[:notice] = "Review updated successfully."
    redirect_to review_path(@review)
  end

  # DELETE /reviews/1
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:alert] = "Review deleted!"
    redirect_to reviews_path
  end

  private
    # Prevent evil people from messing with my params
    def review_params
      params.require(:review).permit(:title, :content, :img_url)
    end
end
