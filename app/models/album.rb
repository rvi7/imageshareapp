class Album < ApplicationRecord
  validates :name, presence: true
  validates :created_on, presence: true
end
