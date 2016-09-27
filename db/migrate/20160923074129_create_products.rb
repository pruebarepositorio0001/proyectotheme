class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.boolean :availability
      t.string :description
      t.boolean :state
      t.string :image
      t.references :local, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
