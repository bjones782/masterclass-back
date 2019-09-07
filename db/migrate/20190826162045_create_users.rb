class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name, default: 'Jane Doe'
      t.string :img_url, default: 'https://www.rightlobemath.com/images/easyblog_cavatar/2_teacher_avatar.jpeg'
      t.string :school, default: ''

      t.timestamps
    end
  end
end
