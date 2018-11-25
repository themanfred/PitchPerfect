class Pitch < ApplicationRecord
belong_to :users

has_many :users
has_many :feedbacks
has_many :ratings, through: :feedbacks
end
