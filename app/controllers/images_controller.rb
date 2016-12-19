class ImagesController < ApplicationController
  def index
   @images =  Image.all
  end
  
  def about
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end
  
  def show
      @image = Image.find(params[:id])
  end

  def edit
      @image = Image.find(image_params)
      
  end
  
  def update
      image = Image.find(params[:id])
      image.avatar = params[:avatar]
      image.title = params[:title]
      image.description = params[:description]
      image.save
      redirect_to '/images/index'
  end
  
  def destroy
      image = Image.find(params[:id])
      image.destroy
      redirect_to '/images/index'
  end

private
  def image_params
    params.require(:image).permit(:title, :description, :avatar)
  end
end
