class Form < ApplicationRecord
  validates :question, presence: true
 
  belongs_to :user
  #has_many :key_words
  has_many :products
end
