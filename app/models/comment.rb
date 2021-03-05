class Comment < ApplicationRecord
  belongs_to :text
  belongs_to :topic
end
