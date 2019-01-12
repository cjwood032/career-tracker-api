# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DATA = {
    :career_keys =>
      ["title", "company", "location", "date_added", "link", "description"],
    :careers => [
      ["Web Dev", "Xerox", "Webster, NY", '2014-09-06', "www.xerox.com", "description text"],
      ["title", "company", "location", '2001-01-01', "link", "description"]
    ]
}