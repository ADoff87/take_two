# project object
#json.project @project, :id, :project_title, :sort_order, :project_type, :project_markdown,

json.id @project.id
json.project_title @project.project_title
json.sort_order @project.sort_order
json.project_type @project.project_type
json.project_markdown @project.project_markdown

json.project_items @project.project_view_items

json.project_type_options @project_types.each do |pt|
		json.type pt[0]
		json.value pt[1]
	end