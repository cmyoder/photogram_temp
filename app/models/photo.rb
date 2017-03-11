class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  has_many   :comments_from_users,
             :through => :comments,
             :source => :user

  has_many   :likers,
             :through => :likes,
             :source => :user

  # Validations

end
