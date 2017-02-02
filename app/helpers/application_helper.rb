module ApplicationHelper
  def log_out_in_helper(current_admin)
    if(current_admin)
      link_to("Admin Out", destroy_admin_session_path, :method => :delete, class: "btn btn-default")
    else
      link_to("Eu sou administrador", new_admin_session_path, class: "btn btn-default")
    end
  end
end
