class Office < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
