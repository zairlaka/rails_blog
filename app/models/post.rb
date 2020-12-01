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

    mount_uploader :image, ImageUploader

    #========================================== Tag
    has_many :taggings
    has_many :tags, through: :taggings

    def self.tagged_with(name)
        Tag.find_by!(name: name).posts
    end

    def self.tag_counts
        Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
    end

    def tag_list
        tags.map(&:name).join(', ')
    end

    def tag_list=(names)
        self.tags = names.split(',').map do |n|
            Tag.where(name: n.strip).first_or_create!
        end
    end
    # ========================================= Tag end
end
