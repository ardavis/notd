class Attachment < ApplicationRecord
  belongs_to :note
  has_attached_file :document
  do_not_validate_attachment_file_type :document
end
