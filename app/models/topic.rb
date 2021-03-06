class Topic < ApplicationRecord
  validates :title, presence: true
  has_many :texts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
