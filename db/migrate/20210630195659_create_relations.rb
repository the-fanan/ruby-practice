class CreateRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :relations do |t|
      t.bigint :person_id, null: false
      t.bigint :relation_id, null: false
      t.string :relationship, null: false, :limit => 50
      t.string :status, default: 'unverified', :limit => 50
      t.string :public_id, unique:true, null: false, :limit => 100
      t.timestamps
    end
  end
end
