class AddCountToLessons < ActiveRecord::Migration[5.2]
  def change
  	add_column :lesson_plans, :count, :integer, default: 0
  end
end
