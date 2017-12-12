class NewsStay < ActiveRecord::Base
	mount_uploader :image, PictureUploader
end
