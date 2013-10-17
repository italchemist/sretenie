class TripPhoto < ActiveRecord::Base
  belongs_to :trip
  #, :polymorphic => true
  mount_uploader :url, TripPhotoUploader
end
