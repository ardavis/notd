class AddNoteIdToAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :note_id, :integer
  end
end
