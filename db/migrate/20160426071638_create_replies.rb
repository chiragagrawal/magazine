class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|

      t.timestamps
      t.string  :reply
    end
    add_reference :replies, :comment, index: true, foreign_key: true
  end
end
