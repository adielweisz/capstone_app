class UsersAnswerSerializer < ActiveModel::Serializer
  attributes :id, :answer_id, :question_id, :user_id, :key_word, :product

  belongs_to :question
  belongs_to :answer
  belongs_to :user

  # has_many :key_words, :through => :answer
end
