class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100"}
	# This makes it create 2 images, the thing itself and a thumbnail
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

class amp
end

