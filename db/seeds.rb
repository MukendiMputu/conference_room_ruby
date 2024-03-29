# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Configuration.count.zero?
  Configuration.create([
    {configuration_name: "Boardroom"},
    {configuration_name: "Hollow Square"},
    {configuration_name: "U-Shape"},
    {configuration_name: "Auditorium"},
    {configuration_name: "Classroom"},
    {configuration_name: "Banquet"}
  ])
end

if Category.count.zero?
  Category.create([
    {category_name: "Congress Center"},
    {category_name: "Concert Hall"},
    {category_name: "Exhibition Hall"},
    {category_name: "Auditorium"}
  ])
end

buildings = [
  {name: "Campion College", code: "CM", address: "3826 Le Green Avenue"},
  {name: "Classroom", code: "CL", address: "3707 Sur eaux Loop"},
  {name: "La Cite", code: "CT", address: "3727 Sagittaire Lane"},
  {name: "College West", code: "CW", address: "3903 wibazuka Road"},
  {name: "First Nation", code: "FN", address: "1 First Nations Way"},
  {name: "Education Auditorium", code: "EA", address: "3919 University Drive South"},
  {name: "Research and Innovation Center", code: "RI", address: " 3805 wibazuka Road"}
]

if Building.count.zero?
  buildings.each do |building|
    Building.create(name: building[:name], code: building[:code], address: building[:address])
  end

end

if Room.count.zero?
  picture_list = %w[conference_blue.jpg conference_brown.jpg conference_green.jpg conference_red.jpg conference_rose.jpg conference_royal.jpg conference_white.jpg conference_wood.jpg conference_world.jpg conference_yellow.jpg]
  Building.all.each do |building|
    picture_list.each do |_|
      picture_name = picture_list.sample
      Room.create(
        building_id: building.id,
        number: building[:code] + rand(100..550).to_s,
        category_id: Category.find(rand(Category.first.id..Category.last.id)).id,
        configuration_id: Configuration.find(rand(Configuration.first.id..Configuration.last.id)).id,
        capacity: rand(100) * 10,
        size: rand(1000),
        description: "example room",
        picture: picture_name
      )
    end
  end
end
