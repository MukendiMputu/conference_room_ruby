# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Configuration.count.zero?
  Configuration.create([{name: 'U-Shape', }])
end


if Room.count.zero?
  rooms = Room.create([
                        {
                          building: 'RIC',
                          number: 'CS310',
                          capacity: 50,
                          size: 26,
                          description: 'example room'
                        }, {
                          building: 'RIC',
                          number: 'CS310',
                          capacity: 50,
                          size: 26,
                          description: 'example room'
                        }, {
                          building: 'RIC',
                          number: 'CS310',
                          capacity: 50,
                          size: 26,
                          description: 'example room'
                        }, {
                          building: 'RIC',
                          number: 'CS310',
                          capacity: 50,
                          size: 26,
                          description: 'example room'
                        }, {
                          building: 'RIC',
                          number: 'CS310',
                          capacity: 50,
                          size: 26,
                          description: 'example room'
                        },
                      ])
  picture_list = %w[conference_blue conference_brown conference_green conference_red conference_rose conference_royal conference_white conference_wood conference_world conference_yellow]
  rooms.each do |r|
    picture_name = picture_list.sample
    r.picture.attach(
      io: File.open(
        File.join(Rails.root, "/assets/images/480/#{picture_name}.jpg")
      ),
      filename: "#{picture_name}.jpg", content_type: 'application/jpg'
    )
  end
end
users = User.create([{}])

guests = Guest.create([])