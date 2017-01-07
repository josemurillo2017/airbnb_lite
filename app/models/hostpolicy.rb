class Hostpolicy < ApplicationRecord
  # Direct associations

  belongs_to :policy

  belongs_to :listing

  # Indirect associations

  # Validations

end
