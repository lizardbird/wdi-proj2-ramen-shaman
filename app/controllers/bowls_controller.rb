class BowlsController < ApplicationController

  # GET /bowls/new
  def new
    @review = Review.find(params[:review_id])
    # @bowl = @review.bowls.new
    @bowl = Bowl.new
  end

  # POST /bowls
  def create
    @review = Review.find(params[:review_id])
    # @bowl = @review.bowls.new(bowl_params)
    @bowl = Bowl.new(bowl_params)
    if @bowl.save
      flash[:notice] = "Bowl saved successfully."
      redirect_to review_path(@review)
    else
      flash[:alert] = "ALERT! Something went wrong when trying to save your bowl."
      redirect_to review_path(@review)
    end
  end

  # GET /bowls/1/edit
  def edit
      @review = Review.find(params[:review_id])
      @bowl = Bowl.find(params[:id])
    end

  # PATCH/PUT /bowls/1
  def update
    @review = Review.find(params[:review_id])
    @bowl = Bowl.find(params[:id])
    @bowl.update(bowl_params)
    flash[:notice] = "Bowl upated successfully."
    redirect_to review_path(@review)
  end

  # DELETE /bowls/1
  def destroy
    @review = Review.find(params[:review_id])
    @bowl = Bowl.find(params[:id])
    @bowl.destroy
    flash[:alert] = "Bowl deleted!"
    redirect_to review_path(@review)
  end

  # Prevent evil people from messing with my params
  private
  def bowl_params
    params.require(:bowl).permit(:price, :broth, :noodle, :protein, :is_veg)
  end
  end
