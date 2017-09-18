class Tag < ApplicationRecord
  has_many :note_tags
  has_many :notes, through: :note_tags

  validates :name, uniqueness: true
end
