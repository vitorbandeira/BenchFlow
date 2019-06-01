class University < ApplicationRecord
  has_many :ejs, dependent: :destroy
end
