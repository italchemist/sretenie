class Advertisement < ActiveRecord::Base
  mount_uploader :url, TripPhotoUploader
end
