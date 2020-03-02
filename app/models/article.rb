class Article < ApplicationRecord
	has_many :suggests
	validates :title,
	 presence: true,
	 length: {minimum: 6}
         
   end                 
