# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Skill.create!(title: "Ruby", ord: 1)
Skill.create!(title: "Ruby on Rails", ord: 2)
Skill.create!(title: "JavaScript", ord: 3)
Skill.create!(title: "Backbone.js", ord: 4)
Skill.create!(title: "jQuery", ord: 5)
Skill.create!(title: "Node.js", ord: 6)
Skill.create!(title: "Git", ord: 7)
Skill.create!(title: "HTML5", ord: 8)
Skill.create!(title: "CSS3", ord: 9)
Skill.create!(title: "SQL", ord: 10)
Skill.create!(title: "PostgreSQL", ord: 11)
Skill.create!(title: "SQLite", ord: 12)
Skill.create!(title: "TDD", ord: 13)
Skill.create!(title: "Bootstrap", ord: 14)
Skill.create!(title: "Agile Development", ord: 15)

annotate = Project.create!(
  title: "Annotate Life", 
  description: "Storytelling web-app hosting collections of user's stories in chapters & Journals",
  github_url: "http://github.com/JohnMahowald/annotate-life",
  demo_url: "http://www.annotate.life",
  preview_img: "/assets/annotate-preview.png"
)

annotate.skills.create!(title: 'Ruby on Rails')
annotate.skills.create!(title: 'JavaScript')
annotate.skills.create!(title: 'Backbone.js')

annotate.features.create!(description: "Custom composite view class extends Backbone's view class to accommodate nested subviews ensuring page content refreshes upon AJAX syncing without requiring hard refresh.")
annotate.features.create!(description: "Each session assigns a new background image behind a custom javascript welcome message ensuring a unique & personalized user experience.")

taskwise = Project.create!(
  title: "Taskwise",
  description: "A clone of the project management tool Trello using Ruby on Rails & Backbone.js",
  github_url: "http://github.com/JohnMahowald/taskwise",
  demo_url: "http://www.taskwise.org",
  preview_img: "/assets/taskwise-preview.png"
)
taskwise.features.create!(description: "A Ruby on Rails REST API packages optimized JSON data with jbuilder for a custom client-side parse method to reduce the number of HTTP requests.")
taskwise.features.create!(description: "Implements jQuery Sortable allowing cards to be dragged within lists and dragged to new lists, triggering ajax requests to persist new database relations.")

taskwise.skills.create!(title: "Ruby on Rails")
taskwise.skills.create!(title: "jQuery UI")
taskwise.skills.create!(title: "Backbone.js")

ros = Project.create!(
  title: "Ruby on Sails",
  description: "Metaprogramming exercise rebuilding core functionality of Rails’ ORM, controller & router",
  github_url: "http://github.com/JohnMahowald/ruby-on-sails",
  preview_img: "/assets/active-preview.png"
)

ros.skills.create!(title: 'Ruby on Rails')
ros.skills.create!(title: 'Metaprogramming')

ros.features.create!(description: "Controller parses HTTP request's query string for router's dynamically created methods for writing and sending HTTP responses.")
ros.features.create!(description: "Automatically generates has_many and belongs_to associations to simplify searching through SQL join tables for associated records")

node = Project.create!(
  title: "Node Chat Room",
  description: "Uses Socket.IO to build a connection between client and server",
  github_url: "http://github.com/JohnMahowald/node-chat-room",
  preview_img: "/assets/node-preview.png",
  demo_url: "http://connect-your-world.herokuapp.com/"
)

node.skills.create!(title: 'JavaScript')
node.skills.create!(title: 'Node.js')

node.features.create!(description: "App launches a server establishing a connection to the client via an HTTP socket connection.")
node.features.create!(description: "Client and server have unique parse methods for transmitting client messages from the client to the chatroom via the server.")

asteroids = Project.create!(
  title: "Asteroids",
  description: "Resurrecting the classic arcade game with HTML5 Canvas & Javascript",
  github_url: "https://github.com/JohnMahowald/asteroids",
  demo_url: "http://www.johnmahowald.com/asteroids",
  preview_img: "/assets/asteroids-preview.png"
)

asteroids.skills.create!(title: "JavaScript")
asteroids.skills.create!(title: "HTML5 Canvas")

asteroids.features.create!(description: "Sets prototypal inheritance for moving objects to follow JavaScript convention of safe inheritance.")
asteroids.features.create!(description: "Vector math draws various shapes on the HTML 5 canvas and calculates object collisions at 50 FPS.")
