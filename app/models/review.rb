class Review < ActiveRecord::Base
	include Bootsy::Container
	
    validates :title,  presence: true, length: { minimum: 1 }
	validates :image,  presence: true, length: { minimum: 1 }
	validates :content,  presence: true, length: { minimum: 1 }
	mount_uploader :image, ReviewImageUploader
end
