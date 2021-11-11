# db/seeds.rb
Garden.destroy_all if Rails.env.development?

Garden.create!(
  name: "Park inson",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "Park des princes",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Garden.create!(
  name: "Park 4 chemins",
  banner_url: "https://source.unsplash.com/1600x900/?nature,garden"
)

Garden.create!(
  name: "Park king",
  banner_url: "https://source.unsplash.com/1600x900/?water,garden"
)

Garden.create!(
  name: "Park metre",
  banner_url: "https://source.unsplash.com/1600x900/?plant,garden"
)

Garden.create!(
  name: "Park K",
  banner_url: "https://source.unsplash.com/1600x900/?tree,garden"
)

Plant.create!(
  name: "Monstera",
  photo: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg"
)

Plant.create!(
  name: "Philo",
  photo: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg"
)

Plant.create!(
  name: "Dieff",
  photo: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg"
)

GardenPlant.create(garden: Garden.first, plant: Plant.first)
GardenPlant.create(garden: Garden.second, plant: Plant.second)
GardenPlant.create(garden: Garden.first, plant: Plant.third)


tag_list = %w(exotique carnivore grasse)
tag_list.each do |tag|
  Tag.create(name: tag)
end
