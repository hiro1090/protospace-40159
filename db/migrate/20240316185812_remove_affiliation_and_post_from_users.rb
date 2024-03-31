class RemoveAffiliationAndPostFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :affiliation
    remove_column :users, :post
  end
end
