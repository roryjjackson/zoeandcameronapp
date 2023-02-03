class Rsvp < ApplicationRecord
  # belongs_to :user
  validates :name, :attendance, presence: true
end
