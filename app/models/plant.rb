class Plant < ApplicationRecord
  has_many :garden_plants, dependent: :delete_all
  has_many :gardens, through: :garden_plants

  validates :name, presence: true
end
