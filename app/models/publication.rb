class Publication < ApplicationRecord
  belongs_to :user
  has_many :ej_publications, dependent: :destroy
  has_many :comments, dependent: :destroy
end
