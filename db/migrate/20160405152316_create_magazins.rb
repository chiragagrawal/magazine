class CreateMagazins < ActiveRecord::Migration
  def change
    create_table :magazins do |t|

      t.timestamps
    end
  end
end
