class Person < ApplicationRecord
    has_and_belongs_to_many :relations, class_name: "Person",  join_table: "relations", association_foreign_key: "relation_id"
end
