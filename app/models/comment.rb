class Comment < ApplicationRecord
    belongs_to :post

    validates :name, 
            presence: true

    validates :message, 
            presence: true,
            length: { minimum: 1, maximum: 300 }

end
