class Pitch < ApplicationRecord
  belongs_to :user
  belongs_to :masterpitch, optional: true

  has_many :feedbacks
end
