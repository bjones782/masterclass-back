class CreateStandards < ActiveRecord::Migration[5.2]
  def change
    create_table :standards do |t|
      t.integer :masterylevel
      t.string :description
      t.string :notation
      t.timestamps
    end
  end
end
