class Picture < ApplicationRecord
  acts_as_taggable_on :labels
  acts_as_taggable
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Picture.joins(:tags).distinct.where(['pictures.image LIKE ? or pictures.comment LIKE ? or tags.name LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Picture.all
    end
  end
  
  validates :image, presence: true
end
