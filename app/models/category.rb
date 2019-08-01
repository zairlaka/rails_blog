class Category < ApplicationRecord
  has_many :post
  #rails generate scaffold Category name:string
  #I chose to scaffold the categories so I can add/update/delete them. The scaffold generator will create the migration, views, controller, an
  #this is the references shortcut because we already created the category table
  # run db:migrate
  # boom
  #
  # -- add_reference(:posts, :category, {:foreign_key=>true})
  #    -> 0.0155s
  #
end
