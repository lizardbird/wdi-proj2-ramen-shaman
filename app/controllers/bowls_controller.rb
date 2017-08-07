class BowlsController < ApplicationController

  # GET /bowls
  def index
    @bowls = Bowl.all
  end

  # GET /bowls/new
  def new
    @bowl = Bowl.new
  end

  # POST /bowls
  def create
    @bowl = Bowl.new(bowl_params)
    if @bowl.save
      flash[:notice] = "#{@bowl.title} created successfully."
      redirect_to bowl_path(@bowl)
    else
      render :new
    end
  end

  # GET /bowls/1
  def show
    @bowl = Bowl.find(params[:id])
    @comments = @bowl.comments
  end

  # GET /bowls/1/edit
  def edit
    @bowl = Bowl.find(params[:id])
  end

  # PATCH/PUT /bowls/1
  def update
    @bowl = Bowl.find(params[:id])
    @bowl.update(bowl_params)
    flash[:notice] = "bowl updated successfully."
    redirect_to bowl_path(@bowl)
  end

  # DELETE /bowls/1
  def destroy
    @bowl = Bowl.find(params[:id])
    @bowl.destroy
    flash[:alert] = "bowl deleted!"
    redirect_to bowls_path
  end

  private
    # Prevent evil people from messing with my params
    def bowl_params
      params.require(:bowl).permit(:price, :broth, :noodle, :protein, :is_veg, :title, :review, :img_url)
    end
end
