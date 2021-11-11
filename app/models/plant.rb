class Plant < ApplicationRecord
  has_many :garden_plants, dependent: :delete_all
  has_many :gardens, through: :garden_plants
  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags

  validates :name, presence: true
end
