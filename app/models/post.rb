class Post < ApplicationRecord
  #mount_uploader :image, ImageUploader
  belongs_to :user
  validates :user_id, presence: true
  has_many :comments, dependent: :destroy
  has_one_attached :image


end
