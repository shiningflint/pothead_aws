class Potion < ApplicationRecord
	validates :pot_slug, presence: true, uniqueness: true, format: {with: /\A[a-z\-]+\z/, message:"only lower case characters(a-z), hyphens(-), and no spaces please"}
	validates :pot_name, presence: true
	validates :pot_creator, presence: true
	
	def to_param
		pot_slug
	end
end