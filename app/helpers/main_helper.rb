module MainHelper

	def text_length(text, size)
		if text.length > size
			"#{text[0, size]}..."
		else
			text
		end
	end

	def get_descriptive_image project
		MainHelper.get_descriptive_image project
	end

	def MainHelper.get_descriptive_image project
		md = project.description
		link = md[/\!\[.*\]\((.*?)\)/]
		(!link.nil?)? link[/\((.*?)\)/][1..-2] : nil
	end
end
