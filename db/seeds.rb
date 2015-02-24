# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#dev seed-values
p = Project.new(project_title: "Flowers in her Hair", project_markdown:"##Graphite Portraits\n\nPristine femininity and inane detail: a little ode to beauty for its own sake, without much regard for concept. When I've no other projects, inevitably I find myself drawing flowers, or women, or women decked out in flowers. The prettier their hair, the better.\n\nMaterials: *4B Graphite, Strathmore Drawing Paper*\n\n###Purchase Info\n\nThese will be available shortly as art prints from Society6. Please [inquire](mailto:doffingdesign@gmail.com) for licensing information.", sort_order: 2, project_type: 0)
#p1 = Project.new(project_title: "Floral Patterns", project_markdown: "##Repeating Tiles\n\nThese were created for a variety of invitations and for personal enjoyment. The Tulips and Roses pattern was featured in Murals Your Way's 2014 NeoCon booth, and also in an upcoming edition of *Martha Stewart Weddings*.\n\n###Purchase Info\n\nSelect patterns are available to purchase on fabric from [Spoonflower](http://www.spoonflower.com/profiles/doffingdesign).\n\nCertain patterns are also available to purchase as a wall mural or wallpaper from [Murals Your Way](http://www.muralsyourway.com/alexandra-doffing-prints/)", sort_order: 1, project_type: 2)

#project items
ProjectItem.create(image_url: "../images/FlowersInHerHair1.jpg", image_name: "FlowersInHerHair1", image_caption: "This is the main image", is_main_image: true, project: p)
ProjectItem.create(image_url: "../images/FlowersInHerHair2.jpg", image_name: "FlowersInHerHair2", is_main_image: false, project: p)
ProjectItem.create(image_url: "../images/FlowersInHerHair3.jpg", image_name: "FlowersInHerHair3", is_main_image: false, project: p)

=begin
ProjectItem.create(image_url: "../images/FloralPatterns_TulipsAndRoses_800.png", image_name:"", is_main_image: true, project: p1)
ProjectItem.create(image_url: "../images/", image_name:"", is_main_image: false, project: p1)
ProjectItem.create(image_url: "../images/", image_name:"", is_main_image: false, project: p1)
ProjectItem.create(image_url: "../images/", image_name:"", is_main_image: false, project: p1)
=end
