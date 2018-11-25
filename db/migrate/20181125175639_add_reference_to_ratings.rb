class AddReferenceToRatings < ActiveRecord::Migration[5.2]
  def change
    add_reference :ratings, :feedback, foreign_key: true
  end
end
