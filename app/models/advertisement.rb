class Advertisement < ActiveRecord::Base
  mount_uploader :url, AdvertisementUploader
end
