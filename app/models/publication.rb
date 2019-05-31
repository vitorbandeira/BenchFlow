class Publication < ApplicationRecord
  belongs_to :user
  has_many :ej_publications
  has_many :comments
end
