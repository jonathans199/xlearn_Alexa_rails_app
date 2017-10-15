class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :courses, foreign_key: true
      t.string :introduction
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
