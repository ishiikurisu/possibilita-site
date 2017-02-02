module ProjectsHelper
  def link_to_filter(current_admin)
    if(current_admin)
      link_to("Adicionar Projeto", new_project_path, class: "btn btn-default")
      
    end
  end
  
end
