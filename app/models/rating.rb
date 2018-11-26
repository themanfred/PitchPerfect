class Rating < ApplicationRecord
  belongs_to :feedback
  belongs_to :user
  belongs_to :pitch
end
