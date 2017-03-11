class FriendRequest < ApplicationRecord
  # Direct associations

  belongs_to :recipient,
             :class_name => "User"

  belongs_to :sender,
             :class_name => "User"

  # Indirect associations

  # Validations

end
