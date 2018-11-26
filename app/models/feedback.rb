class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :pitch

  has_many :ratings
end
