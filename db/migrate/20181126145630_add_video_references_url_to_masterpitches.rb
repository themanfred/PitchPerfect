class AddVideoReferencesUrlToMasterpitches < ActiveRecord::Migration[5.2]
  def change
    add_column :masterpitches, :video_reference_url, :string
  end
end
