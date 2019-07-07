class Tag < ApplicationRecord
    has_many :publication_tags, dependent: :destroy
    has_many :publications, through: :publication_tags
end
