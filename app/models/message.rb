class Message < ApplicationRecord
  # Direct associations

  belongs_to :host

  belongs_to :guest

  # Indirect associations

  # Validations

end
