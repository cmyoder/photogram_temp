class User < ApplicationRecord
  # Direct associations

  has_many   :friend_requests_recieved,
             :class_name => "FriendRequest",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :friend_requests_sent,
             :class_name => "FriendRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :commented_photos,
             :through => :comments,
             :source => :photo

  has_many   :liked_photos,
             :through => :likes,
             :source => :photo

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
