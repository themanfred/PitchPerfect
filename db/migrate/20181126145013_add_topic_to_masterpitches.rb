class AddTopicToMasterpitches < ActiveRecord::Migration[5.2]
  def change
    add_column :masterpitches, :topic, :string
  end
end
