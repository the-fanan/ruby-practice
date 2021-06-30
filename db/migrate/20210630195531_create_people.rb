class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.string :email, unique: true, null: false
      t.string :password, null: false
      t.string :public_id, unique: true, null: false
      t.string :image
      t.timestamps
    end
  end
end
