class AddReferenceToPitches < ActiveRecord::Migration[5.2]
  def change
    add_reference :pitches, :user, foreign_key: true
    add_reference :pitches, :masterpitch, foreign_key: true
  end
end
