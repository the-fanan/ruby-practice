class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email, unique: true
      t.string :public_id, unique: true
      t.timestamps
    end
  end
end
