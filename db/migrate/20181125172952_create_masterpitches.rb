class CreateMasterpitches < ActiveRecord::Migration[5.2]
  def change
    create_table :masterpitches do |t|
      t.string :presenter_name
      t.integer :duration
      t.string :target
      t.string :video_url_reference
      t.text :transcript
      t.string :description

      t.timestamps
    end
  end
end
