class MainController < ApplicationController
  respond_to :js, :html

  def index
  	@projects = params[:filtered].blank? ? Project.all : Project.filter(params[:filtered])
  	# Sempre que damos "submit" em um formulario html o rails cria um Json(parameters) com os pares
  	# de valores submetidos. No form de filtro (index.html.slim da main) verao que existe
  	# um simbolo :filtered logo a frente de "select_tag". Isso me permite criar arbitrariamente
  	# um novo par nesse Json.(filtered => valor) Assim o rails me permite recuperar esse valor
  	# a partir do comando params[:filtered]. Caso o valor volte branco ele mostrara todos os
  	# projetos, caso contrario, chamara o metodo filter com parametro de params[:filtered].
  	@tags = Tag.all

    respond_to do |format|
      format.js {}
      format.html
    end
  end

  def about
    @text = "what"
  end
end
