class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :topic
      t.string :objective
      t.string :direct
      t.string :guided
      t.string :independent
      t.string :cfu
      t.timestamps
    end
  end
end
