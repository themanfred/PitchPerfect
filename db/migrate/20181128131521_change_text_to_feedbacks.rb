class ChangeTextToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    change_column :feedbacks, :comment, :text
  end
end
