class Note < ApplicationRecord
  has_many :attachments
  has_many :note_tags
  has_many :tags, through: :note_tags

  validates :title, presence: true

  accepts_nested_attributes_for :attachments
end
