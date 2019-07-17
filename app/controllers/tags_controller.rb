class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all.most_used
  end

end
