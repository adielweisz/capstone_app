class Answer < ApplicationRecord

  belongs_to :question
  has_many :users_answers
  has_many :key_words
end
