class ChangeIsadminToBeBooleanInUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :isadmin, :boolean
    change_column_default(
      :users,
      :isadmin,
      false
    )
  end
  def down 
    remove_columns :users, :isadmin
  end
end
