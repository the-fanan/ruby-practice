class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name, null: false, :limit => 100
      t.string :email, unique: true, null: false, :limit => 100
      t.string :password_digest, null: false, :limit => 100
      t.string :public_id, unique: true, null: false, :limit => 100
      t.string :image, :limit => 100
      t.timestamps
    end
  end
end
