class CommentsController < ApplicationController

  # GET /comments/new
  def new
    @bowl = Bowl.find(params[:bowl_id])
    @comment = @bowl.comments.new
  end

  # POST /comments
  def create
    @bowl = Bowl.find(params[:bowl_id])
    @comment = @bowl.comments.new(comment_params.merge(user: current_user))
    if @comment.save
      flash[:notice] = "Comment saved successfully."
      redirect_to bowl_path(@bowl)
    else
      flash[:alert] = "ALERT! Comment must have name, email, and content."
      redirect_to bowl_path(@bowl)
    end
  end

  # GET /comments/1/edit
  def edit
      @bowl = Bowl.find(params[:bowl_id])
      @comment = Comment.find(params[:id])
      if @comment.user != current_user
        flash[:alert] = "Only the author of a comment can edit!"
        redirect_to bowl_path(@bowl)
      end
    end

  # PATCH/PUT /comments/1
  def update
    @bowl = Bowl.find(params[:bowl_id])
    @comment = Comment.find(params[:id])
    if @comment.user === current_user
      @comment.update(comment_params)
    else
      flash[:alert] = "Only the author of a comment can edit!"
    end
    redirect_to bowl_path(@bowl)
  end

  # DELETE /comments/1
  def destroy
    @bowl = Bowl.find(params[:bowl_id])
    @comment = Comment.find(params[:id])
    if @comment.user === current_user
      @comment.destroy
    else
      flash[:alert] = "Only the author can delete!"
    end
    redirect_to bowl_path(@bowl)
  end

# Prevent evil people from messing with my params
  private
  def comment_params
    params.require(:comment).permit(:name, :email, :comment)
  end
  end
