class CreateLessonPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_plans do |t|
      t.string :title
      t.integer :grade_level
      t.string :subject
      t.string :total_time
      t.text :objective
      t.text :materials
      t.text :summary
      t.text :other

      t.timestamps
    end
  end
end
