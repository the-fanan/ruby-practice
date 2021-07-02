class Person < ApplicationRecord
    has_secure_password
    # Validations
    validates :name, presence: true, :length => { :minimum => 2, :maximum => 100 }
    validates :email, presence: true, :length => { :minimum => 5, :maximum => 100 }, :uniqueness => true
    validates :public_id, presence: true, :uniqueness => true
    validates :password, presence: true, :confirmation => true
    # Relationships

    #my_relations are relationships I 'initiated'
    has_many :relationships, class_name: "Relation", foreign_key: "person_id"
    has_many :relations, class_name: "Person", :through => :relationships
end
