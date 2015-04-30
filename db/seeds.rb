# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(Mythical Normal Boring).each do |name|
  Pen.create name: name, capacity: 10
end
 
# Make animals
%w(Dragon Cow Cougar Mouse Dog Cat Lizard Phoenix).each do |species|
  Animal.create species: species, pen_id: rand(1..3), energy: 10
end
 
# Make visitors
%w(Bob Jill BillyBob Jackie Eric Yangzi Rachel).each do |name|
  Person.create name: name, email: name+"@zoo.com", password: 'password'
end