class AddAttachments < ActiveRecord::Migration[5.1]
  def up
    add_attachment :attachments, :document
  end

  def down
    remove_attachment :attachments, :document
  end
end
