class Policy < ApplicationRecord
  # Direct associations

  has_many   :hostpolicies,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
