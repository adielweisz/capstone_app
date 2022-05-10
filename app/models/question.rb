class Question < ApplicationRecord

  belongs_to :form 
  belongs_to :product
  has_many :answers
  has_many :users_answers
end
