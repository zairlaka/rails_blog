class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_uniqueness_of :username, :email
  validates_confirmation_of :password
  has_many :posts
  has_many :likes, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
        #  :confirmable
  #------------------------------------------------------------------------------------------------
  # Will return an array of follows for the given user instance
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Relationship"

  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower

  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Relationship"
  
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user
  #--------------------------------------------------------------------------------------------------------------------------------------------------------------------https://stackoverflow.com/questions/25493368/many-to-many-self-join-in-rails
   # follower_follows "names" the Follow join table for accessing through the follower association
   #  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
    # source: :follower matches with the belong_to :follower identification in the Follow model
  # has_many :relationships
  # has_many :followers, through: :relationships

    # followee_follows "names" the Follow join table for accessing through the followee association
    # has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
    # source: :followee matches with the belong_to :followee identification in the Follow model
  # has_many :user_id, through: :relationships
  def is_already_followed?(other_user)
    #pre_like = @post.likes.find { |like| like.user_id == current_user.id}
    Relationship.where(follower_id: self.id, followed_user_id: other_user).exists?
  end
end
