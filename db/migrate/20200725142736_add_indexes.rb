class AddIndexes < ActiveRecord::Migration[6.0]
  def change
    #add_index :tests, :author
    #add_index :tests, :category_id
    add_index :tests, [:title, :level], unique: true
  end
end
