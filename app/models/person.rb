class Person < ApplicationRecord
    has_secure_password
    # Validations
    validates :name, presence: true, :length => { :minimum => 2, :maximum => 100 }
    validates :email, presence: true, :length => { :minimum => 5, :maximum => 100 }, :uniqueness => true
    validates :public_id, presence: true, :uniqueness => true
    validates :password, presence: true, :confirmation => true
    # Relationships

    #my_relations are relationships I 'initiated'
    has_and_belongs_to_many :my_relations, class_name: "Person",  join_table: "relations", association_foreign_key: "relation_id"

    #relations_of_me are relationships I 'accepted'
    has_and_belongs_to_many :relations_of_me, class_name: "Person",  join_table: "relations", association_foreign_key: "person_id"
end
