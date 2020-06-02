class Item < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
