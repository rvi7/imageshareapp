class Photo < ApplicationRecord
  validates :tagline, presence: true
  validates :created_on, presence: true   
 belongs_to :album, required: true
end
