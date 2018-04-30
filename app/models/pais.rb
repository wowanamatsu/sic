class Pais < ApplicationRecord

	validates_presence_of :nome, message: 'Preencha esse campo!'
	validates_presence_of :codigo, message: 'Preencha esse campo!'

end
