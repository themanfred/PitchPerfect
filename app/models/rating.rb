class Rating < ApplicationRecord

belong_to :feedback
belong_to :user, through: :feedback
belong_to :pitch, through: :feedback
belong_to :masterpitch, through: :feedback

has_many :feedbacks, through: :users
has_many :pitches, through: :feedbacks
has_many :masterpitches, through: :feedbacks

end
