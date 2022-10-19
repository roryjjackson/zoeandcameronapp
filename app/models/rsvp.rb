class Rsvp < ApplicationRecord
  # belongs_to :user
  validates :name, :attendance, :diet, presence: true
end
