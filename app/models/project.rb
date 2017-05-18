class Project < ApplicationRecord
	has_and_belongs_to_many :tags

	scope :filter, -> (tag_id) { joins(:tags).where("tags.id = ?", tag_id) }
	# Scope eh uma ferramenta fornecida pelo rails em que podemos criar um metodo
	# (nesse caso filter) para fazermos uma "query".
	# Então se escrevermos Project.filter(3) teremos todos os projetos que possuem
	# uma tag_id = 3, ou seja, o rails selecionara todo os projetos que possuem
	# um relacionamento com a tag de id informado.

	# ATENCAO: notem que utilizo "joins(:tags)" para ter acesso a todas as tags
	# a partir do model de Project.
end
