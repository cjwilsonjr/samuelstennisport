# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c = Customer.create!(first_name: "CJ", last_name: "Wilson", email: "cj@cj.com")

r = Racket.create!(owner_id: 1)
s = Stringset.create!(racket_id: 1)