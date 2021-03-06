class Relation < ApplicationRecord
    # Validations
    validates :person_id, presence: true 
    validates :relation_id, presence: true 
    validates :public_id, presence: true, :uniqueness => true
    validates :relationship, presence: true, :inclusion => { :in => %w(partner child parent), :message => "%{value} is not a valid relationship" }
    validates :status, :inclusion => { :in => %w(verified unverified)}
    # Relationships
    belongs_to :person, class_name: "Person", foreign_key: "person_id"
    belongs_to :relation, class_name: "Person", foreign_key: "relation_id"
end
