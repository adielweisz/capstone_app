class Product < ApplicationRecord
  validates :description, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true


   has_many :questions
   has_many :key_words
  
end
