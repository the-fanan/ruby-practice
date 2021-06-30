class Relation < ApplicationRecord
    # Validations
    validates :person_id, presence: true 
    validates :relation_id, presence: true 
    validates :public_id, presence: true 
    validates :type, presence: true
    # Relationships
end
