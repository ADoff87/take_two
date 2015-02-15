json.project @project, :id, :project_title, :sort_order, :project_type, :project_markdown

json.project_items @project.project_items

json.project_types @project_types.each do |pt|
		json.type pt[0]
		json.value pt[1]
	end