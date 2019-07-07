class Publication < ApplicationRecord
  belongs_to :user
  has_many :ej_publications, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :publication_tags, dependent: :destroy
  has_many :tags, through: :publication_tags

  def category
    case self.publication_type 
    when 0
      "Gestão"
    when 1
      "Técnico"
    end
  end
end
