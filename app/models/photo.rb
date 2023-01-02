class Photo < ApplicationRecord
  validates :tagline, presence: true
  validates :created_on, presence: true   
 belongs_to :album, required: true
 attr_accessor :image_file_name
  has_attached_file :image
   validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png', 'image/gif']
  
end
