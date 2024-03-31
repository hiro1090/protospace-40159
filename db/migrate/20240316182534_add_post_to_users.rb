class AddPostToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :post, :string
  end
end
