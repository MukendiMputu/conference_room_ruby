# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
rooms = Room.create([
                      { building: 'RIC', number: 'CS310', capacity: 50, configuration: 'Circle', picture: 'conference_blue.jpg', description: 'example room' },
                      { building: 'SEC', number: 'CS310', capacity: 25, configuration: 'U-Shape', picture: 'conference_green.jpg', description: 'example room' },
                      { building: 'Riddell', number: 'CS310', capacity: 100, configuration: 'Conference', picture: 'conference_royal.jpg', description: 'example room' },
                    ])