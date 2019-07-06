class Picture < ApplicationRecord
  acts_as_taggable_on :labels
  acts_as_taggable
  mount_uploader :image, ImageUploader

  validates :image, presence: true
end
