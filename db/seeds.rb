# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

languages = [
  {name: "Ruby"},
  {name: "Rails"},
  {name: "CSS"},
  {name: "HTML"},
  {name: "JavaScript"},
  {name: "Node.js"},
  {name: "Angular.js"},
  {name: "Python"},
  {name: "PHP"},
  {name: "Git"},
]

languages.each do |language|
  Language.find_or_create_by(language)
end
