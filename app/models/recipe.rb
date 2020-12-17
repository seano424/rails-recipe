class Recipe < ApplicationRecord
  validates :name, presence: true
  has_many :dashes, dependent: :destroy
  has_many :ingredients, through: :dashes
end
