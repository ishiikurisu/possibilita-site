module MainHelper

	def text_length(text, size)
		if text.length > size
			"#{text[0, size]}..."
		else
			text
		end
	end
end
