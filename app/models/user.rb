class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_uniqueness_of :username, :email
  validates_confirmation_of :password
  has_many :posts
  has_many :likes, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  #------------------------------------------------------------------------------------------------
  # has_many :active_relationships,  class_name:  "Relationship",
  #          foreign_key: "follower_id",
  #          dependent:   :destroy
  # has_many :passive_relationships, class_name:  "Relationship",
  #          foreign_key: "followed_id",
  #          dependent:   :destroy
  # has_many :following, through: :active_relationships,  source: :followed
  # has_many :followers, through: :passive_relationships, source: :follower



  #--------------------------------------------------------------------------------------------------------------------------------------------------------------------https://stackoverflow.com/questions/25493368/many-to-many-self-join-in-rails
   # follower_follows "names" the Follow join table for accessing through the follower association
   #  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
    # source: :follower matches with the belong_to :follower identification in the Follow model
  has_many :relationships
  has_many :followers, through: :relationships

    # followee_follows "names" the Follow join table for accessing through the followee association
    # has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
    # source: :followee matches with the belong_to :followee identification in the Follow model
    has_many :user_id, through: :relationships
end
