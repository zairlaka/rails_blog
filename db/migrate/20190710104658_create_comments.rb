class CreateComments < ActiveRecord::Migration[5.1]
  def up
    create_table :comments do |t|
      t.string :name
      t.text :message

      t.timestamps
    end
  end
  def down 
    drop_table :comments
  end
end
