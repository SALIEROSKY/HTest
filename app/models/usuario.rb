class Usuario < ApplicationRecord
	validates_presence_of :nombre
	
	def self.search(query)
		where(["nombre LIKE ?", "%#{query}%"])
	end
end
