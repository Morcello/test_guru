class AddRemoveUserColumms < ActiveRecord::Migration[6.0]
  def up
    remove_column :users, :username
    remove_column :users, :password
  end

  def down
    remove_column :users, :username
    remove_column :users, :password
  end
end
