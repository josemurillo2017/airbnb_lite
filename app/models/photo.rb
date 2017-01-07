class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  has_many   :hostphotos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
