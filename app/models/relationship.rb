class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User", foreign_key: "follower_id"
  belongs_to :user_id, class_name: "User", foreign_key: "user_id"
  validates :follower_id, presence: true
  validates :user_id, presence: true
  #---------------------------------
  #   belongs_to :follower, foreign_key: "follower_id", class_name: "User"
  #   belongs_to :followee, foreign_key: "followee_id", class_name: "User"
  # end
end
