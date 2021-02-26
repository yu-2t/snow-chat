class Topic < ApplicationRecord
  validates :title, presence: true
  has_many :texts, dependent: :destroy
end
