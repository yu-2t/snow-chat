class Text < ApplicationRecord
  belongs_to :topic
  has_many :comments

  validates :text, presence: true
end
