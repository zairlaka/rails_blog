class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :user_id
      # t.integer :followee_id

      t.timestamps
    end
    add_index :relationships, :follower_id
    # add_index :relationships, :followee_id
    add_index :relationships, :user_id
    add_index :relationships, [:follower_id, :user_id], unique: true
    # add_index :relationships, [:follower_id, :followee_id], unique: true
    # includes a multiple-key index that enforces uniqueness on (follower_id,
    # followed_id) pairs, so that a user can’t follow another user more than once.
  end
end
