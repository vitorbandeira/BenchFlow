class PublicationTag < ApplicationRecord
  belongs_to :publication
  belongs_to :tag
end
