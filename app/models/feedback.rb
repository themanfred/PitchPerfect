class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :pitch

  VALID_RATING = [1, 2, 3, 4, 5]
  validates :clarity, inclusion: { in: VALID_RATING }
  validates_inclusion_of :quality, in: VALID_RATING
  validates_inclusion_of :pace, in: VALID_RATING
  validates_inclusion_of :body_language, in: VALID_RATING
  validates_inclusion_of :language, in: VALID_RATING
  validates_inclusion_of :value, in: VALID_RATING
  validates :clarity, presence: true
  validates :quality, presence: true
  validates :pace, presence: true
  validates :body_language, presence: true
  validates :language, presence: true
  validates :value, presence: true
end
