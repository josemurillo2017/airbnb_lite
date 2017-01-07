class Listing < ApplicationRecord
  # Direct associations

  has_many   :availibiliities,
             :dependent => :destroy

  has_many   :hostpolicies,
             :dependent => :destroy

  has_many   :hostphotos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
