class Car < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :model, presence: true
  validates :price, presence: true
end
