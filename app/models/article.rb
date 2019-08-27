class Article < ApplicationRecord
	has_many :articles_tags
	has_many :tags, through: :articles_tags 


	validates :title, presence: true  
	validates :category, presence: true  
end
