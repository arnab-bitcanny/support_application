class Comment < ApplicationRecord
  has_rich_text :content
  belongs_to :ticket
end
