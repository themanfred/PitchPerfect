class CreatePitches < ActiveRecord::Migration[5.2]
  def change
    create_table :pitches do |t|
      t.string :name
      t.string :topic
      t.string :duration
      t.string :target
      t.text :transcript

      t.timestamps
    end
  end
end
