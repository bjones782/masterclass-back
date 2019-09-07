class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.boolean :mastered, default: false
      t.boolean :almost, default: false
      t.boolean :notyet, default: false
      t.timestamps
    end
  end
end
