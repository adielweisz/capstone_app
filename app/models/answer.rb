class Answer < ApplicationRecord

  belongs_to :question
  has_many :users_answers
  has_many :key_words
  
  has_many :products, :through => :key_words
end
