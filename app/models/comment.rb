class Comment < ApplicationRecord
  has_rich_text :content
  belongs_to :ticket

  broadcasts_to :ticket
  # after_create_commit ->  { broadcast_append_to ticket }
  # after_destroy_commit ->  { broadcast_remove ticket }
  # after_update_commit ->  { broadcast_replace ticket }
end
