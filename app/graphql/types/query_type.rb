module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :people, [Types::PersonType], null: false,
      description: "People in the system"

    def people
      Person.all
    end 

    field :person, Type::PersonType, null: false,
      description: "A person in the system"
    
    def person 
    end
  end
end
