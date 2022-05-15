class KeyWordSerializer < ActiveModel::Serializer
  attributes :id, :answer_id, :key_word, :product_id

  belongs_to :product
  belongs_to :answer
end
