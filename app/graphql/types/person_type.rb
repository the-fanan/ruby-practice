module Types
  class PersonType < Types::BaseObject
    field :public_id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :image, String, null: true
  end
end
