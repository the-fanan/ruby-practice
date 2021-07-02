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

    field :people, [Types::PersonType], null: false, description: "People in the system" do
      argument :search, String, required: false
      argument :limit, Integer, required: false
      argument :page, Integer, required: false
    end

    def people(search: '', limit: 4, page: 1)
      Person.where('LOWER(name) LIKE LOWER(:search) OR LOWER(email) LIKE LOWER(:search)', search: "%#{search}%").order('created_at DESC').paginate(:per_page => limit, :page => page)
    end 

    field :person, Types::PersonType, null: false,
      description: "A person in the system" do 
        argument :id, String, required: true
      end
    
    def person(id:)
      Person.where('public_id = ?', id).first
    end
  end
end
