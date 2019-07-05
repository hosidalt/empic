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

  def update
    picture = Picture.find(params[:id])
    picture.update(picture_params)
    redirect_to picture_path
  end

  private

    def picture_params
      params.require(:picture).permit(:image, :comment, :tag_list)
    end
end
