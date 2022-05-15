class UsersAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :answer
  belongs_to :user

  def key_word
  answer.key_words
  end

  def product
  answer.products
end

end
