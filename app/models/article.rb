class Article < ApplicationRecord

	has_rich_text :body

	has_many :articles_tags
	has_many :tags, through: :articles_tags, dependent: :destroy 


	validates :title, presence: true  
	validates :category, presence: true  

	has_one_attached :hero_image
end
