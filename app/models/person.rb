class Person < ApplicationRecord
    # Validations
    validates :name, presence: true 
    validates :email, presence: true 
    validates :public_id, presence: true 
    validates :password, presence: true
    # Relationships
    has_and_belongs_to_many :relations, class_name: "Person",  join_table: "relations", association_foreign_key: "relation_id"
end
