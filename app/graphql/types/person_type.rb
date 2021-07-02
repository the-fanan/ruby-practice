module Types
  class PersonType < Types::BaseObject
    field :public_id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :image, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :relations, [Types::RelationType], null: false do 
      argument :verified, Boolean, required: false
    end
    def relations(verified: true) 
      relations = Person.where('public_id = ?', self.object.public_id).first.relationships
      if verified == true 
        relations = relations.where('status = ?', 'verified')
      end
      relations.load
    end
  end
end
