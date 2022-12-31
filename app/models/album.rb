class Album < ApplicationRecord
  has_many :photos
  validates :name, presence: true
  validates :created_on, presence: true
end
