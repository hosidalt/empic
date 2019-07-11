class PicturesController < ApplicationController
  def index
    @picture = Picture.new
    @pictures = Picture.all.includes(:tags)
    @pictures = Picture.search(params[:search])
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.save
    redirect_to pictures_path
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def update
    picture = Picture.find(params[:id])
    picture.update(picture_params)
    redirect_to picture_path
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
    end

  private

    def picture_params
      params.require(:picture).permit(:image, :comment, :tag_list)
    end

end
