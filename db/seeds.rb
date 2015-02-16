# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#dev seed-values
p = Project.new(project_title: "Flowers in her Hair", project_markdown:"##Graphite Portraits\n\nPristine femininity and inane detail: a little ode to beauty for its own sake, without much regard for concept. When I've no other projects, inevitably I find myself drawing flowers, or women, or women decked out in flowers. The prettier their hair, the better.\n\nMaterials: *4B Graphite, Strathmore Drawing Paper*\n\n###Purchase Info\n\nThese will be available shortly as art prints from Society6. Please [inquire](mailto:doffingdesign@gmail.com) for licensing information.", sort_order: 2, project_type: 1)

#project items
ProjectItem.create(image_url: "../images/FlowersInHerHair1.jpg", image_name: "FlowersInHerHair1", image_caption: "This is the main image", is_main_image: true, project: p)
ProjectItem.create(image_url: "../images/FlowersInHerHair2.jpg", image_name: "FlowersInHerHair2", is_main_image: false, project: p)
ProjectItem.create(image_url: "../images/FlowersInHerHair3.jpg", image_name: "FlowersInHerHair3", is_main_image: false, project: p)