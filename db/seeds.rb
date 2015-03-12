# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Sender.create(name: "Levi's" , url: "levi@em.us.info.com")

Sender.create(name: "Gap" , url: "gap@email.gap.com")

Letter.create(title: "Jeans", content: "<h1>Look at these pants!!!</h1><h3>Holy shit these are some pants</h3>",
  sender_id: 1)

Letter.create(title: "Jean Shirts, They are Jirts!", sender_id: 1, content:
"<h1>Now they have shirts made of jeans!</h1><h3>You will look like a rugged cowboy</h3>")

Letter.create(title: "Get laid",  sender_id: 1, content:
"<h1>They sell boots Too</h1><h3>Now you can complete the cowboy look!</h3>")

Letter.create(title: "Hello",  sender_id: 2, content:
"<h2>Fall into the gap</h2><em>look really thin....for an american</em>")

Letter.create(title: "Be cool!",  sender_id: 2, content:
"<h2>there is a gap in your teeth</h2><em>we sell colorful clothes sometimes</em>")
