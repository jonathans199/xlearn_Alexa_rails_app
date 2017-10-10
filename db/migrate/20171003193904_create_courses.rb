class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

# rails db:migrate:status
# rails db:rollback STEP=2
# rails db:migrate
