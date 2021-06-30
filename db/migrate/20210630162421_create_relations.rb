class CreateRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :relations do |t|
      t.bigint :person_id
      t.bigint :relation_id
      t.string :public_id
      t.string :type
      t.string :status
      t.timestamps
    end
  end
end
