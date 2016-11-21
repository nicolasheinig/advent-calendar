class Door < ApplicationRecord
  validates :image_link, presence: true
  validates :text, presence: true
  validates :open, presence: true
end
