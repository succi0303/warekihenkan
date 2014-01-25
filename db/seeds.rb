# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
CSV.foreach('db/years.csv') do |row|
  Year.create(
    christian_era:   row[0],
    name_of_era:     row[1],
    year_of_the_era: row[2]
  )
end
