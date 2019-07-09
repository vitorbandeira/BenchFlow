class Ej < ApplicationRecord
  belongs_to :university
  has_many :ej_publications, dependent: :destroy
  has_many :users, dependent: :destroy
end
