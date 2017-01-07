class Guest < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :host_as_guests,
             :dependent => :destroy

  has_many   :guest_reviews,
             :dependent => :destroy

  has_many   :requests,
             :dependent => :destroy

  has_many   :messages,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
