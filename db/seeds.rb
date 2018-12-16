require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
csv_contents = CSV.read('db/table-1.csv')
csv_contents.shift
csv_contents.each do |row|
  College.create(name: row[0], city: row[1], state: row[2], school_type: row[3], nickname: row[4], conference: row[5], governing_body: 'NCAA', division: 'First')
end

csv_contents = CSV.read('db/table-2.csv')
csv_contents.shift
csv_contents.each do |row|
  College.create(name: row[0], nickname: row[1], city: row[2], state: row[3], conference: row[4], governing_body: 'NCAA', division: 'Second')
end

csv_contents = CSV.read('db/table-3.csv')
csv_contents.shift
csv_contents.each do |row|
  College.create(name: row[0], nickname: row[1], city: row[2], state: row[3], conference: row[4], governing_body: 'NCAA', division: 'Third')
end
