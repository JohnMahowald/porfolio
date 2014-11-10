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

annotate.features.create!(description: "Extends Backbone's View class allowing composite views to recursively render subviews within their parent")
annotate.features.create!(description: "Creates an Animated View class to manage collections of jQuery and CSS methods making clean UI animation possible.")

ros = Project.create!(
  title: "Ruby on Sails",
  description: "Metaprogramming exercise in reproducing active records management of
  database relations and the key features of Rails controller, router, and server",
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

# saidit = Project.create!(
#   title: "Saidit",
#   description: "A clone of Reddit posting user comments as recursive subviews",
#   github_url: "http://github.com/JohnMahowald/saidit",
#   demo_url:"http://saidit-reddit.herokuapp.com",
#   preview_img: "/assets/saidit-preview.png"
# )
#
# saidit.skills.create!(title: "Ruby on Rails")
# saidit.skills.create!(title: "Recursive Partials")
#
# saidit.features.create!(description: "Recursive rendering of child comments by mapping comment views in a hash to their parent node.")
# saidit.features.create!(description: "Generously segmented views keep code DRY allowing login to share boilerplate form data and comments to be recursively rendered within parent.")
