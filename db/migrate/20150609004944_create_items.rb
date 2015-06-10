class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :link
      t.integer :category_id
      t.float :price
      t.integer :occasion_id

      t.timestamps

    end
  end
end
