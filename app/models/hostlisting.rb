class Hostlisting < ApplicationRecord
  # Direct associations

  belongs_to :host

  belongs_to :listing

  # Indirect associations

  # Validations

end
