class Photo < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
