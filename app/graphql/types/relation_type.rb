module Types
  class RelationType < Types::BaseObject
    #field :person_id, Integer, null: false
    #field :relation_id, Integer, null: false
    field :relationship, String, null: false
    field :status, String, null: false
    field :public_id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :person, Types::PersonType, null: false 

    def person 
      Person.where('id = ?', self.object.relation_id).first
    end

  end
end
