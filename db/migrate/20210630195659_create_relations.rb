class CreateRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :relations do |t|
      t.bigint :person_id
      t.bigint :relation_id
      t.string :type
      t.string :status, default: 'unverified'
      t.string :public_id, unique:true
      t.timestamps
    end
  end
end
