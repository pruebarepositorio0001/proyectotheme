class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
