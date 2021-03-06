class Item < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  has_one_attached :photo
end
