class AddLikesToLessonPlan < ActiveRecord::Migration[5.2]
  def change
  	add_column :lesson_plans, :likes, :integer, default: 0
  end
end
