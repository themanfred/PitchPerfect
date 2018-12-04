class Pitch < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  belongs_to :masterpitch, optional: true

  has_many :feedbacks, dependent: :destroy

end
