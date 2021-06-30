class CreateRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :relations do |t|
      t.bigint :person_id, null: false
      t.bigint :relation_id, null: false
      t.string :type, null: false
      t.string :status, default: 'unverified'
      t.string :public_id, unique:true, null: false
      t.timestamps
    end
  end
end
