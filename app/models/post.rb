class Post < ApplicationRecord #and ApplicationRecord is inherit from ActiveRecord
    has_many :comments, dependent: :destroy
    belongs_to :user
    belongs_to :category
    has_many :likes, dependent: :destroy
    #Active Record associations let you easily declare the relationship between two models.
    #In the case of comments and articles, you could write out the relationships this way:
    #Each comment belongs to one article.
    #One article can have many comments.
    validates :title, 
            presence: true,
            length: { minimum: 5 } , if: :title_changed?

    validates :body, 
            presence: true,
            length: { minimum: 10 } , if: :body_changed?

end
