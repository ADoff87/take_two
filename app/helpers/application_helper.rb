module ApplicationHelper
	def markdownToHtml html
		renderer_options = {filter_html: true}
		renderer = Redcarpet::Render::HTML.new(renderer_options)
		markdowner = Redcarpet::Markdown.new(renderer)
		markdowner.render(html).html_safe
	end
end
