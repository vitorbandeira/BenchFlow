class Ej < ApplicationRecord
  belongs_to :university
  has_many :ej_publications, dependent: :destroy
end
