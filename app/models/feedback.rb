class Feedback < ApplicationRecord
  belong_to :user
  belong_to :pitch

  has_many :users
  has_many :pitches
  has_many :ratings
  has_many :masterpitches, through: :pitches
end
