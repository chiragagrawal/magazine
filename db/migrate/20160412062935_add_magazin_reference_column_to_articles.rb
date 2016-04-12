class AddMagazinReferenceColumnToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :magazin, index: true, foreign_key: true
  end
end
