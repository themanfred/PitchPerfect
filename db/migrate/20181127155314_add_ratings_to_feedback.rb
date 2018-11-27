class AddRatingsToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :quality, :integer
    add_column :feedbacks, :clarity, :integer
    add_column :feedbacks, :pace, :integer
    add_column :feedbacks, :body_language, :integer
    add_column :feedbacks, :language, :integer
    add_column :feedbacks, :value, :integer
    add_column :feedbacks, :quality_comment, :string
    add_column :feedbacks, :clarity_comment, :string
    add_column :feedbacks, :pace_comment, :string
    add_column :feedbacks, :body_language_comment, :string
    add_column :feedbacks, :language_comment, :string
    add_column :feedbacks, :value_comment, :string
    add_column :feedbacks, :comment, :string
  end
end
