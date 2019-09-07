class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.references :student, foreign_key: true
      t.references :standard, foreign_key: true
      t.integer :mastery

      t.timestamps
    end
  end
end
