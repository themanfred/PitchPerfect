class Masterpitch < ApplicationRecord
  belong_to :user

  has_many :users
  has_many :feedbacks
  has_many :ratings, through: :feedbacks
end
