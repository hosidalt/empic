class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.save
    redirect_to pictures_path
      # if @picture.save
      #   redirect_to pictures_path, notice: "画像が保存されました"
      # end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def show
    @picture = Picture.find(params[:id])
  end

  private
    def picture_params
      params.require(:picture).permit(:image, :comment)
    end
end
