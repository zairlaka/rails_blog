class CreatePosts < ActiveRecord::Migration[5.1]
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body
      # t.integer :category_id

      t.timestamps
      #rails g model Post title:string content:text category_id:integer
    end
  end
  
  def down 
    drop_table :posts
  end
end
