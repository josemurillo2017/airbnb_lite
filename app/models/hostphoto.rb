class Hostphoto < ApplicationRecord
  # Direct associations

  belongs_to :photo

  belongs_to :listing

  # Indirect associations

  # Validations

end
