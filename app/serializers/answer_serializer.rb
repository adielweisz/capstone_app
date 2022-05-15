class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :answer, :question_id

  has_many :key_words
  belongs_to :question
  has_many :users_answers
  has_many :products, :through => :key_words
end
