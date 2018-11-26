class Pitch < ApplicationRecord
  belongs_to :user
  belongs_to :masterpitch, optional: true

  has_many :feedbacks
  has_many :ratings, through: :feedbacks
end
