class AddColumnToComments < ActiveRecord::Migration
  def change
    add_column  :comments,  :comment, :string
    add_reference :comments, :article, index: true, foreign_key: true
    add_reference :comments, :user, index: true, foreign_key: true
  end
end
