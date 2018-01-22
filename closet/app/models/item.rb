class Item < ApplicationRecord
	belongs_to :user
	#file spoofing is turned off for now, but this should be changed in future.
	has_attached_file :img, validate_media_type: false
	validates :name, presence: true
	validates_attachment :img, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
