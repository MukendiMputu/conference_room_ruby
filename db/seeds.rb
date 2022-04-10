# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Configuration.count.zero?
  Configuration.create([
                         { name: 'Boardroom' },
                         { name: 'Hollow Square' },
                         { name: 'U-Shape' },
                         { name: 'Auditorium' },
                         { name: 'Classroom' },
                         { name: 'Banquet' },
                       ])
end

if Category.count.zero?
  Category.create([
                    { name: 'Congress Center' },
                    { name: 'Concert Hall' },
                    { name: 'Exhibition Hall' },
                    { name: 'Auditorium' }
                  ])
end

buildings = [
  { :name => "Campion College", :code => "CM", :address => "3826 Le Green Avenue" },
  { :name => "Classroom", :code => "CL", :address => "3707 Sur eaux Loop" },
  { :name => "La Cite", :code => "CT", :address => "3727 Sagittaire Lane" },
  { :name => "College West", :code => "CW", :address => "3903 wibazuka Road" },
  { :name => "First Nation", :code => "FN", :address => "1 First Nations Way" },
  { :name => "Education Auditorium", :code => "EA", :address => "3919 University Drive South" },
  { :name => "Research and Innovation Center", :code => "RI", :address => " 3805 wibazuka Road" },
]

if Building.count.zero?
  buildings.each do |building|
    Building.create(building)
  end

end

if Room.count.zero?
  picture_list = %w[conference_blue conference_brown conference_green conference_red conference_rose conference_royal conference_white conference_wood conference_world conference_yellow]
  buildings.each do |building|
    picture_list.each do |room|
      picture_name = picture_list.sample
      Room.create(
        building: building[:name],
        number: building[:code] + rand(100..550).to_s,
        capacity: rand(100) * 10,
        size: rand(1000),
        description: 'example room',
        picture: picture_name
      )
    end
  end
end