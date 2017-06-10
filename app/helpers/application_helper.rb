module ApplicationHelper
  def log_out_in_helper(current_admin)
    if(current_admin)
      link_to("Sair", destroy_admin_session_path, :method => :delete, class: "btn btn-default")
    else
      link_to("Eu sou administrador", new_admin_session_path, class: "btn btn-default")
    end
  end

  def markdown(text)
  	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    	no_intra_emphasis: true, 
    	fenced_code_blocks: true,   
    	disable_indented_code_blocks: false)
		
		return markdown.render(text).html_safe
	end
end
