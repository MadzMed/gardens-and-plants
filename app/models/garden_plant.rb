class GardenPlant < ApplicationRecord
  belongs_to :plant, dependent: :destroy
  belongs_to :garden
end
