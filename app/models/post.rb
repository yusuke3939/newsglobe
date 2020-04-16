class Post < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
  acts_as_taggable_on :labels 
  acts_as_taggable 
end
