# project object
json.project @project, :id, :project_title, :sort_order, :project_type, :project_markdown

json.project_items @project.project_items