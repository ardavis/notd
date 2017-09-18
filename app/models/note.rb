class Note < ApplicationRecord
  validates :title, presence: true
end
