class Usuario < ApplicationRecord
	validates_presence_of :nombre
	validates_presence_of :apellido
	validates_presence_of :telefono

	def self.search(query)
		where(["nombre LIKE ?", "%#{query}%"])
	end
end
