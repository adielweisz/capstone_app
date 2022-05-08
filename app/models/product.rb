class Product < ApplicationRecord
  validates :description, presence:, true
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :images
  has_many :catagories
  has_many :key_words
  belongs_to :forms
end
