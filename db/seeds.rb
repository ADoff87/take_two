# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#dev seed-values
p1 = Project.new(project_title: "Title 1", project_markdown: "#This is a header\n\nAnd this will be a paragraph\n\n* It's possible that this will be a bullet item\n* As will this\n\n[a link perhaps](http://www.espn.com)",sort_order: 1, project_type: 0)


#project items
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 1", image_caption: "Caption!", is_main_image: true, project: p1)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 2", image_caption: "Caption 2!", is_main_image: false, project: p1)