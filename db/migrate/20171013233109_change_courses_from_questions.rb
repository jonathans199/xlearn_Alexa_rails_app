class ChangeCoursesFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :courses_id
    add_column :questions, :course_id, :integer, foreign_key: true
  end
end
