class AddColumnsToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :content, :text, null: false
    add_reference :comments, :prototype, null: false, foreign_key: true
    add_reference :comments, :user, null: false, foreign_key: true
  end
end
