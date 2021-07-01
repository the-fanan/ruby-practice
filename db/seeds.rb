16.times do
    Person.create({
        name: Faker::Name.name,
        email: Faker::Internet.email,
        public_id: SecureRandom.uuid,
        password: 'person123'
    })
end

Relation.create({
    person_id: 1,
    relation_id: 2,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 1,
    relation_id: 7,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 1,
    relation_id: 8,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 2,
    relation_id: 1,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 2,
    relation_id: 7,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 2,
    relation_id: 8,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 7,
    relation_id: 1,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 7,
    relation_id: 2,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 8,
    relation_id: 1,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 8,
    relation_id: 2,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 3,
    relation_id: 4,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 3,
    relation_id: 9,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 3,
    relation_id: 10,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 4,
    relation_id: 3,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 4,
    relation_id: 9,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 4,
    relation_id: 10,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 9,
    relation_id: 3,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 9,
    relation_id: 4,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 10,
    relation_id: 3,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 10,
    relation_id: 4,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 5,
    relation_id: 6,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 5,
    relation_id: 11,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 5,
    relation_id: 12,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 6,
    relation_id: 5,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 6,
    relation_id: 11,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 6,
    relation_id: 12,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 11,
    relation_id: 5,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 11,
    relation_id: 6,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 12,
    relation_id: 5,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 12,
    relation_id: 6,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 8,
    relation_id: 9,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 8,
    relation_id: 13,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 8,
    relation_id: 14,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 9,
    relation_id: 8,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 9,
    relation_id: 13,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 9,
    relation_id: 14,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 13,
    relation_id: 8,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 13,
    relation_id: 9,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 14,
    relation_id: 8,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 14,
    relation_id: 9,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 10,
    relation_id: 11,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 10,
    relation_id: 15,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 10,
    relation_id: 16,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 11,
    relation_id: 10,
    relationship: 'partner',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 11,
    relation_id: 15,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 11,
    relation_id: 16,
    relationship: 'child',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 15,
    relation_id: 10,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 15,
    relation_id: 11,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 16,
    relation_id: 10,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

Relation.create({
    person_id: 16,
    relation_id: 11,
    relationship: 'parent',
    status: 'verified',
    public_id: SecureRandom.uuid
})

#(1)_(2)   (3)_(4)    (5)_(6)
# __|__     __|__      __|__
#|     |   |     |    |     |
#(7)  (8)_(9)  (10)_(11)   (12)
#      __|__     __|__
#     |     |   |     |
#    (13)  (14)(15)  (16)