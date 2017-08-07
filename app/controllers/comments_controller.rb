class CommentsController < ApplicationController

  # GET /comments/new
  def new
    @review = Review.find(params[:review_id])
    @comment = @review.comments.new
  end

  # POST /comments
  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment saved successfully."
      redirect_to review_path(@review)
    else
      flash[:alert] = "ALERT! Comment must have name, email, and content."
      redirect_to review_path(@review)
    end
  end

  # GET /comments/1/edit
  def edit
      @review = Review.find(params[:review_id])
      @comment = Comment.find(params[:id])
    end

  # PATCH/PUT /comments/1
  def update
    @review = Review.find(params[:review_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    flash[:notice] = "Comment upated successfully."
    redirect_to review_path(@review)
  end

  # DELETE /comments/1
  def destroy
    @review = Review.find(params[:review_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:alert] = "Comment deleted!"
    redirect_to review_path(@review)
  end

# Prevent evil people from messing with my params
  private
  def comment_params
    params.require(:comment).permit(:name, :email, :comment)
  end
  end
