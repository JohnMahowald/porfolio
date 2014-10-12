# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


annotate = Project.create!(
  title: "Annotate Life", 
  description: "Storytelling web-app hosting collections of user's in chapters & Journals",
  github_url: "http://github.com/JohnMahowald/annotate-life",
  demo_url: "http://www.annotate.life"
)

annotate.skills.create!(title: 'Ruby on Rails')
annotate.skills.create!(title: 'JavaScript')
annotate.skills.create!(title: 'Backbone.js')

annotate.features.create!(description: "Extends Backbone's View class allowing composite views to recursively render subviews within their parent")
annotate.features.create!(description: "Creates an Animated View class to manage collections of jQuery and CSS methods making clean UI animation possible.")

ros = Project.create!(
  title: "Ruby on Sails",
  description: "Metaprogramming exercise in reproducing active records management of
  database relations and the key features of Rails controller::base & router",
  github_url: "http://github.com/JohnMahowald/ruby-on-sails"
)

ros.skills.create!(title: 'Ruby on Rails')
ros.skills.create!(title: 'Metaprogramming')

ros.features.create!(description: "Controller parses HTTP request's query string for router's dynamically created methods for writing and sending HTTP responses.")
ros.features.create!(description: "Automatically generates has_many and belongs_to associations to simplify searching through SQL join tables for associated records")