class House < ApplicationRecord
    has_many(
        :residents,
        class_name: 'Person',
        foreign_key: :id,
        primary_key: :id
    )
end