# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#dev seed-values
p1 = Project.new(project_title: "Title 1", main_description: "Description 1", secondary_description: "Secondary Description 1",sort_order: 1, project_type: 0)
p2 = Project.new(project_title: "Title 2", main_description: "Description 2", secondary_description: "Secondary Description 2",sort_order: 2, project_type: 0)
p3 = Project.new(project_title: "Title 3", main_description: "Description 3", secondary_description: "Secondary Description 3",sort_order: 3, project_type: 1)
p4 = Project.new(project_title: "Title 4", main_description: "Description 4", secondary_description: "Secondary Description 4",sort_order: 4, project_type: 2)
p5 = Project.new(project_title: "Title 5", main_description: "Description 5", secondary_description: "Secondary Description 5",sort_order: 5, project_type: 3)
p6 = Project.new(project_title: "Title 6", main_description: "Description 6", secondary_description: "Secondary Description 6",sort_order: 6, project_type: 2)
p7 = Project.new(project_title: "Title 7", main_description: "Description 7", secondary_description: "Secondary Description 7",sort_order: 7, project_type: 3)
p8 = Project.new(project_title: "Title 8", main_description: "Description 8", secondary_description: "Secondary Description 8",sort_order: 8, project_type: 2)
p9 = Project.new(project_title: "Title 9", main_description: "Description 9", secondary_description: "Secondary Description 9",sort_order: 9, project_type: 3)
p10 = Project.new(project_title: "Title 10", main_description: "Description 10", secondary_description: "Secondary Description 10",sort_order: 10, project_type: 1)
p11 = Project.new(project_title: "Title 11", main_description: "Description 11", secondary_description: "Secondary Description 11",sort_order: 11, project_type: 0)
p12 = Project.new(project_title: "Title 12", main_description: "Description 12", secondary_description: "Secondary Description 12",sort_order: 12, project_type: 2)
p13 = Project.new(project_title: "Title 13", main_description: "Description 13", secondary_description: "Secondary Description 13",sort_order: 13, project_type: 0)
p14 = Project.new(project_title: "Title 14", main_description: "Description 14", secondary_description: "Secondary Description 14",sort_order: 14, project_type: 2)
p15 = Project.new(project_title: "Title 15", main_description: "Description 15", secondary_description: "Secondary Description 15",sort_order: 15, project_type: 2)
p16 = Project.new(project_title: "Title 16", main_description: "Description 16", secondary_description: "Secondary Description 16",sort_order: 16, project_type: 0)

#project items
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 1", image_caption: "Caption!", is_main_image: true, project: p1)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 2", image_caption: "Caption 2!", is_main_image: false, project: p1)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 3", image_caption: "Caption 3!", is_main_image: true, project: p2)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 4", image_caption: "Caption 4!", is_main_image: true, project: p4)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 5", image_caption: "Caption 5!", is_main_image: true, project: p3)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 6", image_caption: "Caption 6!", is_main_image: false, project: p3)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 7", image_caption: "Caption 7!", is_main_image: false, project: p2)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: false, project: p1)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p5)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p6)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p7)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p8)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p9)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p10)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p11)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p12)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p13)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p14)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p15)
ProjectItem.create(image_url: "../images/DIT_newlogo.jpg", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: true, project: p16)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: false, project: p12)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: false, project: p4)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: false, project: p2)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: false, project: p13)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: false, project: p3)
ProjectItem.create(image_url: "../images/dahlias.png", image_name: "PIc 8", image_caption: "Caption 8!", is_main_image: false, project: p4)