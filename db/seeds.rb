# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(name: "Cindy Cup Maker",
                     business_name: "Ceramic Mugs",
                     email_address: "mugsandmore@gmail.com")

application = Application.create(category: 3,
                                 mlm_status: false,
                                 previous_vendor: true,
                                 previous_efforts: "posted on instagram",
                                 description: "I make coffee mugs",
                                 price_range: "$20-$40",
                                 user: user_1.id)