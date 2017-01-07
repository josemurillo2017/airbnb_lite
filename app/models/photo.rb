class Photo < ApplicationRecord
  # Direct associations

  has_many   :hostphotos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
