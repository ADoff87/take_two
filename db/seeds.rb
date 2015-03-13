# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#dev seed-values
p = Project.new(project_title: "Flowers in her Hair", project_markdown:"##Graphite Portraits\n\nPristine femininity and inane detail: a little ode to beauty for its own sake, without much regard for concept. When I've no other projects, inevitably I find myself drawing flowers, or women, or women decked out in flowers. The prettier their hair, the better.\n\nMaterials: *4B Graphite, Strathmore Drawing Paper*\n\n###Purchase Info\n\nThese will be available shortly as art prints from Society6. Please [inquire](mailto:doffingdesign@gmail.com) for licensing information.", sort_order: 1, project_type: 0)


#project items
ProjectItem.create(image_url: "/images/FlowersInHerHair1_thumb.jpg", image_name: "FlowersInHerHair1_thum", image_caption: "This is the main image", is_thumb_image: true, project: p)
ProjectItem.create(image_url: "/images/FlowersInHerHair1.jpg", image_name: "FlowersInHerHair1", is_thumb_image: false, project: p)
ProjectItem.create(image_url: "/images/FlowersInHerHair2.jpg", image_name: "FlowersInHerHair2", is_thumb_image: false, project: p)
ProjectItem.create(image_url: "/images/FlowersInHerHair3.jpg", image_name: "FlowersInHerHair3", is_thumb_image: false, project: p)


p1 = Project.new(project_title: "Floral Patterns", project_markdown: "##Repeating Tiles\n\nThese were created for a variety of invitations and for personal enjoyment. The Tulips and Roses pattern was featured in Murals Your Way's 2014 NeoCon booth, and also in an upcoming edition of *Martha Stewart Weddings*.\n\n###Purchase Info\n\nSelect patterns are available to purchase on fabric from [Spoonflower](http://www.spoonflower.com/profiles/doffingdesign).\n\nCertain patterns are also available to purchase as a wall mural or wallpaper from [Murals Your Way](http://www.muralsyourway.com/alexandra-doffing-prints/)", sort_order: 1, project_type: 2)
ProjectItem.create(image_url: "/images/FloralPatterns_TulipsAndRoses_800_thumb.png", image_name:"", is_thumb_image: true, project: p1)
ProjectItem.create(image_url: "/images/FloralPatterns_TulipsAndRoses_800.png", image_name:"", is_thumb_image: false, project: p1)
ProjectItem.create(image_url: "/images/FloralPatterns_Dahlias_800.png", image_name:"", is_thumb_image: false, project: p1)
ProjectItem.create(image_url: "/images/FloralPatterns_PinkPoppy_800.jpg", image_name:"", is_thumb_image: false, project: p1)
ProjectItem.create(image_url: "/images/FloralPatterns_RedRoses_800.jpg", image_name:"", is_thumb_image: false, project: p1)

p2 = Project.new(project_title: "City Moms Blog Network", project_markdown:"##Custom Cityscapes\n\nThe lovely ladies at  [CMBN](http://citymomsblog.com/) reached out to me as they were in the process of redesigning their sister sites, based in cities across the USA. Each city's blog header was created custom, with local landmarks and color palettes specific to each site's design. Illustrating in such a wide, narrow space surrounding the logo was a unique challenge and we did our best to showcase each city's dynamic and iconic sights and monuments.\n\n###Purchase Info\n\nThese will be available shortly as art prints from [Society6](http://society6.com/doffingdesign).\n\nThis artwork was created exclusively for City Moms Blog Network, so unfortunately licensing is not available. However, please [inquire](mailto:doffingdesign@gmail.com) for a quote (or conversation!) regarding custom design work.", sort_order: 2, project_type: 2)
ProjectItem.create(image_url: "/images/Thumb_CMBN_PortlandOR_800.jpg", image_name:"", is_thumb_image: true, project: p2)
ProjectItem.create(image_url: "/images/CMBN_AlamoCityTX_1200.jpg", image_name:"", is_thumb_image: false, project: p2)
ProjectItem.create(image_url: "/images/CMBN_AustinTX_1200.jpg", image_name:"", is_thumb_image: false, project: p2)
ProjectItem.create(image_url: "/images/CMBN_BatonRougeLA_1200.jpg", image_name:"", is_thumb_image: false, project: p2)
ProjectItem.create(image_url: "/images/CMBN_ColumbiaSC_1200.jpg", image_name:"", is_thumb_image: false, project: p2)
ProjectItem.create(image_url: "/images/CMBN_DallasTX_1200.jpg", image_name:"", is_thumb_image: false, project: p2)
ProjectItem.create(image_url: "/images/CMBN_OklahomaCityOK_1200.jpg", image_name:"", is_thumb_image: false, project: p2)
ProjectItem.create(image_url: "/images/CMBN_TwinCitiesMN_1200.jpg", image_name:"", is_thumb_image: false, project: p2)

p3 = Project.new(project_title: "Simple Patterns", project_markdown:"Some retro, straightforward patterns I created for fun. There will soon be many more!\n\n###Purchase Info\n\nThese are not currently for sale, but I will likely post them on [Spoonflower](http://www.spoonflower.com/profiles/doffingdesign) soon! They are available for licensing as well.", sort_order: 3, project_type: 2)
ProjectItem.create(image_url: "/images/Thumb_SimplePatterns_RetroFloral_800 copy.png",image_name:"",is_thumb_image:true, project: p3)
ProjectItem.create(image_url: "/images/1_SimplePatterns_RetroFloral_800.png",image_name:"", project: p3)
ProjectItem.create(image_url: "/images/2_SimplePatterns_ZigZag_800.png",image_name:"", project: p3)
ProjectItem.create(image_url: "/images/3_SimplePatterns_SwissCross_800.png",image_name:"", project: p3)
ProjectItem.create(image_url: "/images/4_SimplePatterns_Woodgrain_800.png",image_name:"", project: p3)

p4 = Project.new(project_title: "Sketchbook", project_markdown:"##This & That\n\nThese pieces don't really have any other place to go. Snippets of small assignments, personal projects, etc.", sort_order: 4, project_type: 0)
ProjectItem.create(image_url: "/images/Thumb_Sketchbook_Auryn_800.jpg",image_name:"",is_thumb_image:true, project: p4)
ProjectItem.create(image_url: "/images/1_Sketchbook_BobDylan_800.jpg",image_name:"", project: p4)
ProjectItem.create(image_url: "/images/2_Sketchbook_Auryn_800.jpg",image_name:"", project: p4)
ProjectItem.create(image_url: "/images/3_Sketchbook_SleighBells_800.jpg",image_name:"", project: p4)
ProjectItem.create(image_url: "/images/4_Sketchbook_Mpls_800.jpg",image_name:"", project: p4)

p5 = Project.new(project_title: "Twin Cities", project_markdown:"##Minneapolis & St Paul Cityscapes\n\nI created the Minneapolis design first, to be printed on a doorway at my former workplace. [You can see the process here](https://doffingdesign.wordpress.com/2012/02/16/mpls-skyline-printing-on-doors/). It features some of our skyline, the Grain Belt and Gold Medal signs, The Basilica of St. Mary, and the iconic Spoonbridge and Cherry seen at The Walker Sculpture Garden.\n\nSt. Paul came as a natural next step, with such icons as our capitol with golden statue, the two bridges, Harriet Island, historic homes on Summit Avenue, and the F. Scott Fitzgerald sculpture downtown.\n\n###Purchase Info\n\nThese are available as art prints from [Society6](http://society6.com/doffingdesign).\n\nYou can also support one of our local businesses, [i like you](http://www.ilikeyouonline.com/) by purchasing it at their store in Northeast Minneapolis", sort_order: 5, project_type: 2)
ProjectItem.create(image_url: "/images/Thumb_TwinCities_Minneapolis_800.png",image_name:"",is_thumb_image:true, project: p5)
ProjectItem.create(image_url: "/images/1_TwinCities_Minneapolis_800.png",image_name:"", project: p5)
ProjectItem.create(image_url: "/images/2_TwinCities_StPaul_800.png",image_name:"", project: p5)



