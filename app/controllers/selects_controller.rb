class SelectsController < ApplicationController
  def index
    @pictures = Picture.all
    @picture = Picture.new
    if params[:tag_name]
      @pictures = @pictures.tagged_with(params[:tag_name])
    else
      @pictures = Picture.all
    end
  end
end
